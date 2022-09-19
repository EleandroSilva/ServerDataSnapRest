unit Controller.Interfaces;

interface

uses
  Model.DAO.Interfaces,
  Model.Entidades.Interfaces;

type
  iControllerEntidades = interface;

  iController = interface
    ['{751A7DD2-F04F-46C9-966C-6CA7DF018A5C}']
    function Entidade: iControllerEntidades;
  end;

  iControllerEntidades = interface
    ['{4D034030-0F81-4C75-B1FA-75EBEB67C7A6}']
    function Clientes     : iDAOEntidade<iClientes>;
    function Produtos     : iDAOEntidade<iProdutos>;
    function Pedidos      : iDAOEntidade<iPedidos>;
    function PedidosItens : iDAOEntidade<iPedidosItens>;
  end;

implementation

end.
