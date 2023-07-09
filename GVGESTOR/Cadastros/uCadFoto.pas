unit uCadFoto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoCadastroGVGESTOR,
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.StdCtrls, EditSCI, Datasnap.DBClient, Data.Db, Vcl.ExtDlgs;

type
  TfrCadFoto = class(TfrPadraoCadastroGVGESTOR)
    edCodigo: TEdit_Numero_PEDSCI;
    edDescricao: TEdit;
    iImagem: TImage;
    C�digo: TLabel;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    btAdicionar: TToolButton;
    ToolButton7: TToolButton;
    opdImagem: TOpenPictureDialog;
    Label2: TLabel;
    procedure btAdicionarClick(Sender: TObject);
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
    function getID: Boolean; override;

    function fGetImageFileName(Sender: TOpenPictureDialog): string;
  end;

var
  frCadFoto: TfrCadFoto;

implementation

{$R *.dfm}

{ TfrCadFoto }

uses jpeg, uCadAmbiente, udmDadosGVGESTOR;

procedure TfrCadFoto.btAdicionarClick(Sender: TObject);
begin
  inherited;
  if opdImagem.Execute = True then
     begin
       iImagem.Picture.LoadFromFile(opdImagem.FileName);
     end;
end;

procedure TfrCadFoto.CarregaCampos;
begin
  edDescricao.Text := FTabela.FieldByName('BDDESC').AsString;
  iImagem.Picture.LoadFromFile(FTabela.FieldByName('BDURL').AsString);
end;

procedure TfrCadFoto.FormShow(Sender: TObject);
begin
  inherited;
  if Owner is TfrCadAmbiente then
     begin
       TfrCadAmbiente(Owner).Enabled := False;
       wCodAmbiente := TfrCadAmbiente(Owner).edCodigo.Codigo;
       edCodigo.SetFocus;
     end;
end;

function TfrCadFoto.getID: Boolean;
begin
  Result := False;// define padr�o false
  pLimpaFiltros(FTabela);
  FTabela.IndexFieldNames := 'BDCODFOTO';
  if Assigned(FTabela) and Assigned(edCodigo) then // verificar se a tabela e o campo chave foi informado para n�o dar erro ao tentar acessar as vari�veis
     begin
       Result := FTabela.FindKey([edCodigo.Text]);
     end;
end;

function TfrCadFoto.fGetImageFileName(Sender: TOpenPictureDialog): string;
var
  wUrlImagem : String;
begin
  if Owner is TfrCadAmbiente then
     begin
       wUrlImagem := 'C:\TCC - Gestor de Vistorias\GVGESTOR\images\Vistoria_' +
                     IntToStr(TfrCadAmbiente(Owner).CodVistoria) + '_' +
                     TfrCadAmbiente(Owner).edNome.Text + '_' +
                     TfrCadAmbiente(Owner).edCodigo.Text + '_' +
                     edCodigo.Text + '.jpg';
       CopyFile(PChar(Sender.FileName), PChar(wUrlImagem), True);
       Result := wUrlImagem;
     end;
end;

procedure TfrCadFoto.SalvarCampos;
begin
  FTabela.FieldByName('BDCODFOTO').AsInteger := edCodigo.Codigo;
  FTabela.FieldByName('BDDESC').AsString := edDescricao.Text;
  FTabela.FieldByName('BDCODAMB').AsInteger := wCodAmbiente;
  FTabela.FieldByName('BDURL').AsString := fGetImageFileName(opdImagem);
end;

function TfrCadFoto.setIDEdit: TWinControl;
begin
  Result := edCodigo;
end;

function TfrCadFoto.setLastEdit: TWinControl;
begin
  Result := edDescricao;
end;

function TfrCadFoto.setTabela: TClientDataSet;
begin
  Result := dmTabelas.tbFoto;
end;

function TfrCadFoto.ValidaCampos: Boolean;
begin
  Result := True;
end;

end.
