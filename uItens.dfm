object frmItens: TfrmItens
  Left = 0
  Top = 0
  Caption = 'Itens Bar'
  ClientHeight = 183
  ClientWidth = 257
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblDescricao: TLabel
    Left = 8
    Top = 48
    Width = 59
    Height = 13
    Caption = 'DESCRICAO'
    FocusControl = DBEdit1
  end
  object lblValor: TLabel
    Left = 8
    Top = 88
    Width = 33
    Height = 13
    Caption = 'VALOR'
    FocusControl = DBEdit2
  end
  object lblItensBar: TLabel
    Left = 0
    Top = 0
    Width = 257
    Height = 42
    Align = alTop
    AutoSize = False
    Caption = ' Itens do Bar'
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
    ExplicitLeft = -2
    ExplicitWidth = 259
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 64
    Width = 200
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = DataModuleGlobal.DataSourceItens
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 107
    Width = 57
    Height = 21
    DataField = 'VALOR'
    DataSource = DataModuleGlobal.DataSourceItens
    TabOrder = 1
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 147
    Width = 234
    Height = 25
    DataSource = DataModuleGlobal.DataSourceItens
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    TabOrder = 2
  end
end
