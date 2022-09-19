program Projeto;
{$APPTYPE GUI}

{$R *.dres}

uses
  FMX.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  ServerMethodsUnit1 in '..\MVC\View\Entidades\ServerMethodsUnit1.pas' {ServerMethods1: TDSServerModule},
  ufrmServidorBeMoreWebRest in '..\MVC\View\Entidades\ufrmServidorBeMoreWebRest.pas' {frmServidorBeMoreWebRest},
  Model.Conexao.Interfaces in '..\MVC\Model\Conexao\Interfaces\Model.Conexao.Interfaces.pas',
  Model.Conexao.Configuracao.Interfaces in '..\MVC\Model\Conexao\Interfaces\Model.Conexao.Configuracao.Interfaces.pas',
  Model.Conexao.Configuracao in '..\MVC\Model\Conexao\Classes\Model.Conexao.Configuracao.pas',
  WebModuleUnit1 in '..\MVC\Model\Conexao\WebModuleUnit1.pas' {WebModule1: TWebModule},
  DataSetConverter4D.Helper in '..\Uteis\DataSetConverter4D.Helper.pas',
  DataSetConverter4D.Impl in '..\Uteis\DataSetConverter4D.Impl.pas',
  DataSetConverter4D in '..\Uteis\DataSetConverter4D.pas',
  DataSetConverter4D.UnitTest in '..\Uteis\DataSetConverter4D.UnitTest.pas',
  DataSetConverter4D.Util in '..\Uteis\DataSetConverter4D.Util.pas',
  Model.Conexao.Firedac in '..\MVC\Model\Conexao\Classes\Model.Conexao.Firedac.pas',
  Model.Conexao.Factory.Interfaces in '..\MVC\Model\Conexao\Interfaces\Factory\Model.Conexao.Factory.Interfaces.pas',
  Model.Conexao.Factory in '..\MVC\Model\Conexao\Classes\Factory\Model.Conexao.Factory.pas',
  Controller.Conexao.Factory.Interfaces in '..\MVC\Controller\Interfaces\Controller.Conexao.Factory.Interfaces.pas',
  Controller.Conexao.Factory in '..\MVC\Controller\Classes\Controller.Conexao.Factory.pas',
  Model.Entidade.Pessoa.Interfaces in '..\MVC\Model\Entidades\Interfaces\Model.Entidade.Pessoa.Interfaces.pas',
  Model.Entidade.Pessoa in '..\MVC\Model\Entidades\Classes\Model.Entidade.Pessoa.pas',
  Model.Entidade.Factory.Interfaces in '..\MVC\Model\Entidades\Interfaces\Factory\Model.Entidade.Factory.Interfaces.pas',
  Model.Entidade.Factory in '..\MVC\Model\Entidades\Classes\Factory\Model.Entidade.Factory.pas',
  Controller.Entidade.Interfaces in '..\MVC\Controller\Interfaces\Controller.Entidade.Interfaces.pas',
  Controller.Entidade in '..\MVC\Controller\Classes\Controller.Entidade.pas',
  View.Entidade.Pessoa in '..\MVC\View\Entidades\Classes\View.Entidade.Pessoa.pas' {Pessoa: TDataModule};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  Application.CreateForm(TfrmServidorBeMoreWebRest, frmServidorBeMoreWebRest);
  Application.CreateForm(TPessoa, Pessoa);
  Application.Run;
end.
