inherited frPadraoConsultaDetalheGVGSTOR: TfrPadraoConsultaDetalheGVGSTOR
  Caption = 'frPadraoConsultaDetalheGVGSTOR'
  ClientHeight = 508
  ExplicitHeight = 547
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter [0]
    Left = 0
    Top = 267
    Width = 867
    Height = 7
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 609
  end
  inherited grConsulta: TDBGrid
    Height = 234
  end
  object Panel1: TPanel [3]
    Left = 0
    Top = 274
    Width = 867
    Height = 234
    Align = alBottom
    Caption = 'Panel1'
    TabOrder = 2
    object ToolBar2: TToolBar
      Left = 1
      Top = 1
      Width = 865
      Height = 33
      ButtonHeight = 33
      ButtonWidth = 33
      Caption = 'ToolBar1'
      Images = ImageList1
      TabOrder = 0
      object ToolButton5: TToolButton
        Left = 0
        Top = 0
        Caption = 'btAnterior'
        ImageIndex = 0
        OnClick = btAnteriorClick
      end
      object ToolButton6: TToolButton
        Left = 33
        Top = 0
        Width = 8
        Caption = 'ToolButton1'
        ImageIndex = 4
        Style = tbsSeparator
      end
      object ToolButton7: TToolButton
        Left = 41
        Top = 0
        Caption = 'btProximo'
        ImageIndex = 1
        OnClick = btProximoClick
      end
      object ToolButton8: TToolButton
        Left = 74
        Top = 0
        Width = 8
        Caption = 'ToolButton2'
        ImageIndex = 4
        Style = tbsSeparator
      end
      object ToolButton10: TToolButton
        Left = 82
        Top = 0
        Width = 8
        Caption = 'ToolButton3'
        ImageIndex = 4
        Style = tbsSeparator
      end
      object ToolButton11: TToolButton
        Left = 90
        Top = 0
        Caption = 'btExcluir'
        ImageIndex = 3
        OnClick = btExcluirClick
      end
      object ToolButton12: TToolButton
        Left = 123
        Top = 0
        Width = 8
        Caption = 'ToolButton4'
        ImageIndex = 4
        Style = tbsSeparator
      end
    end
    object grDetalhe: TDBGrid
      Left = 1
      Top = 34
      Width = 865
      Height = 199
      Align = alClient
      DataSource = dsDetalhe
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  inherited ImageList1: TImageList
    Left = 792
    Top = 9
    Bitmap = {
      494C01010700E000E80010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000FFFFFF18FFFFFFD700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF1CFFFFFFFFFFFFFFFFFFFFFF1C0000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE90000
      0000FFFFFF220000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFFFFFFFFFFFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF1CFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFF1C00000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFD6FFFFFF20FFFFFF17FFFFFFA0FFFFFF23FFFF
      FF26FFFFFFE60000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFFFFFFFFFFFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF18FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1C000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFF00000000FFFFFF18FFFFFFEAFFFFFFE8FFFFFF1700000000FFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFFFFFFFFFFFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF08FFFFFFDAFFFF
      FFFFFFFFFFFFFFFFFFB2FFFFFFBBFFFFFFFFFFFFFFFFFFFFFFDCFFFFFF1C0000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFF00000000FFFFFFA8FFFFFFFFFFFFFFFFFFFFFFA700000000FFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFFFFFFFFFFFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFEFFFFFFAA0000000000000000FFFFFFBAFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF1800000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFF00000000FFFFFFF3FFFFFFFFFFFFFFFFFFFFFFEC00000000FFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFFFFFFFFFFFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF42FFFFFF010000000000000000FFFFFF05FFFFFFB1FFFFFFFFFFFFFFFFFFFF
      FFDBFFFFFF18000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFF00000000FFFFFFA8FFFFFFFFFFFFFFFFFFFFFFA800000000FFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF6DFFFFFFFFFFFFFFFFFFFFFF68000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFFAEFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF180000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFF8800000000000000000000000000000000FFFFFF8CFFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
      000000000000FFFFFFE4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF03FFFFFFAEFFFF
      FFFFFFFFFFFFFFFFFFDBFFFFFF1800000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFB2FFFFFF10FFFFFF10FFFFFFB4FFFFFFFFFFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
      0000FFFFFF01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF01000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFA7FFFFFFFFFFFFFF650000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF74000000000000000000000000000000000000000000000000FFFF
      FF40FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFDFFFFFF400000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF01FFFFFFA0000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF7400000000000000000000000000000000000000000000000000000000FFFF
      FFECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFEC0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF740000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
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
      FFDBFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFF8E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF87FFFFFFFFFFFFFFFF0000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF54FFFFFFDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFD8FFFFFF540000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFFFFFFFFFFFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFFFAFFFFFFFA00000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9600000000FFFFFF8FFFFFFFFFFFFF
      FFFFFFFFFF80000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFFFFFFFFFFFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF4BFFFFFFFFFFFFFFFFFFFFFF4B000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFF000000000000000000000000000000000000000000000000FFFFFF96FFFF
      FFFFFFFFFFFF000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFFFFFFFFFFFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9500000000FFFF
      FF9AFFFFFFD3FFFFFFDBFFFFFF9000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFF00000000FFFFFFFFFFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
      0000FFFFFF420000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFF
      FF41000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF5EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF5800000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF94FFFF
      FF01FFFFFF22FFFFFFFFFFFFFFBD00000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFF00000000FFFFFFFFFFFF
      FFFFFFFFFFFF000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFF8B00000000FFFFFFFFFFFFFFFF00000000FFFFFF8BFFFF
      FFFFFFFFFFFF000000000000000000000000000000000000000000000000FFFF
      FFFEFFFFFFFFFFFFFFFFFFFFFF74FFFFFFFFFFFFFFFFFFFFFF74FFFFFFFFFFFF
      FFFFFFFFFFFE000000000000000000000000000000000000000000000000FFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFF00000000FFFFFFFFFFFF
      FFFFFFFFFFFF000000000000000000000000000000000000000000000000FFFF
      FFFEFFFFFFFFFFFFFFFFFFFFFF7FFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFF
      FFFFFFFFFFFE000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFF7400000000FFFFFFFFFFFFFFFF00000000FFFFFF74FFFF
      FFFFFFFFFFFF000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF93000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFF00000000FFFFFFFFFFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
      0000FFFFFF5EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF58000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF3E0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFF
      FF3E00000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFF00000000FFFFFFFFFFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
      000000000000FFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFFFFFFFFFFFF00000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000FFFF
      FF1FFFFFFFE4000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFF00000000FFFFFFFFFFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF4BFFFFFFFFFFFFFFFFFFFFFF4B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFFFFFFFFFFFF00000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF1FFFFF
      FFFFFFFFFF74000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFFFAFFFFFFFA00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFFFFFFFFFFFF00000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFFFFFE4FFFF
      FF7400000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000FFFFE007FFFF0000
      F9FFE007FE7F0000F0FFE017FE7F0000E07FE007FE7F0000C03FE427FE7F0000
      801FE427FE7F0000E60FE427FE7F0000E607E427FC3F0000FF83E3C7F81F0000
      FF81E007F00F0000FFE3E007E0070000FFE7E00FE0070000FFFFE01FE0070000
      FFFFE03FFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFE11FFFFF
      FFFFFFFFE11FE007FE7FFE7FE087E007FE7FFC3FEFC7E007FE7FF81FE021E247
      F66FF00FE001E247E247E007EFFFE247E007E247E007E247F00FF66FE007E247
      F81FFE7FE067E247FC3FFE7FE047E007FE7FFE7FE00FE007FFFFFFFFE01FFC3F
      FFFFFFFFE03FFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  inherited dsConsulta: TDataSource
    Left = 792
    Top = 72
  end
  object dsDetalhe: TDataSource
    Left = 792
    Top = 128
  end
end
