unit uPapelParede;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtDlgs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrPapelParede = class(TForm)
    imgExibir: TImage;
    btBuscar: TButton;
    btAplicar: TButton;
    opdImagemPrincipal: TOpenPictureDialog;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    procedure btBuscarClick(Sender: TObject);
    procedure btAplicarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frPapelParede: TfrPapelParede;

implementation

{$R *.dfm}

uses uPrincipal;

procedure TfrPapelParede.btAplicarClick(Sender: TObject);
var
  wUrlImagem: String;
begin
  wUrlImagem := 'C:\TCC - Gestor de Vistorias\GVGESTOR\images\bg\bg-principal.jpg'; // define local da imagem
  DeleteFile(wUrlImagem); // deleta arquivo existente
  CopyFile(PChar(opdImagemPrincipal.FileName), PChar(wUrlImagem), True); // copia novo arquivo para o local
  frPrincipal.imgPrincipal.Picture.Graphic := nil;
  frPrincipal.imgPrincipal.Picture.LoadFromFile(wUrlImagem); // carrega nova imagem
  frPrincipal.imgPrincipal.Visible := False;  // Refresh
  frPrincipal.imgPrincipal.Visible := True;
end;

procedure TfrPapelParede.btBuscarClick(Sender: TObject);
begin
  // carrega dialogo para selecionar foto no computador
  if opdImagemPrincipal.Execute = True then
     begin
       imgExibir.Picture.LoadFromFile(opdImagemPrincipal.FileName);
     end;
end;

procedure TfrPapelParede.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F3 then  // atalho para buscar imagem
     btBuscar.Click
  else
  if Key = VK_RETURN then  // atalho para aplicar nova imagem
     btAplicar.Click
  else
  if Key = VK_ESCAPE then // fechar form
     Close;
end;

end.
