unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TfrLogin = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    Image2: TImage;
    Edit2: TEdit;
    Image3: TImage;
    Button1: TButton;
    Image4: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frLogin: TfrLogin;

implementation

{$R *.dfm}

end.