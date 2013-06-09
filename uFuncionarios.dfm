object frmFuncionarios: TfrmFuncionarios
  Left = 0
  Top = 0
  Caption = 'Funcion'#225'rios'
  ClientHeight = 357
  ClientWidth = 259
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
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
    Width = 27
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit1
  end
  object lblEndereco: TLabel
    Left = 8
    Top = 88
    Width = 45
    Height = 13
    Caption = 'Endere'#231'o'
    FocusControl = DBEdit2
  end
  object lblCidade: TLabel
    Left = 8
    Top = 128
    Width = 33
    Height = 13
    Caption = 'Cidade'
    FocusControl = DBEdit3
  end
  object lblTelefone: TLabel
    Left = 8
    Top = 168
    Width = 42
    Height = 13
    Caption = 'Telefone'
    FocusControl = DBEdit4
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 61
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
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 321
    Width = 234
    Height = 25
    DataSource = DataModuleGlobal.DataSourceFuncionarios
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    TabOrder = 4
  end
  object DBRadioGroupSexo: TDBRadioGroup
    Left = 8
    Top = 208
    Width = 161
    Height = 47
    Caption = 'Sexo'
    DataField = 'SEXO'
    DataSource = DataModuleGlobal.DataSourceFuncionarios
    Items.Strings = (
      'Masculino'
      'Feminino')
    TabOrder = 5
    Values.Strings = (
      'M'
      'F')
  end
  object DBRadioGroupAtivo: TDBRadioGroup
    Left = 8
    Top = 261
    Width = 161
    Height = 47
    Caption = 'Ativo'
    DataField = 'ATIVO'
    DataSource = DataModuleGlobal.DataSourceFuncionarios
    Items.Strings = (
      'Sim'
      'N'#227'o')
    TabOrder = 6
    Values.Strings = (
      'S'
      'N')
  end
end
