unit uUsuarioLogado;

interface

type
  TUsuario = Class

  private
    wCodigo : Integer;
    wNome : String;
    wPerfil : String;

  public
    property ID : Integer read wCodigo write wCodigo;
    property Nome : String read wNome write wNome;
    property Perfil : String read wPerfil write wPerfil;

  End;

implementation

end.
