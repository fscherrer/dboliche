unit uItens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls;

type
  TfrmItens = class(TForm)
    lblDescricao: TLabel;
    DBEdit1: TDBEdit;
    lblValor: TLabel;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    lblItensBar: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmItens: TfrmItens;

implementation
uses
  dmGlobal;
{$R *.dfm}

procedure TfrmItens.FormShow(Sender: TObject);
begin
  DataModuleGlobal.IBDataSetItens.Active := true;
end;

end.
