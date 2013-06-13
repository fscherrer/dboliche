unit uFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls;

type
  TfrmFuncionarios = class(TForm)
    lblFuncionarios: TLabel;
    lblNome: TLabel;
    DBEdit1: TDBEdit;
    lblEndereco: TLabel;
    DBEdit2: TDBEdit;
    lblCidade: TLabel;
    DBEdit3: TDBEdit;
    lblTelefone: TLabel;
    DBEdit4: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBRadioGroupSexo: TDBRadioGroup;
    DBRadioGroupAtivo: TDBRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFuncionarios: TfrmFuncionarios;

implementation
USES
  dmGlobal;

{$R *.dfm}

procedure TfrmFuncionarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModuleGlobal.IBTransaction.CommitRetaining;
end;

procedure TfrmFuncionarios.FormCreate(Sender: TObject);
begin
  Constraints.MinHeight := Height;
  Constraints.MinWidth := Width;
  Constraints.MaxHeight := Height;
  Constraints.MaxWidth := Width;
end;

end.
