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
    procedure FormCreate(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure edTelefoneExit(Sender: TObject);
    procedure edCpfCnpjExit(Sender: TObject);
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
  frCadLocatario: TfrCadLocatario;

implementation

{$R *.dfm}

uses udmDadosGVGESTOR, uConsLocatario;

{ TfrCadLocatario }

procedure TfrCadLocatario.btPesquisarClick(Sender: TObject);
begin
  inherited;
  TfrConsLocatario.Create(edCodigo).Show;
end;

procedure TfrCadLocatario.CarregaCampos;
begin
  inherited;
  edNome.Text     := FTabela.FieldByName('BDNOME').AsString;
  edCpfCnpj.Text  := FTabela.FieldByName('BDCPFCNPJ').AsString;
  edEmail.Text    := FTabela.FieldByName('BDEMAIL').AsString;
  edTelefone.Text := FTabela.FieldByName('BDTELEFONE').AsString;
end;

procedure TfrCadLocatario.edCpfCnpjExit(Sender: TObject);
begin
  inherited;
  edCpfCnpj.Text := fAplicaMascara(edCpfCnpj.Text);
end;

procedure TfrCadLocatario.edTelefoneExit(Sender: TObject);
begin
  inherited;
  edTelefone.Text := fAplicaMascaraTelefone(edTelefone.Text);
end;

procedure TfrCadLocatario.FormCreate(Sender: TObject);
begin
  inherited;
  if Owner is TfrConsLocatario then
     begin
       edCodigo.Text := IntToStr(TfrConsLocatario(Owner).grConsulta.Columns[0].Field.AsInteger);
     end;
end;

function TfrCadLocatario.fSetFieldName: string;
begin
  Result := 'BDCDLOCAT';
end;

procedure TfrCadLocatario.SalvarCampos;
begin
  inherited;
  FTabela.FieldByName('BDCDLOCAT').AsInteger := edCodigo.Codigo;
  FTabela.FieldByName('BDNOME').AsString    := edNome.Text;
  FTabela.FieldByName('BDCPFCNPJ').AsString  := fCharacterRemove(edCpfCnpj.Text);
  FTabela.FieldByName('BDEMAIL').AsString    := edEmail.Text;
  FTabela.FieldByName('BDTELEFONE').AsString := fCharacterRemove(edTelefone.Text);
end;

function TfrCadLocatario.setIDEdit: TWinControl;
begin
  Result := edCodigo;
end;

function TfrCadLocatario.setLastEdit: TWinControl;
begin
  Result := edTelefone;
end;

function TfrCadLocatario.setTabela: TClientDataSet;
begin
  Result := dmTabelas.tbLocatario;
end;

function TfrCadLocatario.ValidaCampos: Boolean;
begin
  Result := True;
end;

end.
