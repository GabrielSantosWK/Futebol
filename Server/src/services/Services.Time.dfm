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
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryPesquisanome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 8190
    end
    object qryPesquisacidade: TIntegerField
      FieldName = 'cidade'
      Origin = 'cidade'
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
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCadastronome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 8190
    end
    object qryCadastrocidade: TIntegerField
      FieldName = 'cidade'
      Origin = 'cidade'
    end
  end
end
