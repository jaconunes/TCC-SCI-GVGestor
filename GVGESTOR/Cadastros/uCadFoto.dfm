﻿inherited frCadFoto: TfrCadFoto
  Caption = 'Cadastro de foto'
  ClientHeight = 472
  ClientWidth = 421
  Constraints.MaxHeight = 511
  Constraints.MaxWidth = 437
  Constraints.MinHeight = 511
  Constraints.MinWidth = 437
  OnShow = FormShow
  ExplicitWidth = 437
  ExplicitHeight = 511
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar1: TToolBar
    Width = 421
    ExplicitWidth = 421
    inherited btSalvar: TToolButton
      ImageIndex = 7
    end
    inherited btPesquisar: TToolButton
      OnClick = btPesquisarClick
    end
    object btAdicionar: TToolButton
      Left = 123
      Top = 0
      Caption = 'btAdicionar'
      ImageIndex = 6
      OnClick = btAdicionarClick
    end
    object ToolButton7: TToolButton
      Left = 156
      Top = 0
      Width = 8
      Caption = 'ToolButton7'
      ImageIndex = 9
      Style = tbsSeparator
    end
  end
  inherited Panel1: TPanel
    Width = 421
    Height = 439
    ExplicitWidth = 421
    ExplicitHeight = 439
    object Código: TLabel
      Left = 25
      Top = 14
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
    object Label1: TLabel
      Left = 159
      Top = 14
      Width = 57
      Height = 17
      Caption = 'Descri'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object edCodigo: TEdit_Numero_PEDSCI
      Left = 74
      Top = 10
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
      Decimal = False
      DecimalSeparador = ','
      Codigo = 0
    end
    object edDescricao: TEdit
      Left = 222
      Top = 10
      Width = 177
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object GroupBox1: TGroupBox
      Left = 10
      Top = 42
      Width = 402
      Height = 383
      Color = clGradientActiveCaption
      ParentBackground = False
      ParentColor = False
      TabOrder = 2
      object iImagem: TImage
        Left = 14
        Top = 16
        Width = 374
        Height = 337
        Center = True
        Stretch = True
      end
      object Label2: TLabel
        Left = 89
        Top = 359
        Width = 210
        Height = 13
        Caption = 'Selecione um imagem com a extens'#227'o ".jpg"'
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 184
    Top = 65534
    Bitmap = {
      494C010108006001C80010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
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
      0000893E3CFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C00893E3C00893E3C00893E3C00CFB2B00000000000CEADAC00A2666400A369
      6700CEB0AE00893E3C00A367660000000000000000000000000000000000D9C0
      C0009A5A5900893E3C00893E3C00893E3C00893E3C00893E3C00893E3C009C5D
      5A00D9C0C0000000000000000000000000000000000000000000883D3D4F893E
      3CFF893E3CFF893E3CFF893E3CFF893E3CFF893E3CFF00000000000000000000
      0000893E3CFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C0000000000000000000000000000000000CAAAA800A9717000E4D2D100E4D2
      D100A9717000C7A5A3000000000000000000000000000000000000000000893E
      3C00893E3C00000000000000000000000000000000000000000000000000893E
      3C00893E3C000000000000000000000000000000000000000000893E3CFF893E
      3CFF893E3CFF893E3CFF893E3CFF893E3CFF893E3CFF00000000893E3CFF893E
      3CFF893E3CFF893E3CFF893E3CFF00000000000000000000000000000000893E
      3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E
      3C00893E3C00000000000000000000000000000000000000000000000000893E
      3C00000000000000000000000000000000009B5B5A00E8DADA00000000000000
      0000E8DADA009F6160000000000000000000000000000000000000000000893E
      3C00893E3C00000000000000000000000000000000000000000000000000893E
      3C00893E3C000000000000000000000000000000000000000000893E3CFF893E
      3B63000000000000000000000000000000000000000000000000000000000000
      0000893E3CFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C00000000000000000000000000000000009C5D5A00E7D6D600000000000000
      0000E7D6D6009F6160000000000000000000000000000000000000000000893E
      3C00893E3C0000000000893E3C000000000000000000893E3C0000000000893E
      3C00893E3C000000000000000000000000000000000000000000893E3CFF893E
      3CFF893D3CE0000000008E393909893E3DC68040400400000000000000000000
      0000893E3CFF0000000000000000000000000000000000000000000000000000
      00000000000000000000893E3C00893E3C00893E3C00893E3C00000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C0000000000000000000000000000000000C6A09F009C5D5A00E1CDCB00E1CD
      CB009C5D5A00CEB0B0000000000000000000000000000000000000000000893E
      3C00893E3C0000000000893E3C000000000000000000893E3C0000000000893E
      3C00893E3C000000000000000000000000000000000000000000893E3CFF893E
      3CFF893E3CFFFF000001893E3DB1893E3CFF893D3C8D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000893E3C00893E3C00893E3C00893E3C00000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C000000000000000000000000000000000000000000C49F9E00A46A6900A267
      6600CEAFAE00000000000000000000000000000000000000000000000000893E
      3C00893E3C0000000000893E3C000000000000000000893E3C0000000000893E
      3C00893E3C000000000000000000000000000000000000000000893E3CFF893E
      3CFF893E3CFF893E3CFF893E3CFF893E3CFF893E3CFF8A3E3B57893E3CF9893E
      3CFF893E3CFF893E3CFF00000000000000000000000000000000000000000000
      00000000000000000000893E3C00893E3C00893E3C00893E3C00000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C00893E3C0000000000893E3C000000000000000000893E3C0000000000893E
      3C00893E3C000000000000000000000000000000000000000000893E3CFF893E
      3CFF893E3CFF893E3CFF893E3CFF893E3CFF893E3CFF893E3CFF893E3CFF893E
      3CFF893E3CFF893E3CFF00000000000000000000000000000000000000000000
      00000000000000000000893E3C00893E3C00893E3C00893E3C00000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C00000000000000000000000000000000000000000000000000000000000000
      0000893E3C00000000000000000000000000000000000000000000000000893E
      3C00893E3C0000000000893E3C000000000000000000893E3C0000000000893E
      3C00893E3C000000000000000000000000000000000000000000893E3CFF893E
      3CFF893E3CFF893E3CFF893E3CFF893E3CFF893E3CFF893E3CFF893E3CFF893E
      3CFF893E3CFF893E3CFF0000000000000000000000000000000000000000C9A8
      A600893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E
      3C00C9A8A600000000000000000000000000000000000000000000000000893E
      3C000000000000000000000000000000000000000000893E3C00893E3C00893E
      3C00893E3C00000000000000000000000000000000000000000000000000893E
      3C00893E3C0000000000893E3C000000000000000000893E3C0000000000893E
      3C00893E3C000000000000000000000000000000000000000000893E3CFF893E
      3CFF893E3CFF893E3CFF893E3CFF893E3CFF893E3CFF893E3CFF893E3CFF893E
      3CFF893E3CFF893E3CFF00000000000000000000000000000000000000000000
      0000C9A8A600893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00C9A8
      A60000000000000000000000000000000000000000000000000000000000893E
      3C000000000000000000000000000000000000000000893E3C00893E3C00893E
      3C00C9A8A600000000000000000000000000000000000000000000000000893E
      3C00893E3C00000000000000000000000000000000000000000000000000893E
      3C00893E3C000000000000000000000000000000000000000000893E3CFF893E
      3CFF893E3CFF893E3CFF893E3CFF893E3CFF893E3CFF893E3CFF893E3CFF893E
      3CFF893E3CFF893E3CFF00000000000000000000000000000000000000000000
      000000000000C9A8A600893E3C00893E3C00893E3C00893E3C00C9A8A6000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C000000000000000000000000000000000000000000893E3C00893E3C00C9A8
      A60000000000000000000000000000000000000000000000000000000000893E
      3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E
      3C00893E3C000000000000000000000000000000000000000000893E3CFF893E
      3CFF893E3CFF893E3CFF893E3CFF893E3CFF893E3CFF893E3CFF893E3CFF893E
      3CFF893E3CFF893E3CFF00000000000000000000000000000000000000000000
      00000000000000000000C9A8A600893E3C00893E3C00C9A8A600000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00C9A8A6000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000893E3C00893E3C00893E3C00893E3C00000000000000
      0000000000000000000000000000000000000000000000000000883D3D4F893E
      3CFF893E3CFF893E3CFF893E3CFF893E3CFF893E3CFF893E3CFF893E3CFF893E
      3CFF893E3CFF8A3E3B4A00000000000000000000000000000000000000000000
      0000000000000000000000000000C59F9E00C59F9E0000000000000000000000
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
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFDFFFFFFFFFFFFE078FFFFFFF7FFFF
      E081E007C077FFFFEF03E7E7C041E007EF33E7E7CFF7FFFFEF33E5A7C477FC3F
      EF03E5A7C07FFC3FEF87E5A7C003FC3FEFFFE5A7C003FC3FEFF7E5A7C003E007
      EF87E5A7C003F00FEF87E7E7C003F81FEF8FE007C003FC3FE01FFC3FC003FE7F
      E03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F
      FFFFFFFFF9FFC11FFE7FFE7FF0FFDF8FFC3FFE7FE07FDF87F81FFE7FC03FD863
      F00FF66F801FDFE1E007E247E60FD811E247E007E607D81FF66FF00FFF83DFFB
      FE7FF81FFF81D81BFE7FFC3FFFE3DFFBFE7FFE7FFFE7DFFBFFFFFFFFFFFFC003
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object opdImagem: TOpenPictureDialog
    DefaultExt = 'jpg'
    Left = 240
  end
end
