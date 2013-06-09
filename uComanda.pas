unit uComanda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.DBLookup;

type
  TfrmComanda = class(TForm)
    lblComanda: TLabel;
    lblAbertura: TLabel;
    lblPista: TLabel;
    lblClientes: TLabel;
    dbeAbertura: TDBEdit;
    DBListBox1: TDBListBox;
    btnOK: TButton;
    btnCancelar: TButton;
    dbLookupComboBoxPista: TDBLookupComboBox;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmComanda: TfrmComanda;

implementation
uses
  dmGlobal;

{$R *.dfm}

procedure TfrmComanda.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmComanda.FormCreate(Sender: TObject);
begin
  dbeAbertura.Text := FormatDateTime('c', now);
end;

procedure TfrmComanda.FormShow(Sender: TObject);
begin
  DataModuleGlobal.IBDataSetPistas.Open;
end;

end.
