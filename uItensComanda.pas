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
    dbNavigator: TDBNavigator;
    btnOk: TButton;
    lblListaItens: TLabel;
    procedure btnOkClick(Sender: TObject);
    procedure exibir(idComandaExibir: integer; permiteEdicao: boolean);
    procedure FormCreate(Sender: TObject);
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

procedure TfrmItensComanda.exibir(idComandaExibir: integer;  permiteEdicao: boolean);
begin
  DataModuleGlobal.IBDataSetItensComanda.Close;
  DataModuleGlobal.IBDataSetItensComanda.ParamByName('id_comanda').Value :=
    idComandaExibir;
  DataModuleGlobal.IBDataSetItensComanda.Open;

  dbNavigator.Enabled := permiteEdicao;

  ShowModal;
end;

procedure TfrmItensComanda.FormCreate(Sender: TObject);
begin
  Constraints.MinHeight := Height;
  Constraints.MinWidth := Width;

  Position := poDesktopCenter;
end;

end.
