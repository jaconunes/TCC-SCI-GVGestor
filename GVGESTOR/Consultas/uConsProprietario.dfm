inherited frConsProprietario: TfrConsProprietario
  Caption = 'Consulta de propriet'#225'rios'
  ClientWidth = 908
  ExplicitWidth = 924
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar1: TToolBar
    Width = 908
    ExplicitWidth = 908
    inherited btEditar: TToolButton
      OnClick = btEditarClick
    end
  end
  inherited grConsulta: TDBGrid
    Top = 74
    Width = 908
    Height = 256
    Columns = <
      item
        Expanded = False
        FieldName = 'BDCDPROPR'
        Title.Caption = 'C'#211'DIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BDNOME'
        Title.Caption = 'NOME'
        Width = 168
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BDTIPOPESSOA'
        Title.Caption = 'TIPO PESSOA'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BDCPFCNPJ'
        Title.Caption = 'CPF/CNPJ'
        Width = 122
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BDENDERECO'
        Title.Caption = 'LOGRADOURO'
        Width = 174
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BDNUMERO'
        Title.Caption = 'NUMERO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BDBAIRRO'
        Title.Caption = 'BAIRRO'
        Width = 124
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BDCIDADE'
        Title.Caption = 'CIDADE'
        Width = 117
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BDEMAIL'
        Title.Caption = 'EMAIL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BDTELEFONE'
        Title.Caption = 'TELEFONE'
        Visible = True
      end>
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 33
    Width = 908
    Height = 41
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 46
      Top = 12
      Width = 54
      Height = 17
      Caption = 'Filtro por'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object edCodigoNome: TEdit
      Left = 264
      Top = 6
      Width = 193
      Height = 28
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object cbFiltro: TComboBox
      Left = 106
      Top = 6
      Width = 145
      Height = 28
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = 'C'#243'digo'
      Items.Strings = (
        'C'#243'digo'
        'Nome')
    end
    object btLimpar: TButton
      Left = 544
      Top = 6
      Width = 75
      Height = 28
      Caption = 'Limpar'
      TabOrder = 2
      OnClick = btLimparClick
    end
    object btFiltrar: TButton
      Left = 463
      Top = 6
      Width = 75
      Height = 28
      Caption = 'Filtrar'
      TabOrder = 3
      OnClick = btFiltrarClick
    end
  end
end
