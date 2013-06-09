unit uFecharComanda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmFecharComanda = class(TForm)
    lblPista: TLabel;
    lblAbertura: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    lblTotal: TLabel;
    DBEdit3: TDBEdit;
    lblFecharComanda: TLabel;
    btnCancelar: TButton;
    btnOK: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFecharComanda: TfrmFecharComanda;

implementation

{$R *.dfm}

end.
