inherited ServicePedidoItem: TServicePedidoItem
  inherited vQryPesquisa: TFDQuery
    SQL.Strings = (
      'SELECT '
      'i.id,'
      'i.id_produto,'
      'i.quantidade,'
      'i.valor,'
      'p.nome as nome_produto'
      'FROM pedido_item i'
      'INNER JOIN produto p ON p.id = i.id_produto'
      'WHERE i.id_pedido = :id_pedido')
    ParamData = <
      item
        Name = 'ID_PEDIDO'
        ParamType = ptInput
      end>
    object vQryPesquisaid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object vQryPesquisaid_produto: TLargeintField
      FieldName = 'id_produto'
      Origin = 'id_produto'
    end
    object vQryPesquisaquantidade: TFMTBCDField
      FieldName = 'quantidade'
      Origin = 'quantidade'
      Precision = 20
      Size = 4
    end
    object vQryPesquisavalor: TFMTBCDField
      FieldName = 'valor'
      Origin = 'valor'
      Precision = 20
      Size = 4
    end
    object vQryPesquisanome_produto: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_produto'
      Origin = 'nome_produto'
      Size = 60
    end
  end
  inherited vQryRecords: TFDQuery
    SQL.Strings = (
      'SELECT '
      'COUNT(I.ID) COUNT'
      'FROM pedido_item i'
      'INNER JOIN produto p ON p.id = i.id_produto'
      'WHERE i.id_pedido = :id_pedido')
    ParamData = <
      item
        Name = 'ID_PEDIDO'
        ParamType = ptInput
      end>
  end
  inherited vQryCadastro: TFDQuery
    SQL.Strings = (
      'SELECT '
      'i.id,'
      'i.id_pedido,'
      'i.id_produto,'
      'i.quantidade,'
      'i.valor,'
      'p.nome as nome_produto'
      'FROM pedido_item i'
      'INNER JOIN produto p ON p.id = i.id_produto')
    Top = 39
    object vQryCadastroid: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object vQryCadastroid_pedido: TLargeintField
      FieldName = 'id_pedido'
      Origin = 'id_pedido'
    end
    object vQryCadastroid_produto: TLargeintField
      FieldName = 'id_produto'
      Origin = 'id_produto'
    end
    object vQryCadastroquantidade: TFMTBCDField
      FieldName = 'quantidade'
      Origin = 'quantidade'
      Precision = 20
      Size = 4
    end
    object vQryCadastrovalor: TFMTBCDField
      FieldName = 'valor'
      Origin = 'valor'
      Precision = 20
      Size = 4
    end
    object vQryCadastronome_produto: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_produto'
      Origin = 'nome_produto'
      Size = 60
    end
  end
end
