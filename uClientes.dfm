object frmClientes: TfrmClientes
  Left = 0
  Top = 0
  Caption = 'Clientes'
  ClientHeight = 369
  ClientWidth = 257
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
  object lblNome: TLabel
    Left = 8
    Top = 48
    Width = 27
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit2
  end
  object lblEndereco: TLabel
    Left = 8
    Top = 88
    Width = 45
    Height = 13
    Caption = 'Endere'#231'o'
    FocusControl = DBEdit3
  end
  object lblCidade: TLabel
    Left = 8
    Top = 128
    Width = 33
    Height = 13
    Caption = 'Cidade'
    FocusControl = DBEdit4
  end
  object lblTelefone: TLabel
    Left = 8
    Top = 168
    Width = 42
    Height = 13
    Caption = 'Telefone'
    FocusControl = DBEdit5
  end
  object lblemail: TLabel
    Left = 8
    Top = 256
    Width = 28
    Height = 13
    Caption = 'E-mail'
    FocusControl = DBEdit7
  end
  object lblDataNascimento: TLabel
    Left = 8
    Top = 296
    Width = 96
    Height = 13
    Caption = 'Data de Nascimento'
    FocusControl = DBEdit8
  end
  object lblClientes: TLabel
    Left = 0
    Top = 0
    Width = 257
    Height = 42
    Align = alTop
    AutoSize = False
    Caption = ' Clientes'
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
    Layout = tlCenter
    ExplicitWidth = 453
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 64
    Width = 241
    Height = 21
    DataField = 'NOME'
    DataSource = DataModuleGlobal.DataSource
    TabOrder = 0
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 104
    Width = 241
    Height = 21
    DataField = 'ENDERECO'
    DataSource = DataModuleGlobal.DataSource
    TabOrder = 1
  end
  object DBEdit4: TDBEdit
    Left = 8
    Top = 144
    Width = 153
    Height = 21
    DataField = 'CIDADE'
    DataSource = DataModuleGlobal.DataSource
    TabOrder = 2
  end
  object DBEdit5: TDBEdit
    Left = 8
    Top = 184
    Width = 89
    Height = 21
    DataField = 'TELEFONE'
    DataSource = DataModuleGlobal.DataSource
    TabOrder = 3
  end
  object DBEdit7: TDBEdit
    Left = 8
    Top = 272
    Width = 241
    Height = 21
    DataField = 'EMAIL'
    DataSource = DataModuleGlobal.DataSource
    TabOrder = 4
  end
  object DBEdit8: TDBEdit
    Left = 8
    Top = 312
    Width = 65
    Height = 21
    DataField = 'DNASC'
    DataSource = DataModuleGlobal.DataSource
    TabOrder = 5
  end
  object DBNavigator: TDBNavigator
    Left = 8
    Top = 339
    Width = 234
    Height = 25
    DataSource = DataModuleGlobal.DataSource
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    TabOrder = 6
  end
  object DBRadioGroup1: TDBRadioGroup
    Left = 8
    Top = 203
    Width = 161
    Height = 47
    Caption = 'Sexo'
    DataField = 'SEXO'
    DataSource = DataModuleGlobal.DataSource
    Items.Strings = (
      'Masculino'
      'Feminino')
    TabOrder = 7
    Values.Strings = (
      'M'
      'F')
  end
end
