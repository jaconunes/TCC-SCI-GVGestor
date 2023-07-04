unit uPadraoRelatorioGVGESTOR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ComCtrls,
  System.ImageList, Vcl.ImgList, Data.FMTBcd, frxExportDOCX, frxClass,
  frxExportPDF, Data.DB, Data.SqlExpr, frxDBSet, frxDesgn, udmConnectionGVGestor;

type
  TfrPadraoRelatorioGVGESTOR = class(TForm)
    ToolBar1: TToolBar;
    GroupBox1: TGroupBox;
    btVisualizar: TToolButton;
    btSalvarComo: TToolButton;
    btEditarReport: TToolButton;
    ImageList1: TImageList;
    frxReportPadrao: TfrxReport;
    frxDesigner1: TfrxDesigner;
    frxDBDataset1: TfrxDBDataset;
    SQLQueryPadrao: TSQLQuery;
    PrintDialog1: TPrintDialog;
    frxPDFExport1: TfrxPDFExport;
    frxDOCXExport1: TfrxDOCXExport;
    SaveDialog1: TSaveDialog;
    procedure FormCreate(Sender: TObject);
    procedure btEditarReportClick(Sender: TObject);
  private
    { Private declarations }
    procedure fCarregaFrxPadrao(Tabela: TfrPadraoRelatorioGVGESTOR);
    procedure pGetConsultaSql; virtual; abstract;
  public
    { Public declarations }
  end;

var
  frPadraoRelatorioGVGESTOR: TfrPadraoRelatorioGVGESTOR;

implementation

{$R *.dfm}

{ TfrPadraoRelatorioGVGESTOR }

procedure TfrPadraoRelatorioGVGESTOR.btEditarReportClick(Sender: TObject);
var
  wReport: TfrxReport;
begin
  pGetConsultaSql;
  fCarregaFrxPadrao(self);
  wReport.DesignReport;
end;

procedure TfrPadraoRelatorioGVGESTOR.fCarregaFrxPadrao(
  Tabela: TfrPadraoRelatorioGVGESTOR);
begin
  TfrxReport.LoadFromFile('C:\TCC - Gestor de Vistorias\Reports\' + Tabela.Name + '.fr3');
end;

procedure TfrPadraoRelatorioGVGESTOR.FormCreate(Sender: TObject);
begin
  SQLQueryPadrao.SQLConnection := dmConnection.SQLConnectionGVGESTOR;
end;

end.
