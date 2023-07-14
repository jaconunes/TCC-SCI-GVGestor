unit uConsItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoConsultaGVGESTOR, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.ToolWin, Datasnap.DBClient;

type
  TfrConsItem = class(TfrPadraoConsultaGVGSTOR)
    procedure btEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    function setTabela: TClientDataSet; override;
    { Public declarations }

  end;

var
  frConsItem: TfrConsItem;

implementation

{$R *.dfm}

uses udmDadosGVGESTOR, uCadItem;

{ TfrConsItem }

procedure TfrConsItem.btEditarClick(Sender: TObject);
begin
  inherited;
  TfrCadItem.Create(self);
end;

function TfrConsItem.setTabela: TClientDataSet;
begin
  Result := dmTabelas.tbItem;
end;

end.
