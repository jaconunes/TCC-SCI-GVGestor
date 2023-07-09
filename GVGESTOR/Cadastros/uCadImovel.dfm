inherited frCadImovel: TfrCadImovel
  Caption = 'Cadastro de im'#243'vel'
  ClientHeight = 256
  ClientWidth = 634
  Constraints.MaxHeight = 295
  Constraints.MaxWidth = 650
  Constraints.MinHeight = 295
  Constraints.MinWidth = 650
  ExplicitWidth = 650
  ExplicitHeight = 295
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
    Height = 223
    TabOrder = 1
    ExplicitWidth = 634
    ExplicitHeight = 223
    object Label1: TLabel
      Left = 72
      Top = 57
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
    object Label3: TLabel
      Left = 383
      Top = 93
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
      Top = 92
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
      Left = 384
      Top = 58
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
    object edCodigo: TEdit_Numero_PEDSCI
      Left = 121
      Top = 53
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
      OnExit = edCodigoExit
      Decimal = False
      DecimalSeparador = ','
      Codigo = 0
    end
    object cbTipo: TComboBox
      Left = 416
      Top = 53
      Width = 161
      Height = 28
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 2
      Text = 'Residencial'
      Items.Strings = (
        'Residencial'
        'Comercial')
    end
    object seAmbientes: TSpinEdit
      Left = 121
      Top = 85
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
      TabOrder = 3
      Value = 0
    end
    object dtpData: TDateTimePicker
      Left = 416
      Top = 87
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
      TabOrder = 4
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 632
      Height = 41
      Align = alTop
      TabOrder = 0
      object Label9: TLabel
        Left = 43
        Top = 12
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
        Left = 191
        Top = 13
        Width = 6
        Height = 15
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -15
        Font.Name = 'MS UI Gothic'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edCodProp: TEdit_Numero_PEDSCI
        Left = 120
        Top = 8
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
        OnChange = edCodPropChange
        Decimal = False
        DecimalSeparador = ','
        Codigo = 0
      end
    end
    object GroupBox1: TGroupBox
      Left = 17
      Top = 121
      Width = 600
      Height = 88
      Caption = 'Endere'#231'o'
      Color = clActiveCaption
      ParentBackground = False
      ParentColor = False
      TabOrder = 5
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
        TabOrder = 2
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
        TabOrder = 3
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 560
    Top = 9
    Bitmap = {
      494C010106000800B80010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      6700CEB0AE00893E3C00A367660000000000000000000000000000000000D9C0
      C0009A5A5900893E3C00893E3C00893E3C00893E3C00893E3C00893E3C009C5D
      5A00D9C0C0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C0000000000000000000000000000000000CAAAA800A9717000E4D2D100E4D2
      D100A9717000C7A5A3000000000000000000000000000000000000000000893E
      3C00893E3C00000000000000000000000000000000000000000000000000893E
      3C00893E3C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C00000000000000000000000000000000009B5B5A00E8DADA00000000000000
      0000E8DADA009F6160000000000000000000000000000000000000000000893E
      3C00893E3C00000000000000000000000000000000000000000000000000893E
      3C00893E3C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C00000000000000000000000000000000009C5D5A00E7D6D600000000000000
      0000E7D6D6009F6160000000000000000000000000000000000000000000893E
      3C00893E3C0000000000893E3C000000000000000000893E3C0000000000893E
      3C00893E3C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C0000000000000000000000000000000000C6A09F009C5D5A00E1CDCB00E1CD
      CB009C5D5A00CEB0B0000000000000000000000000000000000000000000893E
      3C00893E3C0000000000893E3C000000000000000000893E3C0000000000893E
      3C00893E3C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C000000000000000000000000000000000000000000C49F9E00A46A6900A267
      6600CEAFAE00000000000000000000000000000000000000000000000000893E
      3C00893E3C0000000000893E3C000000000000000000893E3C0000000000893E
      3C00893E3C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C00893E3C0000000000893E3C000000000000000000893E3C0000000000893E
      3C00893E3C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C00000000000000000000000000000000000000000000000000000000000000
      0000893E3C00000000000000000000000000000000000000000000000000893E
      3C00893E3C0000000000893E3C000000000000000000893E3C0000000000893E
      3C00893E3C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C000000000000000000000000000000000000000000893E3C00893E3C00893E
      3C00893E3C00000000000000000000000000000000000000000000000000893E
      3C00893E3C0000000000893E3C000000000000000000893E3C0000000000893E
      3C00893E3C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C000000000000000000000000000000000000000000893E3C00893E3C00893E
      3C00C9A8A600000000000000000000000000000000000000000000000000893E
      3C00893E3C00000000000000000000000000000000000000000000000000893E
      3C00893E3C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C000000000000000000000000000000000000000000893E3C00893E3C00C9A8
      A60000000000000000000000000000000000000000000000000000000000893E
      3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E
      3C00893E3C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00C9A8A6000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000893E3C00893E3C00893E3C00893E3C00000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000893E3C00BB909000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0E7E700F3EAEA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D9C0C000893E
      3C00893E3C00893E3C00893E3C0000000000893E3C00893E3C00BB908F000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008C4240008C42400000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000893E3C00893E3C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F3EBEB00893E3C00893E3C00F3EBEB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000893E3C000000
      00000000000000000000000000000000000000000000893E3C00893E3C00B88A
      8A00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DCC6C600893E3C00893E3C00DCC6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000893E3C00893E3C0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F3EB
      EB0098575400893E3C00893E3C0098575400F3EBEB0000000000000000000000
      0000000000000000000000000000000000000000000000000000893E3C000000
      00000000000000000000000000000000000000000000C9A8A600893E3C00893E
      3C00B88A8A000000000000000000000000000000000000000000000000000000
      0000000000008B413F00893E3C00893E3C00893E3C00893E3C008B413F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000893E3C00893E3C0000000000000000000000
      0000000000000000000000000000000000000000000000000000F4EEEE00893E
      3C00893E3C00893E3C00893E3C00893E3C00893E3C00F3EBEB00000000000000
      0000000000000000000000000000000000000000000000000000893E3C000000
      000000000000893E3C00893E3C00893E3C00893E3C000000000000000000893E
      3C00893E3C00F7F2F20000000000000000000000000000000000000000000000
      0000D4B8B800893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00D6BD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000E0CECE000000000000000000893E3C00893E3C000000000000000000E1CF
      CE000000000000000000000000000000000000000000FCFAFA009B5B5900893E
      3C00893E3C00AE797700A8717000893E3C00893E3C009A585700F3EBEB000000
      0000000000000000000000000000000000000000000000000000893E3C000000
      000000000000000000000000000000000000000000000000000000000000CCAA
      AA00BC8F8E00944F4D00CDADAD00000000000000000000000000000000008A3F
      3D00893E3C00893E3C00C9A8A600893E3C00893E3C00C9A8A600893E3C00893E
      3C008A3F3D00000000000000000000000000000000000000000000000000893E
      3C00893E3C00C096960000000000893E3C00893E3C0000000000C0969600893E
      3C00893E3C000000000000000000000000000000000000000000000000008A3F
      3D00B17E7D000000000000000000A9737100893E3C00893E3C00893E3C00F4EE
      EE00000000000000000000000000000000000000000000000000893E3C000000
      000000000000893E3C00893E3C00893E3C00893E3C00893E3C00893E3C000000
      0000FFFEFE00BB8D8D00FEFDFD0000000000000000000000000000000000893E
      3C00893E3C00C9A8A60000000000893E3C00893E3C0000000000C9A8A600893E
      3C00893E3C000000000000000000000000000000000000000000000000008A3F
      3D00893E3C00893E3C00C59F9E00893E3C00893E3C00C49F9E00893E3C00893E
      3C008A3F3D00000000000000000000000000000000000000000000000000E0CE
      CE00FFFEFE000000000000000000FDFBFB00AE7A7900893E3C00893E3C009A5A
      5900F4EEEE000000000000000000000000000000000000000000893E3C000000
      000000000000893E3C00893E3C00893E3C00893E3C00893E3C00893E3C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E3D1D1000000000000000000893E3C00893E3C000000000000000000E3D1
      D100000000000000000000000000000000000000000000000000000000000000
      0000D4B8B800893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00D6BD
      BD00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AE7C7A00893E3C00893E
      3C00893E3C00F4EEEE0000000000000000000000000000000000893E3C000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000893E3C0000000000000000000000000000000000000000000000
      0000000000000000000000000000893E3C00893E3C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008B413F00893E3C00893E3C00893E3C00893E3C008B413F000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFDFD00AE7C7A00893E
      3C00893E3C009A5A5900F4EEEE00000000000000000000000000893E3C000000
      000000000000893E3C00893E3C00893E3C00893E3C00893E3C00893E3C000000
      000000000000893E3C0000000000000000000000000000000000000000000000
      0000000000000000000000000000893E3C00893E3C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DCC6C600893E3C00893E3C00DCC6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B282
      8000893E3C00D0B3B30000000000000000000000000000000000893E3C000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000893E3C0000000000000000000000000000000000000000000000
      0000000000000000000000000000893E3C00893E3C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008C4240008C42400000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFE
      FE00B58686000000000000000000000000000000000000000000893E3C000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000893E3C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D9C0C000893E
      3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E
      3C00893E3C00DEC7C70000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFDFFFF00000000E078FFFF00000000
      E081E00700000000EF03E7E700000000EF33E7E700000000EF33E5A700000000
      EF03E5A700000000EF87E5A700000000EFFFE5A700000000EFF7E5A700000000
      EF87E5A700000000EF87E7E700000000EF8FE00700000000E01FFC3F00000000
      E03FFFFF00000000FFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F
      FFFFFFFFF9FFC11FFE7FFE7FF0FFDF8FFC3FFE7FE07FDF87F81FFE7FC03FD863
      F00FF66F801FDFE1E007E247E60FD811E247E007E607D81FF66FF00FFF83DFFB
      FE7FF81FFF81D81BFE7FFC3FFFE3DFFBFE7FFE7FFFE7DFFBFFFFFFFFFFFFC003
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
end
