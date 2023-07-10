unit uRelImovel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoRelatorioGVGESTOR, Data.FMTBcd,
  frxExportDOCX, frxClass, frxExportPDF, Data.DB, Data.SqlExpr, frxDBSet,
  frxDesgn, System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ToolWin, EditSCI;

type
  TfrRelImovel = class(TfrPadraoRelatorioGVGESTOR)
    edCodigo: TEdit_Numero_PEDSCI;
    Label1: TLabel;
    Label2: TLabel;
    ckData: TCheckBox;
    dtpDataInicio: TDateTimePicker;
    Label3: TLabel;
    dtpDataFim: TDateTimePicker;
    Label4: TLabel;
    Label5: TLabel;
    edEndereco: TEdit;
    procedure btEditarClick(Sender: TObject);
    procedure btVisualizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure pGetConsultaSql; override;

  end;

var
  frRelImovel: TfrRelImovel;

implementation

{$R *.dfm}

{ TfrPadraoRelatorioGVGESTOR1 }

procedure TfrRelImovel.btEditarClick(Sender: TObject);
begin
  inherited;
  pGetConsultaSql;
  fCarregaFrxPadrao(Screen.ActiveForm.Name);
  frxReportPadrao.DesignReport;
end;

procedure TfrRelImovel.btVisualizarClick(Sender: TObject);
begin
  pGetConsultaSql;
  fCarregaFrxPadrao(Screen.ActiveForm.Name);
  frxReportPadrao.ShowReport;
end;

procedure TfrRelImovel.pGetConsultaSql;
begin
  inherited;
  SQLQueryPadrao.Close;
  SQLQueryPadrao.SQL.Clear;
  SQLQueryPadrao.SQL.Add('select * from timovel');

  if edCodigo.Codigo > 0 then // filtro por codigo
     SQLQueryPadrao.SQL.Add('where BDCODIMOVEL = ' + edCodigo.Text)
  else
  if ckData.Checked then // filtro por data
     begin
       SQLQueryPadrao.SQL.Add(' where BDDATACAD >= :dataini');
       SQLQueryPadrao.SQL.Add(' and BDDATACAD <= :datafin');
       SQLQueryPadrao.ParamByName('dataini').AsDate := dtpDataInicio.Date;
       SQLQueryPadrao.ParamByName('datafin').AsDate := dtpDataFim.Date;
     end
  else
  if edEndereco.Text <> EmptyStr then// filtro por endere�o
     begin
       SQLQueryPadrao.SQL.Add('where BDENDERECO like ''%partend%''');
       SQLQueryPadrao.ParamByName('partend').AsString := edEndereco.Text;
     end;

  SQLQueryPadrao.Open;
  frxDBDataset1.UserName := 'Consulta de Im�veis';
end;

end.
