object frmPistas: TfrmPistas
  Left = 0
  Top = 0
  Caption = 'Pistas'
  ClientHeight = 237
  ClientWidth = 249
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblDescricao: TLabel
    Left = 8
    Top = 48
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
    FocusControl = DBEdit1
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
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 205
    Width = 234
    Height = 25
    DataSource = DataModuleGlobal.DataSourcePistas
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    TabOrder = 1
  end
  object DBRadioGroupDisponivel: TDBRadioGroup
    Left = 8
    Top = 88
    Width = 161
    Height = 47
    Caption = 'Dispon'#237'vel'
    DataField = 'DISPONIVEL'
    DataSource = DataModuleGlobal.DataSourcePistas
    Items.Strings = (
      'Sim'
      'N'#227'o')
    TabOrder = 2
    Values.Strings = (
      'S'
      'N')
  end
  object DBRadioGroupManutencao: TDBRadioGroup
    Left = 8
    Top = 141
    Width = 161
    Height = 47
    Caption = 'Manuten'#231#227'o'
    DataField = 'MANUTENCAO'
    DataSource = DataModuleGlobal.DataSourcePistas
    Items.Strings = (
      'Sim'
      'N'#227'o')
    TabOrder = 3
    Values.Strings = (
      'S'
      'N')
  end
end
