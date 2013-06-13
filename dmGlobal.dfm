object DataModuleGlobal: TDataModuleGlobal
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 420
  Width = 445
  object IBDatabase: TIBDatabase
    Connected = True
    DatabaseName = '\\127.0.0.1\E:\delphi\DBoliche\database\database.fdb'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    ServerType = 'IBServer'
    AllowStreamedConnected = False
    Left = 64
    Top = 24
  end
  object IBTransaction: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase
    Left = 64
    Top = 88
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
    Left = 208
    Top = 32
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
    Left = 336
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
    Active = True
    Left = 208
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
    Left = 336
    Top = 88
  end
  object DataSourceItens: TDataSource
    DataSet = IBDataSetItens
    Left = 336
    Top = 152
  end
  object IBDataSetItens: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
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
    Active = True
    Left = 208
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
    Active = True
    Left = 208
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
    Left = 336
    Top = 208
  end
  object IBDataSetComanda: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM clientes WHERE ID = :"ID";')
    InsertSQL.Strings = (
      'INSERT INTO COMANDA'
      '('
      '  ABERTURA,'
      '  ID_FUNCIONARIO,'
      '  ID_PISTA'
      ')'
      'VALUES'
      '('
      '  :"ABERTURA",'
      '  :"ID_FUNCIONARIO",'
      '  :"ID_PISTA"'
      ');')
    SelectSQL.Strings = (
      'select '
      '  comanda.id, '
      '  abertura,'
      '  pistas.descricao as pista,'
      '  sum(valor_item) as valor,'
      '  fechamento'
      'from '
      '  comanda '
      '    join pistas'
      '      on pistas.id = id_pista'
      '    left join itens_comanda '
      '      on itens_comanda.id_comanda = comanda.id'
      'group by'
      '  1, 2, 3, 5')
    ParamCheck = True
    UniDirectional = False
    Left = 208
    Top = 264
    object IBDataSetComandaID: TIntegerField
      FieldName = 'ID'
      Origin = '"COMANDA"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetComandaABERTURA: TDateTimeField
      FieldName = 'ABERTURA'
      Origin = '"COMANDA"."ABERTURA"'
    end
    object IBDataSetComandaPISTA: TIBStringField
      FieldName = 'PISTA'
      Origin = '"PISTAS"."DESCRICAO"'
      Size = 40
    end
    object IBDataSetComandaVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"COMANDA"."VALOR"'
      Precision = 9
      Size = 2
    end
    object IBDataSetComandaFECHAMENTO: TDateTimeField
      FieldName = 'FECHAMENTO'
      Origin = '"COMANDA"."FECHAMENTO"'
    end
  end
  object DataSourceComandas: TDataSource
    DataSet = IBDataSetComanda
    Left = 336
    Top = 264
  end
  object IBStoredProcAbrirComanda: TIBStoredProc
    Database = IBDatabase
    Transaction = IBTransaction
    StoredProcName = 'ABREPISTA'
    Left = 64
    Top = 152
    ParamData = <
      item
        DataType = ftInteger
        Name = 'STATUS'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'PISTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FUNCIONARIO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CLIENTE1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CLIENTE2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CLIENTE3'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CLIENTE4'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CLIENTE5'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CLIENTE6'
        ParamType = ptInput
      end>
  end
  object IBStoredProcFecharComanda: TIBStoredProc
    Database = IBDatabase
    Transaction = IBTransaction
    StoredProcName = 'FECHAPISTA'
    Left = 64
    Top = 208
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IDCOMANDA'
        ParamType = ptInput
      end>
  end
  object IBDataSetItensComanda: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    AfterInsert = IBDataSetItensComandaAfterInsert
    OnCalcFields = IBDataSetItensComandaCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from itens_comanda where id = :"id"')
    InsertSQL.Strings = (
      'insert into itens_comanda('
      '  id_comanda,'
      '  id_item,'
      '  qtdade,'
      '  valor_item)'
      'values('
      '  :"id_comanda",'
      '  :"id_item", '
      '  :"qtdade",'
      
        '  (select valor from itens_bar where itens_bar.id = :"id_item") ' +
        '* :"qtdade")')
    SelectSQL.Strings = (
      'select'
      '  itens_comanda.id,'
      '  itens_comanda.id_comanda,'
      '  itens_comanda.id_item,'
      '  itens_comanda.qtdade'
      'from'
      '  itens_comanda'
      '    join itens_bar on itens_bar.id = itens_comanda.id_item'
      'where'
      '  itens_comanda.id_comanda = :"id_comanda"')
    ModifySQL.Strings = (
      'update '
      '  itens_comanda '
      'set '
      '  id_item = :"id_item", '
      '  qtdade = :"qtdade", '
      
        '  valor_item = (select valor from itens_bar where itens_bar.id =' +
        ' :"id_item") * :"qtdade"'
      'where '
      '  id = :"id"')
    ParamCheck = True
    UniDirectional = False
    Left = 208
    Top = 344
    object IBDataSetItensComandaID: TIntegerField
      FieldName = 'ID'
      Origin = '"ITENS_COMANDA"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object IBDataSetItensComandaID_COMANDA: TIntegerField
      FieldName = 'ID_COMANDA'
      Origin = '"ITENS_COMANDA"."ID_COMANDA"'
      Required = True
      Visible = False
    end
    object IBDataSetItensComandaID_ITEM: TIntegerField
      FieldName = 'ID_ITEM'
      Origin = '"ITENS_COMANDA"."ID_ITEM"'
      Visible = False
    end
    object IBDataSetItensComandaitemd: TStringField
      DisplayLabel = 'Item'
      FieldKind = fkLookup
      FieldName = 'ITEM'
      LookupDataSet = IBDataSetItens
      LookupKeyFields = 'ID'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_ITEM'
      Size = 50
      Lookup = True
    end
    object IBDataSetItensComandaQTDADE: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'QTDADE'
      Origin = '"ITENS_COMANDA"."QTDADE"'
    end
    object IBDataSetItensComandaVALOR_ITEM: TFloatField
      FieldKind = fkCalculated
      FieldName = 'VALOR_ITEM'
      Calculated = True
    end
  end
  object DataSourceItensComanda: TDataSource
    DataSet = IBDataSetItensComanda
    Left = 336
    Top = 344
  end
  object IBQueryValorItem: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select'
      '  valor'
      'from'
      '  itens_bar'
      'where'
      '  id = :"id"')
    Left = 64
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object IBQueryValorItemVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"ITENS_BAR"."VALOR"'
      Precision = 9
      Size = 2
    end
  end
end
