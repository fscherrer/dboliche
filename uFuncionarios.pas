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
    lblSexo: TLabel;
    DBEdit5: TDBEdit;
    lblAtivo: TLabel;
    DBEdit6: TDBEdit;
    DBNavigator1: TDBNavigator;
    procedure FormShow(Sender: TObject);
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

procedure TfrmFuncionarios.FormShow(Sender: TObject);
begin
  DataModuleGlobal.IBDataSetFuncionario.Active := true;
end;

end.
