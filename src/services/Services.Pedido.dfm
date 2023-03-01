inherited ServicePedido: TServicePedido
  inherited vQryPesquisa: TFDQuery
    SQL.Strings = (
      'SELECT '
      'P.id'
      ',P.id_cliente'
      ',P.data'
      ',C.nome as nome_cliente'
      ',P.id_usuario'
      'FROM pedido P'
      'INNER JOIN cliente C ON C.id = P.id_cliente'
      'WHERE 1 = 1')
    object vQryPesquisaid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object vQryPesquisaid_cliente: TLargeintField
      FieldName = 'id_cliente'
      Origin = 'id_cliente'
    end
    object vQryPesquisadata: TSQLTimeStampField
      FieldName = 'data'
      Origin = 'data'
    end
    object vQryPesquisanome_cliente: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_cliente'
      Origin = 'nome_cliente'
      Size = 60
    end
    object vQryPesquisaid_usuario: TLargeintField
      FieldName = 'id_usuario'
      Origin = 'id_usuario'
    end
  end
  inherited vQryRecords: TFDQuery
    SQL.Strings = (
      'SELECT '
      'COUNT(P.ID) COUNT'
      'FROM pedido P'
      'INNER JOIN cliente C ON C.id = P.id_cliente'
      'WHERE 1 = 1')
  end
  inherited vQryCadastro: TFDQuery
    AfterInsert = vQryCadastroAfterInsert
    SQL.Strings = (
      'SELECT '
      'P.id'
      ',P.id_cliente'
      ',P.data'
      ',C.nome as nome_cliente'
      ',P.id_usuario'
      'FROM pedido P'
      'INNER JOIN cliente C ON C.id = P.id_cliente')
    object vQryCadastroid: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object vQryCadastroid_cliente: TLargeintField
      FieldName = 'id_cliente'
      Origin = 'id_cliente'
    end
    object vQryCadastrodata: TSQLTimeStampField
      FieldName = 'data'
      Origin = 'data'
    end
    object vQryCadastronome_cliente: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_cliente'
      Origin = 'nome_cliente'
      Size = 60
    end
    object vQryCadastroid_usuario: TLargeintField
      FieldName = 'id_usuario'
      Origin = 'id_usuario'
    end
  end
end
