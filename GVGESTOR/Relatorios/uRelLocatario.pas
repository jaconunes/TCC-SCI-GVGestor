unit uRelLocatario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoRelatorioGVGESTOR, Data.FMTBcd,
  frxExportDOCX, frxClass, frxExportPDF, Data.DB, Data.SqlExpr, frxDBSet,
  frxDesgn, System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ToolWin, EditSCI, Vcl.ExtCtrls;

type
  TfrRelLocatario = class(TfrPadraoRelatorioGVGESTOR)
    edCodigo: TEdit_Numero_PEDSCI;
    edNome: TEdit;
    Label1: TLabel;
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure pGetConsultaSql; override; // obtem consulta SQL se houver
    procedure pGetConsultaMasterSource; override; // obtem consulta MasterSource se houver
    function fGetNomeArquivo: string; override; // obtem nome do arquivo para salvar como
  end;

var
  frRelLocatario: TfrRelLocatario;

implementation

{$R *.dfm}

{ TfrRelLocatario }

function TfrRelLocatario.fGetNomeArquivo: string;
begin
  // Retorna o nome do arquivo para o "Salvar Como"
  Result := Caption;
end;

procedure TfrRelLocatario.pGetConsultaMasterSource;
begin
  inherited;
end;

procedure TfrRelLocatario.pGetConsultaSql;
begin
  inherited;
  // Consulta na tabela de locat�rios
  SQLQueryPadrao.Close;
  SQLQueryPadrao.SQL.Clear;
  SQLQueryPadrao.SQL.Add('select * from TLOCATARIO');

  if edCodigo.Codigo > 0 then // filtro por codigo
     begin
       SQLQueryPadrao.SQL.Add('where BDCDLOCAT = :codprop');
       SQLQueryPadrao.ParamByName('codprop').AsInteger := edCodigo.Codigo;
     end
  else
  if edNome.Text <> EmptyStr then// filtro por endere�o
     begin
       SQLQueryPadrao.SQL.Add('where BDNOME like ''%' + edNome.Text + '%''');
       //SQLQueryPadrao.ParamByName('partnome').AsString := edNome.Text;
     end;
  // Ordena��o por ordem alfab�tica
  SQLQueryPadrao.SQL.Add(' order by BDNOME ASC');

  SQLQueryPadrao.Open;
  frxDBDataset1.UserName := 'Consulta de Locat�rio';
end;

end.
