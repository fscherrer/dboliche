program pDBoliche;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  dmGlobal in 'dmGlobal.pas' {DataModuleGlobal: TDataModule},
  uClientes in 'uClientes.pas' {frmClientes},
  uFuncionarios in 'uFuncionarios.pas' {frmFuncionarios},
  uItens in 'uItens.pas' {frmItens},
  uPistas in 'uPistas.pas' {frmPistas},
  uDBoliche in 'uDBoliche.pas' {frmBoliche},
  uComanda in 'uComanda.pas' {frmComanda},
  uComandas in 'uComandas.pas' {frmComandas},
  uFecharComanda in 'uFecharComanda.pas' {frmFecharComanda},
  uListagemItens in 'uListagemItens.pas' {frmListaItens};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPistas, frmPistas);
  Application.CreateForm(TfrmFuncionarios, frmFuncionarios);
  Application.CreateForm(TfrmClientes, frmClientes);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmBoliche, frmBoliche);
  Application.CreateForm(TfrmListaItens, frmListaItens);
  Application.CreateForm(TfrmFecharComanda, frmFecharComanda);
  Application.CreateForm(TfrmComanda, frmComanda);
  Application.CreateForm(TDataModuleGlobal, DataModuleGlobal);
  Application.CreateForm(TfrmItens, frmItens);
  Application.CreateForm(TfrmComandas, frmComandas);
  Application.CreateForm(TfrmBoliche, frmBoliche);
  Application.CreateForm(TfrmComanda, frmComanda);
  Application.CreateForm(TfrmComandas, frmComandas);
  Application.Run;
end.
