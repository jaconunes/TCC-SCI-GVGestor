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
    Código: TLabel;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    btAdicionar: TToolButton;
    ToolButton7: TToolButton;
    opdImagem: TOpenPictureDialog;
    Label2: TLabel;
    procedure btAdicionarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btPesquisarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
    function fGetImageFileName(Sender: TOpenPictureDialog): string;
    function fSetFieldName: string; override;
  end;

var
  frCadFoto: TfrCadFoto;

implementation

{$R *.dfm}

{ TfrCadFoto }

uses jpeg, uCadAmbiente, udmDadosGVGESTOR, uConsFoto;

procedure TfrCadFoto.btAdicionarClick(Sender: TObject);
begin
  inherited;
  if opdImagem.Execute = True then
     begin
       iImagem.Picture.LoadFromFile(opdImagem.FileName);
     end;
end;

procedure TfrCadFoto.btPesquisarClick(Sender: TObject);
begin
  inherited;
  TfrConsFoto.Create(edCodigo);
end;

procedure TfrCadFoto.CarregaCampos;
begin
  edDescricao.Text := FTabela.FieldByName('BDDESC').AsString;
  iImagem.Picture.LoadFromFile(FTabela.FieldByName('BDURL').AsString);
end;

procedure TfrCadFoto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if (Owner is TForm) and (not TForm(Owner).Enabled) then
     TForm(Owner).Enabled := True;
end;

procedure TfrCadFoto.FormCreate(Sender: TObject);
begin
  inherited;
  if Owner is TfrConsFoto then
     begin
       edCodigo.Text := IntToStr(TfrConsFoto(Owner).grConsulta.Columns[0].Field.AsInteger);
     end;
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

function TfrCadFoto.fSetFieldName: string;
begin
  Result := 'BDCODFOTO';
end;

function TfrCadFoto.fGetImageFileName(Sender: TOpenPictureDialog): string;
var
  wUrlImagem : String;
begin
  if Owner is TfrCadAmbiente then
     begin
       wUrlImagem := 'C:\TCC - Gestor de Vistorias\GVGESTOR\images\Vistoria_' +
                     IntToStr(TfrCadAmbiente(Owner).CodVistoria) + '_Ambiente' +
                     TfrCadAmbiente(Owner).edCodigo.Text + '_' + 'Foto_' +
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
