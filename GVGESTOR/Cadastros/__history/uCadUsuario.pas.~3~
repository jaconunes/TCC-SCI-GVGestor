unit uCadUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoCadastroGVGESTOR,
  System.ImageList, Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls,
  Vcl.ExtCtrls, Datasnap.DBClient;

type
  TfrCadUsuario = class(TfrPadraoCadastroGVGESTOR)
    edNome: TEdit;
    edCpfCnpj: TEdit;
    cbPerfil: TComboBox;
    edSenha: TEdit;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label2: TLabel;
    Label3: TLabel;
    edCodigo: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    edRepitaSenha: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
    function setTabela: TClientDataSet; override;
    function setIDEdit: TWinControl; override;
    function setLastEdit: TWinControl; override;
    procedure CarregaCampos; override;
    procedure SalvarCampos; override;

  end;

var
  frCadUsuario: TfrCadUsuario;

implementation

{$R *.dfm}

uses udmDadosGVGESTOR;

{ TfrCadUsuario }

procedure TfrCadUsuario.CarregaCampos;
begin
  inherited;
  edNome.Text    := FTabela.FieldByName('BDUSUARIO').AsString;
  edCpfCnpj.Text := FTabela.FieldByName('BDCPFCNPJ').AsString;
  cbPerfil.Text  :=  FTabela.FieldByName('BDPERFIL').AsString;
  edSenha.Text   := FTabela.FieldByName('BDSENHA').AsString;
  edNome.Text    := FTabela.FieldByName('BDNOME').AsString;
end;

procedure TfrCadUsuario.SalvarCampos;
begin
  inherited;
  FTabela.FieldByName('BDCODIGO').AsInteger := StrToInt(edCodigo.Text);
  FTabela.FieldByName('BDUSUARIO').AsString := edNome.Text;
  FTabela.FieldByName('BDCPFCNPJ').AsString := edCpfCnpj.Text;
  FTabela.FieldByName('BDPERFIL').AsString  := cbPerfil.Items[cbPerfil.ItemIndex];
  FTabela.FieldByName('BDSENHA').AsString   := edSenha.Text;
  FTabela.FieldByName('BDNOME').AsString    := edNome.Text;
end;

function TfrCadUsuario.setIDEdit: TWinControl;
begin
  Result:= edCodigo;
end;

function TfrCadUsuario.setLastEdit: TWinControl;
begin
  Result := edRepitaSenha;
end;

function TfrCadUsuario.setTabela: TClientDataSet;
begin
  FTabela := dmTabelas.tbUsuario;
end;

end.
