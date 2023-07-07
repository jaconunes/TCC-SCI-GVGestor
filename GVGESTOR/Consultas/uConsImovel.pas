unit uConsImovel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoConsultaGVGESTOR, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.ToolWin, Datasnap.DBClient;

type
  TfrConsImovel = class(TfrPadraoConsultaGVGSTOR)
    procedure btEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    function setTabela: TClientDataSet; override;
    { Public declarations }

  end;

var
  frConsImovel: TfrConsImovel;

implementation

{$R *.dfm}

uses udmDadosGVGESTOR, uCadImovel;

{ TfrConsImovel }

procedure TfrConsImovel.btEditarClick(Sender: TObject);
begin
  inherited;
  TfrCadImovel.Create(self).Show;
end;

function TfrConsImovel.setTabela: TClientDataSet;
begin
  Result := dmTabelas.tbImovel;
end;

end.
