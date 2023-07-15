unit uPadraoRelatorioGVGESTOR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ComCtrls,
  System.ImageList, Vcl.ImgList, Data.FMTBcd, frxExportDOCX, frxClass,
  frxExportPDF, Data.DB, Data.SqlExpr, frxDBSet, frxDesgn, udmConnectionGVGestor,
  Vcl.ExtCtrls, Datasnap.DBClient;

type
  TfrPadraoRelatorioGVGESTOR = class(TForm)
    ToolBar1: TToolBar;
    GroupBox1: TGroupBox;
    btVisualizar: TToolButton;
    btSalvarComo: TToolButton;
    btImprimir: TToolButton;
    ImageList1: TImageList;
    frxReportPadrao: TfrxReport;
    frxDesigner1: TfrxDesigner;
    frxDBDataset1: TfrxDBDataset;
    SQLQueryPadrao: TSQLQuery;
    PrintDialog1: TPrintDialog;
    frxPDFExport1: TfrxPDFExport;
    frxDOCXExport1: TfrxDOCXExport;
    SaveDialog1: TSaveDialog;
    btEditar: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    Panel1: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure btSalvarComoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btImprimirClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btVisualizarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
     procedure pGetConsultaSql; virtual; abstract;
     procedure fCarregaFrxPadrao(wName: String); virtual;
     procedure pGetConsultaMasterSource; virtual; abstract;
     procedure setLimpaFiltros(wTabela: TClientDataset); virtual;
     procedure setResetMasterSource(wTabela: TClientDataset); virtual;
  end;

var
  frPadraoRelatorioGVGESTOR: TfrPadraoRelatorioGVGESTOR;

implementation

{$R *.dfm}

{ TfrPadraoRelatorioGVGESTOR }

procedure TfrPadraoRelatorioGVGESTOR.btEditarClick(Sender: TObject);
begin
  pGetConsultaMasterSource;
  pGetConsultaSql;
  fCarregaFrxPadrao(Screen.ActiveForm.Name);
  frxReportPadrao.DesignReport;
end;

procedure TfrPadraoRelatorioGVGESTOR.btImprimirClick(Sender: TObject);
begin
  frxReportPadrao.PrepareReport;
  frxReportPadrao.PrintOptions.ShowDialog := False;
  if PrintDialog1.Execute then
     frxReportPadrao.Print;
end;

procedure TfrPadraoRelatorioGVGESTOR.btVisualizarClick(Sender: TObject);
begin
  pGetConsultaMasterSource;
  pGetConsultaSql;
  fCarregaFrxPadrao(Screen.ActiveForm.Name);
  frxReportPadrao.ShowReport;
end;

procedure TfrPadraoRelatorioGVGESTOR.btSalvarComoClick(Sender: TObject);
begin
  SaveDialog1.FileName := Caption;
  if SaveDialog1.Execute then
    begin
      if MessageDlg('Deseja abrir o arquivo exportado para visualização?', mtInformation, [mbYes,mbNo], 0) = mrYes then
      begin
        frxPDFExport1.OpenAfterExport := True;
        frxDOCXExport1.OpenAfterExport := True;
      end
      else
      begin
        frxPDFExport1.OpenAfterExport := False;
        frxDOCXExport1.OpenAfterExport := False;
      end;
      frxPDFExport1.FileName := StringReplace(SaveDialog1.FileName, ExtractFileExt(SaveDialog1.FileName), EmptyStr, [rfIgnoreCase]) + '.pdf';
      frxDOCXExport1.FileName := StringReplace(SaveDialog1.FileName, ExtractFileExt(SaveDialog1.FileName), EmptyStr, [rfIgnoreCase]) + '.docx';

      frxReportPadrao.PrepareReport;

      case SaveDialog1.FilterIndex of
      1: frxReportPadrao.Export(frxPDFExport1);
      2: frxReportPadrao.Export(frxDOCXExport1);
      end;
    end;
end;

procedure TfrPadraoRelatorioGVGESTOR.fCarregaFrxPadrao(
  wName: String);
begin
  frxReportPadrao.LoadFromFile('C:\TCC - Gestor de Vistorias\Reports\' + wName + '.fr3');
end;

procedure TfrPadraoRelatorioGVGESTOR.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrPadraoRelatorioGVGESTOR.FormCreate(Sender: TObject);
begin
  SQLQueryPadrao.SQLConnection := dmConnection.SQLConnectionGVGESTOR;
  frxDBDataset1.DataSet        := SQLQueryPadrao;
end;

procedure TfrPadraoRelatorioGVGESTOR.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then// tecla de atalho para fechar a tela
     Close
  else
  if Key = VK_F4 then
     btVisualizar.Click
  else
  if Key = VK_F5 then
     btSalvarComo.Click
  else
  if Key = VK_F6 then
     btImprimir.Click
  else
  if Key = VK_F7 then
     btEditar.Click;
end;

procedure TfrPadraoRelatorioGVGESTOR.setLimpaFiltros(wTabela: TClientDataset);
begin
  wTabela.Filtered := False;
  wTabela.Filter := EmptyStr;
end;

procedure TfrPadraoRelatorioGVGESTOR.setResetMasterSource(wTabela: TClientDataset);
begin
  wTabela.MasterSource := nil;
  wTabela.IndexFieldNames := EmptyStr;
  wTabela.MasterFields := EmptyStr;
end;

procedure TfrPadraoRelatorioGVGESTOR.FormResize(Sender: TObject);
begin
  self.Left := (Application.MainForm.ClientWidth div 2) - (self.Width div 2);
  self.Top := (Application.MainForm.ClientHeight div 2) - (self.Height div 2);
  Application.MainForm.Update;
  self.Update;
end;

end.
