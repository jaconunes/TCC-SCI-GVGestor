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
begin
  inherited;
  // carrega dialogo para selecionar foto no computador
  if opdImagem.Execute = True then
     begin
       iImagem.Picture.LoadFromFile(opdImagem.FileName);
     end;
end;

procedure TfrCadFoto.btPesquisarClick(Sender: TObject);
begin
  inherited;
  // cria form de consulta de fotos
  TfrConsFoto.Create(self);
end;

procedure TfrCadFoto.CarregaCampos;
begin
  // carrega as informa��es e foto na tela
  edDescricao.Text := FTabela.FieldByName('BDDESC').AsString;
  iImagem.Picture.LoadFromFile(FTabela.FieldByName('BDURL').AsString);
end;

procedure TfrCadFoto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  // devolve owner para a tela owner
  if (Owner is TForm) and (not TForm(Owner).Enabled) then
     TForm(Owner).Enabled := True;
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
                     edCodigo.Text + '.bmp';
       wJpg := TJPEGImage.Create;
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
  Result := edDescricao;
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
  if edDescricao.Text = EmptyStr then  // valida campo descri��o da foto
     begin
       edDescricao.SetFocus;
       Result := False;
       wMessage := 'Informe a descri��o da imagem!' + #13;
     end
  else
  if iImagem.Picture = nil then  // valida se imagem foi selecionada
     begin
       Result := False;
       ShowMessage('Selecione uma imagem!');
       if opdImagem.Execute = True then
          begin
            iImagem.Picture.LoadFromFile(opdImagem.FileName);
          end;
     end
  else
  if Result then
     wMessage := 'Registro salvo com sucesso!';
  ShowMessage(wMessage);
end;

end.
