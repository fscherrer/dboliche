object frmBoliche: TfrmBoliche
  Left = 0
  Top = 0
  Caption = 'DBoliche'
  ClientHeight = 232
  ClientWidth = 220
  Color = clBtnFace
  Constraints.MaxHeight = 270
  Constraints.MaxWidth = 236
  Constraints.MinHeight = 270
  Constraints.MinWidth = 236
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object btnAbrirComanda: TButton
    Left = 32
    Top = 23
    Width = 161
    Height = 82
    Caption = 'Abrir Comanda'
    TabOrder = 0
    OnClick = btnAbrirComandaClick
  end
  object btnComandas: TButton
    Left = 32
    Top = 127
    Width = 161
    Height = 82
    Caption = 'Comandas'
    TabOrder = 1
    OnClick = btnComandasClick
  end
end
