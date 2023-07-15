unit uPadraoConsultaDetalheGVGESTOR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoConsultaGVGESTOR, Data.DB,
  Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.ToolWin, Datasnap.DBClient, Data.FMTBcd, Data.SqlExpr,
  Datasnap.Provider;

type
  TfrPadraoConsultaDetalheGVGSTOR = class(TfrPadraoConsultaGVGSTOR)
    ToolBar2: TToolBar;
    ToolButton6: TToolButton;
    ToolButton8: TToolButton;
    ToolButton10: TToolButton;
    ToolButton12: TToolButton;
    Splitter1: TSplitter;
    Panel1: TPanel;
    grDetalhe: TDBGrid;
    dsDetalhe: TDataSource;
    btAnteriorDetalhe: TToolButton;
    btProximoDetalhe: TToolButton;
    btExcluirDetalhe: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure btExcluirDetalheClick(Sender: TObject);
    procedure btAnteriorDetalheClick(Sender: TObject);
    procedure btProximoDetalheClick(Sender: TObject);
  private
    { Private declarations }
    FTabelaDetalhe : TClientDataSet;
  public
    { Public declarations }
    function setTabelaDetalhe      : TClientDataSet; virtual; abstract; // Carrega tabela de detalhe
    function setCamposChaveDetalhe :  String; virtual; abstract; // Carrega campo chave para detalhe
    function getPodeExcluirDetalhe : Boolean; virtual; // Confirma exclusão no detalhe
    procedure pLimpaFiltros(wTabela : TClientDataset); virtual;  // Limpa filtros
  end;

var
  frPadraoConsultaDetalheGVGSTOR: TfrPadraoConsultaDetalheGVGSTOR;

implementation

{$R *.dfm}

uses udmConnectionGVGestor;

{ TfrPadraoConsultaGVGSTOR1 }

procedure TfrPadraoConsultaDetalheGVGSTOR.btAnteriorDetalheClick(Sender: TObject);
begin
  inherited;
  FTabelaDetalhe.Prior; // navega para registro anterior
end;

procedure TfrPadraoConsultaDetalheGVGSTOR.btExcluirDetalheClick(Sender: TObject);
begin
  inherited;
  // Faz exclusão do registro no grid de detalhe
  if getPodeExcluirDetalhe and Assigned(FTabelaDetalhe) and (not FTabelaDetalhe.IsEmpty) then
    begin
      FTabelaDetalhe.Delete;
      FTabelaDetalhe.ApplyUpdates(0);
      FTabelaDetalhe.Refresh;
    end;
end;

procedure TfrPadraoConsultaDetalheGVGSTOR.btProximoDetalheClick(Sender: TObject);
begin
  inherited;
  FTabelaDetalhe.Next; // navega para registro proximo
end;

procedure TfrPadraoConsultaDetalheGVGSTOR.FormCreate(Sender: TObject);
begin
  inherited;
  FTabelaDetalhe := setTabelaDetalhe;
  pLimpaFiltros(FTabelaDetalhe);
  // Carrega o grid com o filtro da chave do grid principal
  if Assigned(FTabelaDetalhe) then
    begin
      dsDetalhe.DataSet  := FTabelaDetalhe;
      FTabelaDetalhe.MasterFields := setCamposChaveDetalhe;
      FTabelaDetalhe.MasterSource := dsConsulta;
    end;
end;

function TfrPadraoConsultaDetalheGVGSTOR.getPodeExcluirDetalhe: Boolean;
begin
  // Confirma exclusão de registro
  Result:= MessageDlg('Deseja excluir esse registro?',mtWarning,[mbYes,mbNo], 0) = mrYes;
end;

procedure TfrPadraoConsultaDetalheGVGSTOR.pLimpaFiltros(
  wTabela: TClientDataset);
begin
  // Limpa filtros
  wTabela.Filter   := EmptyStr;
  wTabela.Filtered := False;
end;

end.
