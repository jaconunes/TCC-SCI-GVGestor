inherited frConsImovel: TfrConsImovel
  Caption = 'Consulta de im'#243'veis'
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar1: TToolBar
    inherited btEditar: TToolButton
      OnClick = btEditarClick
    end
  end
  inherited grConsulta: TDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'BDCODIMOVEL'
        Title.Caption = 'C'#211'DIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BDTIPOIMOVEL'
        Title.Caption = 'TIPO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BDQUANTAMB'
        Title.Caption = 'AMBIENTES'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BDDATACAD'
        Title.Caption = 'DATA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BDENDERECO'
        Title.Caption = 'LOGRADOURO'
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BDCIDADE'
        Title.Caption = 'CIDADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BDCODPROP'
        Title.Caption = 'PROPRIETARIO'
        Visible = True
      end>
  end
end
