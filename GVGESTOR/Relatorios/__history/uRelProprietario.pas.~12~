unit uRelProprietario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoRelatorioGVGESTOR, Data.FMTBcd,
  frxExportDOCX, frxClass, frxExportPDF, Data.DB, Data.SqlExpr, frxDBSet,
  frxDesgn, System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ToolWin, EditSCI, Vcl.ExtCtrls;

type
  TfrRelProprietario = class(TfrPadraoRelatorioGVGESTOR)
    edCodigo: TEdit_Numero_PEDSCI;
    Label1: TLabel;
    Label2: TLabel;
    edNome: TEdit;
  private
    { Private declarations }
  public
    procedure pGetConsultaSql; override;
    procedure pGetConsultaMasterSource; override;
    { Public declarations }


  end;

var
  frRelProprietario: TfrRelProprietario;

implementation

{$R *.dfm}

{ TfrRelProprietario }

procedure TfrRelProprietario.pGetConsultaMasterSource;
begin
  inherited;

end;

procedure TfrRelProprietario.pGetConsultaSql;
begin
  inherited;
  SQLQueryPadrao.Close;
  SQLQueryPadrao.SQL.Clear;
  SQLQueryPadrao.SQL.Add('select * from TPROPRIETARIO');

  if edCodigo.Codigo > 0 then // filtro por codigo
     begin
       SQLQueryPadrao.SQL.Add(' where BDCDPROPR = :codprop');
       SQLQueryPadrao.ParamByName('codprop').AsInteger := edCodigo.Codigo;
     end
  else
  if edNome.Text <> EmptyStr then// filtro por endereço
     begin
       SQLQueryPadrao.SQL.Add(' where BDNOME like ''%' + edNome.Text + '%''');
       //SQLQueryPadrao.ParamByName('partnome').AsString := edNome.Text;
     end;
  SQLQueryPadrao.SQL.Add(' order by BDNOME ASC');

  SQLQueryPadrao.Open;
  frxDBDataset1.UserName := 'Consulta de Proprietário';
end;

end.
