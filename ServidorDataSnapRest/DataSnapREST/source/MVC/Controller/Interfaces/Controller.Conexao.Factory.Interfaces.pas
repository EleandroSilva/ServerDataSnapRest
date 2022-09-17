unit Controller.Conexao.Factory.Interfaces;

interface

uses
  Model.Conexao.Factory.Interfaces;

type
  iControllerConexaoFactory = interface
    ['{CD2CED0E-F924-4C6B-99D9-C2EFC81FB6D7}']
    function ConexaoFactory : iConexaoFactory;
  end;

implementation

end.
