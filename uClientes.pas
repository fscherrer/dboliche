unit uClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls;

type
  TfrmClientes = class(TForm)
    lblNome: TLabel;
    DBEdit2: TDBEdit;
    lblEndereco: TLabel;
    DBEdit3: TDBEdit;
    lblCidade: TLabel;
    DBEdit4: TDBEdit;
    lblTelefone: TLabel;
    DBEdit5: TDBEdit;
    lblSexo: TLabel;
    DBEdit6: TDBEdit;
    lblemail: TLabel;
    DBEdit7: TDBEdit;
    lblDataNascimento: TLabel;
    DBEdit8: TDBEdit;
    lblClientes: TLabel;
    DBNavigator: TDBNavigator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClientes: TfrmClientes;

implementation
Uses
  dmGlobal;

{$R *.dfm}

end.
