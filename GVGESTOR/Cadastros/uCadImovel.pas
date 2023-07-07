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
    procedure edCodPropExit(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure edCodigoExit(Sender: TObject);
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
  edCodProp.Codigo := FTabela.FieldByName('BDCODPROP').AsInteger;
  cbTipo.Text := FTabela.FieldByName('BDTIPOIMOVEL').AsString;
  seAmbientes.Text := IntToStr(FTabela.FieldByName('BDQUANTAMB').AsInteger);
  dtpData.Date :=  FTabela.FieldByName('BDDATACAD').AsDateTime;
  edLogradouro.Text := FTabela.FieldByName('BDENDERECO').AsString;
  edNumero.Text := IntToStr(FTabela.FieldByName('BDNUMERO').AsInteger);
  edCidade.Text := FTabela.FieldByName('BDCIDADE').AsString;
  edBairro.Text := FTabela.FieldByName('BDBAIRRO').AsString;
end;

procedure TfrCadImovel.edCodigoExit(Sender: TObject);
begin
  inherited;
  pCarregaProprietario;
end;

procedure TfrCadImovel.edCodPropExit(Sender: TObject);
begin
  inherited;
  pCarregaProprietario;
end;

procedure TfrCadImovel.FormCreate(Sender: TObject);
begin
  inherited;
  if Owner is TfrConsImovel then
     begin
       edCodigo.Text := IntToStr(TfrConsImovel(Owner).grConsulta.Columns[0].Field.AsInteger);
     end;

end;

function TfrCadImovel.getID: Boolean;
begin
  //inherited;
  Result := False;// define padrão false
  //pLimpaFiltros(FTabela);
  FTabela.IndexFieldNames := 'BDCODIMOVEL';
  if Assigned(FTabela) and Assigned(edCodigo) then // verificar se a tabela e o campo chave foi informado para não dar erro ao tentar acessar as variáveis
     begin
       Result := FTabela.FindKey([edCodigo.Text]);
     end;
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
  FTabela.FieldByName('BDCODPROP').AsInteger := edCodProp.Codigo;
  FTabela.FieldByName('BDTIPOIMOVEL').AsString := cbTipo.Items[cbTipo.ItemIndex];
  FTabela.FieldByName('BDQUANTAMB').AsInteger := StrToInt(seAmbientes.Text);
  FTabela.FieldByName('BDDATACAD').AsDateTime :=  dtpData.Date;
  FTabela.FieldByName('BDENDERECO').AsString :=  edLogradouro.Text;
  FTabela.FieldByName('BDNUMERO').AsInteger := edNumero.Codigo;
  FTabela.FieldByName('BDCIDADE').AsString := edCidade.Text;
  FTabela.FieldByName('BDBAIRRO').AsString := edBairro.Text;
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
begin

end;

end.
