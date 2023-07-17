unit uLaudo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoRelatorioGVGESTOR, Data.FMTBcd,
  frxExportDOCX, frxClass, frxExportPDF, Data.DB, Data.SqlExpr, frxDBSet,
  frxDesgn, System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.Buttons, EditSCI, Datasnap.DBClient, udmDadosGVGESTOR, MaskUtils;

type
  TfrLaudo = class(TfrPadraoRelatorioGVGESTOR)
    edCodigo: TEdit_Numero_PEDSCI;
    btSelecionar: TSpeedButton;
    frxDBDatasetVistoria: TfrxDBDataset;
    dsVistoria: TDataSource;
    frxDBDatasetUsuario: TfrxDBDataset;
    dsUsuario: TDataSource;
    dsProprietario: TDataSource;
    frxDBDatasetProprietario: TfrxDBDataset;
    frxDBDatasetLocatario: TfrxDBDataset;
    dsLocatario: TDataSource;
    frxDBDatasetItem: TfrxDBDataset;
    dsItem: TDataSource;
    dsImovel: TDataSource;
    frxDBDatasetImovel: TfrxDBDataset;
    dsFoto: TDataSource;
    frxDBDatasetFoto: TfrxDBDataset;
    dsCliente: TDataSource;
    frxDBDatasetCliente: TfrxDBDataset;
    dsAmbiente: TDataSource;
    frxDBDatasetAmbiente: TfrxDBDataset;
    frxReportMasterSource: TfrxReport;
    procedure btSelecionarClick(Sender: TObject);
    procedure edCodigoChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure pGetConsultaSql; override;  // obtem consulta SQL se houver
    procedure pGetConsultaMasterSource; override;  // obtem consulta MasterSource se houver
    function fGetNomeArquivo: string; override; // obtem nome do arquivo para salvar como
  end;

var
  frLaudo: TfrLaudo;

implementation

{$R *.dfm}

uses uConsVistoria, uPrincipal, uPadraoCadastroGVGESTOR;

procedure TfrLaudo.edCodigoChange(Sender: TObject);
begin
  inherited;
  // Verifica se existe ID válido, então habilita botões, exceto edição
  if dmTabelas.tbVistoria.FindKey([edCodigo.Text]) then
     begin
       btVisualizar.Enabled := True;
       btSalvarComo.Enabled := True;
       btImprimir.Enabled := True;
       // Habilita edição somente de usuário é admin
       if frPrincipal.fGetUsuarioLogado.Perfil = 'Administrador' then
          btEditar.Enabled := True;
     end;
end;

function TfrLaudo.fGetNomeArquivo: string;
begin
  // Retorna nome do arquivo no botão "Salvar Como"
  Result := Caption + '-' + edCodigo.Text;
end;

procedure TfrLaudo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  // Reseta o mastersource de todas as tabelas ao fechar form
  setResetMasterSource(dmTabelas.tbVistoria);
  setResetMasterSource(dmTabelas.tbImovel);
  setResetMasterSource(dmTabelas.tbProprietario);
  setResetMasterSource(dmTabelas.tbUsuario);
  setResetMasterSource(dmTabelas.tbAmbiente);
  setResetMasterSource(dmTabelas.tbItem);
  setResetMasterSource(dmTabelas.tbFoto);
  setResetMasterSource(dmTabelas.tbLocatario);
  setResetMasterSource(dmTabelas.tbCliente);
  // Limpa filtros de todas as tabelas
  setLimpaFiltros(dmTabelas.tbVistoria);
  setLimpaFiltros(dmTabelas.tbImovel);
  setLimpaFiltros(dmTabelas.tbProprietario);
  setLimpaFiltros(dmTabelas.tbCliente);
  setLimpaFiltros(dmTabelas.tbAmbiente);
  setLimpaFiltros(dmTabelas.tbItem);
  setLimpaFiltros(dmTabelas.tbFoto);
  setLimpaFiltros(dmTabelas.tbLocatario);
  setLimpaFiltros(dmTabelas.tbUsuario);
end;

procedure TfrLaudo.FormCreate(Sender: TObject);
begin
  inherited;
  // Verifica se exite um ID válido e se usuário é admin, então habilita botão de edição
  if dmTabelas.tbVistoria.FindKey([edCodigo.Text]) then
     begin
       if frPrincipal.fGetUsuarioLogado.Perfil = 'Administrador' then
          btEditar.Enabled := True;
     end
  else
     btEditar.Enabled := False;
end;

procedure TfrLaudo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_F3 then // tecla de atalho para consulta
     btSelecionar.Click
  else
  if Key = VK_RETURN then // atalho para visualizar
     btVisualizar.Click;
end;

procedure TfrLaudo.pGetConsultaMasterSource;
begin
  // Reseta o mastersource de todas as tabelas
  setResetMasterSource(dmTabelas.tbVistoria);
  setResetMasterSource(dmTabelas.tbImovel);
  setResetMasterSource(dmTabelas.tbProprietario);
  setResetMasterSource(dmTabelas.tbUsuario);
  setResetMasterSource(dmTabelas.tbAmbiente);
  setResetMasterSource(dmTabelas.tbItem);
  setResetMasterSource(dmTabelas.tbFoto);
  setResetMasterSource(dmTabelas.tbLocatario);
  setResetMasterSource(dmTabelas.tbCliente);
   // refaz todas as ligações entre as tabelas
  dsVistoria.DataSet := dmTabelas.tbVistoria;
  dmTabelas.tbVistoria.IndexFieldNames := 'BDCODVIST;BDDATAVIST';
  frxDBDatasetVistoria.DataSource := dsVistoria;
  frxDBDatasetVistoria.UserName := 'Vistoria';
   // Vistoria - Imóvel
  dsImovel.DataSet := dmTabelas.tbImovel;
  dmTabelas.tbImovel.IndexFieldNames := 'BDCODIMOVEL';
  dmTabelas.tbImovel.MasterFields := 'BDPKCODIMOV';
  dmTabelas.tbImovel.MasterSource := dsVistoria;
  frxDBDatasetImovel.DataSource := dsImovel;
  frxDBDatasetImovel.UserName := 'Imovel';
   // Imóvel - Proprietário
  dsProprietario.DataSet := dmTabelas.tbProprietario;
  dmTabelas.tbProprietario.IndexFieldNames := 'BDCDPROPR';
  dmTabelas.tbProprietario.MasterFields := 'BDPKCODPROP';
  dmTabelas.tbProprietario.MasterSource := dsImovel;
  frxDBDatasetProprietario.DataSource := dsProprietario;
  frxDBDatasetProprietario.UserName := 'Proprietario';
   // Locatário - Vistoria
  dsLocatario.DataSet := dmTabelas.tbLocatario;
  dmTabelas.tbLocatario.IndexFieldNames := 'BDCDLOCAT';
  dmTabelas.tbLocatario.MasterFields := 'BDPKCODLOCAT';
  dmTabelas.tbLocatario.MasterSource := dsVistoria;
  frxDBDatasetLocatario.DataSource := dsLocatario;
  frxDBDatasetLocatario.UserName := 'Locatario';
   // Usuário - Vistoria
  dsUsuario.DataSet := dmTabelas.tbUsuario;
  dmTabelas.tbUsuario.IndexFieldNames := 'BDCODIGO';
  dmTabelas.tbUsuario.MasterFields := 'BDPKCODUSU';
  dmTabelas.tbUsuario.MasterSource := dsVistoria;
  frxDBDatasetUsuario.DataSource := dsUsuario;
  frxDBDatasetUsuario.UserName := 'Usuario';
   // Cliente - Vistoria
  dsCliente.DataSet := dmTabelas.tbCliente;
  dmTabelas.tbCliente.IndexFieldNames := 'BDCODCLI';
  dmTabelas.tbCliente.MasterFields := 'BDPKCODCLT';
  dmTabelas.tbCliente.MasterSource := dsVistoria;
  frxDBDatasetCliente.DataSource := dsCliente;
  frxDBDatasetCliente.UserName := 'Cliente';
   // Ambiente - Vistoria
  dsAmbiente.DataSet := dmTabelas.tbAmbiente;
  dmTabelas.tbAmbiente.IndexFieldNames := 'BDPKCODVIST';
  dmTabelas.tbAmbiente.MasterFields := 'BDCODVIST';
  dmTabelas.tbAmbiente.MasterSource := dsVistoria;
  frxDBDatasetAmbiente.DataSource := dsAmbiente;
  frxDBDatasetAmbiente.UserName := 'Ambiente';
   // Ambiente - Item
  dsItem.DataSet := dmTabelas.tbItem;
  dmTabelas.tbItem.IndexFieldNames := 'BDPKCODAMB';
  dmTabelas.tbItem.MasterFields := 'BDCODAMB';
  dmTabelas.tbItem.MasterSource := dsAmbiente;
  frxDBDatasetItem.DataSource := dsItem;
  frxDBDatasetItem.UserName := 'Item';
   // Ambiente - Foto
  dsFoto.DataSet := dmTabelas.tbFoto;
  dmTabelas.tbFoto.IndexFieldNames := 'BDPKCODAMB';
  dmTabelas.tbFoto.MasterFields := 'BDCODAMB';
  dmTabelas.tbFoto.MasterSource := dsAmbiente;
  frxDBDatasetFoto.DataSource := dsFoto;
  frxDBDatasetFoto.UserName := 'Foto';
  // filtreando os dados da tabela conforme as informações datela
  setLimpaFiltros(dmTabelas.tbVistoria);// sempre limpar antes de refazer o filtro
  setLimpaFiltros(dmTabelas.tbImovel);
  setLimpaFiltros(dmTabelas.tbProprietario);
  setLimpaFiltros(dmTabelas.tbCliente);
  setLimpaFiltros(dmTabelas.tbAmbiente);
  setLimpaFiltros(dmTabelas.tbItem);
  setLimpaFiltros(dmTabelas.tbFoto);
  setLimpaFiltros(dmTabelas.tbLocatario);
  setLimpaFiltros(dmTabelas.tbUsuario);
  // Recebe o ID da vistoria para gerar o laudo
  dmTabelas.tbVistoria.Filter := 'BDCODVIST = ' + edCodigo.Text;

  dmTabelas.tbVistoria.Filtered := True;
end;

procedure TfrLaudo.pGetConsultaSql;
begin
  inherited;
  // Consulta SQL para retornar a quantidade de fotos vinculadas a uma vistoria
  SQLQueryPadrao.Close;
  SQLQueryPadrao.SQL.Clear;
  SQLQueryPadrao.SQL.Add('SELECT COUNT(*) as TOTALDEFOTOS FROM tfoto f');
  SQLQueryPadrao.SQL.Add(' join tambiente a on (f.bdpkcodamb = a.bdcodamb)');
  SQLQueryPadrao.SQL.Add(' join tvistoria v on (v.bdcodvist = a.bdpkcodvist)');
  SQLQueryPadrao.Open;
  frxDBDataset1.UserName := 'Total de Fotos';
end;

procedure TfrLaudo.btSelecionarClick(Sender: TObject);
begin
  inherited;
  // cria form de consulta de vistorias
  TfrConsVistoria.Create(edCodigo);
end;

end.
