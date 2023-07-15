unit uCadProprietario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoCadastroGVGESTOR,
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.StdCtrls, EditSCI, Datasnap.DBClient, Data.Db;

type
  TfrCadProprietario = class(TfrPadraoCadastroGVGESTOR)
    edCodProp: TEdit_Numero_PEDSCI;
    edNome: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    cbTipoPessoa: TComboBox;
    edCpfCnpj: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    edTelefone: TEdit;
    Label5: TLabel;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    edLogradouro: TEdit;
    edNumero: TEdit_Numero_PEDSCI;
    Label7: TLabel;
    Label8: TLabel;
    edBairro: TEdit;
    Label9: TLabel;
    edCidade: TEdit;
    edEmail: TEdit;
    Label10: TLabel;
    procedure btPesquisarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edCpfCnpjExit(Sender: TObject);
    procedure cbTipoPessoaChange(Sender: TObject);
    procedure edTelefoneExit(Sender: TObject);
    procedure edNomeKeyPress(Sender: TObject; var Key: Char);
    procedure edLogradouroKeyPress(Sender: TObject; var Key: Char);
    procedure edBairroKeyPress(Sender: TObject; var Key: Char);
    procedure edCidadeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    function setTabela: TClientDataSet; override; // deve informar qual tabela será usada
    function setIDEdit: TWinControl; override;  // informar qual o campo chave da tela
    function setLastEdit: TWinControl; override; // informar o último campo da tela para salvar automaticamente
    procedure CarregaCampos; override; // carregar os campos da tabela para os camnpos da tela
    procedure SalvarCampos; override; // salvar os valores dos campos da tela para os campos da tabela
    function ValidaCampos: Boolean; override; // Reescrito nas heranças para a validar os campos
    function fSetFieldName: string; override; //obter o fieldname da PK da tabela
    procedure pSetHabilitaButton; override; // Habilita botões nas heranças

  end;

var
  frCadProprietario: TfrCadProprietario;

implementation

{$R *.dfm}

uses udmDadosGVGESTOR, uConsProprietario;

procedure TfrCadProprietario.btPesquisarClick(Sender: TObject);
begin
  inherited;
  // cria form de consulta de proprietários
  TfrConsProprietario.Create(edCodProp);
end;

procedure TfrCadProprietario.CarregaCampos;
begin
  // carrega campos na tela
  edNome.Text       := FTabela.FieldByName('BDNOME').AsString;
  cbTipoPessoa.Text := FTabela.FieldByName('BDTIPOPESSOA').AsString;
  edCpfCnpj.Text    := FTabela.FieldByName('BDCPFCNPJ').AsString;
  edTelefone.Text   := FTabela.FieldByName('BDTELEFONE').AsString;
  edEmail.Text      := FTabela.FieldByName('BDEMAIL').AsString;
  edLogradouro.Text := FTabela.FieldByName('BDENDERECO').AsString;
  edNumero.Codigo   := FTabela.FieldByName('BDNUMERO').AsInteger;
  edBairro.Text     := FTabela.FieldByName('BDBAIRRO').AsString;
  edCidade.Text     := FTabela.FieldByName('BDCIDADE').AsString;
end;

procedure TfrCadProprietario.cbTipoPessoaChange(Sender: TObject);
begin
  inherited;
  // seta o length do campo de CPF/CNPJ
  if cbTipoPessoa.ItemIndex = 0 then
     edCpfCnpj.MaxLength := 11
  else
     edCpfCnpj.MaxLength := 14;
end;

procedure TfrCadProprietario.edBairroKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := AnsiUpperCase(Key)[1]; //Letras maiúsculas no campo bairro
end;

procedure TfrCadProprietario.edCidadeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := AnsiUpperCase(Key)[1]; //Letras maiúsculas no campo cidade
end;

procedure TfrCadProprietario.edCpfCnpjExit(Sender: TObject);
begin
  inherited;
  edCpfCnpj.Text := fAplicaMascara(edCpfCnpj.Text); // aplica mascara de CNPJ
end;

procedure TfrCadProprietario.edLogradouroKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  Key := AnsiUpperCase(Key)[1]; //Letras maiúsculas no campo logradouro
end;

procedure TfrCadProprietario.edNomeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := AnsiUpperCase(Key)[1]; //Letras maiúsculas no campo nome
end;

procedure TfrCadProprietario.edTelefoneExit(Sender: TObject);
begin
  inherited;
  edTelefone.Text := fAplicaMascaraTelefone(edTelefone.Text); // aplica mascara de telefone
end;

function TfrCadProprietario.fSetFieldName: string;
begin
  // retorna campo ID no BD
  Result := 'BDCDPROPR';
end;

procedure TfrCadProprietario.pSetHabilitaButton;
begin
  inherited;
end;

procedure TfrCadProprietario.SalvarCampos;
begin
  // salva campos no BD
  FTabela.FieldByName('BDCDPROPR').AsInteger   := edCodProp.Codigo;
  FTabela.FieldByName('BDNOME').AsString       := edNome.Text;
  FTabela.FieldByName('BDTIPOPESSOA').AsString := cbTipoPessoa.Items[cbTipoPessoa.ItemIndex];
  FTabela.FieldByName('BDCPFCNPJ').AsString    := fCharacterRemove(edCpfCnpj.Text);
  FTabela.FieldByName('BDTELEFONE').AsString   := fCharacterRemove(edTelefone.Text);
  FTabela.FieldByName('BDEMAIL').AsString      := edEmail.Text;
  FTabela.FieldByName('BDENDERECO').AsString   := edLogradouro.Text;
  FTabela.FieldByName('BDNUMERO').AsInteger    := edNumero.Codigo;
  FTabela.FieldByName('BDBAIRRO').AsString     := edBairro.Text;
  FTabela.FieldByName('BDCIDADE').AsString     := edCidade.Text;
end;

function TfrCadProprietario.setIDEdit: TWinControl;
begin
  // retorna campo ID da tela
  Result := edCodProp;
end;

function TfrCadProprietario.setLastEdit: TWinControl;
begin
  // retorna ultimo campo da tela
  Result := edCidade;
end;

function TfrCadProprietario.setTabela: TClientDataSet;
begin
  // retoena tabela no BD
  Result := dmTabelas.tbProprietario;
end;

function TfrCadProprietario.ValidaCampos: Boolean;
var
  wMessage: String;
begin
  Result := True;
  if edNome.Text = EmptyStr then  // valida campo nome
     begin
       edNome.SetFocus;
       Result := False;
       wMessage := 'Informe o nome do proprietário!' + #13;
     end
  else
  if edCpfCnpj.Text = EmptyStr then  // valida campo CNPJ
     begin
       edCpfCnpj.SetFocus;
       Result := False;
       wMessage := 'Informe o CPF/CNPJ do proprietário!' + #13;
     end
  else
  if edTelefone.Text = EmptyStr then  // valida campo telefone
     begin
       edTelefone.SetFocus;
       Result := False;
       wMessage := 'Informe o telefone do proprietário!' + #13;
     end
  else
  if edLogradouro.Text = EmptyStr then  // valida campo logradouro
     begin
       edLogradouro.SetFocus;
       Result := False;
       wMessage := 'Informe o logradouro do proprietário!' + #13;
     end
  else
  if edNumero.Text = EmptyStr then // valida campo numero
     begin
       edNumero.SetFocus;
       Result := False;
       wMessage := 'Informe o número do logradouro do proprietário!' + #13;
     end
  else
  if edBairro.Text = EmptyStr then // valida campo bairro
     begin
       edBairro.SetFocus;
       Result := False;
       wMessage := 'Informe o bairro do proprietário!' + #13;
     end
  else
  if edCidade.Text = EmptyStr then  // valido campo cidade
     begin
       edCidade.SetFocus;
       Result := False;
       wMessage := 'Informe a cidade do proprietário!' + #13;
     end
  else
  if Result then
     wMessage := 'Registro salvo com sucesso!';
  ShowMessage(wMessage);
end;

end.
