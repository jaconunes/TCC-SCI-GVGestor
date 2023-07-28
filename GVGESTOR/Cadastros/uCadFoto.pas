unit uCadFoto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoCadastroGVGESTOR,
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.StdCtrls, EditSCI, Datasnap.DBClient, Data.Db, Vcl.ExtDlgs, jpeg;

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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btPesquisarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    wCodAmbiente : Integer;
  public
    { Public declarations }
    function setTabela: TClientDataSet; override; // deve informar qual tabela ser� usada
    function setIDEdit: TWinControl; override;   // informar qual o campo chave da tela
    function setLastEdit: TWinControl; override; // informar o �ltimo campo da tela para salvar automaticamente
    procedure CarregaCampos; override; // carregar os campos da tabela para os camnpos da tela
    procedure SalvarCampos; override;  // salvar os valores dos campos da tela para os campos da tabela
    function ValidaCampos: Boolean; override; // Reescrito nas heran�as para a validar os campos
    function fGetImageFileName(Sender: TOpenPictureDialog): string; // obtem caminho do arquivo da foto
    function fSetFieldName: string; override; //obter o fieldname da PK da tabela
    function fGetIDAmbiente: Integer;  // obtem o ID do ambiente
    function fConvertToBmp(Jpeg : TJpegImage) : TBitmap; // converte JPG para BMP
    procedure pSetHabilitaButton; override; // Habilita bot�es nas heran�as
  end;

var
  frCadFoto: TfrCadFoto;

implementation

{$R *.dfm}

{ TfrCadFoto }

uses uCadAmbiente, udmDadosGVGESTOR, uConsFoto;

procedure TfrCadFoto.btAdicionarClick(Sender: TObject);
var
  wJpg : TJPEGImage;
begin
  inherited;
  wJpg := TJPEGImage.Create;
  // carrega dialogo para selecionar foto no computador
  if opdImagem.Execute = True then
     begin
       wJpg.LoadFromFile(opdImagem.FileName);
       iImagem.Picture.Bitmap.Assign(fConvertToBmp(wJpg));
     end;
  FreeAndNil(wJpg);
end;

procedure TfrCadFoto.btPesquisarClick(Sender: TObject);
begin
  inherited;
  // cria form de consulta de fotos
  TfrConsFoto.Create(self);
end;

procedure TfrCadFoto.CarregaCampos;
begin
  iImagem.Picture := nil;

  // carrega as informa��es e foto na tela
  edDescricao.Text := FTabela.FieldByName('BDDESC').AsString;
  iImagem.Visible := True;
  iImagem.Picture.LoadFromFile(FTabela.FieldByName('BDURL').AsString);
end;

procedure TfrCadFoto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  // devolve owner para a tela owner
  if (Owner is TForm) and (not TForm(Owner).Enabled) then
     TForm(Owner).Enabled := True;

  //FreeAndNil(iImagem);
end;

procedure TfrCadFoto.FormCreate(Sender: TObject);
begin
  inherited;
  if Owner is TfrConsFoto then
     begin
       edCodigo.Text := TfrConsFoto(Owner).grConsulta.Columns[0].Field.AsString;
       if getID then
          CarregaCampos;
     end;
end;

procedure TfrCadFoto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = VK_F4) and (btAdicionar.Enabled) then // tecla de atalho para adicionar foto
     btAdicionar.Click;
end;

procedure TfrCadFoto.FormShow(Sender: TObject);
begin
  inherited;
  // obtem o ID do ambiente e cria form
  if Owner is TfrCadAmbiente then
     begin
       TfrCadAmbiente(Owner).Enabled := False;
       wCodAmbiente := TfrCadAmbiente(Owner).edCodigo.Codigo;
       edCodigo.SetFocus;
     end;
end;

function TfrCadFoto.fSetFieldName: string;
begin
  // retorna o campo ID da tabela
  Result := 'BDCODFOTO';
end;

procedure TfrCadFoto.pSetHabilitaButton;
begin
  inherited;
end;

function TfrCadFoto.fConvertToBmp(Jpeg : TJPEGImage) : TBitmap;
var
  vBmp: TBitmap;
begin
  // Recebe um arquivo Jpeg e converte em Bmp
  vBmp := TBitmap.Create;
  vBmp.Assign(Jpeg);

  Result := vBmp;
end;

function TfrCadFoto.fGetIDAmbiente: Integer;
begin
  // retorna o ID do ambiente
  Result := wCodAmbiente;
end;

function TfrCadFoto.fGetImageFileName(Sender: TOpenPictureDialog): string;
var
  wUrlImagem : String;
  wJpg : TJPEGImage;
  wBmp: TBitmap;
begin
  if Owner is TfrCadAmbiente then
     begin
       // Cria o nome do arquivo no local espec�fico na pasta da Aplica��o
       wUrlImagem := 'C:\TCC - Gestor de Vistorias\GVGESTOR\images\Vist_' +
                     IntToStr(TfrCadAmbiente(Owner).CodVistoria) + '_Amb_' +
                     TfrCadAmbiente(Owner).edCodigo.Text + '_Foto_' +
                     edCodigo.Text + '_' + FormatDateTime('dd-mm-yyyy', Now) + '-' +
                     FormatDateTime('HH-MM', Now) + '.bmp';
       wJpg := TJPEGImage.Create;
       wBmp := TBitmap.Create;
       wJpg.LoadFromFile(Sender.FileName);
       // Converte o Jpeg em Bmp e retora o Bmp
       wBmp := fConvertToBmp(wJpg);
       // salva o Bmp no local especificado
       wBmp.SaveToFile(wUrlImagem);
       wBmp.Free;
       wJpg.Free;
       // Retorna o caminho da imagem
       Result := wUrlImagem;
     end;
end;

procedure TfrCadFoto.SalvarCampos;
begin
  // Carrega os componentes da tela
  FTabela.FieldByName('BDCODFOTO').AsInteger := edCodigo.Codigo;
  FTabela.FieldByName('BDDESC').AsString := edDescricao.Text;
  FTabela.FieldByName('BDPKCODAMB').AsInteger := wCodAmbiente;
  FTabela.FieldByName('BDURL').AsString := fGetImageFileName(opdImagem);
end;

function TfrCadFoto.setIDEdit: TWinControl;
begin
  // retorna o campo ID da tela
  Result := edCodigo;
end;

function TfrCadFoto.setLastEdit: TWinControl;
begin
  // retorna o ultimo campo da tela
  // Result := edDescricao;  // Salva apenas pelo atalho F2
end;

function TfrCadFoto.setTabela: TClientDataSet;
begin
  // retorna a tabela no BD
  Result := dmTabelas.tbFoto;
end;

function TfrCadFoto.ValidaCampos: Boolean;
var
  wMessage: String;
begin
  Result := True;
//  if edDescricao.Text = EmptyStr then  // valida campo descri��o da foto
//     begin
//       edDescricao.SetFocus;
//       Result := False;
//       wMessage := 'Informe a descri��o da imagem!' + #13;
//     end
//  else
  if iImagem.Picture = nil then  // valida se imagem foi selecionada
     begin
       Result := False;
       ShowMessage('Selecione uma imagem!');
       if opdImagem.Execute = True then
          begin
            iImagem.Picture.LoadFromFile(opdImagem.FileName);
            iImagem.Visible := True;
          end;
     end;
  if wMessage <> EmptyStr then
     ShowMessage(wMessage);
end;

end.
