object frmListaItens: TfrmListaItens
  Left = 0
  Top = 0
  Caption = 'Listagem Itens'
  ClientHeight = 215
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
  object lblListaItens: TLabel
    Left = 0
    Top = 0
    Width = 331
    Height = 42
    Align = alTop
    AutoSize = False
    Caption = 'Listagem de Itens'
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
    Top = 48
    Width = 329
    Height = 120
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        Title.Caption = 'Itens'
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Quantidade'
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Valor'
        Visible = True
      end>
  end
  object btnOK: TButton
    Left = 272
    Top = 182
    Width = 51
    Height = 25
    Caption = 'OK'
    TabOrder = 1
  end
end
