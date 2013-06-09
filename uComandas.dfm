object frmComandas: TfrmComandas
  Left = 0
  Top = 0
  Caption = 'Comandas'
  ClientHeight = 253
  ClientWidth = 438
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblListaComanda: TLabel
    Left = 0
    Top = 0
    Width = 438
    Height = 42
    Align = alTop
    AutoSize = False
    Caption = ' Listagem de Comandas'
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
    ExplicitTop = -6
    ExplicitWidth = 375
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 42
    Width = 438
    Height = 145
    Align = alClient
    DataSource = DataModuleGlobal.DataSourceComandas
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ABERTURA'
        Title.Caption = 'Abertura'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PISTA'
        Title.Caption = 'Pista'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Caption = 'Valor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FECHAMENTO'
        Title.Caption = 'Fechamento'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 187
    Width = 438
    Height = 66
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 232
    ExplicitWidth = 374
    DesignSize = (
      438
      66)
    object btnItens: TButton
      Left = 8
      Top = 6
      Width = 57
      Height = 25
      Caption = 'Itens'
      TabOrder = 0
    end
    object btnFechar: TButton
      Left = 71
      Top = 6
      Width = 103
      Height = 25
      Caption = 'Fechar Comanda'
      TabOrder = 1
      OnClick = btnFecharClick
    end
    object btnOk: TButton
      Left = 386
      Top = 37
      Width = 43
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'OK'
      TabOrder = 2
      OnClick = btnOkClick
      ExplicitLeft = 345
    end
  end
end
