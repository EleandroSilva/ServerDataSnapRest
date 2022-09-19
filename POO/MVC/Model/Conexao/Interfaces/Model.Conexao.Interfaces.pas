unit Model.Conexao.Interfaces;

interface

uses
  Data.DB;

type
  iModelConexao = interface
    ['{10AB24FB-AD17-47B6-A9B4-F8D4A8B36029}']
    function Params(Param: String; Value: Variant) : iModelConexao; overload;
    function Params(Param: String) : Variant; overload;
    function DataSet(DataSource: TDataSource) : iModelConexao; overload;
    function DataSet: TDataSet; overload;
    function ExecSQL : iModelConexao;
    function Open : iModelConexao;
    function SQL(Value: String): iModelConexao;
    function StartTransaction : iModelConexao;
    function Commit : iModelConexao;
    function Rollback : iModelConexao;
  end;


implementation

end.
