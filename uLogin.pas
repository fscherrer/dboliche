unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmLogin = class(TForm)
    lblUsuario: TLabel;
    lblSenha: TLabel;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    lblLogin: TLabel;
    btnOk: TButton;
    btnCancelar: TButton;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation
uses
  uPrincipal, uDBoliche;

{$R *.dfm}

procedure TfrmLogin.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmLogin.btnOkClick(Sender: TObject);
begin
  if (edtUsuario.Text = 'usuario') and (edtSenha.Text = 'usuario') then
  begin
    Hide;
    frmBoliche.ShowModal;
    Close;
  end
  else if (edtUsuario.Text = 'admin') and (edtSenha.Text = 'admin') then
  begin
    Hide;
    frmPrincipal.ShowModal;
    Close;
  end
  else
    Application.MessageBox('Usu�rio e/ou senha inv�lidos!', 'Falha no login');

end;

end.
