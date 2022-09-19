unit ufrmViewPesquisarClientes;

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
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  Vcl.Buttons,
  Vcl.ExtCtrls,
  Vcl.DBCtrls,

  ufrmViewNovoPedido,
  Datasnap.DBClient,

  Controller.Interfaces,
  Controller;

type
  TfrmViewPesquisarClientes = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    dbNavegador: TDBNavigator;
    pDigitaConformePesquisa: TPanel;
    Label1: TLabel;
    edtPesquisar: TEdit;
    rgEscolhaTipoFiltro: TRadioGroup;
    btnFiltrar: TBitBtn;
    btnVoltar: TBitBtn;
    dbgPesquisarProduto: TDBGrid;
    dsPesquisarClientes: TDataSource;
    cdsPesquisarClientes: TClientDataSet;
    cdsPesquisarClientesId: TIntegerField;
    cdsPesquisarClientesNome: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure dbgPesquisarProdutoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure dbgPesquisarProdutoEnter(Sender: TObject);
    procedure dbgPesquisarProdutoExit(Sender: TObject);
    procedure dbgPesquisarProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure edtPesquisarKeyPress(Sender: TObject; var Key: Char);
    procedure dbgPesquisarProdutoDblClick(Sender: TObject);
  private
    FController : iController;

    function PesquisarClientes(Value: Variant): Boolean;
    procedure SomenteNumeros(var aKey: Char);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmViewPesquisarClientes: TfrmViewPesquisarClientes;

implementation

{$R *.dfm}

procedure TfrmViewPesquisarClientes.btnFiltrarClick(Sender: TObject);
begin
  if not PesquisarClientes(edtPesquisar.Text) then
  begin
    edtPesquisar.Clear;
    edtPesquisar.SetFocus;
  end
  else
    dbgPesquisarProduto.SetFocus;
end;

procedure TfrmViewPesquisarClientes.btnVoltarClick(Sender: TObject);
begin
  if not dsPesquisarClientes.DataSet.IsEmpty then
    frmViewNovoPedido.edtIdCliente.Text := dsPesquisarClientes.DataSet.FieldByName('Id').AsString;
    frmViewPesquisarClientes.Close;
end;

procedure TfrmViewPesquisarClientes.dbgPesquisarProdutoDblClick(
  Sender: TObject);
begin
   btnVoltar.Click;
end;

procedure TfrmViewPesquisarClientes.dbgPesquisarProdutoDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if Odd(TDBGRID(sender).DATASOURCE.DATASET.RecNo) then
    TDBGRID(sender).Canvas.Brush.Color := clSkyBlue
  else
    TDBGRID(sender).Canvas.Brush.Color := clWhite;

  if (State = [GdSelected]) or (State = [GdFocused]) or (State = [GdSelected, GdFocused]) then
  begin
    TDBGRID(SENDER).Canvas.Brush.Color := cl3DLight;
    TDBGRID(SENDER).Canvas.Font.Color := clBlack;
  end;
  TDBGRID(SENDER).DefaultDrawDataCell(Rect, column.field, state);
end;

procedure TfrmViewPesquisarClientes.dbgPesquisarProdutoEnter(Sender: TObject);
begin
  frmViewPesquisarClientes.KeyPreview := False;
end;

procedure TfrmViewPesquisarClientes.dbgPesquisarProdutoExit(Sender: TObject);
begin
  frmViewPesquisarClientes.KeyPreview := True;
end;

procedure TfrmViewPesquisarClientes.dbgPesquisarProdutoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    btnVoltar.Click;
end;

procedure TfrmViewPesquisarClientes.edtPesquisarKeyPress(Sender: TObject;
  var Key: Char);
begin
  if rgEscolhaTipoFiltro.ItemIndex =0 then
    SomenteNumeros(Key);
end;

procedure TfrmViewPesquisarClientes.FormCreate(Sender: TObject);
begin
  FController := TController.New;
end;

procedure TfrmViewPesquisarClientes.FormDestroy(Sender: TObject);
begin
  frmViewPesquisarClientes := Nil;
end;

procedure TfrmViewPesquisarClientes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
      VK_F2: edtPesquisar.SetFocus;
  end;

  case Key of
      VK_F3: btnFiltrar.Click;
  end;

  case Key of
      VK_F4: btnVoltar.Click;
  end;
end;

procedure TfrmViewPesquisarClientes.FormShow(Sender: TObject);
begin
  edtPesquisar.Clear;
  edtPesquisar.SetFocus;
  PesquisarClientes(edtPesquisar.Text);
end;

function TfrmViewPesquisarClientes.PesquisarClientes(Value: Variant): Boolean;
begin
  if Value <> '' then
  begin
    case rgEscolhaTipoFiltro.ItemIndex of
     0:FController
           .Entidade
           .Clientes
           .This
           .NomeCampoParaFiltro('Nome')
           .TipoFiltro(rgEscolhaTipoFiltro.ItemIndex)
           .&End
           .ListarPor(Value)
           .DataSet(dsPesquisarClientes);
      1 : FController
           .Entidade
           .Clientes
           .This
           .NomeCampoParaFiltro('ID')
           .TipoFiltro(rgEscolhaTipoFiltro.ItemIndex)
           .&End
           .ListarPor(Value)
           .DataSet(dsPesquisarClientes);
    end;
  end
  else
    FController
             .Entidade
             .Clientes
             .ListarTodos
             .DataSet(dsPesquisarClientes);

  if dsPesquisarClientes.DataSet.IsEmpty then
  begin
    Result := False;
    ShowMessage('Registro n�o encontrado!');
  end
  else
    Result := True;
end;

procedure TfrmViewPesquisarClientes.SomenteNumeros(var aKey: Char);
begin
  if not(aKey in ['0' .. '9', #8]) then
    aKey := #0;
end;

end.
