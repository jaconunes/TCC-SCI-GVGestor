inherited frCadImovel: TfrCadImovel
  Caption = 'Cadastro de im'#243'vel'
  ClientHeight = 279
  ClientWidth = 634
  Constraints.MaxHeight = 318
  Constraints.MaxWidth = 650
  Constraints.MinHeight = 318
  Constraints.MinWidth = 650
  ExplicitWidth = 650
  ExplicitHeight = 318
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar1: TToolBar
    Width = 634
    TabOrder = 0
    ExplicitWidth = 634
    inherited btPesquisar: TToolButton
      OnClick = btPesquisarClick
    end
  end
  inherited Panel1: TPanel
    Width = 634
    Height = 246
    TabOrder = 1
    ExplicitWidth = 634
    ExplicitHeight = 246
    object Label3: TLabel
      Left = 383
      Top = 87
      Width = 27
      Height = 17
      Caption = 'Data'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 54
      Top = 87
      Width = 61
      Height = 17
      Caption = 'Ambientes'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 89
      Top = 121
      Width = 26
      Height = 17
      Caption = 'Tipo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object cbTipo: TComboBox
      Left = 121
      Top = 116
      Width = 161
      Height = 28
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 3
      Text = 'Casa'
      Items.Strings = (
        'Casa'
        'Apartamento'
        'Sala Comercial'
        'Galp'#227'o')
    end
    object seAmbientes: TSpinEdit
      Left = 121
      Top = 80
      Width = 65
      Height = 30
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      MaxValue = 0
      MinValue = 0
      ParentFont = False
      TabOrder = 1
      Value = 0
    end
    object dtpData: TDateTimePicker
      Left = 416
      Top = 81
      Width = 161
      Height = 28
      Date = 45113.678175763890000000
      Time = 45113.678175763890000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 632
      Height = 72
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 70
        Top = 12
        Width = 43
        Height = 17
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 44
        Top = 42
        Width = 70
        Height = 17
        Caption = 'Propriet'#225'rio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lbNomeProprietario: TLabel
        Left = 192
        Top = 45
        Width = 5
        Height = 13
        Color = clActiveCaption
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = 'MS UI Gothic'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object edCodigo: TEdit_Numero_PEDSCI
        Left = 120
        Top = 7
        Width = 65
        Height = 26
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = '0'
        OnExit = edCodigoExit
        Decimal = False
        DecimalSeparador = ','
        Codigo = 0
      end
      object edCodProp: TEdit_Numero_PEDSCI
        Left = 120
        Top = 39
        Width = 65
        Height = 26
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = '0'
        OnChange = edCodPropChange
        Decimal = False
        DecimalSeparador = ','
        Codigo = 0
      end
    end
    object GroupBox1: TGroupBox
      Left = 17
      Top = 150
      Width = 600
      Height = 88
      Caption = 'Endere'#231'o'
      Color = clActiveCaption
      ParentBackground = False
      ParentColor = False
      TabOrder = 4
      object Label2: TLabel
        Left = 28
        Top = 21
        Width = 70
        Height = 17
        Caption = 'Logradouro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 345
        Top = 21
        Width = 48
        Height = 17
        Caption = 'N'#250'mero'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 352
        Top = 53
        Width = 41
        Height = 17
        Caption = 'Cidade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 63
        Top = 53
        Width = 35
        Height = 17
        Caption = 'Bairro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object edNumero: TEdit_Numero_PEDSCI
        Left = 399
        Top = 17
        Width = 65
        Height = 26
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = '0'
        Decimal = False
        DecimalSeparador = ','
        Codigo = 0
      end
      object edLogradouro: TEdit
        Left = 104
        Top = 17
        Width = 217
        Height = 26
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = edLogradouroKeyPress
      end
      object edCidade: TEdit
        Left = 399
        Top = 49
        Width = 161
        Height = 26
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnKeyPress = edCidadeKeyPress
      end
      object edBairro: TEdit
        Left = 104
        Top = 49
        Width = 145
        Height = 26
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnKeyPress = edBairroKeyPress
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 560
    Top = 9
    Bitmap = {
      494C010106000800F40010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
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
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFDBFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFF8E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF54FFFFFFDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFD8FFFFFF54000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF87FFFFFFFFFFFFFFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9600000000FFFFFF8FFFFFFFFFFFFF
      FFFFFFFFFF800000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000000000000000000000000000000000000000000000FFFF
      FFFF000000000000000000000000000000000000000000000000FFFFFF96FFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFF00000000FFFFFFFFFFFF
      FFFFFFFFFFFF000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9500000000FFFF
      FF9AFFFFFFD3FFFFFFDBFFFFFF90000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFF00000000FFFFFFFFFFFF
      FFFFFFFFFFFF000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF94FFFF
      FF01FFFFFF22FFFFFFFFFFFFFFBD000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFF00000000FFFFFFFFFFFF
      FFFFFFFFFFFF000000000000000000000000000000000000000000000000FFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFF00000000FFFFFFFFFFFF
      FFFFFFFFFFFF000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF930000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFF00000000FFFFFFFFFFFF
      FFFFFFFFFFFF000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFF00000000FFFFFFFFFFFF
      FFFFFFFFFFFF000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000FFFF
      FF1FFFFFFFE40000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF1FFFFF
      FFFFFFFFFF740000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFFFFFE4FFFF
      FF74000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
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
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFD7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFC20000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF21FFFFFF1D000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFEFFFFFFF330000000000000000000000000000000000000000000000000000
      00000000000000000000000000008C4240008C42400000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000893E3C00893E3C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF1CFFFFFFFFFFFFFFFFFFFFFF1C0000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE90000
      0000FFFFFF220000000000000000000000000000000000000000000000000000
      00000000000000000000DCC6C600893E3C00893E3C00DCC6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000893E3C00893E3C0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF1CFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFF1C00000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFD6FFFFFF20FFFFFF17FFFFFFA0FFFFFF23FFFF
      FF26FFFFFFE60000000000000000000000000000000000000000000000000000
      0000000000008B413F00893E3C00893E3C00893E3C00893E3C008B413F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000893E3C00893E3C0000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF18FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1C000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFF00000000FFFFFF18FFFFFFEAFFFFFFE8FFFFFF1700000000FFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
      0000D4B8B800893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00D6BD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000E0CECE000000000000000000893E3C00893E3C000000000000000000E1CF
      CE000000000000000000000000000000000000000000FFFFFF08FFFFFFDAFFFF
      FFFFFFFFFFFFFFFFFFB2FFFFFFBBFFFFFFFFFFFFFFFFFFFFFFDCFFFFFF1C0000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFF00000000FFFFFFA8FFFFFFFFFFFFFFFFFFFFFFA700000000FFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000008A3F
      3D00893E3C00893E3C00C9A8A600893E3C00893E3C00C9A8A600893E3C00893E
      3C008A3F3D00000000000000000000000000000000000000000000000000893E
      3C00893E3C00C096960000000000893E3C00893E3C0000000000C0969600893E
      3C00893E3C00000000000000000000000000000000000000000000000000FFFF
      FFFEFFFFFFAA0000000000000000FFFFFFBAFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF1800000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFF00000000FFFFFFF3FFFFFFFFFFFFFFFFFFFFFFEC00000000FFFF
      FFFFFFFFFFFF000000000000000000000000000000000000000000000000893E
      3C00893E3C00C9A8A60000000000893E3C00893E3C0000000000C9A8A600893E
      3C00893E3C000000000000000000000000000000000000000000000000008A3F
      3D00893E3C00893E3C00C59F9E00893E3C00893E3C00C49F9E00893E3C00893E
      3C008A3F3D00000000000000000000000000000000000000000000000000FFFF
      FF42FFFFFF010000000000000000FFFFFF05FFFFFFB1FFFFFFFFFFFFFFFFFFFF
      FFDBFFFFFF18000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFF00000000FFFFFFA8FFFFFFFFFFFFFFFFFFFFFFA800000000FFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
      0000E3D1D1000000000000000000893E3C00893E3C000000000000000000E3D1
      D100000000000000000000000000000000000000000000000000000000000000
      0000D4B8B800893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00D6BD
      BD00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFFAEFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF180000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFF8800000000000000000000000000000000FFFFFF8CFFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000893E3C00893E3C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008B413F00893E3C00893E3C00893E3C00893E3C008B413F000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF03FFFFFFAEFFFF
      FFFFFFFFFFFFFFFFFFDBFFFFFF1800000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFB2FFFFFF10FFFFFF10FFFFFFB4FFFFFFFFFFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000893E3C00893E3C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DCC6C600893E3C00893E3C00DCC6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFA7FFFFFFFFFFFFFF650000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF740000000000000000000000000000000000000000000000000000
      0000000000000000000000000000893E3C00893E3C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008C4240008C42400000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF01FFFFFFA0000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF74000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF740000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFD8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E000000000000
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
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFE11F00000000
      E007E11F00000000E007E08700000000E007EFC700000000E247E02100000000
      E247E00100000000E247EFFF00000000E247E00700000000E247E00700000000
      E247E06700000000E007E04700000000E007E00F00000000FC3FE01F00000000
      FFFFE03F00000000FFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFE007
      FFFFFFFFF9FFE007FE7FFE7FF0FFE017FC3FFE7FE07FE007F81FFE7FC03FE427
      F00FF66F801FE427E007E247E60FE427E247E007E607E427F66FF00FFF83E3C7
      FE7FF81FFF81E007FE7FFC3FFFE3E007FE7FFE7FFFE7E00FFFFFFFFFFFFFE01F
      FFFFFFFFFFFFE03FFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
end
