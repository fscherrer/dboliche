object DataModuleGlobal: TDataModuleGlobal
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 364
  Width = 445
  object IBDatabase: TIBDatabase
    DatabaseName = '\\127.0.0.1\E:\delphi\DBoliche\database\database.fdb'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    ServerType = 'IBServer'
    Left = 24
    Top = 24
  end
  object IBTransaction: TIBTransaction
    DefaultDatabase = IBDatabase
    Left = 112
    Top = 24
  end
  object IBDataSet: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM clientes WHERE ID = :"ID";')
    InsertSQL.Strings = (
      'INSERT INTO CLIENTES'
      '('
      '  NOME,'
      '  ENDERECO,'
      '  CIDADE,'
      '  TELEFONE,'
      '  SEXO,'
      '  EMAIL,'
      '  DNASC'
      ')'
      'VALUES'
      '('
      '  :"nome",'
      '  :"endereco",'
      '  :"cidade",'
      '  :"telefone",'
      '  :"sexo",'
      '  :"email",'
      '  :"dnasc"'
      ');')
    SelectSQL.Strings = (
      'select * from CLIENTES')
    ModifySQL.Strings = (
      'UPDATE CLIENTES'
      '   SET NOME = :"NOME",'
      '       ENDERECO = :"ENDERECO",'
      '       CIDADE = :"CIDADE",'
      '       TELEFONE = :"TELEFONE",'
      '       SEXO = :"SEXO",'
      '       EMAIL = :"EMAIL",'
      '       DNASC = :"DNASC"'
      'WHERE ID = :"ID";')
    ParamCheck = True
    UniDirectional = False
    Left = 192
    Top = 24
    object IBDataSetID: TIntegerField
      FieldName = 'ID'
      Origin = '"CLIENTES"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IBDataSetNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CLIENTES"."NOME"'
      Size = 50
    end
    object IBDataSetENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"CLIENTES"."ENDERECO"'
      Size = 50
    end
    object IBDataSetCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"CLIENTES"."CIDADE"'
      Size = 30
    end
    object IBDataSetTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = '"CLIENTES"."TELEFONE"'
      Size = 15
    end
    object IBDataSetSEXO: TIBStringField
      FieldName = 'SEXO'
      Origin = '"CLIENTES"."SEXO"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"CLIENTES"."EMAIL"'
      Size = 50
    end
    object IBDataSetDNASC: TDateField
      FieldName = 'DNASC'
      Origin = '"CLIENTES"."DNASC"'
    end
    object IBDataSetID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
      Origin = '"CLIENTES"."ID_FUNCIONARIO"'
    end
  end
  object DataSource: TDataSource
    DataSet = IBDataSet
    Left = 320
    Top = 32
  end
  object IBDataSetFuncionario: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from funcionarios WHERE ID = :"ID";')
    InsertSQL.Strings = (
      'INSERT INTO FUNCIONARIOS'
      '('
      '  NOME,'
      '  ENDERECO,'
      '  CIDADE,'
      '  TELEFONE,'
      '  SEXO,'
      '  ATIVO'
      ')'
      'VALUES'
      '('
      '  :"NOME",'
      '  :"ENDERECO",'
      '  :"CIDADE",'
      '  :"TELEFONE",'
      '  :"SEXO",'
      '  :"ATIVO"'
      ');')
    SelectSQL.Strings = (
      'select * from FUNCIONARIOS')
    ModifySQL.Strings = (
      'UPDATE FUNCIONARIOS'
      '   SET NOME = :"NOME",'
      '       ENDERECO = :"ENDERECO",'
      '       CIDADE = :"CIDADE",'
      '       TELEFONE = :"TELEFONE",'
      '       SEXO = :"SEXO",'
      '       ATIVO = :"ATIVO"'
      'WHERE ID = :"ID";')
    ParamCheck = True
    UniDirectional = False
    Left = 192
    Top = 88
    object IBDataSetFuncionarioID: TIntegerField
      FieldName = 'ID'
      Origin = '"FUNCIONARIOS"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IBDataSetFuncionarioNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FUNCIONARIOS"."NOME"'
      Size = 50
    end
    object IBDataSetFuncionarioENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"FUNCIONARIOS"."ENDERECO"'
      Size = 50
    end
    object IBDataSetFuncionarioCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"FUNCIONARIOS"."CIDADE"'
      Size = 30
    end
    object IBDataSetFuncionarioTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = '"FUNCIONARIOS"."TELEFONE"'
      Size = 15
    end
    object IBDataSetFuncionarioSEXO: TIBStringField
      FieldName = 'SEXO'
      Origin = '"FUNCIONARIOS"."SEXO"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetFuncionarioATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"FUNCIONARIOS"."ATIVO"'
      FixedChar = True
      Size = 1
    end
  end
  object DataSourceFuncionarios: TDataSource
    DataSet = IBDataSetFuncionario
    Left = 320
    Top = 88
  end
  object DataSourceItens: TDataSource
    DataSet = IBDataSetItens
    Left = 320
    Top = 152
  end
  object IBDataSetItens: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from itens_bar WHERE ID = :"ID";')
    InsertSQL.Strings = (
      'INSERT INTO ITENS_BAR'
      '('
      '  DESCRICAO,'
      '  VALOR'
      ')'
      'VALUES'
      '('
      '  :"DESCRICAO",'
      '  :"VALOR"'
      ');')
    SelectSQL.Strings = (
      'select * from ITENS_BAR')
    ModifySQL.Strings = (
      'UPDATE ITENS_BAR'
      '   SET DESCRICAO = :"DESCRICAO",'
      '            VALOR = :"VALOR"'
      'WHERE ID = :"ID";')
    ParamCheck = True
    UniDirectional = False
    Left = 192
    Top = 152
    object IBDataSetItensID: TIntegerField
      FieldName = 'ID'
      Origin = '"ITENS_BAR"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IBDataSetItensDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"ITENS_BAR"."DESCRICAO"'
      Size = 50
    end
    object IBDataSetItensVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"ITENS_BAR"."VALOR"'
      Precision = 9
      Size = 2
    end
  end
  object IBDataSetPistas: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PISTAS WHERE ID = :"ID";')
    InsertSQL.Strings = (
      'INSERT INTO PISTAS'
      '('
      '  DESCRICAO,'
      '  DISPONIVEL,'
      '  MANUTENCAO'
      ')'
      'VALUES'
      '('
      '  :"DESCRICAO",'
      '  :"DISPONIVEL",'
      '  :"MANUTENCAO"'
      ');')
    SelectSQL.Strings = (
      'select * from PISTAS')
    ModifySQL.Strings = (
      'UPDATE PISTAS'
      '   SET DESCRICAO = :"DESCRICAO",'
      '       DISPONIVEL = :"DISPONIVEL",'
      '       MANUTENCAO = :"MANUTENCAO"'
      'WHERE ID = :"ID";')
    ParamCheck = True
    UniDirectional = False
    Left = 192
    Top = 208
    object IBDataSetPistasID: TIntegerField
      FieldName = 'ID'
      Origin = '"PISTAS"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IBDataSetPistasDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PISTAS"."DESCRICAO"'
      Size = 40
    end
    object IBDataSetPistasDISPONIVEL: TIBStringField
      FieldName = 'DISPONIVEL'
      Origin = '"PISTAS"."DISPONIVEL"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetPistasMANUTENCAO: TIBStringField
      FieldName = 'MANUTENCAO'
      Origin = '"PISTAS"."MANUTENCAO"'
      FixedChar = True
      Size = 1
    end
  end
  object DataSourcePistas: TDataSource
    DataSet = IBDataSetPistas
    Left = 320
    Top = 208
  end
end
