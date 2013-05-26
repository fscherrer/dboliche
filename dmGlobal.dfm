object DataModuleGlobal: TDataModuleGlobal
  OldCreateOrder = False
  Height = 294
  Width = 449
  object IBDatabase: TIBDatabase
    Connected = True
    DatabaseName = 'D:\delphi\DBoliche\database\database.fdb'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    ServerType = 'IBServer'
    Left = 24
    Top = 24
  end
  object IBTransaction: TIBTransaction
    Active = True
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
    Active = True
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
    Left = 272
    Top = 24
  end
end
