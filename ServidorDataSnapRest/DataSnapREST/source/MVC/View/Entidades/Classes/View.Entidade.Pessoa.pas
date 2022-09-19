unit View.Entidade.Pessoa;

interface

uses
  System.SysUtils,
  System.Classes,
  System.JSON,

  Controller.Entidade.Interfaces,
  Controller.Entidade;

{$METHODINFO ON}
type
  TPessoa = class(TDataModule)
    procedure DataModuleCreate(Sender: TObject);
  private
    FController : iControllerEntidade;
    { Private declarations }
  public
    { Public declarations }
    function Pessoa(const Key: String): TJsonArray;
    procedure acceptPessoa(const Key : String; jObject : TJsonObject);
  end;

{$METHODINFO OFF}

var
  Pessoa: TPessoa;



implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

procedure TPessoa.DataModuleCreate(Sender: TObject);
begin
  FController := TControllerEntidade.New;
end;

function TPessoa.Pessoa(const Key: String): TJsonArray;
begin
  Result := FController
                   .EntidadeFactory
                   .Pessoa
                 .Get(Key);
end;

procedure TPessoa.acceptPessoa(const Key: String; jObject: TJsonObject);
begin
  FController
           .EntidadeFactory
           .Pessoa
           .Put(Key , jObject);
end;

end.
