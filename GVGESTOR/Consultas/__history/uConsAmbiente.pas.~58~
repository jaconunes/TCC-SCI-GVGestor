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
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    function setTabela: TClientDataSet; override; // seta tabela no BD
  end;

var
  frConsAmbiente: TfrConsAmbiente;

implementation

{$R *.dfm}

uses udmDadosGVGESTOR, uCadAmbiente;

procedure TfrConsAmbiente.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then// tecla de atalho para retornar o valor para o campo do cadastro
     begin
       if (Owner is TfrCadAmbiente) and (grConsulta.Columns.Count > 0) then
          begin
            // por padrão definimos que o primairo campo da grid é a chave da tabela
            TfrCadAmbiente(Owner).edCodigo.Text := grConsulta.Columns[0].Field.AsString;
            TfrCadAmbiente(Owner).edCodigo.SetFocus;
            Close;
          end;
     end;
end;

procedure TfrConsAmbiente.FormShow(Sender: TObject);
begin
  inherited;
  FTabela.Filter := EmptyStr;
  FTabela.Filtered := False;
  FTabela.IndexFieldNames := 'BDPKCODVIST';
  // cria forma de ambientes filtrados pelo código de vistoria
  if Owner is TfrCadAmbiente then
     begin
       FTabela.Filter := 'BDPKCODVIST = ' + IntToStr(TfrCadAmbiente(Owner).CodVistoria);
       FTabela.Filtered := True;
     end;
end;

function TfrConsAmbiente.setTabela: TClientDataSet;
begin
  // seta tabela no BD
  Result := dmTabelas.tbAmbiente;
end;

end.
