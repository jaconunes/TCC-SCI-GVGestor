unit uConsFoto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoConsultaGVGESTOR, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.ToolWin, Datasnap.DBClient;

type
  TfrConsFoto = class(TfrPadraoConsultaGVGSTOR)
    procedure btEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    function setTabela: TClientDataSet; override;
    { Public declarations }

  end;

var
  frConsFoto: TfrConsFoto;

implementation

{$R *.dfm}

uses uCadFoto, udmDadosGVGESTOR;

procedure TfrConsFoto.btEditarClick(Sender: TObject);
begin
  inherited;
  TfrCadFoto.Create(self);
end;

function TfrConsFoto.setTabela: TClientDataSet;
begin
  Result := dmTabelas.tbFoto;
end;

end.
