unit uPadraoCadastroGVGESTOR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ToolWin, Vcl.ComCtrls,
  System.ImageList, Vcl.ImgList, Datasnap.DBClient, Data.Db, Vcl.StdCtrls;

type
  TfrPadraoCadastroGVGESTOR = class(TForm)
    ToolBar1: TToolBar;
    ImageList1: TImageList;
    btSalvar: TToolButton;
    btPesquisar: TToolButton;
    btExcluir: TToolButton;
    Panel1: TPanel;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    procedure btExcluirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure IDEditExit(Sender: TObject);
    procedure LastEditExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FIDEdit: TWinControl;// vari�vel do campo chave
    FLastEdit: TWinControl;// vari�vel do �ltimo campo da tela
    FTeclouEsc : Boolean;
    FValidandoCampos : Boolean;
    FPressionouSalvar : Boolean;
  public
    { Public declarations }
    FTabela: TClientDataSet;// essa vari�vel vai manter a tabela do cadastro
    function setTabela: TClientDataSet; virtual; abstract; // deve informar qual tabela ser� usada
    function setIDEdit: TWinControl; virtual; abstract; // informar qual o campo chave da tela
    function setLastEdit: TWinControl; virtual; abstract; // informar o �ltimo campo da tela para salvar automaticamente
    procedure CarregaCampos; virtual; abstract; // carregar os campos da tabela para os camnpos da tela
    procedure SalvarCampos; virtual; abstract; // salvar os valores dos campos da tela para os campos da tabela
    function ValidaCampos: Boolean; virtual;
    function getID: Boolean; virtual;
    function getPodeExcluir: Boolean; virtual;
    procedure ExcluirRegistro; virtual;
    procedure setLimpaCampos; virtual;
    procedure ConfirmarDados; virtual;
    procedure pLimpaFiltros(wTabela : TClientDataset); virtual;

    //valida campo CNPJ
    function validaCnpj(S: String): String;
  end;

var
  frPadraoCadastroGVGESTOR: TfrPadraoCadastroGVGESTOR;

implementation

{$R *.dfm}

procedure TfrPadraoCadastroGVGESTOR.btExcluirClick(Sender: TObject);
begin
  ExcluirRegistro;
end;

procedure TfrPadraoCadastroGVGESTOR.ConfirmarDados;
begin
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
                 if Assigned(FIDEdit) and FIDEdit.CanFocus then// apos salvar voltar para o campo chave
                    FIDEdit.SetFocus;
               end
            else
               MessageDlg('O cadastro n�o est� em modo de edi��o ou inser��o!', mtInformation, [mbOK], 0);
          end;
     end;
end;

procedure TfrPadraoCadastroGVGESTOR.ExcluirRegistro;
begin
  if getPodeExcluir and getID then// verificar se o registro existe
    begin
      FTabela.Delete;
      FTabela.ApplyUpdates(0);
      FTabela.Refresh;

      setLimpaCampos;

      if Assigned(FIDEdit) and FIDEdit.CanFocus then// voltar ao campo chave
       FIDEdit.SetFocus;
    end;
end;

procedure TfrPadraoCadastroGVGESTOR.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  // para tela do tipo MDI (Multi device interface), deve implementar para finalizar a tela
  Action := caFree;
end;

procedure TfrPadraoCadastroGVGESTOR.FormCreate(Sender: TObject);
begin
  FTabela := setTabela;// instanciar a tabela do cadastro
  FIDEdit := setIDEdit;// instanciar o campo da chave
  if Assigned(FIDEdit) then// setar o evento de saida do campo
     begin
       if FIDEdit is TCustomEdit then
          TEdit(FIDEdit).OnExit := IDEditExit;
     end;

  FLastEdit := setLastEdit;// instanciar �ltimo campo da tela para salvar automaticamente
  if Assigned(FLastEdit) then// setar o evento de saida do campo
     begin
       if FLastEdit is TCustomEdit then
          TEdit(FLastEdit).OnExit := LastEditExit;
     end;
end;

procedure TfrPadraoCadastroGVGESTOR.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  FTeclouEsc := Key = VK_ESCAPE;
  if Key = VK_NEXT then// tecla de atalho para salvar
    btSalvar.Click
  else
  if (Key = VK_ESCAPE) and Assigned(FIDEdit) and (FIDEdit <> ActiveControl) and (FIDEdit.CanFocus) then// volta ao campo chave ao pressionar ESC
    FIDEdit.SetFocus
  else
  if (Key = VK_F3) then// tecla de atalho para consulta
    btPesquisar.Click
  else
  if Key = VK_ESCAPE then// tecla de atalho para fechar a tela
     Close
  else
  if Key = VK_RETURN then// tecla de atalho para seguir para o pr�ximo campo com <enter>
     self.Perform(WM_NEXTDLGCTL,0,0);
end;

function TfrPadraoCadastroGVGESTOR.getID: Boolean;
begin
  Result := False;// define padr�o false
  if Assigned(FTabela) and Assigned(FIDEdit) then // verificar se a tabela e o campo chave foi informado para n�o dar erro ao tentar acessar as vari�veis
  begin
    // verificar qual classe o campo chave para acessar o metodo que retorne o conte�do do campo
    if FIDEdit is TCustomEdit then
      Result := FTabela.FindKey([TCustomEdit(FIDEdit).Text])
    else
    if FIDEdit is TCustomComboBox then
      Result := FTabela.FindKey([TCustomComboBox(FIDEdit).ItemIndex])
    else
    if FIDEdit is TCheckBox then
      Result := FTabela.FindKey([TCheckBox(FIDEdit).Checked])
    else
    if FIDEdit is TDateTimePicker then
      Result := FTabela.FindKey([TDateTimePicker(FIDEdit).DateTime]);
  end;
end;

function TfrPadraoCadastroGVGESTOR.getPodeExcluir: Boolean;
begin
  Result := MessageDlg('Deseja realmente excluir este registro?', mtWarning, [mbYes,mbNo], 0) = mrYes;
end;

procedure TfrPadraoCadastroGVGESTOR.IDEditExit(Sender: TObject);
begin
  if getID then// caso encontre a chave na tabela
     CarregaCampos// deve carregar os campos da tabela nos campos da tela
  else
     setLimpaCampos;// caso N�O encontre, deve limpar os campos da tela
end;

procedure TfrPadraoCadastroGVGESTOR.LastEditExit(Sender: TObject);
begin
  if (not FTeclouEsc) and (not FValidandoCampos) and (not FPressionouSalvar) then
     ConfirmarDados;// ao sair do �ltimo campo da tela, executar o click no bot�o ok/salvar
end;

procedure TfrPadraoCadastroGVGESTOR.pLimpaFiltros(wTabela : TClientDataset);
begin
  wTabela.Filter   := EmptyStr;
  wTabela.Filtered := False;
end;

procedure TfrPadraoCadastroGVGESTOR.setLimpaCampos;
var
  I: Integer;
begin
  // percorre todos os campos da tela
  for I := 0 to Self.ComponentCount-1 do
    begin
      if Assigned(FIDEdit) and (FIDEdit = Self.Components[i]) then// caso campo chave, segue sem limpar o campo
       Continue
      else
      if (Self.Components[I] is TWinControl) then
        begin
          if Self.Components[I] is TCustomEdit then
              TCustomEdit(Self.Components[I]).Clear
          else
          if Self.Components[I] is TCustomComboBox then
              TCustomComboBox(Self.Components[I]).ItemIndex := 0
          else
          if Self.Components[I] is TCheckBox then
              TCheckBox(Self.Components[I]).Checked := False
          else
          if Self.Components[I] is TDateTimePicker then
              TDateTimePicker(Self.Components[I]).Date := Now;
        end;// verificar a classe para acessar o m�todo que limpa o conte�do do campo
  end;
end;

function TfrPadraoCadastroGVGESTOR.ValidaCampos: Boolean;
begin
  Result := True; // o valor deve retornar verdadeiro para poder salvar os dados na tabela
end;

function TfrPadraoCadastroGVGESTOR.validaCnpj(S: String): String;
var
  i: Integer;
begin
  i := Length(S);
  while (Length(S) > 0) and (i > 0) do
    begin
      if (S[i] = '.') or (S[i] = '/') or (S[i] = '-') then
      Delete(S,i,1);
      Dec(i);
    end;
  Result := S;
end;

end.
