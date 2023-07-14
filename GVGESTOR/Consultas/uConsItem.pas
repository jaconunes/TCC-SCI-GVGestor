unit uConsItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoConsultaGVGESTOR, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.ToolWin, Datasnap.DBClient;

type
  TfrConsItem = class(TfrPadraoConsultaGVGSTOR)
    procedure FormCreate(Sender: TObject);
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

uses udmDadosGVGESTOR, uCadAmbiente, uCadItem;

procedure TfrConsItem.FormCreate(Sender: TObject);
begin
  inherited;
  FTabela.Filter := EmptyStr;
  FTabela.Filtered := False;
  FTabela.IndexFieldNames := 'BDPKCODAMB';
  FTabela.Filter := 'BDPKCODAMB = ' + IntToStr(TfrCadItem(Owner).fGetIDAmbiente);
  FTabela.Filtered := True;
end;

function TfrConsItem.setTabela: TClientDataSet;
begin
  Result := dmTabelas.tbItem;
end;

end.
