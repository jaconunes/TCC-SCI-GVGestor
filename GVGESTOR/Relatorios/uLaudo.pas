unit uLaudo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoRelatorioGVGESTOR, Data.FMTBcd,
  frxExportDOCX, frxClass, frxExportPDF, Data.DB, Data.SqlExpr, frxDBSet,
  frxDesgn, System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.Buttons, EditSCI, Datasnap.DBClient, udmDadosGVGESTOR;

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
  private
    { Private declarations }
  public
    procedure pGetConsultaSql; override;
    procedure pGetConsultaMasterSource; override;
    { Public declarations }

  end;

var
  frLaudo: TfrLaudo;

implementation

{$R *.dfm}

uses uConsVistoria;

procedure TfrLaudo.edCodigoChange(Sender: TObject);
begin
  inherited;
  if dmTabelas.tbVistoria.FindKey([edCodigo.Text]) then
     begin
       btVisualizar.Enabled := True;
       btSalvarComo.Enabled := True;
       btImprimir.Enabled := True;
       btEditar.Enabled := True;
     end;
end;

procedure TfrLaudo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  setResetMasterSource(dmTabelas.tbVistoria);
  setResetMasterSource(dmTabelas.tbImovel);
  setResetMasterSource(dmTabelas.tbProprietario);
  setResetMasterSource(dmTabelas.tbUsuario);
  setResetMasterSource(dmTabelas.tbAmbiente);
  setResetMasterSource(dmTabelas.tbItem);
  setResetMasterSource(dmTabelas.tbFoto);
  setResetMasterSource(dmTabelas.tbLocatario);
  setResetMasterSource(dmTabelas.tbCliente);

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

procedure TfrLaudo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = VK_F3) then// tecla de atalho para consulta
    btSelecionar.Click;

end;

procedure TfrLaudo.pGetConsultaMasterSource;
begin
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

  dmTabelas.tbVistoria.Filter := 'BDCODVIST = ' + edCodigo.Text;

  dmTabelas.tbVistoria.Filtered := True;
end;

procedure TfrLaudo.pGetConsultaSql;
begin
  inherited;
//  SQLQueryPadrao.Close;
//  SQLQueryPadrao.SQL.Clear;
//  SQLQueryPadrao.SQL.Add('select v.*,');
//  SQLQueryPadrao.SQL.Add(' i.bdcodimovel, i.bdtipoimovel, i.bdquantamb, i.bdendereco as ENDIMOVEL,');
//  SQLQueryPadrao.SQL.Add(' i.bdnumero as NUMIMOVEL, I.bdbairro AS BAIRROIMOVEL, I.bdcidade AS CIDADEIMOVEL,');
//  SQLQueryPadrao.SQL.Add(' P.bdnome as NOMEPROP, P.bdcpfcnpj AS CPFCNPJPROP,');
//  SQLQueryPadrao.SQL.Add(' L.bdnome AS NOMELOCAT, L.bdcpfcnpj AS CPFCNPJLOCAT,');
//  SQLQueryPadrao.SQL.Add(' U.bdnome AS NOMEUSUARIO, U.bdcpfcnpj AS CPFCNPJUSUARIO,');
//  SQLQueryPadrao.SQL.Add(' C.bdrasocial AS RAZAOSOCIALCLI, C.bdcnpj AS CNPJCLIENTE,');
//  SQLQueryPadrao.SQL.Add(' A.bdnome AS NOMEAMBIENTE, A.bdobsadc AS OBSADAMBIENTE,');
//  SQLQueryPadrao.SQL.Add(' TI.bddescricao AS DESCITEM, TI.bdestado AS ESTADOITEM, TI.bdobsadc AS OBSADITEM,');
//  SQLQueryPadrao.SQL.Add(' F.bddesc AS DESCFOTO, F.bdurl AS URLFOTO');
//
//  SQLQueryPadrao.SQL.Add(' from  tvistoria v');
//
//  SQLQueryPadrao.SQL.Add(' join timovel i on (i.bdcodimovel = v.bdpkcodimov)');
//  SQLQueryPadrao.SQL.Add(' join tproprietario p on (p.bdcdpropr = i.bdpkcodprop)');
//  SQLQueryPadrao.SQL.Add(' join tlocatario l on (l.bdcdlocat = v.bdpkcodlocat)');
//  SQLQueryPadrao.SQL.Add(' join tusuario u on (u.bdcodigo = v.bdpkcodusu)');
//  SQLQueryPadrao.SQL.Add(' join tcliente c on (c.bdcodcli = v.bdpkcodclt)');
//  SQLQueryPadrao.SQL.Add(' join tambiente a on(a.bdpkcodvist = v.bdcodvist)');
//  SQLQueryPadrao.SQL.Add(' join titem ti on (ti.bdpkcodamb = a.bdcodamb)');
//  SQLQueryPadrao.SQL.Add(' join tfoto f on (f.bdpkcodamb = a.bdcodamb)');
//
//  SQLQueryPadrao.SQL.Add('where v.bdcodvist = ' + edCodigo.Text);
//
//  SQLQueryPadrao.Open;
//  frxDBDataset1.UserName := 'Consulta de Laudo';
end;

procedure TfrLaudo.btSelecionarClick(Sender: TObject);
begin
  inherited;
  TfrConsVistoria.Create(edCodigo);
end;

end.
