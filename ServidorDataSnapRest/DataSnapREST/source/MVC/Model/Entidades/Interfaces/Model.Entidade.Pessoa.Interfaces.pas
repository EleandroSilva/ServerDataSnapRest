unit Model.Entidade.Pessoa.Interfaces;

interface

uses
  System.JSON;

type
  iEntidadePessoa = interface
    ['{843CDC82-FB1F-41C0-9B1B-F9CA1BA28EF4}']
    function Get(const Key: String): TJsonArray;
    function Put(const Key : String; jObject : TJsonObject) : iEntidadePessoa;
  end;

implementation

end.
