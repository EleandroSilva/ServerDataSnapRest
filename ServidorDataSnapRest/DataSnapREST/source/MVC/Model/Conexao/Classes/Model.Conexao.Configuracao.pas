unit Model.Conexao.Configuracao;

interface

uses
  System.IniFiles,
  System.SysUtils,
  FMX.Forms,

  Model.Conexao.Configuracao.Interfaces;

type
  TConexaoConfiguracao = class(TInterfacedObject, iConexaoConfiguracao)
    private
      FArquivoIni : TIniFile;
      FDiretorio  : String;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iConexaoConfiguracao;

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

{ TConexaoConfiguracaoMySQL }
constructor TConexaoConfiguracao.Create;
begin
  FDiretorio  := ExtractFilePath(ParamStr(0)) + 'ConfiguracaoPostgreSQL.ini';
  FArquivoIni := TIniFile.Create(FDiretorio);
end;

destructor TConexaoConfiguracao.Destroy;
begin
  FreeAndNil(FArquivoIni);
  inherited;
end;

class function TConexaoConfiguracao.New: iConexaoConfiguracao;
begin
  Result := Self.Create;
end;

function TConexaoConfiguracao.ServerHost: String;
begin
  Result := FArquivoIni.ReadString('ConfiguracaoPostgreSQL', 'ServerHost', Result);
end;

function TConexaoConfiguracao.Port: Integer;
begin
  Result := FArquivoIni.ReadInteger('ConfiguracaoPostgreSQL', 'Port', Result);
end;

function TConexaoConfiguracao.Database: String;
begin
  Result := FArquivoIni.ReadString('ConfiguracaoPostgreSQL', 'Database', Result);
end;

function TConexaoConfiguracao.Password: String;
begin
  Result := FArquivoIni.ReadString('ConfiguracaoPostgreSQL', 'Password', Result);
end;

function TConexaoConfiguracao.UserName: String;
begin
  Result := FArquivoIni.ReadString('ConfiguracaoPostgreSQL', 'UserName', Result);
end;

function TConexaoConfiguracao.DriverName: String;
begin
  Result := FArquivoIni.ReadString('ConfiguracaoPostgreSQL', 'DriverName', Result);
end;

function TConexaoConfiguracao.LibraryName: String;
begin
  Result := FArquivoIni.ReadString('ConfiguracaoPostgreSQL', 'LibraryName', Result);
end;

function TConexaoConfiguracao.VendorHome: String;
begin
  Result := FArquivoIni.ReadString('ConfiguracaoPostgreSQL', 'VendorHome', Result);
end;

function TConexaoConfiguracao.Utf8mb4: String;
begin
  Result := FArquivoIni.ReadString('ConfiguracaoPostgreSQL', 'Utf8mb4', Result);
end;

end.
