object frmComandas: TfrmComandas
  Left = 0
  Top = 0
  Caption = 'Comandas'
  ClientHeight = 270
  ClientWidth = 331
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblListaComanda: TLabel
    Left = 0
    Top = 0
    Width = 331
    Height = 42
    Align = alTop
    AutoSize = False
    Caption = 'Listagem de Comandas'
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 40
    Width = 331
    Height = 160
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        Title.Caption = 'Abertura'
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Pista'
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Valor'
        Visible = True
      end>
  end
  object btnItens: TButton
    Left = 8
    Top = 206
    Width = 57
    Height = 25
    Caption = 'Itens'
    TabOrder = 1
  end
  object btnFechar: TButton
    Left = 266
    Top = 206
    Width = 57
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
  end
  object btnOk: TButton
    Left = 280
    Top = 237
    Width = 43
    Height = 25
    Caption = 'OK'
    TabOrder = 3
  end
end
