inherited frLaudo: TfrLaudo
  Caption = 'Laudo vistoria'
  ClientHeight = 131
  ClientWidth = 357
  ExplicitWidth = 373
  ExplicitHeight = 170
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar1: TToolBar
    Width = 357
    ExplicitWidth = 357
    inherited btVisualizar: TToolButton
      Enabled = False
    end
    inherited ToolButton2: TToolButton
      Enabled = False
    end
    inherited btSalvarComo: TToolButton
      Enabled = False
    end
    inherited ToolButton3: TToolButton
      Enabled = False
    end
    inherited btImprimir: TToolButton
      Enabled = False
    end
    inherited ToolButton4: TToolButton
      Enabled = False
    end
    inherited btEditar: TToolButton
      Enabled = False
    end
    inherited ToolButton5: TToolButton
      Enabled = False
    end
  end
  inherited Panel1: TPanel
    Width = 357
    Height = 98
    ExplicitWidth = 357
    ExplicitHeight = 98
    inherited GroupBox1: TGroupBox
      Left = 8
      Top = 6
      Height = 83
      Caption = 'Selecione a vistoria'
      ExplicitLeft = 8
      ExplicitTop = 6
      ExplicitHeight = 83
      object btSelecionar: TSpeedButton
        Left = 183
        Top = 32
        Width = 82
        Height = 28
        Caption = 'Selecionar'
        OnClick = btSelecionarClick
      end
      object edCodigo: TEdit_Numero_PEDSCI
        Left = 82
        Top = 32
        Width = 95
        Height = 28
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = '0'
        OnChange = edCodigoChange
        Decimal = False
        DecimalSeparador = ','
        Codigo = 0
      end
    end
  end
  inherited ImageList1: TImageList
    Top = 0
    Bitmap = {
      494C0101050008009C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009A5A
      5900893E3C00893E3C00893E3C00893E3C00CEB0B00000000000000000000000
      0000000000009D5D5B00893E3C00F7F2F2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C00893E3C00893E3C00893E3C00CFB2B00000000000CEADAC00A2666400A369
      6700CEB0AE00893E3C00A3676600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C0000000000000000000000000000000000CAAAA800A9717000E4D2D100E4D2
      D100A9717000C7A5A30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C00000000000000000000000000000000009B5B5A00E8DADA00000000000000
      0000E8DADA009F61600000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C00000000000000000000000000000000009C5D5A00E7D6D600000000000000
      0000E7D6D6009F61600000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C0000000000000000000000000000000000C6A09F009C5D5A00E1CDCB00E1CD
      CB009C5D5A00CEB0B00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C000000000000000000000000000000000000000000C49F9E00A46A6900A267
      6600CEAFAE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C00000000000000000000000000000000000000000000000000000000000000
      0000893E3C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C000000000000000000000000000000000000000000893E3C00893E3C00893E
      3C00893E3C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C000000000000000000000000000000000000000000893E3C00893E3C00893E
      3C00C9A8A6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C000000000000000000000000000000000000000000893E3C00893E3C00C9A8
      A600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00C9A8A6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C5D
      5A00893E3C00893E3C00893E3C00893E3C00893E3C00C6A1A000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF84FFFF
      FFFFFFFFFFFFFFFFFF8400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFDBFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFF8E0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF58FFFFFFFFFFFF
      FF1CFFFFFF1CFFFFFFFFFFFFFF66000000000000000000000000FFFFFF54FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF5400000000000000000000000000000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF00000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF87FFFFFFFFFFFFFFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF21FFFFFFF7FFFFFFFFFFFFFFFFFFFFFF01FFFFFFF4FFFFFF8B0000
      0000FFFFFF60FFFFFF80FFFFFF80000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFFFF16FFFFFF19FFFFFFE8FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      0000FFFFFFFF000000000000000000000000000000000000000000000000FFFF
      FFFF00000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9600000000FFFFFF8FFFFFFFFFFFFF
      FFFFFFFFFF80000000000000000000000000000000000000000000000000FFFF
      FF9CFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1BFFFFFFCCFFFFFFC00000
      0000FFFFFF1BFFFFFFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF550000000000000000FFFFFF56FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      0000FFFFFFFF000000000000000000000000000000000000000000000000FFFF
      FFFF00000000000000000000000000000000000000000000000000000000FFFF
      FFFF000000000000000000000000000000000000000000000000FFFFFF96FFFF
      FFFFFFFFFFFF00000000000000000000000000000000FFFFFF0AFFFFFFC6FFFF
      FFFFFFFFFFFFFFFFFF7000000000000000000000000000000000FFFFFF7FFFFF
      FFFFFFFFFFFFFFFFFF82FFFFFFDC000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF0C0000000000000000FFFFFF13FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9500000000FFFF
      FF9AFFFFFFD3FFFFFFDBFFFFFF900000000000000000FFFFFF99FFFFFFFFFFFF
      FFFFFFFFFFFF00000000FFFFFF10FFFFFFEAFFFFFFE8FFFFFF0E00000000FFFF
      FF6CFFFFFF6C00000000FFFFFF1E000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF560000000000000000FFFFFF56FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF94FFFF
      FF01FFFFFF22FFFFFFFFFFFFFFBD0000000000000000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF00000000FFFFFFE8FFFFFFFFFFFFFFFFFFFFFFE700000000FFFF
      FF1800000000FFFFFF41FFFFFFC0000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000FFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF00000000FFFFFFE9FFFFFFFFFFFFFFFFFFFFFFE400000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF3EFFFFFFFFFFFFFFFF00000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF9300000000000000000000000000000000FFFFFFA3FFFFFFFFFFFF
      FFFFFFFFFFFF00000000FFFFFF0FFFFFFFE8FFFFFFE8FFFFFF0C00000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF8A000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF000000000000000000000000FFFFFFA8FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFA800000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF00000000000000000000000000000000FFFFFF0CFFFFFFC9FFFF
      FFFFFFFFFFFFFFFFFF7000000000000000000000000000000000FFFFFF7DFFFF
      FFFFFFFFFFFFFFFFFFB9FFFFFF04000000000000000000000000FFFFFFFF0000
      0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF000000000000000000000000FFFFFF18FFFFFFA2FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFA2FFFFFF1800000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000FFFF
      FF1FFFFFFFE4000000000000000000000000000000000000000000000000FFFF
      FF9CFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFBFFFFFF950000000000000000000000000000000000000000FFFFFFFF0000
      0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF8000000000000000000000000000000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF00000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF1FFFFF
      FFFFFFFFFF740000000000000000000000000000000000000000000000000000
      0000FFFFFF23FFFFFFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFF
      FF1D000000000000000000000000000000000000000000000000FFFFFFFF0000
      0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF00000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFFFFFE4FFFF
      FF74000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF53FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF80000000000000000000000000000000000000000000000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF00000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFD8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFD000000000000E078000000000000
      E081000000000000EF03000000000000EF33000000000000EF33000000000000
      EF03000000000000EF87000000000000EFFF000000000000EFF7000000000000
      EF87000000000000EF87000000000000EF8F000000000000E01F000000000000
      E03F000000000000FFFF000000000000FFFFFFFFFFFFFFFFFFC3FFFFFFFFE11F
      FF81C003F00FE11FF011C003F7EFE087E011C183F7EFEFC783C1C18387E1E021
      8425C18387E1E0018429C0038001EFFF8421C0038001E0078421C0038001E007
      83C1DFC38001E067E007DFC3F00FE047F00FDFC7F00FE00FFFFFC00FF00FE01F
      FFFFFFFFFFFFE03FFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  inherited frxReportPadrao: TfrxReport
    Left = 510
    Datasets = <>
    Variables = <>
    Style = <>
  end
  inherited frxDesigner1: TfrxDesigner
    Left = 510
  end
  inherited frxDBDataset1: TfrxDBDataset
    Left = 510
  end
  inherited SQLQueryPadrao: TSQLQuery
    Left = 510
  end
  inherited PrintDialog1: TPrintDialog
    Left = 582
  end
  inherited frxPDFExport1: TfrxPDFExport
    Left = 582
  end
  inherited frxDOCXExport1: TfrxDOCXExport
    Left = 582
  end
  inherited SaveDialog1: TSaveDialog
    Left = 582
  end
  object frxDBDatasetVistoria: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSource = dsVistoria
    BCDToCurrency = False
    Left = 24
    Top = 137
  end
  object dsVistoria: TDataSource
    DataSet = dmTabelas.tbVistoria
    Left = 24
    Top = 191
  end
  object frxDBDatasetUsuario: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSource = dsUsuario
    BCDToCurrency = False
    Left = 120
    Top = 137
  end
  object dsUsuario: TDataSource
    DataSet = dmTabelas.tbUsuario
    Left = 120
    Top = 191
  end
  object dsProprietario: TDataSource
    DataSet = dmTabelas.tbProprietario
    Left = 216
    Top = 191
  end
  object frxDBDatasetProprietario: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSource = dsProprietario
    BCDToCurrency = False
    Left = 216
    Top = 137
  end
  object frxDBDatasetLocatario: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSource = dsLocatario
    BCDToCurrency = False
    Left = 320
    Top = 137
  end
  object dsLocatario: TDataSource
    DataSet = dmTabelas.tbLocatario
    Left = 320
    Top = 191
  end
  object frxDBDatasetItem: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSource = dsItem
    BCDToCurrency = False
    Left = 24
    Top = 257
  end
  object dsItem: TDataSource
    DataSet = dmTabelas.tbItem
    Left = 24
    Top = 311
  end
  object dsImovel: TDataSource
    DataSet = dmTabelas.tbImovel
    Left = 120
    Top = 311
  end
  object frxDBDatasetImovel: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSource = dsImovel
    BCDToCurrency = False
    Left = 120
    Top = 257
  end
  object dsFoto: TDataSource
    DataSet = dmTabelas.tbFoto
    Left = 216
    Top = 311
  end
  object frxDBDatasetFoto: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSource = dsFoto
    BCDToCurrency = False
    Left = 216
    Top = 257
  end
  object dsCliente: TDataSource
    DataSet = dmTabelas.tbCliente
    Left = 320
    Top = 311
  end
  object frxDBDatasetCliente: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSource = dsCliente
    BCDToCurrency = False
    Left = 320
    Top = 257
  end
  object dsAmbiente: TDataSource
    DataSet = dmTabelas.tbAmbiente
    Left = 416
    Top = 311
  end
  object frxDBDatasetAmbiente: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSource = dsAmbiente
    BCDToCurrency = False
    Left = 416
    Top = 257
  end
  object frxReportMasterSource: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45120.893905277780000000
    ReportOptions.LastChange = 45120.893905277780000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 400
    Top = 57
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
