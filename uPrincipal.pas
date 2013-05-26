unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    btnClientes: TButton;
    btnPistas: TButton;
    btnFuncionarios: TButton;
    btnItens: TButton;
    procedure btnClientesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation
Uses
  uClientes;

{$R *.dfm}

procedure TfrmPrincipal.btnClientesClick(Sender: TObject);
begin
  frmClientes.ShowModal;
end;

end.
