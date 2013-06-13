object frmItensComanda: TfrmItensComanda
  Left = 0
  Top = 0
  Caption = 'Itens'
  ClientHeight = 287
  ClientWidth = 595
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
  object lblListaItens: TLabel
    Left = 0
    Top = 0
    Width = 595
    Height = 42
    Align = alTop
    AutoSize = False
    Caption = ' Itens'
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
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 331
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 42
    Width = 595
    Height = 204
    Align = alClient
    DataSource = DataModuleGlobal.DataSourceItensComanda
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ITEM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_ITEM'
        Title.Caption = 'Valor'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 246
    Width = 595
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      595
      41)
    object dbNavigator: TDBNavigator
      Left = 169
      Top = 8
      Width = 225
      Height = 25
      DataSource = DataModuleGlobal.DataSourceItensComanda
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Anchors = []
      TabOrder = 0
    end
    object btnOk: TButton
      Left = 512
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'OK'
      TabOrder = 1
      OnClick = btnOkClick
    end
  end
end
