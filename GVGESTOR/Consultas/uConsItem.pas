unit uConsItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoConsultaGVGESTOR, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.ToolWin, Datasnap.DBClient;

type
  TfrConsItem = class(TfrPadraoConsultaGVGSTOR)
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function setTabela: TClientDataSet; override; // seta tabela no BD
  end;

var
  frConsItem: TfrConsItem;

implementation

{$R *.dfm}

uses udmDadosGVGESTOR, uCadAmbiente, uCadItem;

procedure TfrConsItem.btEditarClick(Sender: TObject);
begin
  inherited;
  TfrCadItem.Create(self).Show;
end;

procedure TfrConsItem.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then// tecla de atalho para retornar o valor para o campo do cadastro
     begin
       if (Owner is TfrCadItem) and (grConsulta.Columns.Count > 0) then
          begin
            // por padrão definimos que o primairo campo da grid é a chave da tabela
            TfrCadItem(Owner).edCodigo.Text := grConsulta.Columns[0].Field.AsString;
            TfrCadItem(Owner).edCodigo.SetFocus;
            Close;
          end;
     end;
end;

procedure TfrConsItem.FormShow(Sender: TObject);
begin
  inherited;
  FTabela.Filter := EmptyStr;
  FTabela.Filtered := False;
  FTabela.IndexFieldNames := 'BDPKCODAMB';
  // cria form de itens com filtro de código de ambiente
  if Owner is TfrCadItem then
     begin
       FTabela.Filter := 'BDPKCODAMB = ' + IntToStr(TfrCadItem(Owner).fGetIDAmbiente);
       FTabela.Filtered := True;
     end;
end;

function TfrConsItem.setTabela: TClientDataSet;
begin
  // seta tabela no BD
  Result := dmTabelas.tbItem;
end;

end.
