unit uCadImovel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoCadastroGVGESTOR,
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.StdCtrls, EditSCI, Vcl.Samples.Spin, Datasnap.DBClient, Data.Db;

type
  TfrCadImovel = class(TfrPadraoCadastroGVGESTOR)
    edCodigo: TEdit_Numero_PEDSCI;
    Label1: TLabel;
    edLogradouro: TEdit;
    cbTipo: TComboBox;
    seAmbientes: TSpinEdit;
    dtpData: TDateTimePicker;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edNumero: TEdit_Numero_PEDSCI;
    Label7: TLabel;
    edCidade: TEdit;
    edBairro: TEdit;
    Label8: TLabel;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    edCodProp: TEdit_Numero_PEDSCI;
    lbNomeProprietario: TLabel;
    procedure edCodPropExit(Sender: TObject);
    procedure edCodigoExit(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function setTabela: TClientDataSet; override;
    function setIDEdit: TWinControl; override;
    function setLastEdit: TWinControl; override;
    procedure CarregaCampos; override;
    procedure SalvarCampos; override;
    function ValidaCampos: Boolean; override;
    procedure ConfirmarDados; override;
    function getID: Boolean; override;
    procedure ExcluirRegistro; override;
  end;

var
  frCadImovel: TfrCadImovel;

implementation

{$R *.dfm}

uses udmDadosGVGESTOR, uConsProprietario, uConsImovel;

{ TfrCadImovel }

procedure TfrCadImovel.btPesquisarClick(Sender: TObject);
begin
  inherited;
  if ActiveControl = edCodProp then
     TfrConsProprietario.Create(edCodProp)
  else
  if ActiveControl = edCodigo then
     TfrConsImovel.Create(edCodigo);
end;

procedure TfrCadImovel.CarregaCampos;
begin
  inherited;
  edCodProp.Codigo := FTabela.FieldByName('BDCODIMOVEL').AsInteger;
  cbTipo.Text := FTabela.FieldByName('BDTIPOIMOVEL').AsString;
  seAmbientes.Text := IntToStr(FTabela.FieldByName('BDQUANTAMB').AsInteger);
  dtpData.Date :=  FTabela.FieldByName('BDDATACAD').AsDateTime;
  edLogradouro.Text := FTabela.FieldByName('BDENDERECO').AsString;
  edNumero.Text := IntToStr(FTabela.FieldByName('BDNUMERO').AsInteger);
  edCidade.Text := FTabela.FieldByName('BDCIDADE').AsString;
  edBairro.Text := FTabela.FieldByName('BDBAIRRO').AsString;
end;

procedure TfrCadImovel.ConfirmarDados;
begin
  inherited;
  if ValidaCampos then// validar conte�do dos campo
     begin
       if Assigned(FTabela) then
          begin
            if getID then// verificar se a chave existe
               FTabela.Edit// caso exista, deve editar
            else
               FTabela.Insert;// caso N�O exista, deve inserir
          end;
       SalvarCampos;// salvar os dados dos campos da tela nos campos da tabela, esse evento deve ser implementado nas heran�as
       if Assigned(FTabela) then
          begin
            if (FTabela.State in [dsInsert , dsEdit]) then// antes de salvar, verificar se est� em modo de edi��o ou inser��o, caso n�o esteja, algo deu errado em SalvarCampos
               begin
                 FTabela.Post;
                 FTabela.ApplyUpdates(0);
                 FTabela.Refresh;

                 setLimpaCampos;// limpar campos da tela
                 if Assigned(edCodigo) and edCodigo.CanFocus then// apos salvar voltar para o campo chave
                    edCodigo.SetFocus;
               end
            else
               MessageDlg('O cadastro n�o est� em modo de edi��o ou inser��o!', mtInformation, [mbOK], 0);
          end;
     end;
end;

procedure TfrCadImovel.edCodigoExit(Sender: TObject);
begin
  inherited;
  if getID then// caso encontre a chave na tabela
     CarregaCampos// deve carregar os campos da tabela nos campos da tela
  else
     setLimpaCampos;
end;

procedure TfrCadImovel.edCodPropExit(Sender: TObject);
begin
  inherited;
  pLimpaFiltros(dmTabelas.tbProprietario);
  dmTabelas.tbProprietario.IndexFieldNames := 'BDCDPROPR';
  if dmTabelas.tbProprietario.FindKey([edCodProp.Codigo]) then
     begin
       lbNomeProprietario.Caption := '- ' + dmTabelas.tbProprietario.FieldByName('BDNOME').AsString;
     end
  else
     lbNomeProprietario.Caption := EmptyStr;
end;

procedure TfrCadImovel.ExcluirRegistro;
begin
  if getPodeExcluir and getID then// verificar se o registro existe
     begin
       FTabela.Delete;
       FTabela.ApplyUpdates(0);
       FTabela.Refresh;

       setLimpaCampos;

       if Assigned(edCodigo) and edCodigo.CanFocus then// voltar ao campo chave
          edCodigo.SetFocus;
     end;
end;

procedure TfrCadImovel.FormCreate(Sender: TObject);
begin
  //inherited;
  setTabela;
  if Owner is TfrConsImovel then
     edCodigo.Text := IntToStr(TfrConsImovel(Owner).grConsulta.Columns[0].Field.AsInteger)
  else
  if Owner is TfrConsProprietario then
     edCodProp.Text := IntToStr(TfrConsProprietario(Owner).grConsulta.Columns[0].Field.AsInteger);
end;

function TfrCadImovel.getID: Boolean;
begin
  Result := False;// define padr�o false
  if Assigned(FTabela) and Assigned(edCodigo) then // verificar se a tabela e o campo chave foi informado para n�o dar erro ao tentar acessar as vari�veis
     begin
       Result := FTabela.FindKey([edCodigo.Text]);
     end;
end;

procedure TfrCadImovel.SalvarCampos;
begin
  FTabela.FieldByName('BDCODIMOVEL').AsInteger := edCodigo.Codigo;
  FTabela.FieldByName('BDCODPROP').AsInteger := edCodProp.Codigo;
  FTabela.FieldByName('BDTIPOIMOVEL').AsString := cbTipo.Items[cbTipo.ItemIndex];
  FTabela.FieldByName('BDQUANTAMB').AsInteger := StrToInt(seAmbientes.Text);
  FTabela.FieldByName('BDDATACAD').AsDateTime :=  dtpData.Date;
  FTabela.FieldByName('BDENDERECO').AsString :=  edLogradouro.Text;
  FTabela.FieldByName('BDNUMERO').AsInteger := edNumero.Codigo;
  FTabela.FieldByName('BDCIDADE').AsString := edCidade.Text;
  FTabela.FieldByName('BDBAIRRO').AsString := edBairro.Text;
end;

function TfrCadImovel.setIDEdit: TWinControl;
begin
  Result := edCodigo;
end;

function TfrCadImovel.setLastEdit: TWinControl;
begin
  Result := edBairro;
end;

function TfrCadImovel.setTabela: TClientDataSet;
begin
  Result := dmTabelas.tbImovel;
end;

function TfrCadImovel.ValidaCampos: Boolean;
begin

end;

end.
