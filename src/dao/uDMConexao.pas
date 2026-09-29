unit uDMConexao;

interface

uses
  System.SysUtils, System.Classes, System.IOUtils, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.Phys.SQLiteDef, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI, FireDAC.Phys.SQLite, Data.DB, FireDAC.Comp.Client;

type
  TdmConexao = class(TDataModule)
    FDConn: TFDConnection;
    FDDriverLink: TFDPhysSQLiteDriverLink;
    FDWaitCursor: TFDGUIxWaitCursor;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmConexao: TdmConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmConexao.DataModuleCreate(Sender: TObject);
var
  LDBPath: string;
begin
  // 1. Calcula o caminho relativo para a pasta database\meuerp.db
  LDBPath := TPath.GetFullPath(TPath.Combine(ExtractFilePath(ParamStr(0)), '..\database\meuerp.db'));

  // 2. Garante que a pasta exista
  TDirectory.CreateDirectory(ExtractFileDir(LDBPath));

  // 3. Configura e conecta
  FDConn.Connected := False;
  FDConn.Params.Values['DriverID'] := 'SQLite';
  FDConn.Params.Values['Database'] := LDBPath;
  FDConn.Params.Values['LockingMode'] := 'Normal';
  FDConn.Params.Values['BusyTimeout'] := '10000';
  FDConn.Params.Values['ForeignKeys'] := 'On';
  FDConn.Connected := True;

  // 4. Cria a tabela de Clientes
  FDConn.ExecSQL(
    'CREATE TABLE IF NOT EXISTS CLIENTES (' +
    '  ID INTEGER PRIMARY KEY AUTOINCREMENT, ' +
    '  NOME VARCHAR(100) NOT NULL, ' +
    '  CPF_CNPJ VARCHAR(20), ' +
    '  TELEFONE VARCHAR(20), ' +
    '  EMAIL VARCHAR(100), ' +
    '  DATA_CADASTRO DATETIME DEFAULT CURRENT_TIMESTAMP' +
    ');'
  );

  // 5. Cria a tabela de Produtos
  FDConn.ExecSQL(
    'CREATE TABLE IF NOT EXISTS PRODUTOS (' +
    '  ID INTEGER PRIMARY KEY AUTOINCREMENT, ' +
    '  CODIGO_BARRAS VARCHAR(30), ' +
    '  DESCRICAO VARCHAR(100) NOT NULL, ' +
    '  PRECO_VENDA NUMERIC(15,2) NOT NULL DEFAULT 0.00, ' +
    '  PRECO_CUSTO NUMERIC(15,2) DEFAULT 0.00, ' +
    '  ESTOQUE NUMERIC(15,3) DEFAULT 0.00, ' +
    '  DATA_CADASTRO DATETIME DEFAULT CURRENT_TIMESTAMP' +
    ');'
  );
end;

end.
