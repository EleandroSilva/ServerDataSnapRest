unit Model.Conexao.Interfaces;

interface

uses
  Data.DB,
  System.JSON;

type
  iConexao = interface
    ['{68B8D548-4D92-4887-8820-6E1629D7148A}']
    function Params(Param: String; Value: Variant): iConexao; overload;
    function Params(Param: String)                : Variant;  overload;
    function DataSet(DataSource: TDataSource)     : iConexao; overload;
    function DataSet                              : TDataSet; overload;
    function ExecSQL                              : iConexao;
    function Open                                 : iConexao;
    function Close                                : iConexao;
    function SQL(Value: String)                   : iConexao;
    function AsJsonArray                          : TJsonArray;
    function StartTransaction                     : iConexao;
    function Commit                               : iConexao;
    function Rollback                             : iConexao;
  end;

implementation

end.
