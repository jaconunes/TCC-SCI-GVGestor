inherited frCadUsuario: TfrCadUsuario
  Caption = 'Cadastro de usu'#225'rio'
  ClientHeight = 251
  ClientWidth = 444
  Constraints.MaxHeight = 290
  Constraints.MaxWidth = 460
  Constraints.MinHeight = 290
  Constraints.MinWidth = 460
  ExplicitWidth = 460
  ExplicitHeight = 290
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar1: TToolBar
    Width = 444
    ExplicitWidth = 444
  end
  inherited Panel1: TPanel
    Width = 444
    Height = 218
    ExplicitWidth = 444
    ExplicitHeight = 218
    object Label1: TLabel
      Left = 94
      Top = 54
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
      Top = 117
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
      Top = 148
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
      Top = 22
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
      Top = 178
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
    object edNome: TEdit
      Left = 135
      Top = 47
      Width = 281
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edCpfCnpj: TEdit
      Left = 135
      Top = 78
      Width = 146
      Height = 26
      Enabled = False
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
      Top = 142
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
    object GroupBox1: TGroupBox
      Left = 14
      Top = 77
      Width = 113
      Height = 31
      TabOrder = 1
      object rbCpf: TRadioButton
        Left = 8
        Top = 7
        Width = 49
        Height = 17
        Caption = 'CPF'
        TabOrder = 0
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
      Top = 109
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
      Top = 173
      Width = 193
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnExit = edRepitaSenhaExit
    end
    object edCodigo: TEdit_Numero_PEDSCI
      Left = 135
      Top = 16
      Width = 74
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Text = '0'
      Decimal = False
      DecimalSeparador = ','
      Codigo = 0
    end
  end
  inherited ImageList1: TImageList
    Left = 392
    Top = 113
  end
end
