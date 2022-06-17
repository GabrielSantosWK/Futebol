inherited ServiceTime: TServiceTime
  PixelsPerInch = 96
  inherited FDConnection: TFDConnection
    Connected = True
  end
  inherited qryPesquisa: TFDQuery
    SQL.Strings = (
      'select * from TIME'
      'where 1=1')
    object qryPesquisaid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
    end
    object qryPesquisanome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 8190
    end
    object qryPesquisacategoria: TWideStringField
      FieldName = 'categoria'
      Origin = 'categoria'
      FixedChar = True
      Size = 1
    end
  end
  inherited qryRecordCount: TFDQuery
    SQL.Strings = (
      'SELECT COUNT(ID) FROM TIME'
      'WHERE 1 = 1')
  end
  inherited qryCadastro: TFDQuery
    SQL.Strings = (
      'select * from TIME')
    object qryCadastroid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
    end
    object qryCadastronome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 8190
    end
    object qryCadastrocategoria: TWideStringField
      FieldName = 'categoria'
      Origin = 'categoria'
      FixedChar = True
      Size = 1
    end
  end
end
