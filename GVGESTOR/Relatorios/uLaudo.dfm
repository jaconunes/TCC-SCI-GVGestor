inherited frLaudo: TfrLaudo
  Caption = 'Laudo vistoria'
  ClientHeight = 131
  ClientWidth = 354
  Constraints.MaxHeight = 170
  Constraints.MaxWidth = 370
  Constraints.MinHeight = 170
  Constraints.MinWidth = 370
  ExplicitWidth = 370
  ExplicitHeight = 170
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar1: TToolBar
    Width = 354
    ExplicitWidth = 354
    inherited btVisualizar: TToolButton
      Hint = 'Visualizar (F4)'
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
    inherited ToolButton5: TToolButton
      Enabled = False
    end
  end
  inherited Panel1: TPanel
    Width = 354
    Height = 98
    ExplicitWidth = 354
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
      494C010105000800F80010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009B5C
      5A00893E3C00893E3C00893E3C0000000000893E3C00893E3C00B68887000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D8BFBF00893E
      3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E
      3C00893E3C00D8BFBF0000000000000000000000000000000000000000000000
      0000893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E
      3C0000000000000000000000000000000000000000000000000000000000893E
      3C00893E3C00893E3C00893E3C0000000000C19A9900893E3C00893E3C00FFFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000EEE4E3008B424000893E3C00893E3C00893E3C00893E3C008D454300F2E9
      E900000000000000000000000000000000000000000000000000893E3C00893E
      3C00893E3C00893E3C0094504E00F5EEEE00F3ECEC00944F4E00893E3C00893E
      3C00893E3C00893E3C0000000000000000000000000000000000000000000000
      0000893E3C00000000000000000000000000000000000000000000000000893E
      3C0000000000000000000000000000000000000000000000000000000000893E
      3C00893E3C00893E3C00893E3C00BF96950000000000BA8D8C00893E3C00893E
      3C00AE7B7A00000000000000000000000000000000000000000000000000B587
      85008A403E00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C008A40
      3E00BB908F000000000000000000000000000000000000000000893E3C00893E
      3C00893E3C00893E3C00D8BFBE000000000000000000D7BEBD00893E3C00893E
      3C00893E3C00893E3C0000000000000000000000000000000000000000000000
      0000893E3C00000000000000000000000000000000000000000000000000893E
      3C0000000000000000000000000000000000000000000000000000000000893E
      3C00893E3C00893E3C00893E3C00893E3C00BF96950000000000B6888700893E
      3C00893E3C00FDFCFC00000000000000000000000000FAF7F700A3686700893E
      3C00893E3C00BE949300FDFCFC000000000000000000FDFCFC00BD939200893E
      3C00893E3C00A76F6E00FBF9F900000000000000000000000000893E3C00893E
      3C00893E3C00893E3C00F9F6F6000000000000000000F6F1F000893E3C00893E
      3C00893E3C00893E3C00000000000000000000000000893E3C00893E3C00893E
      3C00893E3C00000000000000000000000000000000000000000000000000893E
      3C00893E3C00893E3C00893E3C0000000000000000000000000000000000893E
      3C00893E3C00893E3C00893E3C00893E3C00893E3C00C29C9B0000000000B586
      8500A56B6A0099585600C09897000000000000000000B88A8900893E3C00893E
      3C00893E3C0000000000F4EDED00934E4C00944F4E00F4EEED00FFFEFE00893E
      3C00893E3C00893E3C00BB908F00000000000000000000000000893E3C00893E
      3C00893E3C00893E3C00D7BEBD000000000000000000D7BEBD00893E3C00893E
      3C00893E3C00893E3C00000000000000000000000000893E3C00893E3C00893E
      3C00893E3C00000000000000000000000000000000000000000000000000893E
      3C00893E3C00893E3C00893E3C0000000000000000000000000000000000893E
      3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00C29C9B00FEFD
      FD00EFE5E500893E3C00AD7877000000000000000000893E3C00893E3C00893E
      3C00893E3C0000000000924C4B00893E3C00893E3C00924C4B0000000000893E
      3C00893E3C00893E3C00893E3C00000000000000000000000000893E3C00893E
      3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E
      3C00893E3C00893E3C00000000000000000000000000893E3C00893E3C00893E
      3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E
      3C00893E3C00893E3C00893E3C0000000000000000000000000000000000893E
      3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00BF96
      95000000000000000000000000000000000000000000893E3C00893E3C00893E
      3C00893E3C00000000008F474500893E3C00893E3C00924C4B0000000000893E
      3C00893E3C00893E3C00893E3C00000000000000000000000000893E3C00893E
      3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E
      3C00893E3C00893E3C00000000000000000000000000893E3C00893E3C00893E
      3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E
      3C00E2D0D000893E3C00893E3C0000000000000000000000000000000000893E
      3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E
      3C00BF96950000000000000000000000000000000000B5878500893E3C00893E
      3C00893E3C0000000000F4EDED00944F4E00944F4E00F4EDED00FFFEFE00893E
      3C00893E3C00893E3C00C19A9900000000000000000000000000893E3C00893E
      3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E
      3C00893E3C00893E3C00000000000000000000000000B1807F00893E3C00893E
      3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E
      3C00893E3C00893E3C00B1807F0000000000000000000000000000000000893E
      3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E
      3C00893E3C0000000000000000000000000000000000FAF7F700A3686700893E
      3C00893E3C00C098970000000000000000000000000000000000BE959400893E
      3C00893E3C00AA747300FDFCFC00000000000000000000000000893E3C000000
      0000000000000000000000000000000000000000000000000000893E3C00893E
      3C00893E3C00893E3C00000000000000000000000000F4EDED00B4848300893E
      3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E
      3C00893E3C00B4848300F4EDED0000000000000000000000000000000000893E
      3C00893E3C00893E3C00893E3C00893E3C00893E3C000000000000000000F1E8
      E70095525100000000000000000000000000000000000000000000000000B789
      88008A403E00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C008B42
      4000BC9291000000000000000000000000000000000000000000893E3C000000
      0000000000000000000000000000000000000000000000000000893E3C00893E
      3C00893E3C00C49E9D0000000000000000000000000000000000000000000000
      0000893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E
      3C0000000000000000000000000000000000000000000000000000000000893E
      3C00893E3C00893E3C00893E3C00893E3C00893E3C0000000000F1E8E700893E
      3C00C9A7A6000000000000000000000000000000000000000000000000000000
      0000F0E6E6008D444200893E3C00893E3C00893E3C00893E3C008D454300F2EA
      EA00000000000000000000000000000000000000000000000000893E3C000000
      0000000000000000000000000000000000000000000000000000893E3C00893E
      3C00893E3C000000000000000000000000000000000000000000000000000000
      0000893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E
      3C0000000000000000000000000000000000000000000000000000000000893E
      3C00893E3C00893E3C00893E3C00893E3C00893E3C00F1E8E70095525100C9A7
      A600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D9C0C000893E
      3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00C49E
      9D00000000000000000000000000000000000000000000000000000000000000
      0000893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E
      3C0000000000000000000000000000000000000000000000000000000000893E
      3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00C6A2A1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C5C
      5B00893E3C00893E3C00893E3C00893E3C00893E3C00C5A09F00000000000000
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
      E03F000000000000FFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFE11F
      FFFFC003F00FE10FF00FC003F7EFE087E007C183F7EFE0438181C18387E1E021
      8401C18387E1E0018421C0038001E00F8421C0038001E0078401C0038001E007
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
