unit Model.Conexao.Factory;

interface

uses
  Model.Conexao.Interfaces;

Type
  TModelConexaoFactory = class(TInterfacedObject, iModelFactory)
  private
  public
    constructor Create;
    destructor Destroy; override;
    class function New : iModelFactory;
  end;


implementation

end.
