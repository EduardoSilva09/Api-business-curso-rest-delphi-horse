inherited ProvidersCadastro: TProvidersCadastro
  OldCreateOrder = True
  Width = 492
  inherited FDConnection: TFDConnection
    Connected = True
  end
  object vQryPesquisa: TFDQuery
    CachedUpdates = True
    Connection = FDConnection
    Left = 232
    Top = 40
  end
  object vQryRecords: TFDQuery
    CachedUpdates = True
    Connection = FDConnection
    Left = 305
    Top = 40
    object vQryRecordsCOUNT: TLargeintField
      FieldName = 'COUNT'
    end
  end
  object vQryCadastro: TFDQuery
    CachedUpdates = True
    Connection = FDConnection
    Left = 380
    Top = 40
  end
end
