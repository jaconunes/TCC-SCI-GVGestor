inherited frCadUsuario: TfrCadUsuario
  Caption = 'Cadastro de usu'#225'rio'
  ClientHeight = 283
  ClientWidth = 444
  ExplicitWidth = 460
  ExplicitHeight = 322
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar1: TToolBar
    Width = 444
    ExplicitWidth = 444
    inherited btPesquisar: TToolButton
      OnClick = btPesquisarClick
    end
  end
  inherited Panel1: TPanel
    Width = 444
    Height = 250
    Constraints.MaxHeight = 250
    Constraints.MaxWidth = 444
    Constraints.MinHeight = 250
    Constraints.MinWidth = 444
    ExplicitWidth = 444
    ExplicitHeight = 250
    object Label1: TLabel
      Left = 94
      Top = 65
      Width = 33
      Height = 16
      Caption = 'Nome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 98
      Top = 123
      Width = 29
      Height = 16
      Caption = 'Perfil'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 91
      Top = 181
      Width = 36
      Height = 16
      Caption = 'Senha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 88
      Top = 35
      Width = 39
      Height = 16
      Caption = 'C'#243'digo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 46
      Top = 210
      Width = 81
      Height = 16
      Caption = 'Repetir Senha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 84
      Top = 152
      Width = 43
      Height = 16
      Caption = 'Usu'#225'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edNome: TEdit
      Left = 135
      Top = 58
      Width = 281
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = edNomeKeyPress
    end
    object edCpfCnpj: TEdit
      Left = 135
      Top = 87
      Width = 146
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnExit = edCpfCnpjExit
    end
    object edSenha: TEdit
      Left = 135
      Top = 176
      Width = 193
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 5
    end
    object GroupBox1: TGroupBox
      Left = 14
      Top = 86
      Width = 113
      Height = 31
      TabOrder = 7
      object rbCpf: TRadioButton
        Left = 8
        Top = 7
        Width = 49
        Height = 17
        Caption = 'CPF'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = rbCpfClick
      end
      object rbCnpj: TRadioButton
        Left = 63
        Top = 7
        Width = 49
        Height = 17
        Caption = 'CNPJ'
        TabOrder = 1
        OnClick = rbCnpjClick
      end
    end
    object cbPerfil: TComboBox
      Left = 135
      Top = 116
      Width = 146
      Height = 28
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 3
      Text = 'Administrador'
      Items.Strings = (
        'Administrador'
        'Padr'#227'o')
    end
    object edRepitaSenha: TEdit
      Left = 135
      Top = 205
      Width = 193
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 6
    end
    object edCodigo: TEdit_Numero_PEDSCI
      Left = 135
      Top = 29
      Width = 74
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
    object edUsuario: TEdit
      Left = 135
      Top = 147
      Width = 193
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
  inherited ImageList1: TImageList
    Left = 392
    Top = 113
    Bitmap = {
      494C010106000800180110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      000000000000000000000000000000000000000000000000000000000000D8BF
      BF009A595800893E3C00893E3C00893E3C00893E3C00893E3C00893E3C009B5C
      5A00D8BFBF00000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF87FFFFFFFFFFFFFFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E
      3C00893E3C00000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9600000000FFFFFF8FFFFFFFFFFFFF
      FFFFFFFFFF800000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E
      3C00893E3C00000000000000000000000000000000000000000000000000FFFF
      FFFF000000000000000000000000000000000000000000000000FFFFFF96FFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C00893E3C00893E3C0000000000893E3C00893E3C0000000000893E3C00893E
      3C00893E3C00000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9500000000FFFF
      FF9AFFFFFFD3FFFFFFDBFFFFFF90000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C00893E3C00893E3C0000000000893E3C00893E3C0000000000893E3C00893E
      3C00893E3C00000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF94FFFF
      FF01FFFFFF22FFFFFFFFFFFFFFBD000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C00893E3C00893E3C0000000000893E3C00893E3C0000000000893E3C00893E
      3C00893E3C00000000000000000000000000000000000000000000000000FFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C00893E3C00893E3C0000000000893E3C00893E3C0000000000893E3C00893E
      3C00893E3C00000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF930000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C00893E3C00893E3C0000000000893E3C00893E3C0000000000893E3C00893E
      3C00893E3C00000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C00893E3C00893E3C0000000000893E3C00893E3C0000000000893E3C00893E
      3C00893E3C00000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000FFFF
      FF1FFFFFFFE40000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E
      3C00893E3C00000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF1FFFFF
      FFFFFFFFFF740000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E
      3C00893E3C00000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFFFFFE4FFFF
      FF74000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000893E3C00893E3C00893E3C00893E3C00000000000000
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
      000000000000F0E6E600F3EBEB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F1F100893E3C009F626100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0E6E600F2E9E900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAF7F700995856008D454300CDAE
      AD009E605E00A2676500F8F4F400000000000000000000000000000000000000
      00000000000000000000000000008C4240008C42400000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000893E3C00893E3C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F2EAEA00893E3C00893E3C00F2EAEA000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C00893E3C00893E3C00D3B6B600C7A3A200893E3C00DDC8C700F8F4F4009450
      4E00893E3C000000000000000000000000000000000000000000000000000000
      00000000000000000000DCC6C600893E3C00893E3C00DCC6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000893E3C00893E3C0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2EA
      EA0098565400893E3C00893E3C0098565400F2EAEA0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C00893E3C00893E3C00EEE3E300A1656300893E3C000000000000000000E0CC
      CC00893E3C000000000000000000000000000000000000000000000000000000
      0000000000008B413F00893E3C00893E3C00893E3C00893E3C008B413F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000893E3C00893E3C0000000000000000000000
      0000000000000000000000000000000000000000000000000000F4EDED00893E
      3C00893E3C00893E3C00893E3C00893E3C00893E3C00F2EAEA00000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C00893E3C00893E3C00F8F3F3009F626100893E3C000000000000000000DEC9
      C900893E3C000000000000000000000000000000000000000000000000000000
      0000D4B8B800893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00D6BD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000E0CECE000000000000000000893E3C00893E3C000000000000000000E1CF
      CE000000000000000000000000000000000000000000FBF9F9009A5A5800893E
      3C00893E3C00AD787700A8717000893E3C00893E3C0099585700F2EAEA000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C00893E3C00893E3C00DAC3C300C5A09F00893E3C00DBC5C400F8F3F3009552
      5000893E3C000000000000000000000000000000000000000000000000008A3F
      3D00893E3C00893E3C00C9A8A600893E3C00893E3C00C9A8A600893E3C00893E
      3C008A3F3D00000000000000000000000000000000000000000000000000893E
      3C00893E3C00C096960000000000893E3C00893E3C0000000000C0969600893E
      3C00893E3C00000000000000000000000000000000000000000000000000893F
      3D00B07E7D000000000000000000A9727100893E3C00893E3C00893E3C00F4ED
      ED0000000000000000000000000000000000000000000000000000000000893E
      3C00893E3C00893E3C00893E3C0000000000FAF7F700995857008C434100BD94
      9200FBF9F900000000000000000000000000000000000000000000000000893E
      3C00893E3C00C9A8A60000000000893E3C00893E3C0000000000C9A8A600893E
      3C00893E3C000000000000000000000000000000000000000000000000008A3F
      3D00893E3C00893E3C00C59F9E00893E3C00893E3C00C49F9E00893E3C00893E
      3C008A3F3D00000000000000000000000000000000000000000000000000E0CD
      CD00FFFEFE000000000000000000FDFBFB00AD797800893E3C00893E3C009A59
      5800F4EDED0000000000000000000000000000000000CBA9A900893E3C00893E
      3C00893E3C00893E3C00893E3C00D5BAB9000000000000000000000000000000
      0000FEFDFD00893F3D00CBA9A900000000000000000000000000000000000000
      0000E3D1D1000000000000000000893E3C00893E3C000000000000000000E3D1
      D100000000000000000000000000000000000000000000000000000000000000
      0000D4B8B800893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00D6BD
      BD00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AE7B7A00893E3C00893E
      3C00893E3C00F4EDED0000000000000000000000000000000000000000008E46
      4400893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E
      3C008E4644000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000893E3C00893E3C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008B413F00893E3C00893E3C00893E3C00893E3C008B413F000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFDFD00AE7B7A00893E
      3C00893E3C009A595800F4EDED0000000000000000000000000000000000E9DB
      DA00934E4C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00934E
      4C00E9DBDA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000893E3C00893E3C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DCC6C600893E3C00893E3C00DCC6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B281
      7F00893E3C00D0B3B20000000000000000000000000000000000000000000000
      0000000000009F626100893E3C00893E3C00893E3C00893E3C009F6261000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000893E3C00893E3C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008C4240008C42400000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFE
      FE00B58685000000000000000000000000000000000000000000000000000000
      000000000000FAF7F700A66E6C00893E3C00893E3C00A66E6C00FAF7F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BD939200BD93920000000000000000000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFE11F00000000
      E007E11F00000000E007E08700000000E007EFC700000000E247E02100000000
      E247E00100000000E247EFFF00000000E247E00700000000E247E00700000000
      E247E06700000000E007E04700000000E007E00F00000000FC3FE01F00000000
      FFFFE03F00000000FFFFFFFF00000000FFFFFFFFFFFFFFF9FFFFFFFFFFFFFFF1
      FFFFFFFFF9FFFF01FE7FFE7FF0FFE007FC3FFE7FE07FE067F81FFE7FC03FE067
      F00FF66F801FE007E007E247E60FE107E247E007E60780F1F66FF00FFF83E007
      FE7FF81FFF81E007FE7FFC3FFFE3F81FFE7FFE7FFFE7F81FFFFFFFFFFFFFFE7F
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
end
