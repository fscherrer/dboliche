unit uComandas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls;

type
  TfrmComandas = class(TForm)
    DBGrid1: TDBGrid;
    btnOk: TButton;
    lblListaComanda: TLabel;
    Panel1: TPanel;
    btnItens: TButton;
    btnFechar: TButton;
    procedure btnOkClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnItensClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmComandas: TfrmComandas;

implementation
uses
  dmGlobal, uFecharComanda, uItensComanda;

{$R *.dfm}

procedure TfrmComandas.btnFecharClick(Sender: TObject);
begin
  with DataModuleGlobal.IBDataSetComanda do
  begin
    // ShowMessage(FieldByName('fechamento').Value);

    if FieldByName('fechamento').Value <> Null then
      Application.MessageBox('Comanda j� fechada', 'Falha')
    else
    begin
      frmFecharComanda.fechar(
        FieldByName('ID').Value,
        FieldByName('abertura').Value,
        FieldByName('pista').Value,
        FieldByName('valor').Value);

      DataModuleGlobal.IBDataSetComanda.Close;
      DataModuleGlobal.IBDataSetComanda.open;
    end;
  end;
end;

procedure TfrmComandas.btnItensClick(Sender: TObject);
begin
  if DataModuleGlobal.IBDataSetComanda.FieldByName('id').IsNull then
    Application.MessageBox('Selecione uma Comanda para essa opera��o',
      'Nenhuma Comanda selecionada')
  else
  begin
    frmItensComanda.exibir(
      DataModuleGlobal.IBDataSetComanda.FieldByName('id').Value,
      DataModuleGlobal.IBDataSetComanda.FieldByName('fechamento').Value = Null);
    DataModuleGlobal.IBDataSetComanda.Close;
    DataModuleGlobal.IBDataSetComanda.open;
  end;
end;

procedure TfrmComandas.btnOkClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmComandas.FormCreate(Sender: TObject);
begin
  Constraints.MinHeight := Height;
  Constraints.MinWidth := Width;
  Position := poDesktopCenter;
end;

procedure TfrmComandas.FormShow(Sender: TObject);
begin
  DataModuleGlobal.IBDataSetComanda.Close;
  DataModuleGlobal.IBDataSetComanda.open;
end;

end.
