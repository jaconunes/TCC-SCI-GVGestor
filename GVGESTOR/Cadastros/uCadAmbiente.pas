unit uCadAmbiente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoCadastroGVGESTOR,
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.ToolWin;

type
  TfrCadAmbiente = class(TfrPadraoCadastroGVGESTOR)
    ToolButton4: TToolButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frCadAmbiente: TfrCadAmbiente;

implementation

{$R *.dfm}

end.
