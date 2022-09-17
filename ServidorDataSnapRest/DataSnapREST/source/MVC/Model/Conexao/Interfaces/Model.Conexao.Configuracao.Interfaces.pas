unit Model.Conexao.Configuracao.Interfaces;

interface

type
  iConexaoConfiguracaoMySQL = interface
    ['{5E1F0838-36F2-4D40-833D-D2BA0DD7D85D}']
    function ServerHost     : String;
    function Port           : Integer;
    function Database       : String;
    function Password       : String;
    function UserName       : String;
    function DriverName     : String;
    function LibraryName    : String;
    function VendorLib      : String;
    function ConnectionName : String;
    function GetDriveFunc   : String;
  end;

implementation

end.
