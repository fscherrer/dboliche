program pDBoliche;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  dmGlobal in 'dmGlobal.pas' {DataModuleGlobal: TDataModule},
  uClientes in 'uClientes.pas' {frmClientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDataModuleGlobal, DataModuleGlobal);
  Application.CreateForm(TfrmClientes, frmClientes);
  Application.Run;
end.
