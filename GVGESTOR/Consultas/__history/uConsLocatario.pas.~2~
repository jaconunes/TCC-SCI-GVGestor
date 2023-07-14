unit uConsLocatario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoConsultaGVGESTOR, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.ToolWin, Datasnap.DBClient;

type
  TfrConsLocatario = class(TfrPadraoConsultaGVGSTOR)
    procedure btEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    function setTabela: TClientDataSet; override;
    { Public declarations }

  end;

var
  frConsLocatario: TfrConsLocatario;

implementation

{$R *.dfm}

uses udmDadosGVGESTOR, uCadLocatario;

{ TfrConsLocatario }

procedure TfrConsLocatario.btEditarClick(Sender: TObject);
begin
  inherited;
  TfrCadLocatario.Create(self).Show;
end;

function TfrConsLocatario.setTabela: TClientDataSet;
begin
  Result := dmTabelas.tbLocatario;
end;

end.
