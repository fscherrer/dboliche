unit uItensComanda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TfrmItensComanda = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    btnOk: TButton;
    procedure btnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure exibir(idComandaExibir: integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmItensComanda: TfrmItensComanda;

implementation
uses
  dmGlobal;

{$R *.dfm}

procedure TfrmItensComanda.btnOkClick(Sender: TObject);
begin
  DataModuleGlobal.IBTransaction.CommitRetaining;
  Close;
end;

procedure TfrmItensComanda.FormShow(Sender: TObject);
begin
  DataModuleGlobal.IBDataSetItensComanda.Close;
  DataModuleGlobal.IBDataSetItensComanda.Open;
end;

procedure TfrmItensComanda.exibir(idComandaExibir: integer);
begin
  DataModuleGlobal.IBDataSetItensComanda.ParamByName('idComanda').Value := idComandaExibir;
  ShowModal;
end;

end.
