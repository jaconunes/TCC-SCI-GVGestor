unit uConsLocatario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoConsultaGVGESTOR, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.ToolWin, Datasnap.DBClient, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrConsLocatario = class(TfrPadraoConsultaGVGSTOR)
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
  frConsLocatario: TfrConsLocatario;

implementation

{$R *.dfm}

uses udmDadosGVGESTOR, uCadLocatario;

{ TfrConsLocatario }

procedure TfrConsLocatario.btEditarClick(Sender: TObject);
begin
  inherited;
  TfrCadLocatario.Create(self).Show;
end;

procedure TfrConsLocatario.btFiltrarClick(Sender: TObject);
begin
  inherited;
  FTabela.Filtered := False;
  FTabela.Filter :=  EmptyStr;

  if cbFiltro.ItemIndex = 0 then
     begin
       FTabela.IndexFieldNames := 'BDCDLOCAT';
       FTabela.Filter := ' BDCDLOCAT = ' + Trim(edCodigoNome.Text);
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

procedure TfrConsLocatario.btLimparClick(Sender: TObject);
begin
  inherited;
  FTabela.Filtered := False;
end;

procedure TfrConsLocatario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FTabela.Filtered := False;
end;

function TfrConsLocatario.setTabela: TClientDataSet;
begin
  Result := dmTabelas.tbLocatario;
end;

end.
