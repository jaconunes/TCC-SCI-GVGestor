object frPapelParede: TfrPapelParede
  Left = 0
  Top = 0
  Caption = 'Papel de parede'
  ClientHeight = 164
  ClientWidth = 417
  Color = clBtnFace
  Constraints.MaxHeight = 203
  Constraints.MaxWidth = 433
  Constraints.MinHeight = 203
  Constraints.MinWidth = 433
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 401
    Height = 148
    TabOrder = 0
    object btBuscar: TButton
      Left = 268
      Top = 12
      Width = 105
      Height = 33
      Caption = 'Buscar'
      TabOrder = 0
      OnClick = btBuscarClick
    end
    object btAplicar: TButton
      Left = 268
      Top = 51
      Width = 105
      Height = 33
      Caption = 'Aplicar'
      TabOrder = 1
      OnClick = btAplicarClick
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 7
      Width = 225
      Height = 132
      Color = clGradientInactiveCaption
      ParentBackground = False
      ParentColor = False
      TabOrder = 2
      object imgExibir: TImage
        Left = 0
        Top = 0
        Width = 225
        Height = 132
        Stretch = True
      end
    end
  end
  object opdImagemPrincipal: TOpenPictureDialog
    Left = 328
    Top = 96
  end
end
