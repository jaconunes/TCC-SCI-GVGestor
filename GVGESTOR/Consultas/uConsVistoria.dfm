inherited frConsVistoria: TfrConsVistoria
  Caption = 'Consulta de vistoria'
  ExplicitWidth = 883
  PixelsPerInch = 96
  TextHeight = 13
  inherited grConsulta: TDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'BDCODVIST'
        Title.Caption = 'CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BDDATAVIST'
        Title.Caption = 'DATA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BDTIPOLOC'
        Title.Caption = 'TIPO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BDSITUACAO'
        Title.Caption = 'SITUA'#199#195'O'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BDACESSO'
        Title.Caption = 'ACESSO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BDNMEDENE'
        Title.Caption = 'MEDIDOR ENERGIA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BDLEITENERG'
        Title.Caption = 'LEITURA ENERGIA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BDNMEDAGUA'
        Title.Caption = 'MEDIDOR '#193'GUA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BDLEITAGUA'
        Title.Caption = 'LEITURA '#193'GUA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BDPKCODUSU'
        Title.Caption = 'USU'#193'RIO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BDPKCODCLT'
        Title.Caption = 'CLIENTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BDPKCODIMOV'
        Title.Caption = 'IM'#211'VEL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BDPKCODLOCAT'
        Title.Caption = 'LOCAT'#193'RIO'
        Visible = True
      end>
  end
  inherited Panel1: TPanel
    inherited grDetalhe: TDBGrid
      Columns = <
        item
          Expanded = False
          FieldName = 'BDCODAMB'
          Title.Caption = 'C'#211'DIGO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BDNOME'
          Title.Caption = 'NOME'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BDOBSADC'
          Title.Caption = 'OBSERVA'#199#195'O'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BDPKCODVIST'
          Title.Caption = 'VISTORIA'
          Visible = True
        end>
    end
  end
  inherited ImageList1: TImageList
    Bitmap = {
      494C01010700E000F00010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
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
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0E7E700F3EAEA00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C00893E3C00893E3C00893E3C00CFB2B00000000000CEADAC00A2666400A369
      6700CEB0AE00893E3C00A3676600000000000000000000000000000000000000
      0000000000000000000000000000F4EEEE009D5D5B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F3EBEB00893E3C00893E3C00F3EBEB000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C0000000000000000000000000000000000CAAAA800A9717000E4D2D100E4D2
      D100A9717000C7A5A30000000000000000000000000000000000000000000000
      0000000000000000000000000000893E3C00893E3C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F3EB
      EB0098575400893E3C00893E3C0098575400F3EBEB0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C00000000000000000000000000000000009B5B5A00E8DADA00000000000000
      0000E8DADA009F61600000000000000000000000000000000000000000000000
      0000000000000000000000000000893E3C00893E3C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F4EEEE00893E
      3C00893E3C00893E3C00893E3C00893E3C00893E3C00F3EBEB00000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C00000000000000000000000000000000009C5D5A00E7D6D600000000000000
      0000E7D6D6009F61600000000000000000000000000000000000000000000000
      0000000000000000000000000000893E3C00893E3C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFAFA009B5B5900893E
      3C00893E3C00AE797700A8717000893E3C00893E3C009A585700F3EBEB000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C0000000000000000000000000000000000C6A09F009C5D5A00E1CDCB00E1CD
      CB009C5D5A00CEB0B00000000000000000000000000000000000000000000000
      0000000000000000000000000000893E3C00893E3C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008A3F
      3D00B17E7D000000000000000000A9737100893E3C00893E3C00893E3C00F4EE
      EE0000000000000000000000000000000000000000000000000000000000893E
      3C000000000000000000000000000000000000000000C49F9E00A46A6900A267
      6600CEAFAE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000893E3C00893E3C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E0CE
      CE00FFFEFE000000000000000000FDFBFB00AE7A7900893E3C00893E3C009A5A
      5900F4EEEE00000000000000000000000000000000000000000000000000893E
      3C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CDADAD00893E3C00893E3C00CFB0B000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AE7C7A00893E3C00893E
      3C00893E3C00F4EEEE000000000000000000000000000000000000000000893E
      3C00000000000000000000000000000000000000000000000000000000000000
      0000893E3C000000000000000000000000000000000000000000000000000000
      00000000000095535100893E3C00893E3C00893E3C00893E3C00985554000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFDFD00AE7C7A00893E
      3C00893E3C009A5A5900F4EEEE0000000000000000000000000000000000893E
      3C000000000000000000000000000000000000000000893E3C00893E3C00893E
      3C00893E3C000000000000000000000000000000000000000000000000000000
      0000FFFEFE00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00FFFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B282
      8000893E3C00D0B3B3000000000000000000000000000000000000000000893E
      3C000000000000000000000000000000000000000000893E3C00893E3C00893E
      3C00C9A8A600000000000000000000000000000000000000000000000000E1D0
      CF008A3F3D00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C008A40
      3E00E1D0CF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFE
      FE00B5868600000000000000000000000000000000000000000000000000893E
      3C000000000000000000000000000000000000000000893E3C00893E3C00C9A8
      A60000000000000000000000000000000000000000000000000000000000924D
      4C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E
      3C00924D4C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00C9A8A6000000
      000000000000000000000000000000000000000000000000000000000000893E
      3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E3C00893E
      3C00893E3C000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000FFFFFF00FFFFFFFDFFFF0000FFFFE078FFFF0000
      F9FFE081FE7F0000F0FFEF03FE7F0000E07FEF33FE7F0000C03FEF33FE7F0000
      801FEF03FE7F0000E60FEF87FE7F0000E607EFFFFC3F0000FF83EFF7F81F0000
      FF81EF87F00F0000FFE3EF87E0070000FFE7EF8FE0070000FFFFE01FE0070000
      FFFFE03FFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFE11FFFFF
      FFFFFFFFE11FE007FE7FFE7FE087E007FE7FFC3FEFC7E007FE7FF81FE021E247
      F66FF00FE001E247E247E007EFFFE247E007E247E007E247F00FF66FE007E247
      F81FFE7FE067E247FC3FFE7FE047E007FE7FFE7FE00FE007FFFFFFFFE01FFC3F
      FFFFFFFFE03FFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
end
