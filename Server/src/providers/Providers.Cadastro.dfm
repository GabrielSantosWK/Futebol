inherited ProvidersCadastro: TProvidersCadastro
  Width = 384
  PixelsPerInch = 96
  inherited FDConnection: TFDConnection
    Left = 24
    Top = 16
  end
  inherited FDPhysPgDriverLink: TFDPhysPgDriverLink
    Left = 40
    Top = 88
  end
  object qryPesquisa: TFDQuery
    CachedUpdates = True
    Connection = FDConnection
    Left = 272
    Top = 32
  end
  object qryRecordCount: TFDQuery
    CachedUpdates = True
    Connection = FDConnection
    Left = 144
    Top = 16
    object qryRecordCountCOUNT: TLargeintField
      FieldName = 'COUNT'
    end
  end
  object qryCadastro: TFDQuery
    CachedUpdates = True
    Connection = FDConnection
    Left = 248
    Top = 112
  end
end
