unit uFecharComanda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmFecharComanda = class(TForm)
    lblPista: TLabel;
    lblAbertura: TLabel;
    lblTotal: TLabel;
    lblFecharComanda: TLabel;
    btnCancelar: TButton;
    btnOK: TButton;
    editAbertura: TEdit;
    editPista: TEdit;
    editTotal: TEdit;
    procedure btnCancelarClick(Sender: TObject);
    procedure fechar(id: integer; abertura: string; pista: string; total: real);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFecharComanda: TfrmFecharComanda;
  idComandaFechar: integer;

implementation
uses
  dmGlobal;

{$R *.dfm}

procedure TfrmFecharComanda.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmFecharComanda.btnOKClick(Sender: TObject);
begin
 with DataModuleGlobal.IBStoredProcFecharComanda do
  begin
    ParamByName('idComanda').Value := idComandaFechar;
    ExecProc;

    Application.MessageBox('Comanda fechada com sucesso', 'Sucesso');
    DataModuleGlobal.IBTransaction.CommitRetaining;
    frmFecharComanda.Close;
  end;
end;

procedure TfrmFecharComanda.fechar(id: integer; abertura: string; pista: string; total: real);
begin
  idComandaFechar := id;
  editAbertura.Text := abertura;
  editPista.Text := pista;
  editTotal.Text := FormatFloat('###,##0.00', total);
  ShowModal;
end;

end.
