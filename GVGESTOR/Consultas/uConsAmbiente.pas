unit uConsAmbiente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoConsultaDetalheGVGESTOR, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.ToolWin, Datasnap.DBClient;

type
  TfrConsAmbiente = class(TfrPadraoConsultaDetalheGVGSTOR)
  private
    { Private declarations }
  public
    { Public declarations }
    function setTabela: TClientDataSet; override;
    function setTabelaDetalhe: TClientDataSet; override;
    function setCamposChaveDetalhe: string; override;
  end;

var
  frConsAmbiente: TfrConsAmbiente;

implementation

{$R *.dfm}

uses udmDadosGVGESTOR;

{ TfrConsAmbiente }

function TfrConsAmbiente.setCamposChaveDetalhe: string;
begin
  Result := 'BDCODAMB';
end;

function TfrConsAmbiente.setTabela: TClientDataSet;
begin
  Result := dmTabelas.tbAmbiente;
end;

function TfrConsAmbiente.setTabelaDetalhe: TClientDataSet;
begin
  Result := dmTabelas.tbItem;
end;

end.