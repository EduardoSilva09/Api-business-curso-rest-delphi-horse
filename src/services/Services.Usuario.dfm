inherited ServiceUsuario: TServiceUsuario
  inherited vQryPesquisa: TFDQuery
    SQL.Strings = (
      'SELECT '
      'u.id,'
      'u.nome, '
      'u.login, '
      'u.status, '
      'u.telefone, '
      'u.sexo'
      'FROM usuario u'
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
    object vQryPesquisalogin: TWideStringField
      FieldName = 'login'
      Origin = '"login"'
      Size = 30
    end
    object vQryPesquisastatus: TSmallintField
      FieldName = 'status'
      Origin = 'status'
    end
    object vQryPesquisatelefone: TWideStringField
      FieldName = 'telefone'
      Origin = 'telefone'
    end
    object vQryPesquisasexo: TSmallintField
      FieldName = 'sexo'
      Origin = 'sexo'
    end
  end
  inherited vQryRecords: TFDQuery
    SQL.Strings = (
      'SELECT '
      'count(u.id) count'
      'FROM usuario u'
      'WHERE 1 = 1')
  end
  inherited vQryCadastro: TFDQuery
    BeforePost = vQryCadastroBeforePost
    SQL.Strings = (
      'SELECT '
      'u.id,'
      'u.nome, '
      'u.login, '
      'u.senha, '
      'u.status, '
      'u.telefone, '
      'u.sexo, '
      'u.foto'
      'FROM usuario u')
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
    object vQryCadastrologin: TWideStringField
      FieldName = 'login'
      Origin = '"login"'
      Size = 30
    end
    object vQryCadastrosenha: TWideStringField
      FieldName = 'senha'
      Origin = 'senha'
      Size = 256
    end
    object vQryCadastrostatus: TSmallintField
      FieldName = 'status'
      Origin = 'status'
    end
    object vQryCadastrotelefone: TWideStringField
      FieldName = 'telefone'
      Origin = 'telefone'
    end
    object vQryCadastrosexo: TSmallintField
      FieldName = 'sexo'
      Origin = 'sexo'
    end
    object vQryCadastrofoto: TBlobField
      FieldName = 'foto'
      Origin = 'foto'
      Visible = False
    end
  end
end
