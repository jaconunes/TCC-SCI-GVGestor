unit uCadItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoCadastroGVGESTOR,
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.ToolWin, Datasnap.DBClient, Data.Db,
  Vcl.StdCtrls, EditSCI;

type
  TfrCadItem = class(TfrPadraoCadastroGVGESTOR)
    edCodigo: TEdit_Numero_PEDSCI;
    edDescricao: TEdit;
    cbEstado: TComboBox;
    edObs: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure btPesquisarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    wCodAmbiente : Integer;
  public
    { Public declarations }
    function setTabela: TClientDataSet; override;
    function setIDEdit: TWinControl; override;
    function setLastEdit: TWinControl; override;
    procedure CarregaCampos; override;
    procedure SalvarCampos; override;
    function ValidaCampos: Boolean; override;
    function fSetFieldName: string; override;
    function fGetIDAmbiente: Integer;

  end;

var
  frCadItem: TfrCadItem;

implementation

{$R *.dfm}

uses udmDadosGVGESTOR, uConsItem, uCadAmbiente;

{ TfrCadItem }

procedure TfrCadItem.btPesquisarClick(Sender: TObject);
begin
  inherited;
  TfrConsItem.Create(self);
end;

procedure TfrCadItem.CarregaCampos;
begin
  edDescricao.Text := FTabela.FieldByName('BDDESCRICAO').AsString;
  cbEstado.Text := FTabela.FieldByName('BDESTADO').AsString;
  edObs.Text := FTabela.FieldByName('BDOBSADC').AsString;
end;

function TfrCadItem.fGetIDAmbiente: Integer;
begin
  Result := wCodAmbiente;
end;

procedure TfrCadItem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if (Owner is TForm) and (not TForm(Owner).Enabled) then
     TForm(Owner).Enabled := True;
end;

procedure TfrCadItem.FormShow(Sender: TObject);
begin
  inherited;
  if Owner is TfrCadAmbiente then
     begin
       TfrCadAmbiente(Owner).Enabled := False;
       wCodAmbiente := TfrCadAmbiente(Owner).edCodigo.Codigo;
       edCodigo.SetFocus;
     end;
end;

function TfrCadItem.fSetFieldName: string;
begin
  Result := 'BDCODITEM';
end;

procedure TfrCadItem.SalvarCampos;
begin
  FTabela.FieldByName('BDCODITEM').AsInteger := edCodigo.Codigo;
  FTabela.FieldByName('BDDESCRICAO').AsString := edDescricao.Text;
  FTabela.FieldByName('BDESTADO').AsString := cbEstado.Items[cbEstado.ItemIndex];
  FTabela.FieldByName('BDOBSADC').AsString := edObs.Text;
  FTabela.FieldByName('BDPKCODAMB').AsInteger := wCodAmbiente; //c�digo do ambiente
end;

function TfrCadItem.setIDEdit: TWinControl;
begin
  Result := edCodigo;
end;

function TfrCadItem.setLastEdit: TWinControl;
begin
  Result := edObs;
end;

function TfrCadItem.setTabela: TClientDataSet;
begin
  Result := dmTabelas.tbItem;
end;

function TfrCadItem.ValidaCampos: Boolean;
var
  wMessage: String;
begin
  Result := True;
  if edDescricao.Text = EmptyStr then
     begin
       edDescricao.SetFocus;
       Result := False;
       wMessage := 'Informe a descri��o do item!' + #13;
     end
  else
  if edObs.Text = EmptyStr then
     begin
       edObs.SetFocus;
       Result := False;
       wMessage := 'Informe a observa��o do item!' + #13;
     end
  else
  if Result then
     wMessage := 'Registro salvo com sucesso!';
  ShowMessage(wMessage);
end;

end.
