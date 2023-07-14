unit uConsProprietario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoConsultaGVGESTOR, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.ToolWin, Datasnap.DBClient, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrConsProprietario = class(TfrPadraoConsultaGVGSTOR)
    Panel1: TPanel;
    edCodigoNome: TEdit;
    cbFiltro: TComboBox;
    Label1: TLabel;
    btLimpar: TButton;
    btFiltrar: TButton;
    procedure btEditarClick(Sender: TObject);
    procedure btFiltrarClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    function setTabela: TClientDataSet; override;
    { Public declarations }

  end;

var
  frConsProprietario: TfrConsProprietario;

implementation

{$R *.dfm}

uses udmDadosGVGESTOR, uCadProprietario;

{ TfrConsProprietario }

procedure TfrConsProprietario.btEditarClick(Sender: TObject);
begin
  inherited;
  TfrCadProprietario.Create(self).Show;
end;

procedure TfrConsProprietario.btFiltrarClick(Sender: TObject);
begin
  inherited;
  FTabela.Filtered := False;
  FTabela.Filter :=  EmptyStr;

  if cbFiltro.ItemIndex = 0 then
     begin
       FTabela.IndexFieldNames := 'BDCDPROPR';
       FTabela.Filter := ' BDCDPROPR = ' + Trim(edCodigoNome.Text);
       FTabela.Filtered := True;
     end
  else
  if cbFiltro.ItemIndex = 1 then
     begin
       FTabela.IndexFieldNames := 'BDNOME';
       FTabela.Filter := ' BDNOME like ''%' + edCodigoNome.Text + '%''';
       FTabela.Filtered := True;
     end;
end;

procedure TfrConsProprietario.btLimparClick(Sender: TObject);
begin
  inherited;
  FTabela.Filtered := False;
end;

procedure TfrConsProprietario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FTabela.Filtered := False;
end;

function TfrConsProprietario.setTabela: TClientDataSet;
begin
  Result := dmTabelas.tbProprietario;
end;

end.
