unit uUtils;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmUtils = class(TForm)
    Label1: TLabel;
    procedure debug(info: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUtils: TfrmUtils;

implementation

{$R *.dfm}

procedure TfrmUtils.debug(info: String);
begin
  ShowMessage(info);
end;

end.
