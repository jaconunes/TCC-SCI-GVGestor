inherited frRelImovel: TfrRelImovel
  Caption = 'Relat'#243'rio de im'#243'veis'
  ClientHeight = 198
  ClientWidth = 450
  Constraints.MaxHeight = 237
  Constraints.MaxWidth = 466
  Constraints.MinHeight = 237
  Constraints.MinWidth = 466
  ExplicitWidth = 466
  ExplicitHeight = 237
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar1: TToolBar
    Width = 450
    ExplicitWidth = 450
  end
  inherited Panel1: TPanel
    Width = 450
    Height = 165
    ExplicitWidth = 450
    ExplicitHeight = 165
    inherited GroupBox1: TGroupBox
      Left = 10
      Top = 13
      Width = 431
      Height = 144
      ExplicitLeft = 10
      ExplicitTop = 13
      ExplicitWidth = 431
      ExplicitHeight = 144
      object Label1: TLabel
        Left = 26
        Top = 33
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
        Left = 42
        Top = 68
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
      object Label3: TLabel
        Left = 108
        Top = 68
        Width = 30
        Height = 17
        Caption = 'In'#237'cio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 277
        Top = 68
        Width = 20
        Height = 17
        Caption = 'Fim'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 17
        Top = 101
        Width = 55
        Height = 17
        Caption = 'Endere'#231'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object edCodigo: TEdit_Numero_PEDSCI
        Left = 75
        Top = 28
        Width = 73
        Height = 28
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
      object ckData: TCheckBox
        Left = 75
        Top = 68
        Width = 16
        Height = 17
        TabOrder = 1
      end
      object dtpDataInicio: TDateTimePicker
        Left = 144
        Top = 62
        Width = 113
        Height = 28
        Date = 45117.573683668980000000
        Time = 45117.573683668980000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object dtpDataFim: TDateTimePicker
        Left = 304
        Top = 62
        Width = 113
        Height = 28
        Date = 45117.573683668980000000
        Time = 45117.573683668980000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object edEndereco: TEdit
        Left = 75
        Top = 96
        Width = 342
        Height = 28
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 400
    Top = 8
  end
  inherited frxReportPadrao: TfrxReport
    ReportOptions.LastChange = 45117.656534282410000000
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
    end
  end
  inherited frxDBDataset1: TfrxDBDataset
    DataSet = SQLQueryPadrao
  end
end
