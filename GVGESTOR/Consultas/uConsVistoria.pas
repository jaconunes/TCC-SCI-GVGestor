unit uConsVistoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoConsultaDetalheGVGESTOR, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.ToolWin, Datasnap.DBClient, Data.FMTBcd, Data.SqlExpr,
  Datasnap.Provider, Vcl.StdCtrls;

type
  TfrConsVistoria = class(TfrPadraoConsultaDetalheGVGSTOR)
    Panel2: TPanel;
    edCodigoNome: TEdit;
    cbFiltro: TComboBox;
    Label1: TLabel;
    btLimpar: TButton;
    Label2: TLabel;
    Label3: TLabel;
    dtpInicio: TDateTimePicker;
    dtpFim: TDateTimePicker;
    ckDataFim: TCheckBox;
    ckDataInicio: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure btFiltrarClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btEditarClick(Sender: TObject);
    procedure edCodigoNomeChange(Sender: TObject);
    procedure edCodigoNomeKeyPress(Sender: TObject; var Key: Char);
    procedure cbFiltroChange(Sender: TObject);
    procedure ckDataFimClick(Sender: TObject);
    procedure ckDataInicioClick(Sender: TObject);
    procedure dtpInicioChange(Sender: TObject);
    procedure dtpFimChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function setTabela: TClientDataSet; override;  // seta tabela no BD
    function setTabelaDetalhe: TClientDataSet; override;  // seta tabela detalhe no BD
    function setCamposChaveDetalhe: string; override; // seta campo para filtro detalhe
  end;

var
  frConsVistoria: TfrConsVistoria;

implementation

{$R *.dfm}

uses udmDadosGVGESTOR, uCadVistoria;

{ TfrPadraoConsultaGVGSTOR2 }

procedure TfrConsVistoria.btEditarClick(Sender: TObject);
begin
  TfrCadVistoria.Create(self).Show;
end;

procedure TfrConsVistoria.btFiltrarClick(Sender: TObject);
begin
  inherited;
  FTabela.Filtered := False;
  FTabela.Filter :=  EmptyStr;

  if cbFiltro.ItemIndex = 0 then // Verifica se selecionado o filtro por código
     begin
       FTabela.IndexFieldNames := 'BDCODVIST';
       FTabela.Filter := ' BDCODVIST =' + Trim(edCodigoNome.Text);
       FTabela.Filtered := True;
     end
  else
  if cbFiltro.ItemIndex = 1 then // Verifica se selecionado o filtro por data
     begin
       FTabela.IndexFieldNames := 'BDDATAVIST';
       FTabela.Filter := ' BDDATAVIST >= ' + QuotedStr(FormatDateTime('yyyy-mm-dd', dtpInicio.Date)) +
                         ' and BDDATAVIST <= ' +  QuotedStr(FormatDateTime('yyyy-mm-dd', dtpFim.Date));
       FTabela.Filtered := True;
     end
  else
  if cbFiltro.ItemIndex = 2 then // Verifica se selecionado o filtro por código do imóvel
     begin
       FTabela.IndexFieldNames := 'BDPKCODIMOV';
       FTabela.Filter := ' BDPKCODIMOV =' + Trim(edCodigoNome.Text);
       FTabela.Filtered := True;
     end
  else
  if cbFiltro.ItemIndex = 3 then  //  Verifica se selecionado o filtro por código do cliente
     begin
       FTabela.IndexFieldNames := 'BDPKCODCLT';
       FTabela.Filter := ' BDPKCODCLT =' + Trim(edCodigoNome.Text);
       FTabela.Filtered := True;
     end;
end;

procedure TfrConsVistoria.btLimparClick(Sender: TObject);
begin
  inherited;
  // desabilita filtros na tabela
  FTabela.Filtered := False;
end;

procedure TfrConsVistoria.cbFiltroChange(Sender: TObject);
begin
  inherited;
  FTabela.Filtered := False;
  FTabela.Filter :=  EmptyStr;

  if cbFiltro.ItemIndex = 0 then   // habilita filtro por código
     begin
       edCodigoNome.Enabled := True;
       ckDataFim.Enabled := False;
       ckDataInicio.Enabled := False;
     end
  else
  if cbFiltro.ItemIndex = 1 then  // habilita filtro por data
     begin
       ckDataFim.Enabled := True;
       ckDataInicio.Enabled := True;
     end
  else
  if cbFiltro.ItemIndex = 2 then  // habilita filtro código do imóvel
     begin
       edCodigoNome.Enabled := True;
       ckDataFim.Enabled := False;
       ckDataInicio.Enabled := False;
     end
  else
  if cbFiltro.ItemIndex = 3 then  // habilita filtro código do cliente
     begin
       edCodigoNome.Enabled := True;
       ckDataFim.Enabled := False;
       ckDataInicio.Enabled := False;
     end;
end;

procedure TfrConsVistoria.ckDataFimClick(Sender: TObject);
begin
  inherited;
  dtpFim.Enabled := True; // habilita data final
end;

procedure TfrConsVistoria.ckDataInicioClick(Sender: TObject);
begin
  inherited;
  dtpInicio.Enabled := True; // habilita data incial
end;

procedure TfrConsVistoria.dtpFimChange(Sender: TObject);
begin
  inherited;
  // filtro com data inicial e data final
  FTabela.IndexFieldNames := 'BDDATAVIST';
  FTabela.Filter := ' BDDATAVIST >= ' + QuotedStr(FormatDateTime('yyyy-mm-dd', dtpInicio.Date)) +
                    ' and BDDATAVIST <= ' +  QuotedStr(FormatDateTime('yyyy-mm-dd', dtpFim.Date));
  FTabela.Filtered := True;
end;

procedure TfrConsVistoria.dtpInicioChange(Sender: TObject);
begin
  inherited;
  // filtro somente para a partir da data inicial
  FTabela.IndexFieldNames := 'BDDATAVIST';
  FTabela.Filter := ' BDDATAVIST >= ' + QuotedStr(FormatDateTime('yyyy-mm-dd', dtpInicio.Date));
  FTabela.Filtered := True;
end;

procedure TfrConsVistoria.edCodigoNomeChange(Sender: TObject);
begin
  inherited;
  if edCodigoNome.Text = EmptyStr then // limpa filtros se campo texto está vazio
     begin
       FTabela.Filtered := False;
       FTabela.Filter :=  EmptyStr;
     end;

  if cbFiltro.ItemIndex = 0 then // Verifica se selecionado o filtro por código
     begin
       FTabela.IndexFieldNames := 'BDCODVIST';
       if edCodigoNome.Text = EmptyStr then
          FTabela.Filtered := False
       else
          FTabela.Filter := ' BDCODVIST = ' + Trim(edCodigoNome.Text);
       FTabela.Filtered := True;
     end
  else
  if cbFiltro.ItemIndex = 1 then // Verifica se selecionado o filtro por data
     begin
       ckDataInicio.Enabled := True;
       ckDataFim.Enabled    := True;
     end
  else
  if cbFiltro.ItemIndex = 2 then // Verifica se selecionado o filtro por código do imóvel
     begin
       FTabela.IndexFieldNames := 'BDPKCODIMOV';
       if edCodigoNome.Text = EmptyStr then
          FTabela.Filtered := False
       else
          FTabela.Filter := ' BDPKCODIMOV =' + Trim(edCodigoNome.Text);
       FTabela.Filtered := True;
     end
  else
  if cbFiltro.ItemIndex = 3 then  //  Verifica se selecionado o filtro por código do cliente
     begin
       FTabela.IndexFieldNames := 'BDPKCODCLT';
       if edCodigoNome.Text = EmptyStr then
          FTabela.Filtered := False
       else
          FTabela.Filter := ' BDPKCODCLT =' + Trim(edCodigoNome.Text);
       FTabela.Filtered := True;
     end;
end;

procedure TfrConsVistoria.edCodigoNomeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := AnsiUpperCase(Key)[1]; //Letras maiúsculas no campo filtro
end;

procedure TfrConsVistoria.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  // desabilita filtros na tabela
  FTabela.Filtered := False;
end;

procedure TfrConsVistoria.FormCreate(Sender: TObject);
begin
  inherited;
  // limpa filtros
  dmTabelas.tbVistoria.Filter := EmptyStr;
  // Indexa tabela de ambientes pelo campo de código de vistoria
  dmTabelas.tbAmbiente.IndexFieldNames := 'BDPKCODVIST';
end;

function TfrConsVistoria.setCamposChaveDetalhe: string;
begin
  // retorna campo ID no BD
  Result := 'BDCODVIST';
end;

function TfrConsVistoria.setTabela: TClientDataSet;
begin
  // retorna tabela de vistoria no BD
  Result := dmTabelas.tbVistoria;
end;

function TfrConsVistoria.setTabelaDetalhe: TClientDataSet;
begin
  // retorna tabela de ambiente no BD
  Result := dmTabelas.tbAmbiente;
end;

end.
