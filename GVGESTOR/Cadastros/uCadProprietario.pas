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
    function setTabela: TClientDataSet; override;
    function setIDEdit: TWinControl; override;
    function setLastEdit: TWinControl; override;
    procedure CarregaCampos; override;
    procedure SalvarCampos; override;
    function ValidaCampos: Boolean; override;
    function fSetFieldName: string; override;

  end;

var
  frCadProprietario: TfrCadProprietario;

implementation

{$R *.dfm}

uses udmDadosGVGESTOR, uConsProprietario;

procedure TfrCadProprietario.btPesquisarClick(Sender: TObject);
begin
  inherited;
  TfrConsProprietario.Create(edCodProp);
end;

procedure TfrCadProprietario.CarregaCampos;
begin
  inherited;
  edNome.Text := FTabela.FieldByName('BDNOME').AsString;
  cbTipoPessoa.Text := FTabela.FieldByName('BDTIPOPESSOA').AsString;
  edCpfCnpj.Text  := FTabela.FieldByName('BDCPFCNPJ').AsString;
  edTelefone.Text := FTabela.FieldByName('BDTELEFONE').AsString;
  edLogradouro.Text  := FTabela.FieldByName('BDENDERECO').AsString;
  edNumero.Codigo  := FTabela.FieldByName('BDNUMERO').AsInteger;
  edBairro.Text := FTabela.FieldByName('BDBAIRRO').AsString;
  edCidade.Text := FTabela.FieldByName('BDCIDADE').AsString;
end;

procedure TfrCadProprietario.cbTipoPessoaChange(Sender: TObject);
begin
  inherited;
  if cbTipoPessoa.ItemIndex = 0 then
     edCpfCnpj.MaxLength := 11
  else
     edCpfCnpj.MaxLength := 14;
end;

procedure TfrCadProprietario.edBairroKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := AnsiUpperCase(Key)[1]; //Letras mai�sculas
end;

procedure TfrCadProprietario.edCidadeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := AnsiUpperCase(Key)[1]; //Letras mai�sculas
end;

procedure TfrCadProprietario.edCpfCnpjExit(Sender: TObject);
begin
  inherited;
  edCpfCnpj.Text := fAplicaMascara(edCpfCnpj.Text);
end;

procedure TfrCadProprietario.edLogradouroKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  Key := AnsiUpperCase(Key)[1]; //Letras mai�sculas
end;

procedure TfrCadProprietario.edNomeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := AnsiUpperCase(Key)[1]; //Letras mai�sculas
end;

procedure TfrCadProprietario.edTelefoneExit(Sender: TObject);
begin
  inherited;
  edTelefone.Text := fAplicaMascaraTelefone(edTelefone.Text);
end;

procedure TfrCadProprietario.FormCreate(Sender: TObject);
begin
  inherited;
  if Owner is TfrConsProprietario then
     begin
       edCodProp.Text := IntToStr(TfrConsProprietario(Owner).grConsulta.Columns[0].Field.AsInteger);
     end;
end;

function TfrCadProprietario.fSetFieldName: string;
begin
  Result := 'BDCDPROPR';
end;

procedure TfrCadProprietario.SalvarCampos;
begin
  inherited;
  FTabela.FieldByName('BDCDPROPR').AsInteger := edCodProp.Codigo;
  FTabela.FieldByName('BDNOME').AsString := edNome.Text;
  FTabela.FieldByName('BDTIPOPESSOA').AsString := cbTipoPessoa.Items[cbTipoPessoa.ItemIndex];
  FTabela.FieldByName('BDCPFCNPJ').AsString := fCharacterRemove(edCpfCnpj.Text);
  FTabela.FieldByName('BDTELEFONE').AsString := fCharacterRemove(edTelefone.Text);
  FTabela.FieldByName('BDENDERECO').AsString := edLogradouro.Text;
  FTabela.FieldByName('BDNUMERO').AsInteger := edNumero.Codigo;
  FTabela.FieldByName('BDBAIRRO').AsString := edBairro.Text;
  FTabela.FieldByName('BDCIDADE').AsString := edCidade.Text;
end;

function TfrCadProprietario.setIDEdit: TWinControl;
begin
  Result := edCodProp;
end;

function TfrCadProprietario.setLastEdit: TWinControl;
begin
  Result := edCidade;
end;

function TfrCadProprietario.setTabela: TClientDataSet;
begin
  Result := dmTabelas.tbProprietario;
end;

function TfrCadProprietario.ValidaCampos: Boolean;
var
  wMessage: String;
begin
  Result := True;
  if edNome.Text = EmptyStr then
     begin
       edNome.SetFocus;
       Result := False;
       wMessage := 'Informe o nome do propriet�rio!' + #13;
     end
  else
  if edCpfCnpj.Text = EmptyStr then
     begin
       edCpfCnpj.SetFocus;
       Result := False;
       wMessage := 'Informe o CPF/CNPJ do propriet�rio!' + #13;
     end
  else
  if edTelefone.Text = EmptyStr then
     begin
       edTelefone.SetFocus;
       Result := False;
       wMessage := 'Informe o telefone do propriet�rio!' + #13;
     end
  else
  if edLogradouro.Text = EmptyStr then
     begin
       edLogradouro.SetFocus;
       Result := False;
       wMessage := 'Informe o logradouro do propriet�rio!' + #13;
     end
  else
  if edNumero.Text = EmptyStr then
     begin
       edNumero.SetFocus;
       Result := False;
       wMessage := 'Informe o n�mero do logradouro do propriet�rio!' + #13;
     end
  else
  if edBairro.Text = EmptyStr then
     begin
       edBairro.SetFocus;
       Result := False;
       wMessage := 'Informe o bairro do propriet�rio!' + #13;
     end
  else
  if edCidade.Text = EmptyStr then
     begin
       edCidade.SetFocus;
       Result := False;
       wMessage := 'Informe a cidade do propriet�rio!' + #13;
     end
  else
  if Result then
     wMessage := 'Registro salvo com sucesso!';
  ShowMessage(wMessage);
end;

end.
