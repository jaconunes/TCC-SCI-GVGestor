unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Imaging.jpeg, uUsuarioLogado, uPrincipal;

type
  TfrLogin = class(TForm)
    Image1: TImage;
    edUsuario: TEdit;
    Image2: TImage;
    edSenha: TEdit;
    Image3: TImage;
    btLogin: TButton;
    Image4: TImage;
    procedure btLoginClick(Sender: TObject);
  private
    { Private declarations }
    wUsuarioLogado : TUsuario;
  public
    { Public declarations }

    function fUsuario_Logado(Usuario: String; Senha: String): Boolean;
    function fGet_Usuario(wUsuarioLogado : TUsuario) : TUsuario;

  end;

var
  frLogin: TfrLogin;

implementation

{$R *.dfm}

uses udmDadosGVGESTOR;

{ TfrLogin }

procedure TfrLogin.btLoginClick(Sender: TObject);
begin
  if fUsuario_Logado(edUsuario.Text, edSenha.Text) then
     begin
       TfrPrincipal.create(wUsuarioLogado).Show;
       Close;
     end;
end;

function TfrLogin.fGet_Usuario(wUsuarioLogado: TUsuario): TUsuario;
begin
  Result := wUsuarioLogado;
end;

function TfrLogin.fUsuario_Logado(wUsuario, wSenha: String): Boolean;
begin
  Result := False;
  dmTabelas.tbUsuario.IndexFieldNames := 'BDNOME';
  if dmTabelas.tbUsuario.FindKey([Usuario]) then
     begin
       if Senha = dmTabelas.tbUsuario.FieldByName('BDSENHA').AsString then
          begin
            wUsuarioLogado.Create;
            wUsuarioLogado.ID := dmTabelas.tbUsuario.FieldByName('BDCODIGO').AsInteger;
            wUsuarioLogado.Usuario := dmTabelas.tbUsuario.FieldByName('BDNOME').AsString;
            wUsuarioLogado.CpfOuCnpj := dmTabelas.tbUsuario.FieldByName('BDCPFCNPJ').AsString;
            wUsuarioLogado.Perfil := dmTabelas.tbUsuario.FieldByName('BDPERFIL').AsString;
            fGet_Usuario(wUsuarioLogado);
            Result := True;
          end;
     end;
end;

end.
