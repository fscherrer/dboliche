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
    lblemail: TLabel;
    DBEdit7: TDBEdit;
    lblDataNascimento: TLabel;
    DBEdit8: TDBEdit;
    lblClientes: TLabel;
    DBNavigator: TDBNavigator;
    DBRadioGroupSexo: TDBRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
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

procedure TfrmClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModuleGlobal.IBTransaction.CommitRetaining;
end;

procedure TfrmClientes.FormCreate(Sender: TObject);
begin
  Constraints.MinHeight := Height;
  Constraints.MinWidth := Width;
  Constraints.MaxHeight := Height;
  Constraints.MaxWidth := Width;
  Position := poDesktopCenter;
end;

end.
