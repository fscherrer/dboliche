object frmFuncionarios: TfrmFuncionarios
  Left = 0
  Top = 0
  Caption = 'Funcion'#225'rios'
  ClientHeight = 342
  ClientWidth = 259
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblFuncionarios: TLabel
    Left = 0
    Top = 0
    Width = 259
    Height = 42
    Align = alTop
    AutoSize = False
    Caption = ' Funcion'#225'rios'
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
    Layout = tlCenter
    ExplicitWidth = 331
  end
  object lblNome: TLabel
    Left = 8
    Top = 48
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit1
  end
  object lblEndereco: TLabel
    Left = 8
    Top = 88
    Width = 54
    Height = 13
    Caption = 'ENDERECO'
    FocusControl = DBEdit2
  end
  object lblCidade: TLabel
    Left = 8
    Top = 128
    Width = 38
    Height = 13
    Caption = 'CIDADE'
    FocusControl = DBEdit3
  end
  object lblTelefone: TLabel
    Left = 8
    Top = 168
    Width = 50
    Height = 13
    Caption = 'TELEFONE'
    FocusControl = DBEdit4
  end
  object lblSexo: TLabel
    Left = 8
    Top = 208
    Width = 26
    Height = 13
    Caption = 'SEXO'
    FocusControl = DBEdit5
  end
  object lblAtivo: TLabel
    Left = 8
    Top = 248
    Width = 31
    Height = 13
    Caption = 'ATIVO'
    FocusControl = DBEdit6
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 64
    Width = 241
    Height = 21
    DataField = 'NOME'
    DataSource = DataModuleGlobal.DataSourceFuncionarios
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 104
    Width = 241
    Height = 21
    DataField = 'ENDERECO'
    DataSource = DataModuleGlobal.DataSourceFuncionarios
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 144
    Width = 180
    Height = 21
    DataField = 'CIDADE'
    DataSource = DataModuleGlobal.DataSourceFuncionarios
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 8
    Top = 181
    Width = 65
    Height = 21
    DataField = 'TELEFONE'
    DataSource = DataModuleGlobal.DataSourceFuncionarios
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 8
    Top = 224
    Width = 17
    Height = 21
    DataField = 'SEXO'
    DataSource = DataModuleGlobal.DataSourceFuncionarios
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 8
    Top = 264
    Width = 17
    Height = 21
    DataField = 'ATIVO'
    DataSource = DataModuleGlobal.DataSourceFuncionarios
    TabOrder = 5
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 304
    Width = 240
    Height = 25
    DataSource = DataModuleGlobal.DataSourceFuncionarios
    TabOrder = 6
  end
end
