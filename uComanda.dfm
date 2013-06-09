object frmComanda: TfrmComanda
  Left = 0
  Top = 0
  Caption = 'Comanda'
  ClientHeight = 277
  ClientWidth = 207
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblComanda: TLabel
    Left = 0
    Top = 0
    Width = 207
    Height = 42
    Align = alTop
    AutoSize = False
    Caption = 'Comanda'
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
    Top = 78
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
  object DBListBox1: TDBListBox
    Left = 72
    Top = 106
    Width = 121
    Height = 97
    ItemHeight = 13
    TabOrder = 1
  end
  object btnOK: TButton
    Left = 142
    Top = 244
    Width = 51
    Height = 25
    Caption = 'OK'
    TabOrder = 2
  end
  object btnCancelar: TButton
    Left = 72
    Top = 244
    Width = 64
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = btnCancelarClick
  end
  object dbLookupComboBoxPista: TDBLookupComboBox
    Left = 72
    Top = 79
    Width = 121
    Height = 21
    DataField = 'ID_PISTA'
    DataSource = DataModuleGlobal.DataSourceComandas
    KeyField = 'ID'
    ListField = 'DESCRICAO'
    ListSource = DataModuleGlobal.DataSourcePistas
    TabOrder = 4
  end
end
