unit uCadLocatario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoCadastroGVGESTOR,
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.StdCtrls, EditSCI, Datasnap.DBClient;

type
  TfrCadLocatario = class(TfrPadraoCadastroGVGESTOR)
    edCodigo: TEdit_Numero_PEDSCI;
    edNome: TEdit;
    edCpfCnpj: TEdit;
    edEmail: TEdit;
    edTelefone: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure btPesquisarClick(Sender: TObject);
    procedure edTelefoneExit(Sender: TObject);
    procedure edCpfCnpjExit(Sender: TObject);
    procedure edNomeKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
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
    function fSetFieldName: string; override;  //obter o fieldname da PK da tabela
    procedure pSetHabilitaButton; override;  // Habilita botões nas heranças
  end;

var
  frCadLocatario: TfrCadLocatario;

implementation

{$R *.dfm}

uses udmDadosGVGESTOR, uConsLocatario;

{ TfrCadLocatario }

procedure TfrCadLocatario.btPesquisarClick(Sender: TObject);
begin
  inherited;
  // cria form de consulta de locatários
  TfrConsLocatario.Create(edCodigo).Show;
end;

procedure TfrCadLocatario.CarregaCampos;
begin
  // carrega campos na tela
  edNome.Text     := FTabela.FieldByName('BDNOME').AsString;
  edCpfCnpj.Text  := FTabela.FieldByName('BDCPFCNPJ').AsString;
  edEmail.Text    := FTabela.FieldByName('BDEMAIL').AsString;
  edTelefone.Text := FTabela.FieldByName('BDTELEFONE').AsString;
end;

procedure TfrCadLocatario.edCpfCnpjExit(Sender: TObject);
begin
  inherited;
  // aplica mascara de CNPJ
  edCpfCnpj.Text := fAplicaMascara(edCpfCnpj.Text);
end;

procedure TfrCadLocatario.edNomeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := AnsiUpperCase(Key)[1]; //Letras maiúsculas no campo nome
end;

procedure TfrCadLocatario.edTelefoneExit(Sender: TObject);
begin
  inherited;
  // aplica mascara de telefone
  edTelefone.Text := fAplicaMascaraTelefone(edTelefone.Text);
end;

procedure TfrCadLocatario.FormCreate(Sender: TObject);
begin
  inherited;
  if Owner is TfrConsLocatario then
     begin
       edCodigo.Text := TfrConsLocatario(Owner).grConsulta.Columns[0].Field.AsString;
       if getID then
          CarregaCampos;
     end;
end;

function TfrCadLocatario.fSetFieldName: string;
begin
  // retorna campo ID na tabela
  Result := 'BDCDLOCAT';
end;

procedure TfrCadLocatario.pSetHabilitaButton;
begin
  inherited;
end;

procedure TfrCadLocatario.SalvarCampos;
begin
  // salva campos no BD
  FTabela.FieldByName('BDCDLOCAT').AsInteger := edCodigo.Codigo;
  FTabela.FieldByName('BDNOME').AsString    := edNome.Text;
  FTabela.FieldByName('BDCPFCNPJ').AsString  := fCharacterRemove(edCpfCnpj.Text);
  FTabela.FieldByName('BDEMAIL').AsString    := edEmail.Text;
  FTabela.FieldByName('BDTELEFONE').AsString := fCharacterRemove(edTelefone.Text);
end;

function TfrCadLocatario.setIDEdit: TWinControl;
begin
  // retorna campo ID da tela
  Result := edCodigo;
end;

function TfrCadLocatario.setLastEdit: TWinControl;
begin
  // retorna ultimo campo da tela
  Result := edTelefone;
end;

function TfrCadLocatario.setTabela: TClientDataSet;
begin
  // retorna tabela no BD
  Result := dmTabelas.tbLocatario;
end;

function TfrCadLocatario.ValidaCampos: Boolean;
var
  wMessage: String;
  wEmail: String;
begin
  Result := True;
  wEmail := edEmail.Text;
  if edNome.Text = EmptyStr then // valida campo nome
     begin
       edNome.SetFocus;
       Result := False;
       wMessage := 'Informe o nome do locatário!' + #13;
     end
  else
  if edCpfCnpj.Text = EmptyStr then  // valida campo CNPJ
     begin
       edCpfCnpj.SetFocus;
       Result := False;
       wMessage := 'Informe o CPF/CNPJ do locatário!' + #13;
     end
  else
  if edEmail.Text = EmptyStr then // valida campo email
     begin
       edEmail.SetFocus;
       Result := False;
       wMessage := 'Informe o e-mail do locatário!' + #13;
     end
  else
  if edTelefone.Text = EmptyStr then // valida campo telefone
     begin
       edTelefone.SetFocus;
       Result := False;
       wMessage := 'Informe o telefone do locatário!' + #13;
     end
  else
  if not wEmail.Contains('@') then
     begin
       edEmail.SetFocus;
       Result := False;
       wMessage := wMessage + 'Digite um e-mail válido!' + #13;
     end
  else
  if wMessage <> EmptyStr then
     ShowMessage(wMessage);
end;

end.
