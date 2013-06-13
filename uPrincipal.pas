unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ImgList;

type
  TfrmPrincipal = class(TForm)
    btnClientes: TButton;
    btnPistas: TButton;
    btnFuncionarios: TButton;
    btnItens: TButton;
    procedure btnClientesClick(Sender: TObject);
    procedure btnFuncionariosClick(Sender: TObject);
    procedure btnItensClick(Sender: TObject);
    procedure btnPistasClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation
Uses
  dmGlobal, uLogin,
  uClientes, uFuncionarios, uItens, uPistas;

{$R *.dfm}

procedure TfrmPrincipal.btnClientesClick(Sender: TObject);
begin
  frmClientes.ShowModal;
end;

procedure TfrmPrincipal.btnFuncionariosClick(Sender: TObject);
begin
  frmFuncionarios.ShowModal;
end;

procedure TfrmPrincipal.btnItensClick(Sender: TObject);
begin
frmItens.ShowModal;
end;

procedure TfrmPrincipal.btnPistasClick(Sender: TObject);
begin
  frmPistas.ShowModal;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmLogin.Close;
end;

end.
