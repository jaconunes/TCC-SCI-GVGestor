unit udmDadosGVGESTOR;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Data.SqlExpr, Datasnap.Provider,
  Data.DB, Datasnap.DBClient, udmConnectionGVGestor, Vcl.Dialogs;

type
  TdmTabelas = class(TDataModule)
    tbAmbiente: TClientDataSet;
    dspAmbiente: TDataSetProvider;
    dsAmbiente: TSQLDataSet;
    tbCliente: TClientDataSet;
    dspCliente: TDataSetProvider;
    dsCliente: TSQLDataSet;
    tbFoto: TClientDataSet;
    dspFoto: TDataSetProvider;
    dsFoto: TSQLDataSet;
    tbImovel: TClientDataSet;
    dspImovel: TDataSetProvider;
    dsImovel: TSQLDataSet;
    tbItem: TClientDataSet;
    dspItem: TDataSetProvider;
    dsItem: TSQLDataSet;
    tbLocatario: TClientDataSet;
    dspLocatario: TDataSetProvider;
    dsLocatario: TSQLDataSet;
    tbProprietario: TClientDataSet;
    dspProprietario: TDataSetProvider;
    dsProprietario: TSQLDataSet;
    tbUsuario: TClientDataSet;
    dspUsuario: TDataSetProvider;
    dsUsuario: TSQLDataSet;
    tbVistoria: TClientDataSet;
    dspVistoria: TDataSetProvider;
    dsVistoria: TSQLDataSet;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure tbAmbienteReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure tbClienteReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure tbFotoReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure tbImovelReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure tbItemReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure tbLocatarioReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure tbProprietarioReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure tbUsuarioReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure tbVistoriaReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
  private
    { Private declarations }
    procedure setIndexDefs(Tabela : TClientDataSet; fieldIndex : String);
    procedure setErroViolacaoRelacionamento(FTabela: TClientDataSet ;E: EReconcileError);
  public
    { Public declarations }
  end;

var
  dmTabelas: TdmTabelas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmTabelas.DataModuleCreate(Sender: TObject);
var
  wI: Integer;
  wMSG: string;
  wObjName: string;
begin
  wI := 0;
  wMSG := EmptyStr;
  wObjName := EmptyStr;
  // Verifica se a conexão está ativa
  if dmConnection.SQLConnectionGVGESTOR.Connected then
  begin
    for wI := 0 to Self.ComponentCount-1 do
    begin
      // Percorre todos os componentes e verifica de é do tipo SQLQuery
      if Self.Components[wI] is TSQLQuery then
          // Se positivo, fecha a conexão.
         TSQLQuery(Self.Components[wI]).Close
      else
      // Senão, verifica se é do tipo DataSet
      if Self.Components[wI] is TDataSet then
      try
        // Obtem o nome do componente DataSet
        wObjName := TDataSet(Self.Components[wI]).Name;
        // Verifica se o componente é do tipo SQLDataSet
        if Self.Components[wI] is TSQLDataSet then
            // Se positivo, abre a conexão.
           TSQLDataSet(Self.Components[wI]).Open
        else
        // Senao, verifica se o componente é do tipo ClientDataSet
        if Self.Components[wI] is TClientDataSet then
            // Se positivo, abre a conexão.
           TClientDataSet(Self.Components[wI]).Open;
      except on E:Exception do
        wMSG := wMSG + 'Erro tentando acessar "' + Self.Name + '.' + wObjName + '".: ' + e.Message + #13;
      end;
    end;
  end
  else
     wMSG := 'Não é possível conectar as tabelas porque o banco não está conectando.';
  if wMSG <> EmptyStr then
    begin
       MessageDlg(wMSG, mtError, [mbOK], 0);
    end;
    // Seta os índices de todas as tabelas
    setIndexDefs(tbAmbiente,'BDCODAMB');
    setIndexDefs(tbCliente,'BDCODCLI');
    setIndexDefs(tbFoto,'BDCODFOTO');
    setIndexDefs(tbImovel,'BDCODIMOVEL');
    setIndexDefs(tbItem,'BDCODITEM');
    setIndexDefs(tbLocatario,'BDCDLOCAT');
    setIndexDefs(tbProprietario,'BDCDPROPR');
    setIndexDefs(tbUsuario,'BDCODIGO');
    setIndexDefs(tbVistoria,'BDCODVIST');
end;

// Encerra conexão com o BD
procedure TdmTabelas.DataModuleDestroy(Sender: TObject);
var
  wI: Integer;
begin
  for wI := 0 to Self.ComponentCount-1 do
  begin
    if Self.Components[wI] is TCustomSQLDataSet then
    try
      TCustomSQLDataSet(Self.Components[wI]).Close;
    except
      // aqui não precisa apresentar mensagem pois está finalizando o sistema
    end;
  end;
end;

// Procedure de tratamento de erros de violação do PRIMARY KEY e FOREIGN KEY
procedure TdmTabelas.setErroViolacaoRelacionamento(FTabela: TClientDataSet;
  E: EReconcileError);
var
  wMsg: String;
begin
  wMsg := 'Descrição não disponível.';
  if (Pos('violation of PRIMARY or UNIQUE KEY', E.Message) > 0) or  // Verifica se a mensagem é sobre violação de primary key
     (Pos('attempt to store duplicate value', E.Message) > 0) then
    begin
      wMsg := 'A tentativa de inserção/edição iria resultar em duplicidade ' +
            'de registros nesta tabela.';
      // Atualiza a tabela
      FTabela.Close;
      FTabela.Open;
      FTabela.Refresh;
    end;
  if Pos('violation of FOREIGN KEY', E.Message) > 0 then    // Verifica se a mensagem é sobre violação de foreign key
    begin
      wMsg := 'A tentativa de atualização iria causar falhas de relacionamento, ' +
            'por existirem dependencias entre as tabelas envolvidas.';
      // Atualiza a tabela
      FTabela.Close;
      FTabela.Open;
      FTabela.Refresh;
     end;
  ShowMessage(E.Message + #13 + 'Descrição do Erro: ' + #13 + wMsg);
end;

procedure TdmTabelas.setIndexDefs(Tabela: TClientDataSet; fieldIndex: String);
begin
    Tabela.IndexDefs.Clear; // Limpa os indices que possam ter sido criados em tempo de projeto
    Tabela.IndexDefs.Add('iCodigo', fieldIndex, [ixPrimary, ixUnique, ixCaseInsensitive] ); //adiciona um indice para os campos das chaves primarias
    Tabela.IndexFieldNames:= fieldIndex; //ativa o indice para uso na tabela
end;

// ********* TRATAMENTO DE ERROS DE VIOLAÇÃO DE VINCULOS NO BD **************
procedure TdmTabelas.tbAmbienteReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  setErroViolacaoRelacionamento(tbAmbiente, E);
end;

procedure TdmTabelas.tbClienteReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  setErroViolacaoRelacionamento(tbCliente, E);
end;

procedure TdmTabelas.tbFotoReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  setErroViolacaoRelacionamento(tbFoto, E);
end;

procedure TdmTabelas.tbImovelReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  setErroViolacaoRelacionamento(tbImovel, E);
end;

procedure TdmTabelas.tbItemReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  setErroViolacaoRelacionamento(tbItem, E);
end;

procedure TdmTabelas.tbLocatarioReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  setErroViolacaoRelacionamento(tbLocatario, E);
end;

procedure TdmTabelas.tbProprietarioReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  setErroViolacaoRelacionamento(tbProprietario, E);
end;

procedure TdmTabelas.tbUsuarioReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  setErroViolacaoRelacionamento(tbUsuario, E);
end;

procedure TdmTabelas.tbVistoriaReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  setErroViolacaoRelacionamento(tbVistoria, E);
end;

end.
