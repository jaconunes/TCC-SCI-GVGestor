unit uConsImovel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoConsultaGVGESTOR, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.ToolWin, Datasnap.DBClient, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrConsImovel = class(TfrPadraoConsultaGVGSTOR)
    Panel1: TPanel;
    cbFiltro: TComboBox;
    Label1: TLabel;
    edTextFiltro: TEdit;
    dtpInicio: TDateTimePicker;
    dtpFim: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    btLimpar: TButton;
    ckDataFim: TCheckBox;
    ckDataInicio: TCheckBox;
    procedure btEditarClick(Sender: TObject);
    procedure cbFiltroChange(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edTextFiltroChange(Sender: TObject);
    procedure ckDataFimClick(Sender: TObject);
    procedure dtpInicioChange(Sender: TObject);
    procedure ckDataInicioClick(Sender: TObject);
    procedure dtpFimChange(Sender: TObject);
    procedure edTextFiltroKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    function setTabela: TClientDataSet; override; // seta tabela no BD
  end;

var
  frConsImovel: TfrConsImovel;

implementation

{$R *.dfm}

uses udmDadosGVGESTOR, uCadImovel;

{ TfrConsImovel }

procedure TfrConsImovel.btEditarClick(Sender: TObject);
begin
  inherited;
  // cria form de cadastro de imóveis
  TfrCadImovel.Create(self).Show;
end;

procedure TfrConsImovel.btLimparClick(Sender: TObject);
begin
  inherited;
  // desabilita filtro na tabela
  FTabela.Filtered := False;
  edTextFiltro.Clear;
end;

procedure TfrConsImovel.cbFiltroChange(Sender: TObject);
begin
  inherited;
  FTabela.Filtered := False;
  FTabela.Filter :=  EmptyStr;

  if cbFiltro.ItemIndex = 0 then   // habilita filtro por código
     begin
       edTextFiltro.Enabled := True;
       ckDataFim.Enabled := False;
       ckDataInicio.Enabled := False;
     end
  else
  if cbFiltro.ItemIndex = 1 then  // habilita filtro por data
     begin
       ckDataFim.Enabled := True;
       ckDataInicio.Enabled := True;
     end
  else
  if cbFiltro.ItemIndex = 2 then  // habilita filtro por endereço
     begin
       ckDataFim.Enabled := False;
       ckDataInicio.Enabled := False;
       edTextFiltro.Enabled := True;
     end;
end;

procedure TfrConsImovel.ckDataFimClick(Sender: TObject);
begin
  inherited;
  dtpFim.Enabled := True; // habilita data final
end;

procedure TfrConsImovel.ckDataInicioClick(Sender: TObject);
begin
  inherited;
  dtpInicio.Enabled := True; // habilita data incial
end;

procedure TfrConsImovel.dtpFimChange(Sender: TObject);
begin
  inherited;
  // filtro com data inicial e data final
  FTabela.IndexFieldNames := 'BDDATACAD';
  FTabela.Filter := ' BDDATACAD >= ' + QuotedStr(FormatDateTime('yyyy-mm-dd', dtpInicio.Date)) +
                    ' and BDDATACAD <= ' +  QuotedStr(FormatDateTime('yyyy-mm-dd', dtpFim.Date));
  FTabela.Filtered := True;
end;

procedure TfrConsImovel.dtpInicioChange(Sender: TObject);
begin
  inherited;
  // filtro somente para a partir da data inicial
  FTabela.IndexFieldNames := 'BDDATACAD';
  FTabela.Filter := ' BDDATACAD >= ' + QuotedStr(FormatDateTime('yyyy-mm-dd', dtpInicio.Date));
  FTabela.Filtered := True;
end;

procedure TfrConsImovel.edTextFiltroChange(Sender: TObject);
begin
  inherited;
  if edTextFiltro.Text = EmptyStr then // limpa filtros se campo texto está vazio
     begin
       FTabela.Filtered := False;
       FTabela.Filter :=  EmptyStr;
     end;

  if cbFiltro.ItemIndex = 0 then // filtro por código do imóvel
     begin
       FTabela.IndexFieldNames := 'BDCODIMOVEL';
       if edTextFiltro.Text = EmptyStr then
          FTabela.Filtered := False
       else
          FTabela.Filter := ' BDCODIMOVEL = ' + Trim(edTextFiltro.Text);
       FTabela.Filtered := True;
     end
  else
  if cbFiltro.ItemIndex = 1 then // habilita checkbox das datas para filtro por data de cadastro
     begin
       ckDataInicio.Enabled := True;
       ckDataFim.Enabled    := True;
     end
  else
  if cbFiltro.ItemIndex = 2 then // filtro por endereço
     begin
       FTabela.IndexFieldNames := 'BDENDERECO';
       FTabela.Filter := ' BDENDERECO like ''%' + edTextFiltro.Text + '%''';
       FTabela.Filtered := True;
     end;
end;

procedure TfrConsImovel.edTextFiltroKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := AnsiUpperCase(Key)[1]; //Letras maiúsculas no campo filtro
end;

procedure TfrConsImovel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  // desabilita filtros na tabela
  FTabela.Filtered := False;
end;

function TfrConsImovel.setTabela: TClientDataSet;
begin
  // retorna tabela no BD
  Result := dmTabelas.tbImovel;
end;

end.
