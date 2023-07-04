unit uPadraoConsultaGVGESTOR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.ToolWin, System.ImageList, Vcl.ImgList, Datasnap.DBClient, Vcl.StdCtrls;

type
  TfrPadraoConsultaGVGSTOR = class(TForm)
    ImageList1: TImageList;
    ToolBar1: TToolBar;
    btAnterior: TToolButton;
    btProximo: TToolButton;
    btEditar: TToolButton;
    btExcluir: TToolButton;
    grConsulta: TDBGrid;
    dsConsulta: TDataSource;
    procedure btExcluirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FTabela: TClientDataSet;
    function setTabela: TClientDataSet; virtual; abstract;
    function getPodeExcluir: Boolean; virtual;
  end;

var
  frPadraoConsultaGVGSTOR: TfrPadraoConsultaGVGSTOR;

implementation

{$R *.dfm}

{ TfrPadraoConsultaGVGSTOR }

procedure TfrPadraoConsultaGVGSTOR.btExcluirClick(Sender: TObject);
begin
  // verificar se tabela foi instanciada e se pode excluir registro
  if Assigned(FTabela) and getPodeExcluir then
     begin
       FTabela.Delete;
       FTabela.ApplyUpdates(0);
       FTabela.Refresh;
     end;
end;

procedure TfrPadraoConsultaGVGSTOR.FormCreate(Sender: TObject);
begin
  FTabela := setTabela;// instanciar a tabela do cadastro
  if Assigned(FTabela) then
     dsConsulta.DataSet := FTabela;// instancia tabela para a grid
end;

procedure TfrPadraoConsultaGVGSTOR.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then// tecla de atalho para retornar o valor para o campo do cadastro
     begin
       if (Owner is TEdit) and (grConsulta.Columns.Count > 0) then
          begin
            // por padr�o definimos que o primairo campo da grid � a chave da tabela
            TEdit(Owner).Text := grConsulta.Columns[0].Field.AsString;
            TEdit(Owner).SetFocus;
            Close;
          end;
     end
  else
  if Key = VK_DELETE then// tecla de atalho para excluir
     btExcluir.Click;
end;

function TfrPadraoConsultaGVGSTOR.getPodeExcluir: Boolean;
begin
  Result := MessageDlg('Deseja realmente excluir esse registro?', mtWarning, [mbYes,mbNo], 0) = mrYes;
end;

end.
