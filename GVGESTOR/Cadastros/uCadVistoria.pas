unit uCadVistoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoCadastroGVGESTOR,
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.StdCtrls, EditSCI, Datasnap.DBClient, Data.Db;

type
  TfrCadVistoria = class(TfrPadraoCadastroGVGESTOR)
    Panel2: TPanel;
    edCodigo: TEdit_Numero_PEDSCI;
    edCodCliente: TEdit_Numero_PEDSCI;
    edCodImovel: TEdit_Numero_PEDSCI;
    edCodLocatario: TEdit_Numero_PEDSCI;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lbNomeCliente: TLabel;
    lbNomeLocatario: TLabel;
    dtpDataVistoria: TDateTimePicker;
    cbTipoLocacao: TComboBox;
    cbSituacao: TComboBox;
    cbAcesso: TComboBox;
    edNumMedEnergia: TEdit_Numero_PEDSCI;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edLeituraEnergia: TEdit_Numero_PEDSCI;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    GroupBox2: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    edLeituraAgua: TEdit_Numero_PEDSCI;
    edNumMedAgua: TEdit_Numero_PEDSCI;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    procedure btPesquisarClick(Sender: TObject);
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
  frCadVistoria: TfrCadVistoria;

implementation

{$R *.dfm}

uses udmDadosGVGESTOR, uConsVistoria, uConsCliente, uConsImovel, uConsLocatario;

{ TfrCadVistoria }

procedure TfrCadVistoria.btPesquisarClick(Sender: TObject);
begin
  inherited;
  if ActiveControl = edCodigo then
     TfrConsVistoria.Create(edCodigo)
  else
  if ActiveControl = edCodCliente then
     TfrConsCliente.Create(edCodCliente)
  else
  if ActiveControl = edCodImovel then
     TfrConsImovel.Create(edCodImovel)
  else
  if ActiveControl = edCodLocatario then
     TfrConsLocatario.Create(edCodLocatario);
end;

procedure TfrCadVistoria.CarregaCampos;
begin
  dtpDataVistoria.Date  := FTabela.FieldByName('BDDATAVIST').AsDateTime;
  cbTipoLocacao.Text    := FTabela.FieldByName('BDTIPOLOC').AsString;
  cbSituacao.Text       := FTabela.FieldByName('BDSITUACAO').AsString;
  cbAcesso.Text         := FTabela.FieldByName('BDACESSO').AsString;
  edNumMedEnergia.Text  := FTabela.FieldByName('BDNMEDENE').AsString;
  edLeituraEnergia.Text := FTabela.FieldByName('BDLEITENERG').AsString;
  edNumMedAgua.Text     := FTabela.FieldByName('BDNMEDAGUA').AsString;
  edLeituraAgua.Text    := FTabela.FieldByName('BDLEITAGUA').AsString;
  edCodCliente.Codigo   := FTabela.FieldByName('BDCODCLT').AsInteger;
  edCodImovel.Codigo    := FTabela.FieldByName('BDCODIMOV').AsInteger;
  edCodLocatario.Codigo := FTabela.FieldByName('BDCODLOCAT').AsInteger;
end;

function TfrCadVistoria.getID: Boolean;
begin

end;

procedure TfrCadVistoria.SalvarCampos;
begin
  FTabela.FieldByName('BDCODVIST').AsInteger   := edCodigo.Codigo;
  FTabela.FieldByName('BDDATAVIST').AsDateTime := dtpDataVistoria.Date;
  FTabela.FieldByName('BDTIPOLOC').AsString    := cbTipoLocacao.Items[cbTipoLocacao.ItemIndex];
  FTabela.FieldByName('BDSITUACAO').AsString   := cbSituacao.Items[cbSituacao.ItemIndex];
  FTabela.FieldByName('BDACESSO').AsString     := cbAcesso.Items[cbAcesso.ItemIndex];
  FTabela.FieldByName('BDNMEDENE').AsString    := edNumMedEnergia.Text;
  FTabela.FieldByName('BDLEITENERG').AsString  := edLeituraEnergia.Text;
  FTabela.FieldByName('BDNMEDAGUA').AsString   := edNumMedAgua.Text;
  FTabela.FieldByName('BDLEITAGUA').AsString   := edLeituraAgua.Text;
  // C�digo Usu�rio Logado
  // FTabela.FieldByName('BDCODUSU').AsInteger
  FTabela.FieldByName('BDCODCLT').AsInteger := edCodCliente.Codigo;
  FTabela.FieldByName('BDCODIMOV').AsInteger := edCodImovel.Codigo;
  FTabela.FieldByName('BDCODLOCAT').AsInteger := edCodLocatario.Codigo;
end;

function TfrCadVistoria.setIDEdit: TWinControl;
begin
  Result := edCodigo;
end;

function TfrCadVistoria.setLastEdit: TWinControl;
begin
  Result := edLeituraAgua;
end;

function TfrCadVistoria.setTabela: TClientDataSet;
begin
  Result := dmTabelas.tbVistoria;
end;

function TfrCadVistoria.ValidaCampos: Boolean;
begin
  Result := True;
end;

end.
