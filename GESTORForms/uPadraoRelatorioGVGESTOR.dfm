object frPadraoRelatorioGVGESTOR: TfrPadraoRelatorioGVGESTOR
  Left = 0
  Top = 0
  Caption = 'frPadraoRelatorioGVGESTOR'
  ClientHeight = 332
  ClientWidth = 644
  Color = clGradientInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 644
    Height = 33
    ButtonHeight = 33
    ButtonWidth = 33
    Caption = 'ToolBar1'
    Images = ImageList1
    TabOrder = 0
    object btVisualizar: TToolButton
      Left = 0
      Top = 0
      Caption = 'btVisualizar'
      ImageIndex = 0
    end
    object btSalvarComo: TToolButton
      Left = 33
      Top = 0
      Caption = 'btSalvarComo'
      ImageIndex = 1
    end
    object btEditarReport: TToolButton
      Left = 66
      Top = 0
      Caption = 'btEditarReport'
      ImageIndex = 2
      OnClick = btEditarReportClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 56
    Width = 329
    Height = 137
    Caption = 'Filtros'
    TabOrder = 1
  end
  object ImageList1: TImageList
    Left = 376
    Top = 56
    Bitmap = {
      494C0101030008001C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C29C9B00893E
      3C00893E3C00C29C9B00000000000000000000000000893E3C00893E3C00893E
      3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C000000
      0000000000000000000000000000000000000000000000000000000000009C5D
      5A00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E
      3C009F6160000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6BDBD00893E3C00F3EB
      EB00F3EBEB00893E3C00D1B3B1000000000000000000893E3C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E
      3C00893E3C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFE5E4008C424000893E3C00893E3C000000000090484600C09696000000
      0000D3B6B600C49F9E00C49F9E000000000000000000893E3C0000000000D9C0
      C0009B5B5A00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E
      3C00893E3C00893E3C009E615F0000000000000000000000000000000000893E
      3C0000000000893E3C0000000000893E3C00893E3C0000000000893E3C000000
      0000893E3C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B588
      85008A403E00893E3C0095515000C49F9E00FDFAFA00A2666300A76E6D000000
      0000F4EBEB00893E3C00893E3C000000000000000000893E3C00000000009553
      5100893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E
      3C00893E3C00893E3C00893E3C0000000000000000000000000000000000893E
      3C0000000000893E3C0000000000893E3C00893E3C0000000000893E3C000000
      0000893E3C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBF7F700A36967009B5B
      5900E9DCDA000000000000000000000000000000000000000000C39E9D00893E
      3C00893E3C00C29C9B00995756000000000000000000893E3C0000000000893E
      3C00893E3C00893E3C00893E3C00D8BFBE00000000000000000000000000893E
      3C00893E3C00893E3C00893E3C0000000000000000000000000000000000893E
      3C0000000000893E3C0000000000893E3C00893E3C0000000000893E3C000000
      0000893E3C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B98C8A00893E3C00F5EF
      EF000000000000000000F8F4F400934E4D0094504E00FAF5F50000000000CEAD
      AC00CEADAC0000000000F1E8E8000000000000000000893E3C0000000000893E
      3C00893E3C00893E3C00893E3C00F6F1F100000000000000000000000000893E
      3C00893E3C00893E3C00893E3C0000000000000000000000000000000000893E
      3C0000000000893E3C0000000000893E3C00893E3C0000000000000000000000
      0000893E3C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000893E3C00C8A7A6000000
      0000000000000000000094504E00893E3C00893E3C0095515000000000000000
      000000000000EBDEDE00A26664000000000000000000893E3C0000000000893E
      3C00893E3C00893E3C00893E3C00D7BEBD00000000000000000000000000893E
      3C00893E3C00893E3C00893E3C0000000000000000000000000000000000893E
      3C00000000000000000000000000893E3C00893E3C0000000000000000000000
      0000893E3C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000893E3C00CCAAAA000000
      00000000000000000000944F4D00893E3C00893E3C0095535100000000000000
      000000000000C6A1A000893E3C000000000000000000893E3C0000000000893E
      3C00893E3C00893E3C00893E3C0095514F00D4B8B800F4EEEE00D4B8B800893E
      3C00893E3C00893E3C00893E3C0000000000000000000000000000000000893E
      3C00000000000000000000000000893E3C00893E3C0000000000000000000000
      0000893E3C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5858200893E3C00F6F0
      F0000000000000000000F8F4F40094504E0094504E00FAF7F700000000000000
      0000F3EBEB00893E3C00C09895000000000000000000893E3C0000000000893E
      3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E
      3C00893E3C00893E3C00893E3C0000000000000000000000000000000000893E
      3C00000000000000000000000000000000000000000000000000000000000000
      0000893E3C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAF7F700A26663009B5B
      5900EADCDC00000000000000000000000000000000000000000000000000E6D5
      D50097555300AA747300FEFDFD000000000000000000893E3C0000000000893E
      3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E
      3C00893E3C00893E3C00893E3C0000000000000000000000000000000000893E
      3C000000000000000000000000000000000000000000893E3C00893E3C00893E
      3C00893E3C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B789
      88008A3F3D00893E3C0094504E00C49F9E00C49F9E00934E4D00893E3C008B42
      4000BB8F8E00000000000000000000000000000000000000000000000000893E
      3C00893E3C00000000000000000000000000000000000000000000000000893E
      3C00893E3C00893E3C00893E3C0000000000000000000000000000000000893E
      3C000000000000000000000000000000000000000000893E3C00893E3C00893E
      3C00C9A8A6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFE6E4008C434100893E3C00893E3C00893E3C00893E3C008D454300F3EA
      EA0000000000000000000000000000000000000000000000000000000000893E
      3C00893E3C00000000000000000000000000000000000000000000000000893E
      3C00893E3C00893E3C00893E3C0000000000000000000000000000000000893E
      3C000000000000000000000000000000000000000000893E3C00893E3C00C9A8
      A600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C00893E3C00000000000000000000000000000000000000000000000000893E
      3C00893E3C00893E3C00C49F9E0000000000000000000000000000000000893E
      3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00C7A2A1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C5E
      5D00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E
      3C00893E3C00C49F9E0000000000000000000000000000000000000000009D5D
      5B00893E3C00893E3C00893E3C00893E3C00893E3C00C6A09F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000FFC3801FE0070000
      FF81BFFFE0070000F091A001EA570000E011A001EA57000087C1A0E1EA570000
      8C25A0E1EA7700009C39A0E1EE7700009C39A001EE7700008C31A001EFF70000
      87E1A001EF870000E007E7E1EF870000F00FE7E1EF8F0000FFFFE7E1E01F0000
      FFFFE003E03F0000FFFFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object frxReportPadrao: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45111.688986759260000000
    ReportOptions.LastChange = 45111.688986759260000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 464
    Top = 56
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 464
    Top = 112
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 464
    Top = 176
  end
  object SQLQueryPadrao: TSQLQuery
    Params = <>
    Left = 464
    Top = 240
  end
  object PrintDialog1: TPrintDialog
    Left = 536
    Top = 56
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 536
    Top = 112
  end
  object frxDOCXExport1: TfrxDOCXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PictureType = gpPNG
    Left = 536
    Top = 176
  end
  object SaveDialog1: TSaveDialog
    Left = 536
    Top = 240
  end
end
