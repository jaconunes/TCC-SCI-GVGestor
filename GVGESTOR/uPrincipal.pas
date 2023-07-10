unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, uUsuarioLogado;

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
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure mUsuarioClick(Sender: TObject);
    procedure Usurios1Click(Sender: TObject);
    procedure Imvel1Click(Sender: TObject);
    procedure Proprietrios1Click(Sender: TObject);
    procedure Imveis1Click(Sender: TObject);
    procedure Proprietrio1Click(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Locatrio1Click(Sender: TObject);
    procedure Locatrios1Click(Sender: TObject);
    procedure Vistoria1Click(Sender: TObject);
    procedure Vistorias1Click(Sender: TObject);
    procedure Imovis1Click(Sender: TObject);
    procedure Proprietrios2Click(Sender: TObject);
  private
    { Private declarations }
    FUsuarioLogado : TUsuario;
  public
    { Public declarations }
    procedure pPerfilAdm;
    procedure pPerfilPadrao;
    procedure pGetUsuarioLogado(wUsuario : TUsuario);
  end;

var
  frPrincipal: TfrPrincipal;

implementation

{$R *.dfm}

uses udmDadosGVGESTOR, uCadUsuario, uConsUsuario, uCadImovel,
  uConsProprietario, uConsImovel, uCadProprietario, uCadCliente, uConsCliente,
  uCadLocatario, uConsLocatario, uCadVistoria, uConsVistoria, uLogin,
  uRelImovel, uRelProprietario;

{ TfrPrincipal }



procedure TfrPrincipal.FormCreate(Sender: TObject);
begin
 //TfrConsCliente.Create(self).Show;
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

procedure TfrPrincipal.Clientes1Click(Sender: TObject);
begin
  TfrConsCliente.Create(self).Show;
end;

procedure TfrPrincipal.Cliente1Click(Sender: TObject);
begin
  TfrCadCliente.Create(self).Show;
end;

procedure TfrPrincipal.Imovis1Click(Sender: TObject);
begin
  TfrRelImovel.Create(self).Show;
end;

procedure TfrPrincipal.Imveis1Click(Sender: TObject);
begin
  TfrConsImovel.Create(self).Show;
end;

procedure TfrPrincipal.Imvel1Click(Sender: TObject);
begin
  TfrCadImovel.Create(self).Show;
end;

procedure TfrPrincipal.Locatrio1Click(Sender: TObject);
begin
  TfrCadLocatario.Create(self).Show;
end;

procedure TfrPrincipal.Locatrios1Click(Sender: TObject);
begin
  TfrConsLocatario.Create(self).Show;
end;

procedure TfrPrincipal.mUsuarioClick(Sender: TObject);
begin
  TfrCadUsuario.Create(self).Show;
end;

procedure TfrPrincipal.pGetUsuarioLogado(wUsuario: TUsuario);
begin
  FUsuarioLogado := wUsuario;
end;

procedure TfrPrincipal.pPerfilAdm;
begin
  mUsuario.Enabled := True;
end;

procedure TfrPrincipal.pPerfilPadrao;
begin
  mUsuario.Enabled := False;
end;

procedure TfrPrincipal.Proprietrio1Click(Sender: TObject);
begin
  TfrCadProprietario.Create(self).Show;
end;

procedure TfrPrincipal.Proprietrios1Click(Sender: TObject);
begin
  TfrConsProprietario.Create(self).Show;
end;

procedure TfrPrincipal.Proprietrios2Click(Sender: TObject);
begin
  TfrRelProprietario.Create(self).Show;
end;

procedure TfrPrincipal.Usurios1Click(Sender: TObject);
begin
  TfrConsUsuario.Create(self).Show;
end;

procedure TfrPrincipal.Vistoria1Click(Sender: TObject);
begin
  TfrCadVistoria.Create(self).Show;
end;

procedure TfrPrincipal.Vistorias1Click(Sender: TObject);
begin
  TfrConsVistoria.Create(self).Show;
end;

end.
