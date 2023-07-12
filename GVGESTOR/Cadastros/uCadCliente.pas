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
    procedure FormCreate(Sender: TObject);
    procedure edTelefoneExit(Sender: TObject);
    procedure edCnpjExit(Sender: TObject);
    procedure edRazaoSocialKeyPress(Sender: TObject; var Key: Char);
    procedure edLogradouroKeyPress(Sender: TObject; var Key: Char);
    procedure edBairroKeyPress(Sender: TObject; var Key: Char);
    procedure edCidadeKeyPress(Sender: TObject; var Key: Char);
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
  frCadCliente: TfrCadCliente;

implementation

{$R *.dfm}

uses udmDadosGVGESTOR, uConsCliente;

{ TfrCadCliente }

procedure TfrCadCliente.btPesquisarClick(Sender: TObject);
begin
  inherited;
  TfrConsCliente.Create(edCodigo);
end;

procedure TfrCadCliente.CarregaCampos;
begin
  inherited;
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
  Key := AnsiUpperCase(Key)[1]; //Letras mai�sculas
end;

procedure TfrCadCliente.edCidadeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := AnsiUpperCase(Key)[1]; //Letras mai�sculas
end;

procedure TfrCadCliente.edCnpjExit(Sender: TObject);
begin
  inherited;
  edCnpj.Text := fAplicaMascara(edCnpj.Text);
end;

procedure TfrCadCliente.edLogradouroKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := AnsiUpperCase(Key)[1]; //Letras mai�sculas
end;

procedure TfrCadCliente.edRazaoSocialKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := AnsiUpperCase(Key)[1]; //Letras mai�sculas
end;

procedure TfrCadCliente.edTelefoneExit(Sender: TObject);
begin
  inherited;
  edTelefone.Text := fAplicaMascaraTelefone(edTelefone.Text);
end;

procedure TfrCadCliente.FormCreate(Sender: TObject);
begin
  inherited;
  if Owner is TfrConsCliente then
     begin
       edCodigo.Text := IntToStr(TfrConsCliente(Owner).grConsulta.Columns[0].Field.AsInteger);
     end;
end;

function TfrCadCliente.fSetFieldName: string;
begin
  Result := 'BDCODCLI';
end;

procedure TfrCadCliente.SalvarCampos;
begin
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
  Result := edCodigo;
end;

function TfrCadCliente.setLastEdit: TWinControl;
begin
  Result := edCidade;
end;

function TfrCadCliente.setTabela: TClientDataSet;
begin
  Result := dmTabelas.tbCliente;
end;

function TfrCadCliente.ValidaCampos: Boolean;
var
  wMessage: String;
begin
  Result := True;
  if edRazaoSocial.Text = EmptyStr then
     begin
       edRazaoSocial.SetFocus;
       Result := False;
       wMessage := 'Informe a raz�o social do cliente!' + #13;
     end
  else
  if edCnpj.Text = EmptyStr then
     begin
       edCnpj.SetFocus;
       Result := False;
       wMessage := 'Informe o CNPJ do cliente!' + #13;
     end
  else
  if edTelefone.Text = EmptyStr then
     begin
       edTelefone.SetFocus;
       Result := False;
       wMessage := 'Informe o telefone do cliente!' + #13;
     end
  else
  if edEmail.Text = EmptyStr then
     begin
       edEmail.SetFocus;
       Result := False;
       wMessage := 'Informe o e-mail do cliente!' + #13;
     end
  else
  if Result then
     wMessage := 'Registro salvo com sucesso!';
  ShowMessage(wMessage);
end;

end.
