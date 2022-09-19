unit ServerMethodsUnit1;

interface

uses
  System.SysUtils,
  System.Classes,
  System.Json,
  DataSnap.DSProviderDataModuleAdapter,
  Datasnap.DSServer,
  Datasnap.DSAuth, Data.DB, Datasnap.DBClient;

type
  TServerMethods1 = class(TDSServerModule)
    ClientDataSet1: TClientDataSet;

  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
  end;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}


uses System.StrUtils;

function TServerMethods1.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods1.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

end.

