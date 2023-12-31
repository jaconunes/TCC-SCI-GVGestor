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
    { Public declarations }
    procedure pGetConsultaSql; override; // obtem consulta SQL se houver
    procedure pGetConsultaMasterSource; override; // obtem consulta MasterSource se houver
    function fGetNomeArquivo: string; override; // obtem nome do arquivo para salvar como
  end;

var
  frRelProprietario: TfrRelProprietario;

implementation

{$R *.dfm}

{ TfrRelProprietario }

function TfrRelProprietario.fGetNomeArquivo: string;
begin
  // Retorna o nome do arquivo no "Salvar Como"
  Result := Caption;
end;

procedure TfrRelProprietario.pGetConsultaMasterSource;
begin
  inherited;
end;

procedure TfrRelProprietario.pGetConsultaSql;
begin
  inherited;
  // Consulta na tabela de proprietários
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
  // Ordenação por ordem alfabética
  SQLQueryPadrao.SQL.Add(' order by BDNOME ASC');

  SQLQueryPadrao.Open;
  frxDBDataset1.UserName := 'Consulta de Proprietário';
end;

end.
