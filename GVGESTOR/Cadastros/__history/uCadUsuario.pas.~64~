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
    procedure edNomeKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    function setTabela: TClientDataSet; override; // deve informar qual tabela será usada
    function setIDEdit: TWinControl; override; // informar qual o campo chave da tela
    function setLastEdit: TWinControl; override; // informar o último campo da tela para salvar automaticamente
    procedure CarregaCampos; override;  // carregar os campos da tabela para os camnpos da tela
    procedure SalvarCampos; override;  // salvar os valores dos campos da tela para os campos da tabela
    function ValidaCampos: Boolean; override; // Reescrito nas heranças para a validar os campos
    function fSetFieldName: string; override; //obter o fieldname da PK da tabela
    procedure pSetHabilitaButton; override; // Habilita botões nas heranças
  end;

var
  frCadUsuario: TfrCadUsuario;

implementation

{$R *.dfm}

uses udmDadosGVGESTOR, uConsUsuario, uPrincipal;

{ TfrCadUsuario }

procedure TfrCadUsuario.btPesquisarClick(Sender: TObject);
begin
  // cria form de consulta de usuários
  TfrConsUsuario.Create(edCodigo);
end;

procedure TfrCadUsuario.CarregaCampos;
begin
  // carrega campos na tela
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
  edCpfCnpj.Text := fAplicaMascara(edCpfCnpj.Text); // mascara de CNPJ
end;

procedure TfrCadUsuario.edNomeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := AnsiUpperCase(Key)[1]; //Letras maiúsculas no campo nome
end;

procedure TfrCadUsuario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if frPrincipal.fGetUsuarioLogado = nil then
     begin
       frPrincipal.pnLoginFilho.Visible := True;
     end;
end;

procedure TfrCadUsuario.FormCreate(Sender: TObject);
begin
  inherited;
  // se não existir usuário logado, seta perfil padrão e desabilita edição e exclusão
  if frPrincipal.fGetUsuarioLogado = nil then
     begin
       cbPerfil.Text := 'Padrão';
       cbPerfil.Enabled := False;
       btPesquisar.Enabled := False;
       btExcluir.Enabled := False;
     end
  else
  if Owner is TfrConsUsuario then
     begin
       edCodigo.Text := TfrConsUsuario(Owner).grConsulta.Columns[0].Field.AsString;
       if getID then
          CarregaCampos;
     end;
end;

function TfrCadUsuario.fSetFieldName: string;
begin
  // retorna campo ID no BD
  Result := 'BDCODIGO';
end;

procedure TfrCadUsuario.pSetHabilitaButton;
begin
  inherited;
end;

procedure TfrCadUsuario.rbCnpjClick(Sender: TObject);
begin
  inherited;
  // habilita campo CNPJ e seta lenght
  edCpfCnpj.Enabled := True;
  edCpfCnpj.MaxLength := 14;
end;

procedure TfrCadUsuario.rbCpfClick(Sender: TObject);
begin
  inherited;
  // habilita campo CPF e seta lenght
  edCpfCnpj.Enabled := True;
  edCpfCnpj.MaxLength := 11;
end;

procedure TfrCadUsuario.SalvarCampos;
begin
  inherited;
  // Carrega campos na tela
  FTabela.FieldByName('BDCODIGO').AsInteger := edCodigo.Codigo;
  FTabela.FieldByName('BDNOME').AsString    := edNome.Text;
  FTabela.FieldByName('BDCPFCNPJ').AsString := fCharacterRemove(edCpfCnpj.Text);
   // verifica se existe usuário logado e seta perfil padrão ou selecionado no combobox perfil
  if frPrincipal.fGetUsuarioLogado = nil then
     FTabela.FieldByName('BDPERFIL').AsString  := 'Padrão'
  else
     FTabela.FieldByName('BDPERFIL').AsString  := cbPerfil.Items[cbPerfil.ItemIndex];
  FTabela.FieldByName('BDSENHA').AsString   := edSenha.Text;
  FTabela.FieldByName('BDUSUARIO').AsString := edUsuario.Text;
end;

function TfrCadUsuario.setIDEdit: TWinControl;
begin
  // retorna campo ID da tela
  Result:= edCodigo;
end;

function TfrCadUsuario.setLastEdit: TWinControl;
begin
  // retorna ultimo campo da tela
  Result := edRepitaSenha;
end;

function TfrCadUsuario.setTabela: TClientDataSet;
begin
  // retorna tabela no BD
  Result := dmTabelas.tbUsuario;
end;

function TfrCadUsuario.ValidaCampos: Boolean;
var
  wMessage: String;
begin
  Result := True;
  if edNome.Text = EmptyStr then  // valida campo nome
     begin
       edNome.SetFocus;
       Result := False;
       wMessage := 'O campo nome não deve ser vazio!' + #13;
     end
  else
  if edCpfCnpj.Text = EmptyStr then // valida campo CNPJ
     begin
       edCpfCnpj.SetFocus;
       Result := False;
       wMessage := 'O campo CPF/CNPJ não deve ser vazio!' + #13;
     end
  else
  if edUsuario.Text = EmptyStr then // valida campo usuário
     begin
       edUsuario.SetFocus;
       Result := False;
       wMessage := 'O campo usuário não deve ser vazio!' + #13;
     end
  else
  if edSenha.Text = EmptyStr then  // valida campo senha
     begin
       edSenha.SetFocus;
       Result := False;
       wMessage := 'O campo Senha não deve ser vazio!' + #13;
     end
  else
  if edRepitaSenha.Text = EmptyStr then  // valida campo repitasenha
     begin
       edRepitaSenha.SetFocus;
       Result := False;
       wMessage := 'Repita a senha neste campo!' + #13;
     end
  else
  if edSenha.Text <> edRepitaSenha.Text then // valida se senhas correspondem
     begin
       edSenha.Clear;
       edRepitaSenha.Clear;
       edSenha.SetFocus;
       Result := False;
       wMessage := 'As senhas não correspondem!' + #13;
     end;
  if wMessage <> EmptyStr then
     ShowMessage(wMessage);
end;

end.
