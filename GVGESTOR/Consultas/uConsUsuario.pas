unit uConsUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoConsultaGVGESTOR, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.ToolWin, Datasnap.DBClient, udmDadosGVGESTOR;

type
  TfrConsUsuario = class(TfrPadraoConsultaGVGSTOR)
    procedure btEditarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function setTabela: TClientDataSet; override; // seta tabela no BD


  end;

var
  frConsUsuario: TfrConsUsuario;

implementation

{$R *.dfm}

uses uCadUsuario, uPrincipal;

{ TfrConsUsuario }

procedure TfrConsUsuario.btEditarClick(Sender: TObject);
begin
  // cria form de cadastro de usuários
  TfrCadUsuario.Create(self).Show;
end;

procedure TfrConsUsuario.FormCreate(Sender: TObject);
begin
  inherited;
  // verifica perfil do usuário logado e habilita botões de edição e exclusão
  if frPrincipal.fGetUsuarioLogado.Perfil = 'Administrador' then
     begin
       btEditar.Enabled := True;
       btExcluir.Enabled := True;
     end;
end;

function TfrConsUsuario.setTabela: TClientDataSet;
begin
  // seta tabela no BD
  Result := dmTabelas.tbUsuario;
end;

end.
