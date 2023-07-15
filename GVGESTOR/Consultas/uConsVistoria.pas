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
    btFiltrar: TButton;
    Label2: TLabel;
    Label3: TLabel;
    dtpInicio: TDateTimePicker;
    dtpFim: TDateTimePicker;
    procedure FormCreate(Sender: TObject);
    procedure btFiltrarClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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

uses udmDadosGVGESTOR;

{ TfrPadraoConsultaGVGSTOR2 }

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
