unit uCadUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoCadastroGVGESTOR,
  System.ImageList, Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls,
  Vcl.ExtCtrls, Datasnap.DBClient, EditSCI, Data.Db;

type
  TfrCadUsuario = class(TfrPadraoCadastroGVGESTOR)
    edNome: TEdit;
    edCpfCnpj: TEdit;
    cbPerfil: TComboBox;
    edSenha: TEdit;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    rbCpf: TRadioButton;
    rbCnpj: TRadioButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edRepitaSenha: TEdit;
    edCodigo: TEdit_Numero_PEDSCI;
    Label6: TLabel;
    edUsuario: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure rbCpfClick(Sender: TObject);
    procedure rbCnpjClick(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure edCpfCnpjExit(Sender: TObject);
    procedure edSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure edRepitaSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure edNomeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    function setTabela: TClientDataSet; override;
    function setIDEdit: TWinControl; override;
    function setLastEdit: TWinControl; override;
    procedure CarregaCampos; override;
    procedure SalvarCampos; override;
    function ValidaCampos: Boolean; override;
    function fSetFieldName: string; override;

  end;

var
  frCadUsuario: TfrCadUsuario;

implementation

{$R *.dfm}

uses udmDadosGVGESTOR, uConsUsuario, uPrincipal;

{ TfrCadUsuario }

procedure TfrCadUsuario.btPesquisarClick(Sender: TObject);
begin
  TfrConsUsuario.Create(edCodigo);
end;

procedure TfrCadUsuario.CarregaCampos;
begin
  inherited;
  edNome.Text        := FTabela.FieldByName('BDUSUARIO').AsString;
  edCpfCnpj.Text     := FTabela.FieldByName('BDCPFCNPJ').AsString;
  cbPerfil.Text      := FTabela.FieldByName('BDPERFIL').AsString;
  edSenha.Text       := FTabela.FieldByName('BDSENHA').AsString;
  edUsuario.Text     := FTabela.FieldByName('BDUSUARIO').AsString;
  edRepitaSenha.Text := FTabela.FieldByName('BDSENHA').AsString;
  edNome.Text        := FTabela.FieldByName('BDNOME').AsString;
end;

procedure TfrCadUsuario.edCpfCnpjExit(Sender: TObject);
begin
  inherited;
  edCpfCnpj.Text := fAplicaMascara(edCpfCnpj.Text);
end;

procedure TfrCadUsuario.edNomeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := AnsiUpperCase(Key)[1]; //Letras maiúsculas
end;

procedure TfrCadUsuario.edRepitaSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  Key := Key;
end;

procedure TfrCadUsuario.edSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  Key := Key;
end;

procedure TfrCadUsuario.FormCreate(Sender: TObject);
begin
  inherited;
  if Owner is TfrConsUsuario then
     edCodigo.Text := IntToStr(TfrConsUsuario(Owner).grConsulta.Columns[0].Field.AsInteger)
  else
  if frPrincipal.fGetUsuarioLogado = nil then
     begin
       cbPerfil.Text := 'Padrão';
       cbPerfil.Enabled := False;
       btPesquisar.Enabled := False;
       btExcluir.Enabled := False;
     end;
end;

function TfrCadUsuario.fSetFieldName: string;
begin
  Result := 'BDCODIGO';
end;

procedure TfrCadUsuario.rbCnpjClick(Sender: TObject);
begin
  inherited;
  edCpfCnpj.Enabled := True;
  edCpfCnpj.MaxLength := 14;
end;

procedure TfrCadUsuario.rbCpfClick(Sender: TObject);
begin
  inherited;
  edCpfCnpj.Enabled := True;
  edCpfCnpj.MaxLength := 11;
end;

procedure TfrCadUsuario.SalvarCampos;
begin
  inherited;
  FTabela.FieldByName('BDCODIGO').AsInteger := edCodigo.Codigo;
  FTabela.FieldByName('BDNOME').AsString    := edNome.Text;
  FTabela.FieldByName('BDCPFCNPJ').AsString := fCharacterRemove(edCpfCnpj.Text);

  if frPrincipal.fGetUsuarioLogado = nil then
     FTabela.FieldByName('BDPERFIL').AsString  := 'Padrão'
  else
     FTabela.FieldByName('BDPERFIL').AsString  := cbPerfil.Items[cbPerfil.ItemIndex];
  FTabela.FieldByName('BDSENHA').AsString   := edSenha.Text;
  FTabela.FieldByName('BDUSUARIO').AsString := edUsuario.Text;
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
  Result := dmTabelas.tbUsuario;
end;

function TfrCadUsuario.ValidaCampos: Boolean;
var
  wMessage: String;
begin
  Result := True;
  if edNome.Text = EmptyStr then
     begin
       edNome.SetFocus;
       Result := False;
       wMessage := 'O campo nome não deve ser vazio!' + #13;
     end
  else
  if edCpfCnpj.Text = EmptyStr then
     begin
       edCpfCnpj.SetFocus;
       Result := False;
       wMessage := wMessage + 'O campo CPF/CNPJ não deve ser vazio!' + #13;
     end
  else
  if edUsuario.Text = EmptyStr then
     begin
       edUsuario.SetFocus;
       Result := False;
       wMessage := wMessage + 'O campo usuário não deve ser vazio!' + #13;
     end
  else
  if edSenha.Text = EmptyStr then
     begin
       edSenha.SetFocus;
       Result := False;
       wMessage := wMessage + 'O campo Senha não deve ser vazio!' + #13;
     end
  else
  if edRepitaSenha.Text = EmptyStr then
     begin
       edRepitaSenha.SetFocus;
       Result := False;
       wMessage := wMessage + 'Repita a senha neste campo!' + #13;
     end
  else
  if edSenha.Text <> edRepitaSenha.Text then
     begin
       edSenha.Clear;
       edRepitaSenha.Clear;
       edSenha.SetFocus;
       Result := False;
       wMessage := wMessage + 'As senhas não correspondem!' + #13;
     end
  else
  if Result then
     begin
       wMessage := 'Registro salvo com sucesso!';
//       if frPrincipal.fGetUsuarioLogado = nil then
//          begin
//            frPrincipal.pnLoginFilho.Visible := True;
//            Close;
//          end;
     end;

  ShowMessage(wMessage);
end;

end.
