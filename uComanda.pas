unit uComanda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TfrmComanda = class(TForm)
    lblComanda: TLabel;
    lblAbertura: TLabel;
    lblPista: TLabel;
    lblClientes: TLabel;
    DBEdit1: TDBEdit;
    DBListBox1: TDBListBox;
    DBComboBox1: TDBComboBox;
    btnOK: TButton;
    btnCancelar: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmComanda: TfrmComanda;

implementation

{$R *.dfm}

end.
