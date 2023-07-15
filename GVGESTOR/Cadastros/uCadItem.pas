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
    function setTabela: TClientDataSet; override; // deve informar qual tabela ser� usada
    function setIDEdit: TWinControl; override;  // informar qual o campo chave da tela
    function setLastEdit: TWinControl; override; // informar o �ltimo campo da tela para salvar automaticamente
    procedure CarregaCampos; override; // carregar os campos da tabela para os camnpos da tela
    procedure SalvarCampos; override;  // salvar os valores dos campos da tela para os campos da tabela
    function ValidaCampos: Boolean; override; // Reescrito nas heran�as para a validar os campos
    function fSetFieldName: string; override;  //obter o fieldname da PK da tabela
    function fGetIDAmbiente: Integer; // obtem ID do ambiente
    procedure pSetHabilitaButton; override; // Habilita bot�es nas heran�as
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
  // cria form de consulta de itens
  TfrConsItem.Create(self);
end;

procedure TfrCadItem.CarregaCampos;
begin
  // carrega campos na tela
  edDescricao.Text := FTabela.FieldByName('BDDESCRICAO').AsString;
  cbEstado.Text := FTabela.FieldByName('BDESTADO').AsString;
  edObs.Text := FTabela.FieldByName('BDOBSADC').AsString;
end;

function TfrCadItem.fGetIDAmbiente: Integer;
begin
  // retorna ID do ambiente
  Result := wCodAmbiente;
end;

procedure TfrCadItem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  // devolve owner para form owner
  if (Owner is TForm) and (not TForm(Owner).Enabled) then
     TForm(Owner).Enabled := True;
end;

procedure TfrCadItem.FormShow(Sender: TObject);
begin
  inherited;
  // obtem o ID do ambiente
  if Owner is TfrCadAmbiente then
     begin
       TfrCadAmbiente(Owner).Enabled := False;
       wCodAmbiente := TfrCadAmbiente(Owner).edCodigo.Codigo;
       edCodigo.SetFocus;
     end;
end;

function TfrCadItem.fSetFieldName: string;
begin
  // retorna o campo ID na tabela
  Result := 'BDCODITEM';
end;

procedure TfrCadItem.pSetHabilitaButton;
begin
  inherited;
end;

procedure TfrCadItem.SalvarCampos;
begin
  // salva campos no BD
  FTabela.FieldByName('BDCODITEM').AsInteger := edCodigo.Codigo;
  FTabela.FieldByName('BDDESCRICAO').AsString := edDescricao.Text;
  FTabela.FieldByName('BDESTADO').AsString := cbEstado.Items[cbEstado.ItemIndex];
  FTabela.FieldByName('BDOBSADC').AsString := edObs.Text;
  FTabela.FieldByName('BDPKCODAMB').AsInteger := wCodAmbiente; //c�digo do ambiente
end;

function TfrCadItem.setIDEdit: TWinControl;
begin
  // retorna campo ID da tela
  Result := edCodigo;
end;

function TfrCadItem.setLastEdit: TWinControl;
begin
  // retorna ultimo campo da tela
  Result := edObs;
end;

function TfrCadItem.setTabela: TClientDataSet;
begin
  // retorna a tabela no BD
  Result := dmTabelas.tbItem;
end;

function TfrCadItem.ValidaCampos: Boolean;
var
  wMessage: String;
begin
  Result := True;
  if edDescricao.Text = EmptyStr then // valida campo descri��o
     begin
       edDescricao.SetFocus;
       Result := False;
       wMessage := 'Informe a descri��o do item!' + #13;
     end
  else
  if edObs.Text = EmptyStr then  // valida campo observa��o
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
