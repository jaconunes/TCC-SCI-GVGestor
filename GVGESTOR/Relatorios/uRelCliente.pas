unit uRelCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoRelatorioGVGESTOR, Data.FMTBcd,
  frxExportDOCX, frxClass, frxExportPDF, Data.DB, Data.SqlExpr, frxDBSet,
  frxDesgn, System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ToolWin, EditSCI, Vcl.ExtCtrls;

type
  TfrRelCliente = class(TfrPadraoRelatorioGVGESTOR)
    edCodigo: TEdit_Numero_PEDSCI;
    Label1: TLabel;
    edNome: TEdit;
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
  frRelCliente: TfrRelCliente;

implementation

{$R *.dfm}

{ TfrRelCliente }

function TfrRelCliente.fGetNomeArquivo: string;
begin
  // Retorna nome do arquivo para o "Salvar como"
  Result := Caption;
end;

procedure TfrRelCliente.pGetConsultaMasterSource;
begin
  inherited;
end;

procedure TfrRelCliente.pGetConsultaSql;
begin
  inherited;
  // Consulta na tabela de clientes
  SQLQueryPadrao.Close;
  SQLQueryPadrao.SQL.Clear;
  SQLQueryPadrao.SQL.Add('select * from TCLIENTE');

  if edCodigo.Codigo > 0 then // filtro por codigo
     begin
       SQLQueryPadrao.SQL.Add('where BDCODCLI = :codprop');
       SQLQueryPadrao.ParamByName('codprop').AsInteger := edCodigo.Codigo;
     end
  else
  if edNome.Text <> EmptyStr then // filtro por endere�o
     begin
       SQLQueryPadrao.SQL.Add('where BDNOME like ''%' + edNome.Text + '%''');
     end;
  // Ordena��o da raz�o social por ordem alfab�tica
  SQLQueryPadrao.SQL.Add(' order by BDRASOCIAL ASC');

  SQLQueryPadrao.Open;
  frxDBDataset1.UserName := 'Consulta de Cliente';
end;

end.
