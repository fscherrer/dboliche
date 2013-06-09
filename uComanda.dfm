object frmComanda: TfrmComanda
  Left = 0
  Top = 0
  Caption = 'Comanda'
  ClientHeight = 311
  ClientWidth = 275
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
  object lblComanda: TLabel
    Left = 0
    Top = 0
    Width = 275
    Height = 42
    Align = alTop
    AutoSize = False
    Caption = ' Comanda'
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
  object lblAbertura: TLabel
    Left = 8
    Top = 51
    Width = 50
    Height = 13
    Caption = 'Abertura :'
  end
  object lblPista: TLabel
    Left = 8
    Top = 83
    Width = 30
    Height = 13
    Caption = 'Pista :'
  end
  object lblClientes: TLabel
    Left = 8
    Top = 106
    Width = 45
    Height = 13
    Caption = 'Clientes :'
  end
  object dbeAbertura: TDBEdit
    Left = 72
    Top = 48
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 0
  end
  object btnOK: TButton
    Left = 214
    Top = 278
    Width = 51
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = btnOKClick
  end
  object btnCancelar: TButton
    Left = 144
    Top = 278
    Width = 64
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 2
    OnClick = btnCancelarClick
  end
  object dbLookupComboBoxPista: TDBLookupComboBox
    Left = 72
    Top = 79
    Width = 121
    Height = 21
    KeyField = 'ID'
    ListField = 'DESCRICAO'
    ListSource = DataModuleGlobal.DataSourcePistas
    TabOrder = 3
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 72
    Top = 106
    Width = 195
    Height = 21
    DropDownRows = 8
    KeyField = 'ID'
    ListField = 'NOME'
    TabOrder = 4
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 72
    Top = 133
    Width = 195
    Height = 21
    DropDownRows = 8
    KeyField = 'ID'
    ListField = 'NOME'
    TabOrder = 5
  end
  object DBLookupComboBox3: TDBLookupComboBox
    Left = 72
    Top = 160
    Width = 195
    Height = 21
    DropDownRows = 8
    KeyField = 'ID'
    ListField = 'NOME'
    TabOrder = 6
  end
  object DBLookupComboBox4: TDBLookupComboBox
    Left = 72
    Top = 187
    Width = 195
    Height = 21
    DropDownRows = 8
    KeyField = 'ID'
    ListField = 'NOME'
    TabOrder = 7
  end
  object DBLookupComboBox5: TDBLookupComboBox
    Left = 72
    Top = 214
    Width = 195
    Height = 21
    DropDownRows = 8
    KeyField = 'ID'
    ListField = 'NOME'
    TabOrder = 8
  end
  object DBLookupComboBox6: TDBLookupComboBox
    Left = 72
    Top = 241
    Width = 195
    Height = 21
    DropDownRows = 8
    KeyField = 'ID'
    ListField = 'NOME'
    TabOrder = 9
  end
end
