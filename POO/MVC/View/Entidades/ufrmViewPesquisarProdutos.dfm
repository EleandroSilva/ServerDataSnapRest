object frmViewPesquisarProdutos: TfrmViewPesquisarProdutos
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'frmViewPesquisarProdutos'
  ClientHeight = 468
  ClientWidth = 782
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pPesquisar: TPanel
    Left = 0
    Top = 0
    Width = 782
    Height = 60
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object pDigitaConformePesquisa: TPanel
      Left = 0
      Top = 0
      Width = 782
      Height = 60
      Align = alTop
      BevelOuter = bvNone
      Color = 14778398
      ParentBackground = False
      TabOrder = 0
      object Label1: TLabel
        Left = 191
        Top = 11
        Width = 243
        Height = 19
        Align = alCustom
        Caption = 'Digite filtro conforme tipo de filtro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edtPesquisar: TEdit
        Left = 191
        Top = 36
        Width = 319
        Height = 21
        Align = alCustom
        TabOrder = 0
      end
      object rgEscolhaTipoFiltro: TRadioGroup
        Left = 0
        Top = 0
        Width = 185
        Height = 60
        Align = alLeft
        Caption = 'Escolha Tipo Filtro'
        Color = 14778398
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          '0 - &Id Produto'
          '1 - &Nome Produto')
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 1
      end
      object btnFiltrar: TBitBtn
        Left = 582
        Top = 0
        Width = 100
        Height = 60
        Align = alRight
        Caption = '&Filtrar'
        TabOrder = 2
        OnClick = btnFiltrarClick
      end
      object btnVoltar: TBitBtn
        Left = 682
        Top = 0
        Width = 100
        Height = 60
        Align = alRight
        Caption = '&Voltar'
        TabOrder = 3
        OnClick = btnVoltarClick
      end
    end
  end
  object dbgPesquisarProduto: TDBGrid
    Left = 0
    Top = 60
    Width = 782
    Height = 358
    Align = alClient
    DataSource = dsPesquisarProduto
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = dbgPesquisarProdutoDrawColumnCell
    OnDblClick = dbgPesquisarProdutoDblClick
    OnEnter = dbgPesquisarProdutoEnter
    OnExit = dbgPesquisarProdutoExit
    OnKeyPress = dbgPesquisarProdutoKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Alignment = taRightJustify
        Title.Caption = 'Id Produto:'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Title.Caption = 'Nome Produto:'
        Width = 426
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valorvenda'
        Title.Alignment = taRightJustify
        Title.Caption = 'Valor Venda:'
        Width = 123
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 418
    Width = 782
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    Color = 14778398
    ParentBackground = False
    TabOrder = 2
    object Label2: TLabel
      Left = 303
      Top = 17
      Width = 443
      Height = 19
      Alignment = taRightJustify
      Caption = 'Tecla Atalho -> F2 Edit Digite  F3 Bot'#227'o Filtrar F4 Bot'#227'o Voltar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object dbNavegador: TDBNavigator
      Left = 0
      Top = 0
      Width = 280
      Height = 50
      DataSource = dsPesquisarProduto
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alLeft
      TabOrder = 0
    end
  end
  object dsPesquisarProduto: TDataSource
    DataSet = cdsPesquisarProduto
    Left = 376
    Top = 232
  end
  object cdsPesquisarProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 376
    Top = 176
    object cdsPesquisarProdutoid: TIntegerField
      FieldName = 'id'
    end
    object cdsPesquisarProdutoNome: TStringField
      FieldName = 'Nome'
      Size = 0
    end
    object cdsPesquisarProdutovalorvenda: TCurrencyField
      FieldName = 'valorvenda'
      DisplayFormat = '#,##0.00'
    end
  end
end
