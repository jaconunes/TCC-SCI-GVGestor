inherited frCadCliente: TfrCadCliente
  Caption = 'Cadastro de cliente'
  ClientHeight = 273
  ClientWidth = 531
  Constraints.MaxHeight = 312
  Constraints.MaxWidth = 547
  Constraints.MinHeight = 312
  Constraints.MinWidth = 547
  ExplicitWidth = 547
  ExplicitHeight = 312
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar1: TToolBar
    Width = 531
    ExplicitWidth = 531
    inherited btPesquisar: TToolButton
      OnClick = btPesquisarClick
    end
  end
  inherited Panel1: TPanel
    Width = 531
    Height = 240
    ExplicitWidth = 531
    ExplicitHeight = 240
    object Label1: TLabel
      Left = 59
      Top = 20
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
    object Label2: TLabel
      Left = 28
      Top = 50
      Width = 74
      Height = 17
      Caption = 'Raz'#227'o Social'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 73
      Top = 80
      Width = 29
      Height = 17
      Caption = 'CNPJ'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 53
      Top = 110
      Width = 49
      Height = 17
      Caption = 'Telefone'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 258
      Top = 110
      Width = 36
      Height = 17
      Caption = 'E-mail'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object edCodigo: TEdit_Numero_PEDSCI
      Left = 108
      Top = 16
      Width = 73
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '0'
      Decimal = False
      DecimalSeparador = ','
      Codigo = 0
    end
    object edRazaoSocial: TEdit
      Left = 108
      Top = 46
      Width = 217
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = edRazaoSocialKeyPress
    end
    object edCnpj: TEdit
      Left = 108
      Top = 76
      Width = 165
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      MaxLength = 14
      ParentFont = False
      TabOrder = 2
      OnExit = edCnpjExit
    end
    object edTelefone: TEdit
      Left = 108
      Top = 106
      Width = 117
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      MaxLength = 11
      ParentFont = False
      TabOrder = 3
      OnExit = edTelefoneExit
    end
    object edEmail: TEdit
      Left = 300
      Top = 106
      Width = 205
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 138
      Width = 513
      Height = 95
      Caption = 'Endere'#231'o'
      Color = clActiveCaption
      ParentBackground = False
      ParentColor = False
      TabOrder = 5
      object Label6: TLabel
        Left = 24
        Top = 27
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
      object Label7: TLabel
        Left = 361
        Top = 27
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
      object Label8: TLabel
        Left = 277
        Top = 57
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
      object Label9: TLabel
        Left = 59
        Top = 59
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
      object edLogradouro: TEdit
        Left = 100
        Top = 23
        Width = 245
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
      object edNumero: TEdit_Numero_PEDSCI
        Left = 410
        Top = 23
        Width = 87
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
      object edCidade: TEdit
        Left = 324
        Top = 53
        Width = 173
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
        Left = 100
        Top = 53
        Width = 159
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
    Left = 304
    Top = 1
    Bitmap = {
      494C0101060008000C0110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
