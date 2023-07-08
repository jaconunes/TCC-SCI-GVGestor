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
    function getID: Boolean; override;
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

procedure TfrCadCliente.FormCreate(Sender: TObject);
begin
  inherited;
  if Owner is TfrConsCliente then
     begin
       edCodigo.Text := IntToStr(TfrConsCliente(Owner).grConsulta.Columns[0].Field.AsInteger);
     end;
end;

function TfrCadCliente.getID: Boolean;
begin
  Result := False;// define padr�o false
  FTabela.IndexFieldNames := 'BDCODCLI';
  if Assigned(FTabela) and Assigned(edCodigo) then // verificar se a tabela e o campo chave foi informado para n�o dar erro ao tentar acessar as vari�veis
     begin
       Result := FTabela.FindKey([edCodigo.Text]);
     end;
end;

procedure TfrCadCliente.SalvarCampos;
begin
  FTabela.FieldByName('BDCODCLI').AsInteger  := edCodigo.Codigo;
  FTabela.FieldByName('BDRASOCIAL').AsString := edRazaoSocial.Text;
  FTabela.FieldByName('BDCNPJ').AsString     := edCnpj.Text;
  FTabela.FieldByName('BDENDERECO').AsString := edLogradouro.Text;
  FTabela.FieldByName('BDNUMERO').AsInteger  := edNumero.Codigo;
  FTabela.FieldByName('BDBAIRRO').AsString   := edBairro.Text;
  FTabela.FieldByName('BDCIDADE').AsString   := edCidade.Text;
  FTabela.FieldByName('BDEMAIL').AsString    := edEmail.Text;
  FTabela.FieldByName('BDTELEFONE').AsString := edTelefone.Text;
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
begin
  Result := True;
end;

end.
