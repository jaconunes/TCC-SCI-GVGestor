unit uConsCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoConsultaGVGESTOR, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.ToolWin, Datasnap.DBClient, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrConsCliente = class(TfrPadraoConsultaGVGSTOR)
    Panel1: TPanel;
    edCodigoNome: TEdit;
    cbFiltro: TComboBox;
    Label1: TLabel;
    btLimpar: TButton;
    procedure btEditarClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edCodigoNomeChange(Sender: TObject);
    procedure edCodigoNomeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    function setTabela: TClientDataSet; override; // carrega tabela no BD
  end;

var
  frConsCliente: TfrConsCliente;

implementation

{$R *.dfm}

uses udmDadosGVGESTOR, uCadCliente;

{ TfrConsCliente }

procedure TfrConsCliente.btEditarClick(Sender: TObject);
begin
  inherited;
  // cria form de cadastro de cliente
  TfrCadCliente.Create(self).Show;
end;

procedure TfrConsCliente.btLimparClick(Sender: TObject);
begin
  inherited;
  // limpa filtro do grid
  FTabela.Filtered := False;
  edCodigoNome.Clear;
end;

procedure TfrConsCliente.edCodigoNomeChange(Sender: TObject);
begin
  inherited;
  FTabela.Filtered := False;
  FTabela.Filter :=  EmptyStr;

  if cbFiltro.ItemIndex = 0 then // filtro por c�digo
     begin
       FTabela.IndexFieldNames := 'BDCODCLI';
       if edCodigoNome.Text = EmptyStr then
          FTabela.Filtered := False
       else
          FTabela.Filter := ' BDCODCLI = ' + Trim(edCodigoNome.Text);
       FTabela.Filtered := True;
     end
  else
  if cbFiltro.ItemIndex = 1 then // filtro por raz�o social
     begin
       FTabela.IndexFieldNames := 'BDRASOCIAL';
       FTabela.Filter := ' BDRASOCIAL like ''%' + edCodigoNome.Text + '%''';
       FTabela.Filtered := True;
     end;
end;

procedure TfrConsCliente.edCodigoNomeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := AnsiUpperCase(Key)[1]; //Letras mai�sculas no campo filtro
end;

procedure TfrConsCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  // desativa filtros da tabela
  FTabela.Filtered := False;
end;

function TfrConsCliente.setTabela: TClientDataSet;
begin
  // retorna tabela no BD
  Result := dmTabelas.tbCliente;
end;

end.
