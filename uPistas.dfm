object frmPistas: TfrmPistas
  Left = 0
  Top = 0
  Caption = 'Pistas'
  ClientHeight = 209
  ClientWidth = 249
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
  object lblDisponivel: TLabel
    Left = 8
    Top = 88
    Width = 59
    Height = 13
    Caption = 'DISPONIVEL'
    FocusControl = DBEdit2
  end
  object lblManutencao: TLabel
    Left = 8
    Top = 128
    Width = 70
    Height = 13
    Caption = 'MANUTENCAO'
    FocusControl = DBEdit3
  end
  object lblPistas: TLabel
    Left = 0
    Top = 0
    Width = 249
    Height = 42
    Align = alTop
    AutoSize = False
    Caption = ' Pistas'
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
    ExplicitLeft = -3
    ExplicitWidth = 257
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 61
    Width = 150
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = DataModuleGlobal.DataSourcePistas
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 104
    Width = 17
    Height = 21
    DataField = 'DISPONIVEL'
    DataSource = DataModuleGlobal.DataSourcePistas
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 144
    Width = 17
    Height = 21
    DataField = 'MANUTENCAO'
    DataSource = DataModuleGlobal.DataSourcePistas
    TabOrder = 2
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 171
    Width = 234
    Height = 25
    DataSource = DataModuleGlobal.DataSourcePistas
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    TabOrder = 3
  end
end
