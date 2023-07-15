unit uRelVistoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoRelatorioGVGESTOR, Data.FMTBcd,
  frxExportDOCX, frxClass, frxExportPDF, Data.DB, Data.SqlExpr, frxDBSet,
  frxDesgn, System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ToolWin, EditSCI, Vcl.ExtCtrls;

type
  TfrRelVistoria = class(TfrPadraoRelatorioGVGESTOR)
    edCodigo: TEdit_Numero_PEDSCI;
    Label1: TLabel;
    dtpDataInicio: TDateTimePicker;
    dtpDataFim: TDateTimePicker;
    ckData: TCheckBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure pGetConsultaSql; override; // obtem consulta SQL se houver
    procedure pGetConsultaMasterSource; override; // obtem consulta MasterSource se houver
    function fGetNomeArquivo: string; override; // obtem nome do arquivo para salvar como
  end;

var
  frRelVistoria: TfrRelVistoria;

implementation

{$R *.dfm}

{ TfrRelVistoria }

function TfrRelVistoria.fGetNomeArquivo: string;
begin
  // Retorna o nome do arquivo para o "Salvar como"
  Result := Caption;
end;

procedure TfrRelVistoria.pGetConsultaMasterSource;
begin
  inherited;
end;

procedure TfrRelVistoria.pGetConsultaSql;
begin
  inherited;
  // Consulta na tabela de vistorias, vinculando ao im�vel e o locat�rio
  SQLQueryPadrao.Close;
  SQLQueryPadrao.SQL.Clear;
  SQLQueryPadrao.SQL.Add('select v.bdcodvist, v.bddatavist, v.bdtipoloc,');
  SQLQueryPadrao.SQL.Add(' i.BDCODIMOVEL, i.bdendereco, i.bdnumero, i.bdbairro, l.bdnome ');
  SQLQueryPadrao.SQL.Add(' from tvistoria v ');
  SQLQueryPadrao.SQL.Add(' join timovel i on (i.bdcodimovel = v.bdpkcodimov) ');
  SQLQueryPadrao.SQL.Add(' join tlocatario l on (l.bdcdlocat = v.bdpkcodlocat) ');

  if edCodigo.Codigo > 0 then // filtro por codigo
     SQLQueryPadrao.SQL.Add('where v.BDCODVIST = ' + edCodigo.Text)
  else
  if ckData.Checked then // filtro por data
     begin
       SQLQueryPadrao.SQL.Add(' where v.BDDATAVIST >= :dataini');
       SQLQueryPadrao.SQL.Add(' and v.BDDATAVIST <= :datafin');
       SQLQueryPadrao.ParamByName('dataini').AsDate := dtpDataInicio.Date;
       SQLQueryPadrao.ParamByName('datafin').AsDate := dtpDataFim.Date;
     end;
  // Ordena��o por data
  SQLQueryPadrao.SQL.Add('order by v.BDDATAVIST');

  SQLQueryPadrao.Open;
  frxDBDataset1.UserName := 'Consulta de Vistorias';
end;

end.
