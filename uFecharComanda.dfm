object frmFecharComanda: TfrmFecharComanda
  Left = 0
  Top = 0
  Caption = 'Fechar Comanda'
  ClientHeight = 161
  ClientWidth = 199
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
    Top = 78
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
    Top = 105
    Width = 31
    Height = 13
    Caption = 'Total :'
  end
  object lblFecharComanda: TLabel
    Left = 0
    Top = 0
    Width = 199
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
  object btnCancelar: TButton
    Left = 72
    Top = 129
    Width = 64
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 0
    OnClick = btnCancelarClick
  end
  object btnOK: TButton
    Left = 140
    Top = 129
    Width = 51
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = btnOKClick
  end
  object editAbertura: TEdit
    Left = 64
    Top = 48
    Width = 127
    Height = 21
    Enabled = False
    TabOrder = 2
  end
  object editPista: TEdit
    Left = 64
    Top = 75
    Width = 127
    Height = 21
    Enabled = False
    TabOrder = 3
  end
  object editTotal: TEdit
    Left = 64
    Top = 102
    Width = 127
    Height = 21
    Enabled = False
    TabOrder = 4
  end
end
