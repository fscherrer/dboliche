object frmFecharComanda: TfrmFecharComanda
  Left = 0
  Top = 0
  Caption = 'Fechar Comanda'
  ClientHeight = 202
  ClientWidth = 208
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblPista: TLabel
    Left = 8
    Top = 83
    Width = 30
    Height = 13
    Caption = 'Pista :'
  end
  object lblAbertura: TLabel
    Left = 8
    Top = 51
    Width = 50
    Height = 13
    Caption = 'Abertura :'
  end
  object lblTotal: TLabel
    Left = 8
    Top = 115
    Width = 31
    Height = 13
    Caption = 'Total :'
  end
  object lblFecharComanda: TLabel
    Left = 0
    Top = 0
    Width = 208
    Height = 42
    Align = alTop
    AutoSize = False
    Caption = ' Fechar Comanda'
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
  object DBEdit1: TDBEdit
    Left = 72
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 72
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 72
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object btnCancelar: TButton
    Left = 72
    Top = 153
    Width = 64
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
  end
  object btnOK: TButton
    Left = 142
    Top = 153
    Width = 51
    Height = 25
    Caption = 'OK'
    TabOrder = 4
  end
end
