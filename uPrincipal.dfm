object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'DBoliche'
  ClientHeight = 240
  ClientWidth = 238
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
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
    Top = 136
    Width = 85
    Height = 85
    Caption = 'Pistas'
    TabOrder = 1
    OnClick = btnPistasClick
  end
  object btnFuncionarios: TButton
    Left = 136
    Top = 16
    Width = 85
    Height = 85
    Caption = 'Funcion'#225'rios'
    TabOrder = 2
    OnClick = btnFuncionariosClick
  end
  object btnItens: TButton
    Left = 136
    Top = 136
    Width = 85
    Height = 85
    Caption = 'Itens'
    TabOrder = 3
    OnClick = btnItensClick
  end
end
