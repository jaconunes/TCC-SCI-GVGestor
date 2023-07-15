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
  private
    { Private declarations }
    procedure setIndexDefs(Tabela : TClientDataSet; fieldIndex : String);
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
  // Verifica se a conex�o est� ativa
  if dmConnection.SQLConnectionGVGESTOR.Connected then
  begin
    for wI := 0 to Self.ComponentCount-1 do
    begin
      // Percorre todos os componentes e verifica de � do tipo SQLQuery
      if Self.Components[wI] is TSQLQuery then
          // Se positivo, fecha a conex�o.
         TSQLQuery(Self.Components[wI]).Close
      else
      // Sen�o, verifica se � do tipo DataSet
      if Self.Components[wI] is TDataSet then
      try
        // Obtem o nome do componente DataSet
        wObjName := TDataSet(Self.Components[wI]).Name;
        // Verifica se o componente � do tipo SQLDataSet
        if Self.Components[wI] is TSQLDataSet then
            // Se positivo, abre a conex�o.
           TSQLDataSet(Self.Components[wI]).Open
        else
        // Senao, verifica se o componente � do tipo ClientDataSet
        if Self.Components[wI] is TClientDataSet then
            // Se positivo, abre a conex�o.
           TClientDataSet(Self.Components[wI]).Open;
      except on E:Exception do
        wMSG := wMSG + 'Erro tentando acessar "' + Self.Name + '.' + wObjName + '".: ' + e.Message + #13;
      end;
    end;
  end
  else
     wMSG := 'N�o � poss�vel conectar as tabelas porque o banco n�o est� conectando.';
  if wMSG <> EmptyStr then
    begin
       MessageDlg(wMSG, mtError, [mbOK], 0);
    end;
    // Seta os �ndices de todas as tabelas
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
      // aqui n�o precisa apresentar mensagem pois est� finalizando o sistema
    end;
  end;
end;

procedure TdmTabelas.setIndexDefs(Tabela: TClientDataSet; fieldIndex: String);
begin
    Tabela.IndexDefs.Clear; // Limpa os indices que possam ter sido criados em tempo de projeto
    Tabela.IndexDefs.Add('iCodigo', fieldIndex, [ixPrimary, ixUnique, ixCaseInsensitive] ); //adiciona um indice para os campos das chaves primarias
    Tabela.IndexFieldNames:= fieldIndex; //ativa o indice para uso na tabela
end;

end.
