unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, uUsuarioLogado, Vcl.StdCtrls, Vcl.Imaging.pngimage;

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
    pnLoginFilho: TPanel;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    lbAlertaLogin: TLabel;
    edUsuario: TEdit;
    edSenha: TEdit;
    btLogin: TButton;
    lbUsuarioLogado: TLabel;
    Sair1: TMenuItem;
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
    procedure Clientes2Click(Sender: TObject);
    procedure Locatrios2Click(Sender: TObject);
    procedure Vistorias2Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btLoginClick(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Gerar1Click(Sender: TObject);
  private
    { Private declarations }
    FUsuarioLogado : TUsuario;
  public
    { Public declarations }
    procedure pPerfilAdm;
    procedure pPerfilPadrao;
    procedure pSemUsuario;
    procedure pCentralizarPanel(AForm: TForm; APanel: TPanel);
    function fUsuario_Logado(wUsuario: String; wSenha: String): boolean;
    function fGetUsuarioLogado: TUsuario;
  end;

var
  frPrincipal: TfrPrincipal;

implementation

{$R *.dfm}

uses udmDadosGVGESTOR, uCadUsuario, uConsUsuario, uCadImovel,
  uConsProprietario, uConsImovel, uCadProprietario, uCadCliente, uConsCliente,
  uCadLocatario, uConsLocatario, uCadVistoria, uConsVistoria, uRelImovel,
  uRelProprietario, uRelCliente, uRelLocatario, uRelVistoria, uLaudo;

{ TfrPrincipal }

procedure TfrPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FUsuarioLogado);
end;

procedure TfrPrincipal.FormCreate(Sender: TObject);
begin
  pSemUsuario;
end;

procedure TfrPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then// tecla de atalho para fechar a tela
     begin
       if MessageDlg('Deseja mesmo fechar da aplica��o?', mtConfirmation, mbOKCancel, 0) = mrOk then
          begin
            Close;
          end;
     end
  else
  if (Key = VK_RETURN) then// tecla de atalho para seguir para o pr�ximo campo com <enter>
     self.Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TfrPrincipal.FormResize(Sender: TObject);
begin
  pCentralizarPanel(self, pnLoginFilho);
end;

function TfrPrincipal.fUsuario_Logado(wUsuario, wSenha: String): boolean;
begin
  Result := False;
  dmTabelas.tbUsuario.IndexFieldNames := 'BDUSUARIO';
  if dmTabelas.tbUsuario.FindKey([wUsuario]) then
     begin
       if wSenha = dmTabelas.tbUsuario.FieldByName('BDSENHA').AsString then
          begin
            Result := True;

            FUsuarioLogado := TUsuario.Create;
            FUsuarioLogado.ID := dmTabelas.tbUsuario.FieldByName('BDCODIGO').AsInteger;
            FUsuarioLogado.Nome := dmTabelas.tbUsuario.FieldByName('BDNOME').AsString;
            FUsuarioLogado.Perfil := dmTabelas.tbUsuario.FieldByName('BDPERFIL').AsString;
          end;
     end;
end;

procedure TfrPrincipal.Gerar1Click(Sender: TObject);
begin
  TfrLaudo.Create(self).Show;
end;

procedure TfrPrincipal.Clientes1Click(Sender: TObject);
begin
  TfrConsCliente.Create(self).Show;
end;

procedure TfrPrincipal.Clientes2Click(Sender: TObject);
begin
  TfrRelCliente.Create(self).Show;
end;

function TfrPrincipal.fGetUsuarioLogado: TUsuario;
begin
  Result := FUsuarioLogado;
end;

procedure TfrPrincipal.btLoginClick(Sender: TObject);
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
       if FUsuarioLogado.Perfil = 'Administrador' then
          pPerfilAdm
       else
          pPerfilPadrao;
       lbUsuarioLogado.Caption := 'Ol�, ' + FUsuarioLogado.Nome + '! Seja bem-vindo!';
       pnLoginFilho.Visible := False;
     end
  else
     begin
       lbAlertaLogin.Caption := 'O "Usu�rio" e "Senha" n�o conferem.' + #13 +
                                'Tente novamente.';
       edUsuario.SetFocus;
     end;
end;

procedure TfrPrincipal.pCentralizarPanel(AForm: TForm; APanel: TPanel);
begin
  APanel.Left := (AForm.ClientWidth div 2) - (APanel.Width div 2);
  APanel.Top := (AForm.ClientHeight div 2) - (APanel.Height div 2);

  APanel.Update;
  AForm.Update;
end;

procedure TfrPrincipal.pPerfilAdm;
begin
  Cadastros1.Enabled := True;
  Consultas1.Enabled := True;
  Relatrios1.Enabled := True;
  Laudo1.Enabled     := True;
  mUsuario.Enabled   := True;
  Sair1.Enabled      := True;
end;

procedure TfrPrincipal.pPerfilPadrao;
begin
  Cadastros1.Enabled := True;
  Consultas1.Enabled := True;
  Relatrios1.Enabled := True;
  Laudo1.Enabled     := True;
  mUsuario.Enabled   := False;
  Sair1.Enabled      := True;
end;

procedure TfrPrincipal.pSemUsuario;
begin
  Cadastros1.Enabled      := False;
  Consultas1.Enabled      := False;
  Relatrios1.Enabled      := False;
  Laudo1.Enabled          := False;
  Sair1.Enabled           := False;
  lbUsuarioLogado.Caption := EmptyStr;
end;

procedure TfrPrincipal.Sair1Click(Sender: TObject);
var
  wI: integer;
begin
  if MessageDlg('Deseja mesmo fazer logoff?', mtConfirmation, mbOKCancel, 0) = mrOk then
     begin
       for wI := 0 to Self.MDIChildCount - 1 do
          Self.MDIChildren[wI].Close;

       pSemUsuario;
       lbUsuarioLogado.Caption := EmptyStr;
       FreeAndNil(FUsuarioLogado);
       pnLoginFilho.Visible := True;
       edUsuario.Clear;
       edSenha.Clear;
       edUsuario.SetFocus;
     end;
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

procedure TfrPrincipal.Locatrios2Click(Sender: TObject);
begin
  TfrRelLocatario.Create(self).Show;
end;

procedure TfrPrincipal.mUsuarioClick(Sender: TObject);
begin
  TfrCadUsuario.Create(self).Show;
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

procedure TfrPrincipal.Vistorias2Click(Sender: TObject);
begin
  TfrRelVistoria.Create(self).Show;
end;

end.
