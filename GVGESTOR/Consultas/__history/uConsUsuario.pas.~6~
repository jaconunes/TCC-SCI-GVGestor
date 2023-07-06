unit uConsUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoConsultaGVGESTOR, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.ToolWin, Datasnap.DBClient, udmDadosGVGESTOR;

type
  TfrConsUsuario = class(TfrPadraoConsultaGVGSTOR)
  private
    { Private declarations }
  public
    function setTabela: TClientDataSet; override;
    { Public declarations }

  end;

var
  frConsUsuario: TfrConsUsuario;

implementation

{$R *.dfm}

{ TfrConsUsuario }

function TfrConsUsuario.setTabela: TClientDataSet;
begin
  Result := dmTabelas.tbUsuario;
end;

end.
