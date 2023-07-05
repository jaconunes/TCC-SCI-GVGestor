unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Imaging.jpeg, uPrincipal, uUsuarioLogado;

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
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function fUsuario_Logado(wUsuario: String; wSenha: String): boolean;
    function fGetUsuarioLogado : TUsuario;

  end;

var
  frLogin: TfrLogin;
  wUsuarioLogado: TUsuario;

implementation

{$R *.dfm}

uses udmDadosGVGESTOR;

{ TfrLogin }

procedure TfrLogin.btLoginClick(Sender: TObject);
begin
  if fUsuario_Logado(edUsuario.Text, edSenha.Text) then
     begin
       frPrincipal := TfrPrincipal.Create(Application);
       frPrincipal.Show;
       frLogin.Hide;
     end;
end;

function TfrLogin.fGetUsuarioLogado: TUsuario;
begin
  Result := wUsuarioLogado;
end;

procedure TfrLogin.FormShow(Sender: TObject);
begin
  //TfrPrincipal(Owner).Enabled := False;
end;

function TfrLogin.fUsuario_Logado(wUsuario, wSenha: String): boolean;
begin
  Result := False;
  dmTabelas.tbUsuario.IndexFieldNames := 'BDUSUARIO';
  if dmTabelas.tbUsuario.FindKey([wUsuario]) then
     begin
       if wSenha = dmTabelas.tbUsuario.FieldByName('BDSENHA').AsString then
          begin
            Result := True;

            wUsuarioLogado.Create;
            wUsuarioLogado.ID := dmTabelas.tbUsuario.FieldByName('BDCODIGO').AsInteger;
            wUsuarioLogado.Nome := dmTabelas.tbUsuario.FieldByName('BDNOME').AsString;
            wUsuarioLogado.Perfil := dmTabelas.tbUsuario.FieldByName('BDPERFIL').AsString;
          end;
     end;
end;

end.
