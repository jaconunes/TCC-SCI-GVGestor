unit uPadraoCadastroGVGESTOR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ToolWin, Vcl.ComCtrls,
  System.ImageList, Vcl.ImgList, Datasnap.DBClient, Data.Db, Vcl.StdCtrls, MaskUtils;

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
    procedure IDEditKeyPress(Sender: TObject; var Key: Char);
    procedure LastEditExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btSalvarClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    FIDEdit: TWinControl;// vari�vel do campo chave
    FLastEdit: TWinControl;// vari�vel do �ltimo campo da tela
    FTeclouEsc : Boolean;
    FValidandoCampos : Boolean;
    FPressionouSalvar : Boolean;
    FFieldName : String;
  public
    { Public declarations }
    FTabela: TClientDataSet;// essa vari�vel vai manter a tabela do cadastro
    function setTabela: TClientDataSet; virtual; abstract; // deve informar qual tabela ser� usada
    function setIDEdit: TWinControl; virtual; abstract; // informar qual o campo chave da tela
    function setLastEdit: TWinControl; virtual; abstract; // informar o �ltimo campo da tela para salvar automaticamente
    procedure CarregaCampos; virtual; abstract; // carregar os campos da tabela para os camnpos da tela
    procedure SalvarCampos; virtual; abstract; // salvar os valores dos campos da tela para os campos da tabela
    function fSetFieldName: String; virtual; abstract; //obter o fieldname da PK da tabela
    procedure pSetHabilitaButton; virtual; abstract; // Habilita bot�es nas heran�as
    function ValidaCampos: Boolean; virtual; // Reescrito nas heran�as para a validar os campos
    function getID: Boolean; virtual; // Verifica se o ID existe e retorna Boolean
    function getPodeExcluir: Boolean; virtual; // Exibe mensagem sobre exclus�o de registros
    procedure ExcluirRegistro; virtual; // Exclui registros
    procedure setLimpaCampos; virtual; // Percorre todos os componentes do cadastro e limpa
    procedure ConfirmarDados; virtual; // Verifica se os campos foram validados, coloca tabela em edi��o ou inser��o e salva
    procedure pLimpaFiltros(wTabela : TClientDataset); virtual; // Limpa filtros da tabela
    function fAplicaMascara(wS : String) : String; virtual; //Aplica m�scara de CNPJ
    function fAplicaMascaraTelefone(wS : String) : String; virtual; // Aplica m�scara de telefone
    function fGerarID: Integer; virtual; // Gera um ID rand�mico para os cadastros
    procedure pCentralizaForms(wFrPai, wFrFilho: TForm); // Centraliza forms MDI Child
    function fCharacterRemove(wS: String): String;  // Remove caracteres das m�rcaras de CPF / CNPJ / Telefone

  end;

var
  frPadraoCadastroGVGESTOR: TfrPadraoCadastroGVGESTOR;

implementation

{$R *.dfm}

uses uPrincipal;

procedure TfrPadraoCadastroGVGESTOR.btExcluirClick(Sender: TObject);
begin
  ExcluirRegistro; // Invoca m�todo de exclus�o
end;

procedure TfrPadraoCadastroGVGESTOR.btSalvarClick(Sender: TObject);
begin
  ConfirmarDados; // Invoca m�todo que verifica e salva dados no banco
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

                 if (frPrincipal.fGetUsuarioLogado = nil) and (Self.Name = 'frCadUsuario')  then
                    begin   // Verifica se o usu�rio est� logado e oculta o panel de login
                      frPrincipal.pnLoginFilho.Visible := True;
                      Close;
                    end
                 else
                    begin
                      setLimpaCampos;// limpar campos da tela
                      if Assigned(FIDEdit) and FIDEdit.CanFocus then// apos salvar voltar para o campo chave
                         FIDEdit.SetFocus;
                    end;
               end
            else
               MessageDlg('O cadastro n�o est� em modo de edi��o ou inser��o!', mtInformation, [mbOK], 0);
          end;
     end;
end;

procedure TfrPadraoCadastroGVGESTOR.ExcluirRegistro;
begin
  if getPodeExcluir and getID then// verificar se o registro existe e faz exclus�o
     begin
       FTabela.Delete;
       FTabela.ApplyUpdates(0);
       FTabela.Refresh;

       setLimpaCampos;

       if Assigned(FIDEdit) and FIDEdit.CanFocus then// voltar ao campo chave
          FIDEdit.SetFocus;
     end;
end;

function TfrPadraoCadastroGVGESTOR.fAplicaMascara(wS: String): String;
begin
  if wS.Length = 11 then
     Result := FormatMaskText('999.999.999-99;0', fCharacterRemove(wS)) // Aplica m�scara de CPF
  else
  if wS.Length = 14 then
     Result := FormatMaskText('99.999.999/9999-99;0', fCharacterRemove(wS)); // Aplica m�scara de CNPJ
end;

function TfrPadraoCadastroGVGESTOR.fAplicaMascaraTelefone(wS: String): String;
begin
   Result := FormatMaskText('(99)99999-9999;0', fCharacterRemove(wS)); // Aplica m�scara de Telefone
end;

function TfrPadraoCadastroGVGESTOR.fGerarID: Integer;
var
  wID : Integer;
begin
  wID := Random(1000); // Obtem n�mero rand�mico
  FTabela.First;
  while not FTabela.Eof do  // Percorre todos os registros da tabela e verifica se j� existe
     begin
       if FTabela.FieldByName(FFieldName).AsInteger = wID then
          wID := Random(1000); // Se existir gera um novo

       FTabela.Next;
     end;
  Result := wID; // Retorna ID gerado
end;

procedure TfrPadraoCadastroGVGESTOR.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  // para tela do tipo MDI (Multi device interface), deve implementar para finalizar a tela
  Action := caFree;
end;

procedure TfrPadraoCadastroGVGESTOR.FormCreate(Sender: TObject);
begin
  FFieldName := fSetFieldName;// campo primary key da tabela
  FTabela := setTabela;// instanciar a tabela do cadastro
  FIDEdit := setIDEdit;// instanciar o campo da chave
  if Assigned(FIDEdit) then// setar o evento de saida do campo
     begin
       if FIDEdit is TCustomEdit then
          begin
            TCustomEdit(FIDEdit).Text := IntToStr(fGerarID);//Gera ID para novo registro
            TEdit(FIDEdit).OnExit := IDEditExit; // Seta eventos OnExit par o campo de c�digo
            TEdit(FIDEdit).OnKeyPress := IDEditKeyPress; // Seta eventos KeyPress para o campo de c�digo
          end;
     end;

  FLastEdit := setLastEdit;// instanciar �ltimo campo da tela para salvar automaticamente
  if Assigned(FLastEdit) then// setar o evento de saida do campo
     begin
       if FLastEdit is TCustomEdit then
          TEdit(FLastEdit).OnExit := LastEditExit; // Seta eventos OnExit para o �ltimo campo da tabela
     end;
end;

procedure TfrPadraoCadastroGVGESTOR.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  FTeclouEsc := Key = VK_ESCAPE; //Se usu�rio teclou ESC

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
     begin
       if (frPrincipal.fGetUsuarioLogado = nil) and (Self.Name = 'frCadUsuario')  then
          begin
            Close;
            frPrincipal.pnLoginFilho.Visible := True;
          end
       else
          Close;
     end
  else
  if (Key = VK_RETURN) then// tecla de atalho para seguir para o pr�ximo campo com <enter>
     self.Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TfrPadraoCadastroGVGESTOR.FormResize(Sender: TObject);
begin
  pCentralizaForms(Application.MainForm, self);
end;

function TfrPadraoCadastroGVGESTOR.getID: Boolean;
begin
  Result := False;// define padr�o false
  pLimpaFiltros(FTabela);
  FTabela.IndexFieldNames := FFieldName;
  if Assigned(FTabela) and Assigned(FIDEdit) then // verificar se a tabela e o campo chave foi informado para n�o dar erro ao tentar acessar as vari�veis
     begin
       Result := FTabela.FindKey([TCustomEdit(FIDEdit).Text]);
     end;
end;

function TfrPadraoCadastroGVGESTOR.getPodeExcluir: Boolean;
begin
  Result := MessageDlg('Deseja realmente excluir este registro?', mtWarning, [mbYes,mbNo], 0) = mrYes;
end;

procedure TfrPadraoCadastroGVGESTOR.IDEditExit(Sender: TObject);
begin
  if getID then// caso encontre a chave na tabela
     begin
       pSetHabilitaButton;
       CarregaCampos;// deve carregar os campos da tabela nos campos da tela
     end

  else
     begin
       setLimpaCampos;// caso N�O encontre, deve limpar os campos da tela
     end;

end;

procedure TfrPadraoCadastroGVGESTOR.IDEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := #0; // Impede a edi��o do campo de c�digo
end;

procedure TfrPadraoCadastroGVGESTOR.LastEditExit(Sender: TObject);
begin
  if (not FTeclouEsc) and (not FValidandoCampos) and (not FPressionouSalvar) then
     ConfirmarDados;// ao sair do �ltimo campo da tela, executar o click no bot�o ok/salvar
end;

procedure TfrPadraoCadastroGVGESTOR.pCentralizaForms(wFrPai, wFrFilho: TForm);
begin
  wFrFilho.Left := (wFrPai.ClientWidth div 2) - (wFrFilho.Width div 2);
  wFrFilho.Top := (wFrPai.ClientHeight div 2) - (wFrFilho.Height div 2);
  wFrPai.Update;
  wFrFilho.Update;
end;

procedure TfrPadraoCadastroGVGESTOR.pLimpaFiltros(wTabela : TClientDataset);
begin
  wTabela.Filter   := EmptyStr;   //Limpa os filtros da tabela
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
              TDateTimePicker(Self.Components[I]).Date := Now
           else
           if Self.Components[I] is TImage then
              TImage(Self.Components[I]).Picture.LoadFromFile('');
        end;// verificar a classe para acessar o m�todo que limpa o conte�do do campo
  end;
end;

function TfrPadraoCadastroGVGESTOR.ValidaCampos: Boolean;
begin
  Result := True; // o valor deve retornar verdadeiro para poder salvar os dados na tabela
end;

function TfrPadraoCadastroGVGESTOR.fCharacterRemove(wS: String): String;  // Percorre todos os caracteres de uma string e remove caracteres
var
  wI: Integer;
begin
  wI := Length(wS);
  while (Length(wS) > 0) and (wI > 0) do
    begin
      if (wS[wI] = '.') or (wS[wI] = '/') or (wS[wI] = '-') or (wS[wI] = '(') or (wS[wI] = ')') then
      Delete(wS,wI,1);
      Dec(wI);
    end;
  Result := wS;
end;

end.
