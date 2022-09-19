object frmViewNovoPedido: TfrmViewNovoPedido
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Emissor de Pedido(s)'
  ClientHeight = 642
  ClientWidth = 1098
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PrintScale = poNone
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pBotoes: TPanel
    Left = 982
    Top = 0
    Width = 116
    Height = 599
    Align = alRight
    BevelOuter = bvNone
    Color = 14778398
    ParentBackground = False
    TabOrder = 0
    object btnFiltrar: TBitBtn
      Left = 0
      Top = 0
      Width = 116
      Height = 50
      Align = alTop
      Caption = '&Filtrar'
      TabOrder = 0
      OnClick = btnFiltrarClick
    end
    object btnTodos: TBitBtn
      Left = 0
      Top = 50
      Width = 116
      Height = 50
      Align = alTop
      Caption = '&Todos'
      TabOrder = 1
      OnClick = btnTodosClick
    end
    object btnIncluir: TBitBtn
      Left = 0
      Top = 100
      Width = 116
      Height = 50
      Align = alTop
      Caption = '&Incluir'
      TabOrder = 2
      OnClick = btnIncluirClick
    end
    object btnAlterar: TBitBtn
      Left = 0
      Top = 150
      Width = 116
      Height = 50
      Align = alTop
      Caption = '&Alterar'
      Enabled = False
      TabOrder = 3
      OnClick = btnAlterarClick
    end
    object btnExcluir: TBitBtn
      Left = 0
      Top = 200
      Width = 116
      Height = 50
      Align = alTop
      Caption = '&Excluir'
      Enabled = False
      TabOrder = 4
      OnClick = btnExcluirClick
    end
    object btnConsultar: TBitBtn
      Left = 0
      Top = 250
      Width = 116
      Height = 50
      Align = alTop
      Caption = '&Consultar'
      TabOrder = 5
    end
    object bbSair: TBitBtn
      Left = 0
      Top = 515
      Width = 116
      Height = 50
      Align = alTop
      Caption = 'X Sair'
      TabOrder = 6
      OnClick = bbSairClick
    end
    object btnFinalizarPedido: TBitBtn
      Left = 0
      Top = 465
      Width = 116
      Height = 50
      Align = alTop
      Caption = '&Finalizar Pedido'
      Enabled = False
      TabOrder = 7
      OnClick = btnFinalizarPedidoClick
    end
    object btnImprimirPedido: TBitBtn
      Left = 0
      Top = 300
      Width = 116
      Height = 50
      Align = alTop
      Caption = '&Imprimir Pedido'
      Enabled = False
      TabOrder = 8
      OnClick = btnImprimirPedidoClick
    end
    object Panel2: TPanel
      Left = 0
      Top = 350
      Width = 116
      Height = 115
      Align = alTop
      BevelOuter = bvNone
      Color = clInactiveCaption
      ParentBackground = False
      TabOrder = 9
    end
  end
  object pcPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 982
    Height = 599
    ActivePage = tbPedido
    Align = alClient
    TabOrder = 1
    object tbPedido: TTabSheet
      Caption = 'Pesquisa Pedido'
      object pPesquisar: TPanel
        Left = 0
        Top = 0
        Width = 974
        Height = 76
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object pDigitaConformePesquisa: TPanel
          Left = 0
          Top = 0
          Width = 974
          Height = 76
          Align = alClient
          BevelOuter = bvNone
          Color = 14778398
          ParentBackground = False
          TabOrder = 0
          object Label1: TLabel
            Left = 445
            Top = 26
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
          object edtPesquisa: TEdit
            Left = 445
            Top = 49
            Width = 305
            Height = 21
            Align = alCustom
            TabOrder = 0
          end
          object rgEscolhaTipoFiltro: TRadioGroup
            Left = 0
            Top = 0
            Width = 185
            Height = 76
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
              '0 - Id Pedido'
              '1 - Id Cliente'
              '2 - Nome Cliente')
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            TabOrder = 1
          end
          object Panel6: TPanel
            Left = 185
            Top = 0
            Width = 251
            Height = 76
            Align = alLeft
            Color = 14778398
            ParentBackground = False
            TabOrder = 2
            object Label3: TLabel
              Left = 1
              Top = 1
              Width = 249
              Height = 13
              Align = alTop
              Alignment = taCenter
              Caption = 'Escolha Per'#237'odo:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 79
            end
            object Label4: TLabel
              Left = 6
              Top = 33
              Width = 70
              Height = 13
              Caption = 'Inicio Emiss'#227'o:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label5: TLabel
              Left = 129
              Top = 33
              Width = 61
              Height = 13
              Caption = 'Fim Emiss'#227'o:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object DataFinal: TDateTimePicker
              Left = 129
              Top = 48
              Width = 117
              Height = 21
              Date = 43220.000000000000000000
              Time = 0.369445081021694900
              TabOrder = 0
            end
            object DataInicial: TDateTimePicker
              Left = 6
              Top = 48
              Width = 117
              Height = 21
              Date = 43191.000000000000000000
              Time = 0.369445081021694900
              TabOrder = 1
            end
            object cbFiltrarPorPeriodo: TCheckBox
              Left = 76
              Top = 16
              Width = 117
              Height = 17
              Caption = 'Filtrar por Per'#237'odo'
              TabOrder = 2
            end
          end
        end
      end
      object dbgPedido: TDBGrid
        Left = 0
        Top = 76
        Width = 974
        Height = 42
        Align = alTop
        BorderStyle = bsNone
        Color = cl3DDkShadow
        Ctl3D = False
        DataSource = dsPedido
        GradientEndColor = 6118749
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = dbgPedidoDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'Id'
            Title.Alignment = taRightJustify
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idcliente'
            Title.Alignment = taRightJustify
            Title.Caption = 'Id Cliente:'
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome'
            Title.Caption = 'Nome Cliente:'
            Width = 248
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'dataemissao'
            Title.Alignment = taCenter
            Title.Caption = 'Data Emiss'#227'o'
            Width = 117
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valorpedido'
            Title.Alignment = taRightJustify
            Title.Caption = 'Valor Pedido'
            Width = 146
            Visible = True
          end>
      end
      object dbgPedidoItens: TDBGrid
        Left = 0
        Top = 118
        Width = 974
        Height = 453
        Align = alClient
        BorderStyle = bsNone
        Color = cl3DDkShadow
        Ctl3D = False
        DataSource = dsPedidoItens
        GradientEndColor = 6118749
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = dbgPedidoItensDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'idpedido'
            Title.Alignment = taRightJustify
            Title.Caption = 'Id Pedido:'
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idproduto'
            Title.Alignment = taRightJustify
            Title.Caption = 'Id Produto:'
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Title.Caption = 'Nome Produto:'
            Width = 367
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valorunitario'
            Title.Alignment = taRightJustify
            Title.Caption = 'Valor Unit'#225'rio:'
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'quantidade'
            Title.Alignment = taRightJustify
            Title.Caption = 'Quantidade:'
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valorprodutos'
            Title.Alignment = taRightJustify
            Title.Caption = 'Valor Produtos:'
            Width = 111
            Visible = True
          end>
      end
    end
    object tbPagamento: TTabSheet
      Caption = 'Inclui Novo Pedido'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pItensdoPedido: TPanel
        Left = 0
        Top = 67
        Width = 974
        Height = 67
        Align = alTop
        BevelOuter = bvNone
        Color = clInactiveCaption
        ParentBackground = False
        TabOrder = 0
        object lItensdoPedido: TLabel
          Left = 0
          Top = 0
          Width = 128
          Height = 19
          Align = alTop
          Alignment = taCenter
          Caption = 'Itens do Pedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lIdProduto: TLabel
          Left = 42
          Top = 18
          Width = 55
          Height = 13
          Caption = 'Id Produto:'
        end
        object lNomeProduto: TLabel
          Left = 103
          Top = 18
          Width = 72
          Height = 13
          Caption = 'Nome Produto:'
        end
        object lQuantidade: TLabel
          Left = 632
          Top = 17
          Width = 60
          Height = 13
          Caption = 'Quantidade:'
        end
        object lValorUnitario: TLabel
          Left = 526
          Top = 17
          Width = 68
          Height = 13
          Caption = 'Valor Unit'#225'rio:'
        end
        object lValorProdutos: TLabel
          Left = 716
          Top = 17
          Width = 74
          Height = 13
          Caption = 'Valor Produtos:'
        end
        object edtIdProduto: TEdit
          Left = 7
          Top = 32
          Width = 90
          Height = 22
          Alignment = taRightJustify
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Sylfaen'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnExit = edtIdProdutoExit
          OnKeyDown = edtIdProdutoKeyDown
          OnKeyPress = edtIdProdutoKeyPress
        end
        object edtNomeProduto: TEdit
          Left = 103
          Top = 33
          Width = 394
          Height = 21
          Color = clInactiveCaption
          ReadOnly = True
          TabOrder = 1
        end
        object edtQuantidade: TEdit
          Left = 602
          Top = 33
          Width = 90
          Height = 21
          Alignment = taRightJustify
          TabOrder = 2
          OnExit = edtQuantidadeExit
          OnKeyPress = edtQuantidadeKeyPress
        end
        object edtValorUnitario: TEdit
          Left = 504
          Top = 33
          Width = 90
          Height = 21
          Alignment = taRightJustify
          ReadOnly = True
          TabOrder = 3
        end
        object edtValorProdutos: TEdit
          Left = 700
          Top = 33
          Width = 90
          Height = 21
          Alignment = taRightJustify
          Color = clInactiveCaption
          ReadOnly = True
          TabOrder = 5
        end
        object btnConfirmaItem: TBitBtn
          Left = 796
          Top = 17
          Width = 88
          Height = 37
          Caption = '&Confirma Item'
          TabOrder = 6
          OnClick = btnConfirmaItemClick
        end
        object btnCancelaItem: TBitBtn
          Left = 884
          Top = 17
          Width = 88
          Height = 37
          Caption = 'Ca&ncela Item'
          TabOrder = 4
          OnClick = btnCancelaItemClick
        end
      end
      object dbgPedidoItensLancando: TDBGrid
        Left = 0
        Top = 134
        Width = 974
        Height = 437
        Align = alClient
        BorderStyle = bsNone
        Color = cl3DDkShadow
        Ctl3D = False
        DataSource = dsPedidoItens
        GradientEndColor = 6118749
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = dbgPedidoItensLancandoDrawColumnCell
        OnKeyDown = dbgPedidoItensLancandoKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idproduto'
            Title.Alignment = taRightJustify
            Title.Caption = 'Id Produto:'
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Title.Caption = 'Nome Produto:'
            Width = 367
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valorunitario'
            Title.Alignment = taRightJustify
            Title.Caption = 'Valor Unit'#225'rio:'
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'quantidade'
            Title.Alignment = taRightJustify
            Title.Caption = 'Quantidade:'
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valorprodutos'
            Title.Alignment = taRightJustify
            Title.Caption = 'Valor Produtos:'
            Width = 111
            Visible = True
          end>
      end
      object pDadosPedido: TPanel
        Left = 0
        Top = 0
        Width = 974
        Height = 67
        Align = alTop
        BevelOuter = bvNone
        Color = 14778398
        ParentBackground = False
        TabOrder = 2
        object lIdPedido: TLabel
          Left = 51
          Top = 22
          Width = 46
          Height = 13
          Caption = 'IdPedido:'
        end
        object lDataEmissao: TLabel
          Left = 131
          Top = 22
          Width = 68
          Height = 13
          Caption = 'Data Emiss'#227'o:'
        end
        object lValorPedido: TLabel
          Left = 304
          Top = 22
          Width = 63
          Height = 13
          Caption = 'Valor Pedido:'
        end
        object lCliente: TLabel
          Left = 414
          Top = 22
          Width = 50
          Height = 13
          Caption = 'Id Cliente:'
        end
        object lNomeCliente: TLabel
          Left = 473
          Top = 22
          Width = 67
          Height = 13
          Caption = 'Nome Cliente:'
        end
        object lDadosPedido: TLabel
          Left = 0
          Top = 0
          Width = 974
          Height = 19
          Align = alTop
          Alignment = taCenter
          Caption = 'Dados do Pedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 136
        end
        object edtId: TEdit
          Left = 7
          Top = 36
          Width = 90
          Height = 26
          Alignment = taRightJustify
          Color = clInactiveCaption
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Sylfaen'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object edtValorPedido: TEdit
          Left = 241
          Top = 36
          Width = 126
          Height = 26
          Alignment = taRightJustify
          Color = clInactiveCaption
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Sylfaen'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object edtNomeCliente: TEdit
          Left = 473
          Top = 36
          Width = 499
          Height = 26
          Color = clInactiveCaption
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Sylfaen'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object edtIdCliente: TEdit
          Left = 370
          Top = 36
          Width = 94
          Height = 26
          Alignment = taRightJustify
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Sylfaen'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnExit = edtIdClienteExit
          OnKeyDown = edtIdClienteKeyDown
          OnKeyPress = edtIdClienteKeyPress
        end
        object dtDataEmissao: TDateTimePicker
          Left = 106
          Top = 36
          Width = 123
          Height = 26
          Date = 44783.000000000000000000
          Time = 0.552691574077471200
          Color = clInactiveCaption
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Sylfaen'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 599
    Width = 1098
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 14778398
    ParentBackground = False
    TabOrder = 2
    object Label2: TLabel
      Left = 408
      Top = 4
      Width = 273
      Height = 39
      Caption = 'Emissor de Pedidos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -32
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object dbNavegador: TDBNavigator
      Left = 0
      Top = 0
      Width = 280
      Height = 43
      DataSource = dsPedido
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alLeft
      TabOrder = 0
    end
  end
  object dsPedidoItens: TDataSource
    DataSet = cdsPedidoItens
    Left = 80
    Top = 376
  end
  object frxrImprimirPedido: TfrxReport
    Version = '6.2.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44784.376842025500000000
    ReportOptions.LastChange = 44784.376842025500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 196
    Top = 224
    Datasets = <
      item
        DataSet = frxdatasetPedido
        DataSetName = 'frxdatasetPedido'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftTop]
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 31.795300000000000000
        Top = 253.228510000000000000
        Width = 718.110700000000000000
        DataSet = frxdatasetPedidoItens
        DataSetName = 'frxdatasetPedidoItens'
        RowCount = 0
        object frxDBDataset2idproduto: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 7.338590000000000000
          Top = 1.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'idproduto'
          DataSet = frxdatasetPedidoItens
          DataSetName = 'frxdatasetPedidoItens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdatasetPedidoItens."idproduto"]')
          ParentFont = False
        end
        object frxDBDataset2nome: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 97.488250000000000000
          Top = 1.559060000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          DataField = 'nome'
          DataSet = frxdatasetPedidoItens
          DataSetName = 'frxdatasetPedidoItens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdatasetPedidoItens."nome"]')
          ParentFont = False
        end
        object frxDBDataset2quantidade: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 511.795610000000000000
          Top = 1.559060000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'quantidade'
          DataSet = frxdatasetPedidoItens
          DataSetName = 'frxdatasetPedidoItens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdatasetPedidoItens."quantidade"]')
          ParentFont = False
        end
        object frxDBDataset2valorunitario: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 409.748300000000000000
          Top = 1.559060000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'valorunitario'
          DataSet = frxdatasetPedidoItens
          DataSetName = 'frxdatasetPedidoItens'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdatasetPedidoItens."valorunitario"]')
          ParentFont = False
        end
        object frxDBDataset2valorprodutos: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 619.842920000000000000
          Top = 1.559060000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'valorprodutos'
          DataSet = frxdatasetPedidoItens
          DataSetName = 'frxdatasetPedidoItens'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdatasetPedidoItens."valorprodutos"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Top = 22.677180000000000000
          Width = 740.787880000000000000
          Height = 3.779530000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          HAlign = haRight
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 64.708720000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 22.456710000000000000
          Top = 37.000000000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Id Pedido:')
          ParentFont = False
        end
        object frxDBDataset1Id: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 97.488250000000000000
          Top = 37.000000000000000000
          Width = 45.354330708661420000
          Height = 18.897650000000000000
          DataField = 'Id'
          DataSet = frxdatasetPedido
          DataSetName = 'frxdatasetPedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdatasetPedido."Id"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 227.094620000000000000
          Top = 37.000000000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Data Emiss'#227'o:')
          ParentFont = False
        end
        object frxDBDataset1dataemissao: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 329.260050000000000000
          Top = 37.000000000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'dataemissao'
          DataSet = frxdatasetPedido
          DataSetName = 'frxdatasetPedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdatasetPedido."dataemissao"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Top = 37.000000000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor Pedido -->:')
          ParentFont = False
        end
        object frxDBDataset1valorpedido: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 600.945270000000000000
          Top = 37.000000000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'valorpedido'
          DataSet = frxdatasetPedido
          DataSetName = 'frxdatasetPedido'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdatasetPedido."valorpedido"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Top = 56.354360000000000000
          Width = 740.787880000000000000
          Height = 3.779530000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          HAlign = haRight
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 228.661565000000000000
          Top = 7.559060000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de Pedido(s)')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Top = 28.677180000000000000
          Width = 740.787880000000000000
          Height = 3.779530000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          HAlign = haRight
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 39.338590000000000000
        Top = 143.622140000000000000
        Width = 718.110700000000000000
        Condition = 'frxdatasetPedido."Id"'
        ResetPageNumbers = True
        StartNewPage = True
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Top = 28.000000000000000000
          Width = 740.787880000000000000
          Height = 3.779530000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          HAlign = haRight
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 26.236240000000000000
          Top = 8.559060000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cliente:')
          ParentFont = False
        end
        object frxDBDataset1idcliente: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 97.488250000000000000
          Top = 8.559060000000000000
          Width = 45.354330708661420000
          Height = 18.897650000000000000
          DataField = 'idcliente'
          DataSet = frxdatasetPedido
          DataSetName = 'frxdatasetPedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdatasetPedido."idcliente"]')
          ParentFont = False
        end
        object frxDBDataset1NomeCliente: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 181.622140000000000000
          Top = 8.559060000000000000
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          DataField = 'Nome'
          DataSet = frxdatasetPedido
          DataSetName = 'frxdatasetPedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdatasetPedido."Nome"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 204.094620000000000000
        Width = 718.110700000000000000
        DataSet = frxdatasetPedido
        DataSetName = 'frxdatasetPedido'
        RowCount = 0
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 97.488250000000000000
          Top = 3.779530000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome Produto:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 402.189240000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Unit'#225'rio:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 504.236550000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 3.779530000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Produtos:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 3.559060000000000000
          Top = 3.779530000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Id Produto:')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 306.141930000000000000
        Width = 718.110700000000000000
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor Pedido -->:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 600.945270000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'valorpedido'
          DataSet = frxdatasetPedido
          DataSetName = 'frxdatasetPedido'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdatasetPedido."valorpedido"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Impress'#227'o:')
        end
      end
    end
  end
  object frxdatasetPedido: TfrxDBDataset
    UserName = 'frxdatasetPedido'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Id=Id'
      'idcliente=idcliente'
      'Nome=Nome'
      'dataemissao=dataemissao'
      'valorpedido=valorpedido')
    BCDToCurrency = False
    Left = 196
    Top = 280
  end
  object frxdatasetPedidoItens: TfrxDBDataset
    UserName = 'frxdatasetPedidoItens'
    CloseDataSource = False
    DataSource = dsPedidoItens
    BCDToCurrency = False
    Left = 196
    Top = 328
  end
  object dsPedido: TDataSource
    DataSet = cdsPedido
    OnDataChange = dsPedidoDataChange
    Left = 88
    Top = 272
  end
  object cdsPedidoItens: TClientDataSet
    PersistDataPacket.Data = {
      C00000009619E0BD010000001800000005000000000003000000C00009696470
      726F6475746F0400010000000000046E6F6D6501004900000001000557494454
      480200020014000A7175616E7469646164650800040000000100075355425459
      50450200490006004D6F6E6579000D76616C6F72756E69746172696F08000400
      0000010007535542545950450200490006004D6F6E6579000D76616C6F727072
      6F6475746F73080004000000010007535542545950450200490006004D6F6E65
      79000000}
    Active = True
    Aggregates = <>
    AutoCalcFields = False
    Params = <>
    Left = 84
    Top = 320
    object cdsPedidoItensid: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'id'
      Calculated = True
    end
    object cdsPedidoItensidpedido: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'idpedido'
      Calculated = True
    end
    object cdsPedidoItensidproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object cdsPedidoItensnome: TStringField
      FieldName = 'nome'
    end
    object cdsPedidoItensvalorunitario: TCurrencyField
      FieldName = 'valorunitario'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object cdsPedidoItensquantidade: TCurrencyField
      FieldName = 'quantidade'
    end
    object cdsPedidoItensvalorprodutos: TCurrencyField
      FieldName = 'valorprodutos'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object cdsPedido: TClientDataSet
    PersistDataPacket.Data = {
      930000009619E0BD010000001800000005000000000003000000930002496404
      00010000000000096964636C69656E746504000100000000000B4E6F6D65436C
      69656E746501004900000001000557494454480200020014000B64617461656D
      697373616F04000600000000000B76616C6F7270656469646F08000400000001
      0007535542545950450200490006004D6F6E6579000000}
    Active = True
    Aggregates = <>
    AutoCalcFields = False
    Params = <>
    Left = 84
    Top = 224
    object cdsPedidoId: TIntegerField
      DisplayWidth = 10
      FieldName = 'Id'
    end
    object cdsPedidoidcliente: TIntegerField
      DisplayWidth = 16
      FieldName = 'idcliente'
    end
    object cdsPedidoNome: TStringField
      FieldKind = fkCalculated
      FieldName = 'Nome'
      Calculated = True
    end
    object cdsPedidodataemissao: TDateField
      DisplayWidth = 15
      FieldName = 'dataemissao'
      DisplayFormat = '99/99/9999'
    end
    object cdsPedidovalorpedido: TCurrencyField
      DisplayWidth = 23
      FieldName = 'valorpedido'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
end
