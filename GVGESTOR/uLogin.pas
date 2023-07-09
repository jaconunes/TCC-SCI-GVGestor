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
    lbAlertaLogin: TLabel;
    procedure btLoginClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function fUsuario_Logado(wUsuario: String; wSenha: String): boolean;
    function fSetUsuarioLogado : TUsuario;

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
  if edUsuario.Text = EmptyStr then
     begin
       lbAlertaLogin.Caption := 'O campo "Usu�rio" deve ser preenchido!';
       edUsuario.SetFocus;
     end
  else
  if edSenha.Text = EmptyStr then
     begin
       lbAlertaLogin.Caption := 'O campo "Senha" deve ser preenchido!';
       edSenha.SetFocus;
     end
  else
  if fUsuario_Logado(edUsuario.Text, edSenha.Text) then
     begin
       ModalResult := mrOk;
     end
  else
     begin
       lbAlertaLogin.Caption := 'O "Usu�rio" e "Senha" n�o conferem.' + #13 +
                                'Tente novamente.';
       edUsuario.SetFocus;
     end;
end;

function TfrLogin.fSetUsuarioLogado: TUsuario;
begin
  Result := wUsuarioLogado;
end;

procedure TfrLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  if (Owner is TForm) and (not TForm(Owner).Enabled) then
//     TForm(Owner).Enabled := True;
end;

procedure TfrLogin.FormResize(Sender: TObject);
begin
//  frLogin.Left := frPrincipal.Left + ((frPrincipal.Width - frLogin.Width) div 2);
//  frLogin.Top  := frPrincipal.Top + ((frPrincipal.Height - frLogin.Height) div 2);
end;

procedure TfrLogin.FormShow(Sender: TObject);
begin
//  if Owner is TfrPrincipal then
//     begin
//       TfrPrincipal(Owner).Enabled := False;
//       edUsuario.SetFocus;
//     end;
//  frLogin.Left := frPrincipal.Left + ((frPrincipal.Width - frLogin.Width) div 2);
//  frLogin.Top  := frPrincipal.Top + ((frPrincipal.Height - frLogin.Height) div 2);
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

            wUsuarioLogado.Create();
            wUsuarioLogado.ID := dmTabelas.tbUsuario.FieldByName('BDCODIGO').AsInteger;
            wUsuarioLogado.Nome := dmTabelas.tbUsuario.FieldByName('BDNOME').AsString;
            wUsuarioLogado.Perfil := dmTabelas.tbUsuario.FieldByName('BDPERFIL').AsString;
          end;
     end;
end;

end.
