object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  ActiveControl = edtUsuario
  BiDiMode = bdLeftToRight
  BorderStyle = bsDialog
  ClientHeight = 232
  ClientWidth = 294
  Color = clBtnFace
  Constraints.MaxHeight = 260
  Constraints.MaxWidth = 300
  Constraints.MinHeight = 260
  Constraints.MinWidth = 300
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblUsuario: TLabel
    Left = 9
    Top = 59
    Width = 96
    Height = 29
    Caption = 'Usu'#225'rio :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblSenha: TLabel
    Left = 24
    Top = 105
    Width = 81
    Height = 29
    Caption = 'Senha :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblLogin: TLabel
    Left = 0
    Top = 0
    Width = 453
    Height = 42
    Align = alCustom
    AutoSize = False
    Caption = ' Login'
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
  end
  object lblInfoUsuarioAdmin: TLabel
    Left = 64
    Top = 145
    Width = 160
    Height = 13
    Caption = #193'rea administrativa: admin/admin'
  end
  object lblInfoUsuarioOperacional: TLabel
    Left = 64
    Top = 161
    Width = 184
    Height = 13
    Caption = 'Interface operacional: usuario/usuario'
  end
  object edtUsuario: TEdit
    Left = 111
    Top = 56
    Width = 161
    Height = 37
    Hint = 'Usu'#225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = 'usuario'
  end
  object edtSenha: TEdit
    Left = 111
    Top = 102
    Width = 161
    Height = 37
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 1
    Text = 'usuario'
  end
  object btnOk: TButton
    Left = 152
    Top = 180
    Width = 64
    Height = 41
    Caption = 'OK'
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnOkClick
  end
  object btnCancelar: TButton
    Left = 64
    Top = 180
    Width = 82
    Height = 41
    BiDiMode = bdLeftToRight
    Caption = 'Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 3
    OnClick = btnCancelarClick
  end
end
