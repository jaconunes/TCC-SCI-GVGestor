unit uConsVistoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoConsultaDetalheGVGESTOR, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.ToolWin, Datasnap.DBClient;

type
  TfrConsVistoria = class(TfrPadraoConsultaDetalheGVGSTOR)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function setTabela: TClientDataSet; override;
    function setTabelaDetalhe: TClientDataSet; override;
    function setCamposChaveDetalhe: string; override;

  end;

var
  frConsVistoria: TfrConsVistoria;

implementation

{$R *.dfm}

uses udmDadosGVGESTOR;

{ TfrPadraoConsultaGVGSTOR2 }

procedure TfrConsVistoria.FormCreate(Sender: TObject);
begin
  inherited;
  dmTabelas.tbVistoria.Filter := EmptyStr;
end;

function TfrConsVistoria.setCamposChaveDetalhe: string;
begin
  Result := 'BDCODVIST';
end;

function TfrConsVistoria.setTabela: TClientDataSet;
begin
  Result := dmTabelas.tbVistoria;
end;

function TfrConsVistoria.setTabelaDetalhe: TClientDataSet;
begin
  Result := dmTabelas.tbAmbiente;
end;

end.
