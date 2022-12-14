unit ufrmPrincipalLASERCHIP;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.Buttons,
  Vcl.Imaging.pngimage,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  System.Actions,
  Vcl.ActnList,
  System.ImageList,
  Vcl.ImgList,
  Vcl.VirtualImageList,
  Vcl.BaseImageCollection,
  Vcl.ImageCollection,
  Data.DB,
  Vcl.ComCtrls,
  Vcl.Imaging.jpeg;

type
  TfrmPrincipal = class(TForm)
    Timer1: TTimer;
    ImageCollection1: TImageCollection;
    VirtualImageList1: TVirtualImageList;
    ActionList1: TActionList;
    ActSair: TAction;
    ActHome: TAction;
    ActNovoPedido: TAction;
    ActPesquisarPedido: TAction;
    Panel2: TPanel;
    lTextoEmpresa: TLabel;
    lNow: TLabel;
    Panel3: TPanel;
    lHora: TLabel;
    pmenu_lateral: TPanel;
    pntributos: TPanel;
    Image2: TImage;
    spNovaPedido: TSpeedButton;
    Panel5: TPanel;
    Image3: TImage;
    spSair: TSpeedButton;
    Panel1: TPanel;
    Image4: TImage;
    dsUsuario: TDataSource;
    StatusBar: TStatusBar;
    spEmissorBoleto: TSpeedButton;
    procedure ActNovoPedidoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure spSairClick(Sender: TObject);
    procedure ActSairExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  ufrmViewNovoPedido;

{$R *.dfm}

procedure TfrmPrincipal.ActNovoPedidoExecute(Sender: TObject);
begin
  if frmViewNovoPedido = nil then
  begin
    IF (ActiveMDIChild <> NIL) AND (ActiveMDIChild.Visible = True) then
      ActiveMDIChild.Close;

    Application.CreateForm(TfrmViewNovoPedido, frmViewNovoPedido);
    LockWindowUpdate(handle);
    frmViewNovoPedido.FormStyle := fsMDIChild;
    //frmViewNovoPedido.WindowState := wsMaximized;
    frmViewNovoPedido.Show;
    LockWindowUpdate(0);
  end
  else
    exit;
end;

procedure TfrmPrincipal.ActSairExecute(Sender: TObject);
var
  Result: Integer;
begin
  try
    Result := Application.MessageBox('Tem certeza que deseja sair do sistema?  ', 'FECHAR',
      mb_yesno + mb_defButton2 + mb_iconQuestion);
    if (Result <> IDyes) then
      Abort
    else
    begin
      Application.Terminate;
    end;
  except
    on E: Exception do
      showmessage('Aten??o! sistema n?o ser? encerrado!');
  end;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  lTextoEmpresa.Caption := 'Treinando e aprendendo POO';
end;

procedure TfrmPrincipal.spSairClick(Sender: TObject);
var
  Result: Integer;
begin
  try
    Result := Application.MessageBox('Tem certeza que deseja sair do sistema?  ', 'FECHAR',
      mb_yesno + mb_defButton2 + mb_iconQuestion);
    if (Result <> IDyes) then
      Abort
    else
    begin
      Application.Terminate;
    end;
  except
    on E: Exception do
      showmessage('Aten??o! sistema n?o ser? encerrado!');
  end;
end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
  lNow.Caption := FormatDateTime('dddd ", " dd " de " mmmm " de " yyyy', now());
  lHora.Caption := FormatDateTime('hh":"nn":"ss"', now());
end;

end.
