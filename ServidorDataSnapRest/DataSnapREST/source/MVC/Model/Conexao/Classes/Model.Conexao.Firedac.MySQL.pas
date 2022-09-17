unit Model.Conexao.Firedac.MySQL;

interface

uses
  Data.DB,
  System.JSON,
  System.SysUtils,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Phys.PG,
  FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,

  FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef,

  DataSetConverter4D.Helper,
  DataSetConverter4D.Impl,

  Model.Conexao.Interfaces,
  Controller.Conexao.Factory.Interfaces;

type
  TConexaoFiredacMySQL = class(TInterfacedObject, iConexaoMySQL)
    private
      FConexao      : TFDConnection;
      FQuery        : TFDQuery;
      FDriverMySQL  : TFDPhysMySQLDriverLink;
      FAsJsonArray  : TJsonArray;
      FController   : iControllerConexaoFactory;
      procedure LerArquivoIni;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iConexaoMySQL;

      function Params(Param: String; Value: Variant): iConexaoMySQL; overload;
      function Params(Param: String)                : Variant;       overload;
      function DataSet(DataSource: TDataSource)     : iConexaoMySQL; overload;
      function DataSet                              : TDataSet;      overload;
      function ExecSQL                              : iConexaoMySQL;
      function Open                                 : iConexaoMySQL;
      function Close                                : iConexaoMySQL;
      function SQL(Value: String)                   : iConexaoMySQL;
      function AsJsonArray(Value: TJsonArray)       : iConexaoMySQL; overload;
      function AsJsonArray                          : TJsonArray;    overload;
  end;

implementation

uses
  Controller.Conexao.Factory;

{ TConexaoMySQL }
constructor TConexaoFiredacMySQL.Create;
begin
  FConexao      := TFDConnection.Create(nil);
  FQuery        := TFDQuery.Create(nil);
  FDriverMySQL  := TFDPhysMySQLDriverLink.Create(nil);
  FAsJsonArray  := TJsonArray.Create;
  FController   := TControllerConexaoFactory.New;
  LerArquivoIni;
end;

destructor TConexaoFiredacMySQL.Destroy;
begin
  FreeAndNil(FConexao);
  FreeAndNil(FConexao);
  FreeAndNil(FDriverMySQL);
  FreeAndNil(FAsJsonArray);
  inherited;
end;

class function TConexaoFiredacMySQL.New: iConexaoMySQL;
begin
  Result := Self.Create;
end;

procedure TConexaoFiredacMySQL.LerArquivoIni;
begin
  try
    //FController.ConexaoFactory.ConexaoConfiguracaoMySQL.
    FDriverMySQL.VendorLib   := FController.ConexaoFactory.ConexaoConfiguracaoMySQL.VendorLib;
    FQuery.Connection        := FConexao;
    FConexao.Params.DriverID := FController.ConexaoFactory.ConexaoConfiguracaoMySQL.DriverName;
    FConexao.Params.Database := FController.ConexaoFactory.ConexaoConfiguracaoMySQL.Database;
    FConexao.Params.UserName := FController.ConexaoFactory.ConexaoConfiguracaoMySQL.UserName;
    FConexao.Params.Password := FController.ConexaoFactory.ConexaoConfiguracaoMySQL.Password;
    FConexao.Params.Add('Port='+IntToStr(FController.ConexaoFactory.ConexaoConfiguracaoMySQL.Port));
    FConexao.Params.Add('utf8mb4');
    FConexao.Params.Add('Server='+FController.ConexaoFactory.ConexaoConfiguracaoMySQL.ServerHost);
    FConexao.LoginPrompt := False;
    FConexao.Connected;
  except
    on e: Exception do
    raise Exception.Create('Erro ao tentar se conectar com a base de dados: ' +
      e.Message);
  end;
end;

function TConexaoFiredacMySQL.Params(Param: String; Value: Variant): iConexaoMySQL;
begin
  Result := Self;
  FQuery.ParamByName(Param).Value := Value;
end;

function TConexaoFiredacMySQL.Params(Param: String): Variant;
begin
  Result := FQuery.ParamByName(Param).Value;
end;

function TConexaoFiredacMySQL.DataSet(DataSource: TDataSource): iConexaoMySQL;
begin
  Result := Self;
  DataSource.DataSet := FQuery;
end;

function TConexaoFiredacMySQL.DataSet: TDataSet;
begin
  Result := FQuery
end;


function TConexaoFiredacMySQL.Close: iConexaoMySQL;
begin
  Result := Self;
  FQuery.Close;
end;

function TConexaoFiredacMySQL.SQL(Value: String): iConexaoMySQL;
begin
  Result := Self;
  FQuery.SQL;
end;


function TConexaoFiredacMySQL.Open: iConexaoMySQL;
begin
  Result := Self;
  FQuery.Open;
end;

function TConexaoFiredacMySQL.ExecSQL: iConexaoMySQL;
begin
  Result := Self;
  FQuery.ExecSQL;
end;

function TConexaoFiredacMySQL.AsJsonArray(Value: TJsonArray): iConexaoMySQL;
begin
  Result := Self;
  FAsJsonArray := Value;
end;

function TConexaoFiredacMySQL.AsJsonArray: TJsonArray;
begin
  Result := FAsJsonArray;
end;

end.
