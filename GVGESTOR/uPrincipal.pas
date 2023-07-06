unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Consultas1: TMenuItem;
    Relatrios1: TMenuItem;
    Sobre1: TMenuItem;
    Laudo1: TMenuItem;
    mUsuario: TMenuItem;
    Imvel1: TMenuItem;
    Proprietrio1: TMenuItem;
    Cliente1: TMenuItem;
    Locatrio1: TMenuItem;
    Vistoria1: TMenuItem;
    Usurios1: TMenuItem;
    Imveis1: TMenuItem;
    Proprietrios1: TMenuItem;
    Clientes1: TMenuItem;
    Vistorias1: TMenuItem;
    Locatrios1: TMenuItem;
    Imovis1: TMenuItem;
    Proprietrios2: TMenuItem;
    Clientes2: TMenuItem;
    Vistorias2: TMenuItem;
    Locatrios2: TMenuItem;
    Gerar1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure mUsuarioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure pPerfilAdm;
    procedure pPerfilPadrao;
  end;

var
  frPrincipal: TfrPrincipal;

implementation

{$R *.dfm}

uses udmDadosGVGESTOR, uUsuarioLogado, uCadUsuario;

{ TfrPrincipal }


procedure TfrPrincipal.FormCreate(Sender: TObject);
begin
  //TfrLogin.Create(self).Show;
//  if Owner is TfrLogin then
//     begin
//       wUsuario := Trim(TfrLogin(Owner).edUsuario.Text);
//       wUsuario := frLogin.w
//       TfrLogin(Owner).WindowState := wsMinimized;
//
//       dmTabelas.tbUsuario.IndexFieldNames := 'BDUSUARIO';
//       if dmTabelas.tbUsuario.FindKey([wUsuario]) then
//          begin
//            uUsuarioLogado.Create;
//            uUsuarioLogado.ID := dmTabelas.tbUsuario.FieldByName('BDCODIGO').AsInteger;
//            uUsuarioLogado.Usuario := wUsuario;
//            uUsuarioLogado.Nome := dmTabelas.tbUsuario.FieldByName('BDNOME').AsString;
//            uUsuarioLogado.CpfOuCnpj := dmTabelas.tbUsuario.FieldByName('BDCPFCNPJ').AsString;
//            uUsuarioLogado.Perfil := dmTabelas.tbUsuario.FieldByName('BDPERFIL').AsString;
//          end;
//
//     end;

//     if frLogin.fGetUsuarioLogado.Perfil = 'Administrador' then
//        pPerfilAdm
//     else
//     if frLogin.fGetUsuarioLogado.Perfil = 'Padr�o' then
//        pPerfilPadrao;
end;

procedure TfrPrincipal.mUsuarioClick(Sender: TObject);
begin
  TfrCadUsuario.Create(self).Show;
end;

procedure TfrPrincipal.pPerfilAdm;
begin
  mUsuario.Enabled := True;
end;

procedure TfrPrincipal.pPerfilPadrao;
begin
  mUsuario.Enabled := False;
end;

end.
