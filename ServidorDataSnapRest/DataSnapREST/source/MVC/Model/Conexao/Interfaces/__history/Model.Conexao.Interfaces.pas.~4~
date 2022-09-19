unit Model.Conexao.Interfaces;

interface

uses
  Data.DB,
  System.JSON;

type
  iConexaoMySQL = interface
    ['{68B8D548-4D92-4887-8820-6E1629D7148A}']
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

end.
