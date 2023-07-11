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
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    Splitter1: TSplitter;
    Panel1: TPanel;
    grDetalhe: TDBGrid;
    dsDetalhe: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
  private
    { Private declarations }
    FTabelaDetalhe : TClientDataSet;
  public
    { Public declarations }
    function setTabelaDetalhe      : TClientDataSet; virtual; abstract;
    function setCamposChaveDetalhe :  String; virtual; abstract;
    function getPodeExcluirDetalhe : Boolean; virtual;
    procedure pLimpaFiltros(wTabela : TClientDataset); virtual;
  end;

var
  frPadraoConsultaDetalheGVGSTOR: TfrPadraoConsultaDetalheGVGSTOR;

implementation

{$R *.dfm}

uses udmConnectionGVGestor;

{ TfrPadraoConsultaGVGSTOR1 }

procedure TfrPadraoConsultaDetalheGVGSTOR.btExcluirClick(Sender: TObject);
begin
  inherited;
  if getPodeExcluirDetalhe and Assigned(FTabelaDetalhe) and (not FTabelaDetalhe.IsEmpty) then
    begin
      FTabelaDetalhe.Delete;
      FTabelaDetalhe.ApplyUpdates(0);
      FTabelaDetalhe.Refresh;
    end;
end;

procedure TfrPadraoConsultaDetalheGVGSTOR.FormCreate(Sender: TObject);
begin
  inherited;
  FTabelaDetalhe := setTabelaDetalhe;
  pLimpaFiltros(FTabelaDetalhe);
  if Assigned(FTabelaDetalhe) then
    begin
      dsDetalhe.DataSet  := FTabelaDetalhe;
      FTabelaDetalhe.MasterFields := setCamposChaveDetalhe;
      FTabelaDetalhe.MasterSource := dsConsulta;
    end;
end;

function TfrPadraoConsultaDetalheGVGSTOR.getPodeExcluirDetalhe: Boolean;
begin
  Result:= MessageDlg('Deseja excluir esse registro?',mtWarning,[mbYes,mbNo], 0) = mrYes;
end;

procedure TfrPadraoConsultaDetalheGVGSTOR.pLimpaFiltros(
  wTabela: TClientDataset);
begin
  wTabela.Filter   := EmptyStr;
  wTabela.Filtered := False;
end;

end.
