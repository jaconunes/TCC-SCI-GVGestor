unit uCadUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoCadastroGVGESTOR,
  System.ImageList, Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls,
  Vcl.ExtCtrls, Datasnap.DBClient, EditSCI, Data.Db;

type
  TfrCadUsuario = class(TfrPadraoCadastroGVGESTOR)
    edNome: TEdit;
    edCpfCnpj: TEdit;
    cbPerfil: TComboBox;
    edSenha: TEdit;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    rbCpf: TRadioButton;
    rbCnpj: TRadioButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edRepitaSenha: TEdit;
    edCodigo: TEdit_Numero_PEDSCI;
    Label6: TLabel;
    edUsuario: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure edRepitaSenhaExit(Sender: TObject);
    procedure edCpfCnpjExit(Sender: TObject);
    procedure rbCpfClick(Sender: TObject);
    procedure rbCnpjClick(Sender: TObject);
    procedure edCodigoExit(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
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
  frCadUsuario: TfrCadUsuario;

implementation

{$R *.dfm}

uses udmDadosGVGESTOR, uConsUsuario;

{ TfrCadUsuario }


procedure TfrCadUsuario.btPesquisarClick(Sender: TObject);
begin
  TfrConsUsuario.Create(self);
end;

procedure TfrCadUsuario.CarregaCampos;
begin
  inherited;
  edNome.Text        := FTabela.FieldByName('BDUSUARIO').AsString;
  edCpfCnpj.Text     := fAplicaMascara(FTabela.FieldByName('BDCPFCNPJ').AsString);
  cbPerfil.Text      := FTabela.FieldByName('BDPERFIL').AsString;
  edSenha.Text       := FTabela.FieldByName('BDSENHA').AsString;
  edUsuario.Text     := FTabela.FieldByName('BDUSUARIO').AsString;
  edRepitaSenha.Text := FTabela.FieldByName('BDSENHA').AsString;
  edNome.Text        := FTabela.FieldByName('BDNOME').AsString;
end;

procedure TfrCadUsuario.ConfirmarDados;
begin
  //inherited;
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

procedure TfrCadUsuario.edCodigoExit(Sender: TObject);
begin
  inherited;
  if getID then// caso encontre a chave na tabela
     CarregaCampos// deve carregar os campos da tabela nos campos da tela
  else
     setLimpaCampos;
end;

procedure TfrCadUsuario.edCpfCnpjExit(Sender: TObject);
begin
  inherited;
  if rbCpf.Checked then
     begin
       edCpfCnpj.MaxLength := 11;
       fAplicaMascara(edCpfCnpj.Text);
     end
  else
  if rbCnpj.Checked then
     begin
       edCpfCnpj.MaxLength := 14;
       fAplicaMascara(edCpfCnpj.Text);
     end;
end;

procedure TfrCadUsuario.edRepitaSenhaExit(Sender: TObject);
begin
  inherited;
  ConfirmarDados;
end;

procedure TfrCadUsuario.ExcluirRegistro;
begin
  //inherited;
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

procedure TfrCadUsuario.FormCreate(Sender: TObject);
begin
  inherited;
  FTabela := dmTabelas.tbUsuario;

  if Owner is TfrConsUsuario then
     edCodigo.Text := IntToStr(TfrConsUsuario(Owner).grConsulta.Columns[0].Field.AsInteger);

end;

function TfrCadUsuario.getID: Boolean;
begin
  Result := False;// define padr�o false
  if Assigned(FTabela) and Assigned(edCodigo) then // verificar se a tabela e o campo chave foi informado para n�o dar erro ao tentar acessar as vari�veis
     begin
       Result := FTabela.FindKey([edCodigo.Text]);
     end;
end;

procedure TfrCadUsuario.rbCnpjClick(Sender: TObject);
begin
  inherited;
  edCpfCnpj.Enabled := True;
end;

procedure TfrCadUsuario.rbCpfClick(Sender: TObject);
begin
  inherited;
  edCpfCnpj.Enabled := True;
end;

procedure TfrCadUsuario.SalvarCampos;
begin
  inherited;
  FTabela.FieldByName('BDCODIGO').AsInteger := edCodigo.Codigo;
  FTabela.FieldByName('BDNOME').AsString    := edNome.Text;
  FTabela.FieldByName('BDCPFCNPJ').AsString := edCpfCnpj.Text;
  FTabela.FieldByName('BDPERFIL').AsString  := cbPerfil.Items[cbPerfil.ItemIndex];
  FTabela.FieldByName('BDSENHA').AsString   := edSenha.Text;
  FTabela.FieldByName('BDUSUARIO').AsString := edUsuario.Text;
end;

function TfrCadUsuario.setIDEdit: TWinControl;
begin
  Result:= edCodigo;
end;

function TfrCadUsuario.setLastEdit: TWinControl;
begin
  Result := edRepitaSenha;
end;

function TfrCadUsuario.setTabela: TClientDataSet;
begin
  //FTabela := dmTabelas.tbUsuario;
end;

function TfrCadUsuario.ValidaCampos: Boolean;
var
  wMessage: String;
begin
  Result := True;
  if edNome.Text = EmptyStr then
     begin
       edNome.SetFocus;
       Result := False;
       wMessage := 'O campo nome n�o deve ser vazio!' + #13;
     end
  else
  if edCpfCnpj.Text = EmptyStr then
     begin
       edCpfCnpj.SetFocus;
       Result := False;
       wMessage := wMessage + 'O campo CPF/CNPJ n�o deve ser vazio!' + #13;
     end
  else
  if edSenha.Text = EmptyStr then
     begin
       edSenha.SetFocus;
       Result := False;
       wMessage := wMessage + 'O campo Senha n�o deve ser vazio!' + #13;
     end
  else
  if edRepitaSenha.Text = EmptyStr then
     begin
       edRepitaSenha.SetFocus;
       Result := False;
       wMessage := wMessage + 'Repita a senha neste campo!' + #13;
     end
  else
  if edSenha.Text <> edRepitaSenha.Text then
     begin
       edSenha.Clear;
       edRepitaSenha.Clear;
       edSenha.SetFocus;
       Result := False;
       wMessage := wMessage + 'As senhas n�o correspondem!' + #13;
     end;

  if wMessage <> EmptyStr then
     ShowMessage(wMessage);
end;

end.
