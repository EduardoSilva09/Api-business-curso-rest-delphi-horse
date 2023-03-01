inherited ServiceCliente: TServiceCliente
  inherited vQryPesquisa: TFDQuery
    SQL.Strings = (
      'SELECT '
      'c.id,'
      'c.nome,'
      'c.status'
      'FROM cliente c'
      'WHERE 1 = 1')
    object vQryPesquisaid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object vQryPesquisanome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 60
    end
    object vQryPesquisastatus: TSmallintField
      FieldName = 'status'
      Origin = 'status'
    end
  end
  inherited vQryRecords: TFDQuery
    SQL.Strings = (
      'SELECT '
      'COUNT(*) COUNT'
      'FROM cliente c'
      'WHERE 1 = 1')
  end
  inherited vQryCadastro: TFDQuery
    SQL.Strings = (
      'SELECT '
      'c.id,'
      'c.nome,'
      'c.status'
      'FROM cliente c')
    object vQryCadastroid: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object vQryCadastronome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 60
    end
    object vQryCadastrostatus: TSmallintField
      FieldName = 'status'
      Origin = 'status'
    end
  end
end
