unit Model.Conexao.Configuracao.Interfaces;

interface

type
  iConexaoConfiguracao = interface
    ['{5E1F0838-36F2-4D40-833D-D2BA0DD7D85D}']
    function ServerHost     : String;
    function DriverName     : String;
    function Database       : String;
    function UserName       : String;
    function Password       : String;
    function Port           : Integer;
    function LibraryName    : String;
    function VendorHome     : String;
    function Utf8mb4        : String;
  end;

implementation

end.
