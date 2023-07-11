unit uRelVistoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoRelatorioGVGESTOR, Data.FMTBcd,
  frxExportDOCX, frxClass, frxExportPDF, Data.DB, Data.SqlExpr, frxDBSet,
  frxDesgn, System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ToolWin, EditSCI;

type
  TfrRelVistoria = class(TfrPadraoRelatorioGVGESTOR)
    edCodigo: TEdit_Numero_PEDSCI;
    dtpDataInicio: TDateTimePicker;
    dtpDataFim: TDateTimePicker;
    ckData: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
  private
    { Private declarations }
  public
    procedure pGetConsultaSql; override;
    { Public declarations }

  end;

var
  frRelVistoria: TfrRelVistoria;

implementation

{$R *.dfm}

{ TfrRelVistoria }

procedure TfrRelVistoria.pGetConsultaSql;
begin
  inherited;
  SQLQueryPadrao.Close;
  SQLQueryPadrao.SQL.Clear;
  SQLQueryPadrao.SQL.Add('select v.bdcodvist, v.bddatavist, v.bdtipoloc,');
  SQLQueryPadrao.SQL.Add(' i.bdendereco, i.bdnumero, i.bdbairro, l.bdnome from tvistoria v ');
  SQLQueryPadrao.SQL.Add(' join timovel i on (i.bdcodimovel = v.bdpkcodimov) ');
  SQLQueryPadrao.SQL.Add(' join tlocatario l on (l.bdcdlocat = v.bdpkcodlocat) ');

  if edCodigo.Codigo > 0 then // filtro por codigo
     SQLQueryPadrao.SQL.Add('where v.BDCODIMOVEL = ' + edCodigo.Text)
  else
  if ckData.Checked then // filtro por data
     begin
       SQLQueryPadrao.SQL.Add(' where v.BDDATAVIST >= :dataini');
       SQLQueryPadrao.SQL.Add(' and v.BDDATAVIST <= :datafin');
       SQLQueryPadrao.ParamByName('dataini').AsDate := dtpDataInicio.Date;
       SQLQueryPadrao.ParamByName('datafin').AsDate := dtpDataFim.Date;
     end;
  SQLQueryPadrao.SQL.Add('order by v.BDDATAVIST');

  SQLQueryPadrao.Open;
  frxDBDataset1.UserName := 'Consulta de Vistorias';
end;

end.
