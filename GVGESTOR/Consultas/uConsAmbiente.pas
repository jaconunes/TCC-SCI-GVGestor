unit uConsAmbiente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoConsultaGVGESTOR, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.ToolWin, Datasnap.DBClient;

type
  TfrConsAmbiente = class(TfrPadraoConsultaGVGSTOR)
    dsTabelaPai: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    function setTabela: TClientDataSet; override;
    { Public declarations }

  end;

var
  frConsAmbiente: TfrConsAmbiente;

implementation

{$R *.dfm}

uses udmDadosGVGESTOR, uCadAmbiente;

procedure TfrConsAmbiente.FormCreate(Sender: TObject);
begin
  inherited;
//  FTabela.Filter := EmptyStr;
//  dmTabelas.tbVistoria.IndexFieldNames := 'BDCODVIST';
//  FTabela.IndexFieldNames := 'BDPKCODVIST';
//  FTabela.MasterFields := 'BDCODVIST';
//  dsTabelaPai.DataSet := dmTabelas.tbVistoria;
//  FTabela.MasterSource := dsTabelaPai;


  FTabela.Filter := EmptyStr;
  FTabela.Filtered := False;
  FTabela.IndexFieldNames := 'BDPKCODVIST';
  //if Owner is TForm then

  //FTabela.Filter := 'BDPKCODVIST = ' + IntToStr(frCadAmbiente.edCodigo(Owner).co;
  FTabela.Filtered := True;
end;

procedure TfrConsAmbiente.FormShow(Sender: TObject);
begin
  inherited;
  if Owner is TfrCadAmbiente then
     begin
       //TfrCadVistoria(Owner).Enabled := False;
       TfrCadAmbiente(Owner).edCodigo.Text := FTabela.FieldByName('BDCODAMB').AsString;
       TfrCadAmbiente(Owner).edCodigo.SetFocus;
     end;
end;

function TfrConsAmbiente.setTabela: TClientDataSet;
begin
  Result := dmTabelas.tbAmbiente;
end;

end.
