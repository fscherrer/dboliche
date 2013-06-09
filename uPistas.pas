unit uPistas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls;

type
  TfrmPistas = class(TForm)
    lblDescricao: TLabel;
    DBEdit1: TDBEdit;
    lblDisponivel: TLabel;
    DBEdit2: TDBEdit;
    lblManutencao: TLabel;
    DBEdit3: TDBEdit;
    DBNavigator1: TDBNavigator;
    lblPistas: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPistas: TfrmPistas;

implementation
uses
dmGlobal;

{$R *.dfm}

procedure TfrmPistas.FormShow(Sender: TObject);
begin
  DataModuleGlobal.IBDataSetPistas.Active := true;
end;

end.
