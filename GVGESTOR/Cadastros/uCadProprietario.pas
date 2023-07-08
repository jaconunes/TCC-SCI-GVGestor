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

procedure TfrCadProprietario.FormCreate(Sender: TObject);
begin
  inherited;
  if Owner is TfrConsProprietario then
     begin
       edCodProp.Text := IntToStr(TfrConsProprietario(Owner).grConsulta.Columns[0].Field.AsInteger);
     end;
end;

function TfrCadProprietario.getID: Boolean;
begin
  //inherited;
  Result := False;// define padr�o false
  //pLimpaFiltros(FTabela);
  FTabela.IndexFieldNames := 'BDCDPROPR';
  if Assigned(FTabela) and Assigned(edCodProp) then // verificar se a tabela e o campo chave foi informado para n�o dar erro ao tentar acessar as vari�veis
     begin
       Result := FTabela.FindKey([edCodProp.Text]);
     end;
end;

procedure TfrCadProprietario.SalvarCampos;
begin
  inherited;
  FTabela.FieldByName('BDCDPROPR').AsInteger := edCodProp.Codigo;
  FTabela.FieldByName('BDNOME').AsString := edNome.Text;
  FTabela.FieldByName('BDTIPOPESSOA').AsString := cbTipoPessoa.Items[cbTipoPessoa.ItemIndex];
  FTabela.FieldByName('BDCPFCNPJ').AsString := edCpfCnpj.Text;
  FTabela.FieldByName('BDTELEFONE').AsString := edTelefone.Text;
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
begin

end;

end.