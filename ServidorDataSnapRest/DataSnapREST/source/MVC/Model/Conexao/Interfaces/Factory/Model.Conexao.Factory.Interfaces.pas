unit Model.Conexao.Factory.Interfaces;

interface

uses
  Model.Conexao.Interfaces,
  Model.Conexao.Configuracao.Interfaces;

type
  iConexaoFactory = interface
    ['{3DCB89F6-5878-4689-85BA-107ACB963CE9}']
    function ConexaoFiredac      : iConexao;
    function ConexaoConfiguracao : iConexaoConfiguracao;
  end;

implementation

end.
