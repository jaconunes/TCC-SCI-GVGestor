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
    function setTabela: TClientDataSet; override;
    function setTabelaDetalhe: TClientDataSet; override;
    function setCamposChaveDetalhe: string; override;
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
  FTabela.Filtered := False;
end;

procedure TfrConsVistoria.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FTabela.Filtered := False;
end;

procedure TfrConsVistoria.FormCreate(Sender: TObject);
begin
  inherited;
  dmTabelas.tbVistoria.Filter := EmptyStr;
  dmTabelas.tbAmbiente.IndexFieldNames := 'BDPKCODVIST';
end;

function TfrConsVistoria.setCamposChaveDetalhe: string;
begin
  Result := 'BDCODVIST';
end;

function TfrConsVistoria.setTabela: TClientDataSet;
begin
  Result := dmTabelas.tbVistoria;
end;

function TfrConsVistoria.setTabelaDetalhe: TClientDataSet;
begin
  Result := dmTabelas.tbAmbiente;
end;

end.
