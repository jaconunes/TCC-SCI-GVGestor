unit uCadImovel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoCadastroGVGESTOR,
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.StdCtrls, EditSCI, Vcl.Samples.Spin, Datasnap.DBClient, Data.Db;

type
  TfrCadImovel = class(TfrPadraoCadastroGVGESTOR)
    edCodigo: TEdit_Numero_PEDSCI;
    Label1: TLabel;
    edLogradouro: TEdit;
    cbTipo: TComboBox;
    seAmbientes: TSpinEdit;
    dtpData: TDateTimePicker;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edNumero: TEdit_Numero_PEDSCI;
    Label7: TLabel;
    edCidade: TEdit;
    edBairro: TEdit;
    Label8: TLabel;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    edCodProp: TEdit_Numero_PEDSCI;
    lbNomeProprietario: TLabel;
    procedure btPesquisarClick(Sender: TObject);
    procedure edCodigoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edCodPropChange(Sender: TObject);
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

    procedure pCarregaProprietario;
  end;

var
  frCadImovel: TfrCadImovel;

implementation

{$R *.dfm}

uses udmDadosGVGESTOR, uConsProprietario, uConsImovel;

{ TfrCadImovel }

procedure TfrCadImovel.btPesquisarClick(Sender: TObject);
begin
  inherited;
  if ActiveControl = edCodProp then
     TfrConsProprietario.Create(edCodProp)
  else
     TfrConsImovel.Create(edCodigo);
end;

procedure TfrCadImovel.CarregaCampos;
begin
  inherited;
  edCodProp.Codigo := FTabela.FieldByName('BDPKCODPROP').AsInteger;
  cbTipo.Text := FTabela.FieldByName('BDTIPOIMOVEL').AsString;
  seAmbientes.Text := IntToStr(FTabela.FieldByName('BDQUANTAMB').AsInteger);
  dtpData.Date :=  FTabela.FieldByName('BDDATACAD').AsDateTime;
  edLogradouro.Text := FTabela.FieldByName('BDENDERECO').AsString;
  edNumero.Text := IntToStr(FTabela.FieldByName('BDNUMERO').AsInteger);
  edCidade.Text := FTabela.FieldByName('BDCIDADE').AsString;
  edBairro.Text := FTabela.FieldByName('BDBAIRRO').AsString;
end;

procedure TfrCadImovel.edBairroKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := AnsiUpperCase(Key)[1]; //Letras mai�sculas
end;

procedure TfrCadImovel.edCidadeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := AnsiUpperCase(Key)[1]; //Letras mai�sculas
end;

procedure TfrCadImovel.edCodigoExit(Sender: TObject);
begin
  inherited;
  pCarregaProprietario;
end;

procedure TfrCadImovel.edCodPropChange(Sender: TObject);
begin
  inherited;
  pCarregaProprietario;
end;

procedure TfrCadImovel.edLogradouroKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := AnsiUpperCase(Key)[1]; //Letras mai�sculas
end;

procedure TfrCadImovel.FormCreate(Sender: TObject);
begin
  inherited;
  if Owner is TfrConsImovel then
     begin
       edCodigo.Text := IntToStr(TfrConsImovel(Owner).grConsulta.Columns[0].Field.AsInteger);
     end;

end;

function TfrCadImovel.fSetFieldName: string;
begin
  Result := 'BDCODIMOVEL';
end;

procedure TfrCadImovel.pCarregaProprietario;
begin
  pLimpaFiltros(dmTabelas.tbProprietario);
  dmTabelas.tbProprietario.IndexFieldNames := 'BDCDPROPR';
  if dmTabelas.tbProprietario.FindKey([edCodProp.Codigo]) and Assigned(edCodProp) then
     begin
       lbNomeProprietario.Caption := '- ' + dmTabelas.tbProprietario.FieldByName('BDNOME').AsString;
     end
  else
     lbNomeProprietario.Caption := EmptyStr;
end;

procedure TfrCadImovel.SalvarCampos;
begin
  FTabela.FieldByName('BDCODIMOVEL').AsInteger := edCodigo.Codigo;
  FTabela.FieldByName('BDTIPOIMOVEL').AsString := cbTipo.Items[cbTipo.ItemIndex];
  FTabela.FieldByName('BDQUANTAMB').AsInteger := StrToInt(seAmbientes.Text);
  FTabela.FieldByName('BDDATACAD').AsDateTime :=  dtpData.Date;
  FTabela.FieldByName('BDENDERECO').AsString :=  edLogradouro.Text;
  FTabela.FieldByName('BDNUMERO').AsInteger := edNumero.Codigo;
  FTabela.FieldByName('BDBAIRRO').AsString := edBairro.Text;
  FTabela.FieldByName('BDCIDADE').AsString := edCidade.Text;
  FTabela.FieldByName('BDPKCODPROP').AsInteger := StrToInt(edCodProp.Text);
end;

function TfrCadImovel.setIDEdit: TWinControl;
begin
  Result := edCodigo;
end;

function TfrCadImovel.setLastEdit: TWinControl;
begin
  Result := edCidade;
end;

function TfrCadImovel.setTabela: TClientDataSet;
begin
  Result := dmTabelas.tbImovel;
end;

function TfrCadImovel.ValidaCampos: Boolean;
var
  wMessage: String;
begin
  Result := True;
  if (edCodProp.Text = EmptyStr) or (edCodProp.Codigo = 0) then
     begin
       edCodProp.SetFocus;
       Result := False;
       wMessage := 'Selecione um c�digo do propriet�rio!' + #13;
     end
  else
  if (seAmbientes.Text = EmptyStr) or (seAmbientes.Text = IntToStr(0)) then
     begin
       seAmbientes.SetFocus;
       Result := False;
       wMessage := 'Informe o n�mero de ambientes do im�vel!' + #13;
     end
  else
  if edLogradouro.Text = EmptyStr then
     begin
       edLogradouro.SetFocus;
       Result := False;
       wMessage := 'Informe o logradouro do im�vel!' + #13;
     end
  else
  if edNumero.Text = EmptyStr then
     begin
       edNumero.SetFocus;
       Result := False;
       wMessage := 'Informe o n�mero do endere�o do im�vel!' + #13;
     end
  else
  if edBairro.Text = EmptyStr then
     begin
       edBairro.SetFocus;
       Result := False;
       wMessage := 'Informe o bairro do im�vel!' + #13;
     end
  else
  if edCidade.Text = EmptyStr then
     begin
       edCidade.SetFocus;
       Result := False;
       wMessage := 'Informe a cidade do im�vel!' + #13;
     end
  else
  if Result then
     wMessage := 'Registro salvo com sucesso!';
  ShowMessage(wMessage);
end;

end.
