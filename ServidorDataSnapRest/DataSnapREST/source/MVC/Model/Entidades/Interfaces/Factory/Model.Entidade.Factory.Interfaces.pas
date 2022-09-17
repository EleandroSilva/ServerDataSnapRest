unit Model.Entidade.Factory.Interfaces;

interface

uses
  Model.Entidade.Pessoa.Interfaces;

type
  iEntidadeFactory = interface
    ['{B81BA4F1-934C-499F-BB33-3CE3B18B3D97}']
    function Pessoa : iEntidadePessoa;
  end;

implementation

end.
