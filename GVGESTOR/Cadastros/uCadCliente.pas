unit uCadCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoCadastroGVGESTOR,
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.StdCtrls, EditSCI, Datasnap.DBClient;

type
  TfrCadCliente = class(TfrPadraoCadastroGVGESTOR)
    edCodigo: TEdit_Numero_PEDSCI;
    edRazaoSocial: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edCnpj: TEdit;
    Label3: TLabel;
    edTelefone: TEdit;
    Label4: TLabel;
    edEmail: TEdit;
    Label5: TLabel;
    GroupBox1: TGroupBox;
    edLogradouro: TEdit;
    Label6: TLabel;
    edNumero: TEdit_Numero_PEDSCI;
    Label7: TLabel;
    edCidade: TEdit;
    Label8: TLabel;
    edBairro: TEdit;
    Label9: TLabel;
    procedure btPesquisarClick(Sender: TObject);
    procedure edTelefoneExit(Sender: TObject);
    procedure edCnpjExit(Sender: TObject);
    procedure edRazaoSocialKeyPress(Sender: TObject; var Key: Char);
    procedure edLogradouroKeyPress(Sender: TObject; var Key: Char);
    procedure edBairroKeyPress(Sender: TObject; var Key: Char);
    procedure edCidadeKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function setTabela: TClientDataSet; override; // deve informar qual tabela será usada
    function setIDEdit: TWinControl; override;  // informar qual o campo chave da tela
    function setLastEdit: TWinControl; override; // informar o último campo da tela para salvar automaticamente
    procedure CarregaCampos; override; // carregar os campos da tabela para os camnpos da tela
    procedure SalvarCampos; override;  // salvar os valores dos campos da tela para os campos da tabela
    function ValidaCampos: Boolean; override; // Reescrito nas heranças para a validar os campos
    function fSetFieldName: string; override;
    procedure pSetHabilitaButton; override;  //obter o fieldname da PK da tabela

  end;

var
  frCadCliente: TfrCadCliente;

implementation

{$R *.dfm}

uses udmDadosGVGESTOR, uConsCliente;

{ TfrCadCliente }

procedure TfrCadCliente.btPesquisarClick(Sender: TObject);
begin
  inherited;
  // cria form de consulta de clientes
  TfrConsCliente.Create(edCodigo);
end;

procedure TfrCadCliente.CarregaCampos;
begin
  inherited;
  // carrega campos na tela
  edRazaoSocial.Text := FTabela.FieldByName('BDRASOCIAL').AsString;
  edCnpj.Text        := FTabela.FieldByName('BDCNPJ').AsString;
  edLogradouro.Text  := FTabela.FieldByName('BDENDERECO').AsString;
  edNumero.Codigo    := FTabela.FieldByName('BDNUMERO').AsInteger;
  edBairro.Text      := FTabela.FieldByName('BDBAIRRO').AsString;
  edCidade.Text      := FTabela.FieldByName('BDCIDADE').AsString;
  edEmail.Text       := FTabela.FieldByName('BDEMAIL').AsString;
  edTelefone.Text    := FTabela.FieldByName('BDTELEFONE').AsString;
end;

procedure TfrCadCliente.edBairroKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := AnsiUpperCase(Key)[1]; //Letras maiúsculas no campo bairro
end;

procedure TfrCadCliente.edCidadeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := AnsiUpperCase(Key)[1]; //Letras maiúsculas  no campo cidade
end;

procedure TfrCadCliente.edCnpjExit(Sender: TObject);
begin
  inherited;
  edCnpj.Text := fAplicaMascara(edCnpj.Text); // aplica mascara CNPJ
end;

procedure TfrCadCliente.edLogradouroKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := AnsiUpperCase(Key)[1]; //Letras maiúsculas no campo logradouro
end;

procedure TfrCadCliente.edRazaoSocialKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := AnsiUpperCase(Key)[1]; //Letras maiúsculas no campo razão social
end;

procedure TfrCadCliente.edTelefoneExit(Sender: TObject);
begin
  inherited;
  edTelefone.Text := fAplicaMascaraTelefone(edTelefone.Text); // aplica mascara telefone
end;

procedure TfrCadCliente.FormCreate(Sender: TObject);
begin
  inherited;
  if Owner is TfrConsCliente then
     begin
       edCodigo.Text := TfrConsCliente(Owner).grConsulta.Columns[0].Field.AsString;
       if getID then
          CarregaCampos;
     end;
end;

function TfrCadCliente.fSetFieldName: string;
begin
  // Retorna campo ID na tabela
  Result := 'BDCODCLI';
end;

procedure TfrCadCliente.pSetHabilitaButton;
begin
  inherited;
end;

procedure TfrCadCliente.SalvarCampos;
begin
  // salva campos na tabela
  FTabela.FieldByName('BDCODCLI').AsInteger  := edCodigo.Codigo;
  FTabela.FieldByName('BDRASOCIAL').AsString := edRazaoSocial.Text;
  FTabela.FieldByName('BDCNPJ').AsString     := fCharacterRemove(edCnpj.Text);
  FTabela.FieldByName('BDENDERECO').AsString := edLogradouro.Text;
  FTabela.FieldByName('BDNUMERO').AsInteger  := edNumero.Codigo;
  FTabela.FieldByName('BDBAIRRO').AsString   := edBairro.Text;
  FTabela.FieldByName('BDCIDADE').AsString   := edCidade.Text;
  FTabela.FieldByName('BDEMAIL').AsString    := edEmail.Text;
  FTabela.FieldByName('BDTELEFONE').AsString := fCharacterRemove(edTelefone.Text);
end;

function TfrCadCliente.setIDEdit: TWinControl;
begin
  // retorna campo ID da tela
  Result := edCodigo;
end;

function TfrCadCliente.setLastEdit: TWinControl;
begin
  // retorna ultimo campo da tela
  Result := edCidade;
end;

function TfrCadCliente.setTabela: TClientDataSet;
begin
  // seta tabela do BD
  Result := dmTabelas.tbCliente;
end;

function TfrCadCliente.ValidaCampos: Boolean;
var
  wMessage: String;
begin
  Result := True;
  if edRazaoSocial.Text = EmptyStr then // valida campo de razão social
     begin
       edRazaoSocial.SetFocus;
       Result := False;
       wMessage := 'Informe a razão social do cliente!' + #13;
     end
  else
  if edCnpj.Text = EmptyStr then  // valida campo de CNPJ
     begin
       edCnpj.SetFocus;
       Result := False;
       wMessage := 'Informe o CNPJ do cliente!' + #13;
     end
  else
  if edTelefone.Text = EmptyStr then  // valida campo de telefone
     begin
       edTelefone.SetFocus;
       Result := False;
       wMessage := 'Informe o telefone do cliente!' + #13;
     end
  else
  if edEmail.Text = EmptyStr then   // valida campo de e-mail
     begin
       edEmail.SetFocus;
       Result := False;
       wMessage := 'Informe o e-mail do cliente!' + #13;
     end
  else
  if wMessage <> EmptyStr then
     ShowMessage(wMessage);
end;

end.
