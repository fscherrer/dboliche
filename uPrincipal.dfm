object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'DBoliche'
  ClientHeight = 218
  ClientWidth = 221
  Color = clBtnFace
  Constraints.MaxHeight = 256
  Constraints.MaxWidth = 237
  Constraints.MinHeight = 256
  Constraints.MinWidth = 237
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object btnClientes: TButton
    Left = 16
    Top = 16
    Width = 85
    Height = 85
    Caption = 'Clientes'
    ImageIndex = 1
    TabOrder = 0
    OnClick = btnClientesClick
  end
  object btnPistas: TButton
    Left = 16
    Top = 120
    Width = 85
    Height = 85
    Caption = 'Pistas'
    TabOrder = 1
    OnClick = btnPistasClick
  end
  object btnFuncionarios: TButton
    Left = 120
    Top = 16
    Width = 85
    Height = 85
    Caption = 'Funcion'#225'rios'
    TabOrder = 2
    OnClick = btnFuncionariosClick
  end
  object btnItens: TButton
    Left = 120
    Top = 120
    Width = 85
    Height = 85
    Caption = 'Itens'
    TabOrder = 3
    OnClick = btnItensClick
  end
end
