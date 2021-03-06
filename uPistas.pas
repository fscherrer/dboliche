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
    DBNavigator1: TDBNavigator;
    lblPistas: TLabel;
    DBRadioGroupDisponivel: TDBRadioGroup;
    DBRadioGroupManutencao: TDBRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
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

procedure TfrmPistas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModuleGlobal.IBTransaction.CommitRetaining;
end;

procedure TfrmPistas.FormCreate(Sender: TObject);
begin
  Constraints.MinHeight := Height;
  Constraints.MinWidth := Width;
  Constraints.MaxHeight := Height;
  Constraints.MaxWidth := Width;

  Position := poDesktopCenter;
end;

end.
