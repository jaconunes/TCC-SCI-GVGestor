unit uConsImovel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoConsultaGVGESTOR, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.ToolWin, Datasnap.DBClient, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrConsImovel = class(TfrPadraoConsultaGVGSTOR)
    Panel1: TPanel;
    cbFiltro: TComboBox;
    Label1: TLabel;
    btFiltrar: TButton;
    edTextFiltro: TEdit;
    dtpInicio: TDateTimePicker;
    dtpFim: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    btLimpar: TButton;
    procedure btEditarClick(Sender: TObject);
    procedure cbFiltroChange(Sender: TObject);
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
  frConsImovel: TfrConsImovel;

implementation

{$R *.dfm}

uses udmDadosGVGESTOR, uCadImovel;

{ TfrConsImovel }

procedure TfrConsImovel.btEditarClick(Sender: TObject);
begin
  inherited;
  TfrCadImovel.Create(self).Show;
end;

procedure TfrConsImovel.btFiltrarClick(Sender: TObject);
begin
  inherited;
  FTabela.Filtered := False;
  FTabela.Filter :=  EmptyStr;

  if cbFiltro.ItemIndex = 0 then
     begin
       FTabela.IndexFieldNames := 'BDCODIMOVEL';
       FTabela.Filter := ' BDCODIMOVEL =' + Trim(edTextFiltro.Text);
       FTabela.Filtered := True;
     end
  else
  if cbFiltro.ItemIndex = 1 then
     begin
       FTabela.IndexFieldNames := 'BDDATACAD';
       FTabela.Filter := ' BDDATACAD >= ' + QuotedStr(FormatDateTime('yyyy-mm-dd', dtpInicio.Date)) +
                         ' and BDDATACAD <= ' +  QuotedStr(FormatDateTime('yyyy-mm-dd', dtpFim.Date));
       FTabela.Filtered := True;
     end
  else
  if cbFiltro.ItemIndex = 2 then
     begin
       FTabela.IndexFieldNames := 'BDENDERECO';
       FTabela.Filter := ' BDENDERECO like ''%' + edTextFiltro.Text + '%''';
       FTabela.Filtered := True;
     end;
end;

procedure TfrConsImovel.btLimparClick(Sender: TObject);
begin
  inherited;
  FTabela.Filtered := False;
end;

procedure TfrConsImovel.cbFiltroChange(Sender: TObject);
begin
  inherited;
  if cbFiltro.ItemIndex = 0 then
     edTextFiltro.Enabled := True
  else
  if cbFiltro.ItemIndex = 1 then
     begin
       dtpInicio.Enabled := True;
       dtpFim.Enabled := True;
     end
  else
  if cbFiltro.ItemIndex = 2 then
     edTextFiltro.Enabled := True;
end;

procedure TfrConsImovel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FTabela.Filtered := False;
end;

function TfrConsImovel.setTabela: TClientDataSet;
begin
  Result := dmTabelas.tbImovel;
end;

end.
