program pDBoliche;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  dmGlobal in 'dmGlobal.pas' {DataModuleGlobal: TDataModule},
  uClientes in 'uClientes.pas' {frmClientes},
  uFuncionarios in 'uFuncionarios.pas' {frmFuncionarios},
  uItens in 'uItens.pas' {frmItens},
  uPistas in 'uPistas.pas' {frmPistas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDataModuleGlobal, DataModuleGlobal);
  Application.CreateForm(TfrmClientes, frmClientes);
  Application.CreateForm(TfrmFuncionarios, frmFuncionarios);
  Application.CreateForm(TfrmItens, frmItens);
  Application.CreateForm(TfrmPistas, frmPistas);
  Application.Run;
end.
