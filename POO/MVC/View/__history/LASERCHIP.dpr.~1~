program LASERCHIP;

uses
  Vcl.Forms,
  ufrmPrincipalLASERCHIP in 'ufrmPrincipalLASERCHIP.pas' {frmPrincipal},
  ufrmViewNovoPedido in 'Entidades\ufrmViewNovoPedido.pas' {frmViewNovoPedido},
  Controller.Interfaces in '..\Controller\Interfaces\Controller.Interfaces.pas',
  Controller.Entidade in '..\Controller\Controller.Entidade.pas',
  Controller in '..\Controller\Controller.pas',
  Model.Conexao.Interfaces in '..\Model\Conexao\Interfaces\Model.Conexao.Interfaces.pas',
  Model.Conexao.Firedac.MySQL in '..\Model\Conexao\Classes\Model.Conexao.Firedac.MySQL.pas',
  Model.DAO.Interfaces in '..\Model\DAO\Interfaces\Model.DAO.Interfaces.pas',
  Model.DAO.Clientes in '..\Model\DAO\Entidades\Model.DAO.Clientes.pas',
  Model.DAO.Pedidos in '..\Model\DAO\Entidades\Model.DAO.Pedidos.pas',
  Model.DAO.PedidosItens in '..\Model\DAO\Entidades\Model.DAO.PedidosItens.pas',
  Model.DAO.Produtos in '..\Model\DAO\Entidades\Model.DAO.Produtos.pas',
  Model.Entidades.Interfaces in '..\Model\Entidades\Interfaces\Model.Entidades.Interfaces.pas',
  Model.Entidade.Clientes in '..\Model\Entidades\Classes\Model.Entidade.Clientes.pas',
  Model.Entidade.Pedidos in '..\Model\Entidades\Classes\Model.Entidade.Pedidos.pas',
  Model.Entidade.PedidosItens in '..\Model\Entidades\Classes\Model.Entidade.PedidosItens.pas',
  Model.Entidade.Produtos in '..\Model\Entidades\Classes\Model.Entidade.Produtos.pas',
  ufrmViewPesquisarProdutos in 'Entidades\ufrmViewPesquisarProdutos.pas' {frmViewPesquisarProdutos},
  Model.Entidade.Uteis in '..\Model\Entidades\Uteis\Model.Entidade.Uteis.pas',
  ufrmViewPesquisarClientes in 'Entidades\ufrmViewPesquisarClientes.pas' {frmViewPesquisarClientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
