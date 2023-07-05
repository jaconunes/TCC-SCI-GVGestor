unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uUsuarioLogado;

type
  TfrPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Consultas1: TMenuItem;
    Relatrios1: TMenuItem;
    Sobre1: TMenuItem;
    Laudo1: TMenuItem;
    Usurio1: TMenuItem;
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
  private
    { Private declarations }
     UsuarioLogado : TUsuario;
  public
    { Public declarations }
    constructor Create(wUsuarioLogado : TUsuario); reintroduce;
    destructor Destroy; override;
  end;

var
  frPrincipal: TfrPrincipal;

implementation

{$R *.dfm}

{ TfrPrincipal }

constructor TfrPrincipal.Create(wUsuarioLogado: TUsuario);
begin
  inherited Create;
  UsuarioLogado := wUsuarioLogado;
end;

destructor TfrPrincipal.Destroy;
begin
  inherited;
  Destroy;
end;

end.
