unit uComandas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmComandas = class(TForm)
    DBGrid1: TDBGrid;
    btnItens: TButton;
    btnFechar: TButton;
    btnOk: TButton;
    lblListaComanda: TLabel;
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmComandas: TfrmComandas;

implementation

{$R *.dfm}

procedure TfrmComandas.btnOkClick(Sender: TObject);
begin
  Close;
end;

end.
