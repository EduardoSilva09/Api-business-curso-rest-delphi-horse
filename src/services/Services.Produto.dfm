inherited ServiceProduto: TServiceProduto
  Width = 463
  inherited vQryPesquisa: TFDQuery
    SQL.Strings = (
      'SELECT '
      'p.id,'
      'p.nome,'
      'p.valor,'
      'p.status,'
      'p.estoque'
      'FROM produto p'
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
    object vQryPesquisavalor: TFMTBCDField
      FieldName = 'valor'
      Origin = 'valor'
      Precision = 20
      Size = 4
    end
    object vQryPesquisastatus: TSmallintField
      FieldName = 'status'
      Origin = 'status'
    end
    object vQryPesquisaestoque: TFMTBCDField
      FieldName = 'estoque'
      Origin = 'estoque'
      Precision = 20
      Size = 4
    end
  end
  inherited vQryRecords: TFDQuery
    SQL.Strings = (
      'SELECT '
      'COUNT(*) COUNT'
      'FROM produto'
      'WHERE 1 = 1')
  end
  inherited vQryCadastro: TFDQuery
    SQL.Strings = (
      'SELECT '
      'p.id,'
      'p.nome,'
      'p.valor,'
      'p.status,'
      'p.estoque'
      'FROM produto p')
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
    object vQryCadastrovalor: TFMTBCDField
      FieldName = 'valor'
      Origin = 'valor'
      Precision = 20
      Size = 4
    end
    object vQryCadastrostatus: TSmallintField
      FieldName = 'status'
      Origin = 'status'
    end
    object vQryCadastroestoque: TFMTBCDField
      FieldName = 'estoque'
      Origin = 'estoque'
      Precision = 20
      Size = 4
    end
  end
end
