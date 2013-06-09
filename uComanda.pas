unit uComanda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.DBLookup, IBDatabase, IBCustomDataSet, Data.DB;

type
  TfrmComanda = class(TForm)
    lblComanda: TLabel;
    lblAbertura: TLabel;
    lblPista: TLabel;
    lblClientes: TLabel;
    dbeAbertura: TDBEdit;
    btnOK: TButton;
    btnCancelar: TButton;
    dbLookupComboBoxPista: TDBLookupComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmComanda: TfrmComanda;
  lookups: Array[1..6] of TDBLookupComboBox;

implementation
uses
  dmGlobal;

{$R *.dfm}

procedure TfrmComanda.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmComanda.btnOKClick(Sender: TObject);
var
  i: integer;
begin
//  ShowMessage(dbLookupComboBoxPista.KeyValue);
  with DataModuleGlobal.IBStoredProcAbrirComanda do
  begin
    Close;
    ParamByName('PISTA').Value := dbLookupComboBoxPista.KeyValue;
    // TODO: o funcionário virá de onde?
    ParamByName('FUNCIONARIO').Value := 5;

    for i := 1 to 6 do
    begin
      ParamByName('CLIENTE' + IntToStr(i)).Value := lookups[i].KeyValue;
    end;

    ExecProc;

    //  1 - abertura da comanda OK
    //  2 - Pista indisponivel
    if(ParamByName('STATUS').Value = 1) then
      Application.MessageBox('Comanda aberta com sucesso', 'Sucesso')
    else
      Application.MessageBox('Pista já em uso', 'Falha');

  end;
end;

procedure TfrmComanda.FormCreate(Sender: TObject);
var
  dataSetAtual: TIBDataSet;
  dataSourceAtual: TDataSource;
  i: integer;
  select: string;
begin
  // abre os DataSets utilizados
  DataModuleGlobal.IBDataSetPistas.Open;
  DataModuleGlobal.IBDataSetComanda.Open;

  lookups[1] := DBLookupComboBox1;
  lookups[2] := DBLookupComboBox2;
  lookups[3] := DBLookupComboBox3;
  lookups[4] := DBLookupComboBox4;
  lookups[5] := DBLookupComboBox5;
  lookups[6] := DBLookupComboBox6;

  select := 'select * from clientes order by nome';

  for i := 1 to 6 do
  begin
    dataSetAtual := TIBDataSet.Create(nil);
    dataSetAtual.Database := DataModuleGlobal.IBDatabase;
    dataSetAtual.Transaction := DataModuleGlobal.IBTransaction;
    dataSetAtual.SelectSQL.Add(select);

    dataSetAtual.Open;
    dataSetAtual.Last;
    dataSetAtual.First;

    dataSourceAtual := TDataSource.Create(nil);
    dataSourceAtual.DataSet := dataSetAtual;

    lookups[i].ListSource := dataSourceAtual;
  end;


  // Forçar o carregamento de todos os registros nos combos
  DataModuleGlobal.IBDataSetPistas.Last;
  DataModuleGlobal.IBDataSetPistas.First;

  dbeAbertura.Text := FormatDateTime('c', now);
end;

end.
