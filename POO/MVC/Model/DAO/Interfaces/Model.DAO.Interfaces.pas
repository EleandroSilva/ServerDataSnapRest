unit Model.DAO.Interfaces;

interface

uses
  Data.DB;

type
  iDAOEntidade<T> = interface
    ['{8D4F8B0E-7AA4-4C5F-A407-B1DBF2467E17}']
    function DataSet(DataSource: TDataSource): iDAOEntidade<T>; overload;
    function DataSet: TDataSet; overload;
    function ListarPor(Value: Variant)       : iDAOEntidade<T>;
    function ListarTodos                     : iDAOEntidade<T>;
    function Atualizar                       : iDAOEntidade<T>;
    function Inserir                         : iDAOEntidade<T>;
    function Excluir                         : iDAOEntidade<T>;
    function This: T;
  end;

implementation

end.
