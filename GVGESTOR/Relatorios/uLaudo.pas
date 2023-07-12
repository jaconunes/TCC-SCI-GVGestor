unit uLaudo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoRelatorioGVGESTOR, Data.FMTBcd,
  frxExportDOCX, frxClass, frxExportPDF, Data.DB, Data.SqlExpr, frxDBSet,
  frxDesgn, System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.Buttons, EditSCI;

type
  TfrLaudo = class(TfrPadraoRelatorioGVGESTOR)
    edCodigo: TEdit_Numero_PEDSCI;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure edCodigoChange(Sender: TObject);
  private
    { Private declarations }
  public
    procedure pGetConsultaSql; override;
    { Public declarations }

  end;

var
  frLaudo: TfrLaudo;

implementation

{$R *.dfm}

uses uConsVistoria, udmDadosGVGESTOR;

procedure TfrLaudo.edCodigoChange(Sender: TObject);
begin
  inherited;
  if dmTabelas.tbVistoria.FindKey([edCodigo.Text]) then
     begin
       ToolBar1.Enabled := True;
     end;
end;

procedure TfrLaudo.pGetConsultaSql;
begin
  inherited;
//  if (edCodigo.Text = EmptyStr) or (edCodigo.Codigo = 0) then
//     begin
//       ShowMessage('Selecione uma vistoria!');
//       edCodigo.SetFocus;
//     end
//  else
//     begin
       SQLQueryPadrao.Close;
       SQLQueryPadrao.SQL.Clear;
       SQLQueryPadrao.SQL.Add('select v.*,');
       SQLQueryPadrao.SQL.Add(' i.bdcodimovel, i.bdtipoimovel, i.bdquantamb, i.bdendereco as ENDIMOVEL,');
       SQLQueryPadrao.SQL.Add(' i.bdnumero as NUMIMOVEL, I.bdbairro AS BAIRROIMOVEL, I.bdcidade AS CIDADEIMOVEL,');
       SQLQueryPadrao.SQL.Add(' P.bdnome as NOMEPROP, P.bdcpfcnpj AS CPFCNPJPROP,');
       SQLQueryPadrao.SQL.Add(' L.bdnome AS NOMELOCAT, L.bdcpfcnpj AS CPFCNPJLOCAT,');
       SQLQueryPadrao.SQL.Add(' U.bdnome AS NOMEUSUARIO, U.bdcpfcnpj AS CPFCNPJUSUARIO,');
       SQLQueryPadrao.SQL.Add(' C.bdrasocial AS RAZAOSOCIALCLI, C.bdcnpj AS CNPJCLIENTE,');
       SQLQueryPadrao.SQL.Add(' A.bdnome AS NOMEAMBIENTE, A.bdobsadc AS OBSADAMBIENTE,');
       SQLQueryPadrao.SQL.Add(' TI.bddescricao AS DESCITEM, TI.bdestado AS ESTADOITEM, TI.bdobsadc AS OBSADITEM,');
       SQLQueryPadrao.SQL.Add(' F.bddesc AS DESCFOTO, F.bdurl AS URLFOTO');

       SQLQueryPadrao.SQL.Add(' from  tvistoria v');

       SQLQueryPadrao.SQL.Add(' join timovel i on (i.bdcodimovel = v.bdpkcodimov)');
       SQLQueryPadrao.SQL.Add(' join tproprietario p on (p.bdcdpropr = i.bdpkcodprop)');
       SQLQueryPadrao.SQL.Add(' join tlocatario l on (l.bdcdlocat = v.bdpkcodlocat)');
       SQLQueryPadrao.SQL.Add(' join tusuario u on (u.bdcodigo = v.bdpkcodusu)');
       SQLQueryPadrao.SQL.Add(' join tcliente c on (c.bdcodcli = v.bdpkcodclt)');
       SQLQueryPadrao.SQL.Add(' join tambiente a on(a.bdpkcodvist = v.bdcodvist)');
       SQLQueryPadrao.SQL.Add(' join titem ti on (ti.bdpkcodamb = a.bdcodamb)');
       SQLQueryPadrao.SQL.Add(' join tfoto f on (f.bdpkcodamb = a.bdcodamb)');


       SQLQueryPadrao.SQL.Add('where v.bdcodvist = ' + edCodigo.Text);

       SQLQueryPadrao.Open;
       frxDBDataset1.UserName := 'Consulta de Laudo';
     //end;
end;

procedure TfrLaudo.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  TfrConsVistoria.Create(edCodigo);
end;

end.
