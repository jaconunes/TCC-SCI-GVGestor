unit uConsCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoConsultaGVGESTOR, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.ToolWin, Datasnap.DBClient;

type
  TfrConsCliente = class(TfrPadraoConsultaGVGSTOR)
    procedure btEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function setTabela: TClientDataSet; override;


  end;

var
  frConsCliente: TfrConsCliente;

implementation

{$R *.dfm}

uses udmDadosGVGESTOR, uCadCliente;

{ TfrConsCliente }

procedure TfrConsCliente.btEditarClick(Sender: TObject);
begin
  inherited;
  TfrCadCliente.Create(self).Show;
end;

function TfrConsCliente.setTabela: TClientDataSet;
begin
  Result := dmTabelas.tbCliente;
end;

end.
