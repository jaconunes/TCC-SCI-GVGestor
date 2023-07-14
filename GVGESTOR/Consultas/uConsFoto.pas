unit uConsFoto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoConsultaGVGESTOR, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.ToolWin, Datasnap.DBClient;

type
  TfrConsFoto = class(TfrPadraoConsultaGVGSTOR)
    dsTabelaPai: TDataSource;
    procedure FormCreate(Sender: TObject);
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

uses udmDadosGVGESTOR, uCadAmbiente, uCadFoto;

{ TfrConsFoto }

procedure TfrConsFoto.FormCreate(Sender: TObject);
begin
  inherited;
  FTabela.Filter := EmptyStr;
  FTabela.Filtered := False;
  FTabela.IndexFieldNames := 'BDPKCODAMB';
  FTabela.Filter := 'BDPKCODAMB = ' + IntToStr(TfrCadFoto(Owner).fGetIDAmbiente);
  FTabela.Filtered := True;
end;

function TfrConsFoto.setTabela: TClientDataSet;
begin
  Result := dmTabelas.tbFoto;
end;

end.
