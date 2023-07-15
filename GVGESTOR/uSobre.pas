unit uSobre;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrSobre = class(TForm)
    Image1: TImage;
    lbDescricao: TLabel;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frSobre: TfrSobre;

implementation

{$R *.dfm}

procedure TfrSobre.FormShow(Sender: TObject);
begin
  lbDescricao.Caption := 'Sistema desenvolvido para o TCC da' + #13 +
                         'Academia SCI Sistemas.' + #13 +
                         'Contato: (48) 99160-6544' + #13 +
                         'E-mail: jacksonnunes.bnu@gmail.com' + #13 +
                         'Vers�o 1.0.0';
end;

end.
