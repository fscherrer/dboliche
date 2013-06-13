unit uDBoliche;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmBoliche = class(TForm)
    btnAbrirComanda: TButton;
    btnComandas: TButton;
    procedure btnAbrirComandaClick(Sender: TObject);
    procedure btnComandasClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBoliche: TfrmBoliche;

implementation
uses
  uComanda, uComandas, uLogin;

{$R *.dfm}

procedure TfrmBoliche.btnAbrirComandaClick(Sender: TObject);
begin
  frmComanda.ShowModal;
end;

procedure TfrmBoliche.btnComandasClick(Sender: TObject);
begin
  frmComandas.ShowModal;
end;

procedure TfrmBoliche.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmLogin.Close;
end;

procedure TfrmBoliche.FormCreate(Sender: TObject);
begin
  Position := poDesktopCenter;
end;

end.
