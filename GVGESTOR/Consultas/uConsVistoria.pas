unit uConsVistoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoConsultaGVGESTOR, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.ToolWin, Datasnap.DBClient;

type
  TfrConsVistoria = class(TfrPadraoConsultaGVGSTOR)
  private
    { Private declarations }
  public
    { Public declarations }
    function setTabela: TClientDataSet; override;
  end;

var
  frConsVistoria: TfrConsVistoria;

implementation

{$R *.dfm}

uses udmDadosGVGESTOR;

{ TfrConsVistoria }

function TfrConsVistoria.setTabela: TClientDataSet;
begin
  Result := dmTabelas.tbVistoria;
end;

end.
