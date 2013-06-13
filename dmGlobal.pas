unit dmGlobal;

interface

uses
  System.SysUtils, System.Classes, Data.DB, IBDatabase, IBCustomDataSet,
  IBStoredProc, IBSQL, IBQuery;

type
  TDataModuleGlobal = class(TDataModule)
    IBDatabase: TIBDatabase;
    IBTransaction: TIBTransaction;
    IBDataSet: TIBDataSet;
    DataSource: TDataSource;
    IBDataSetID: TIntegerField;
    IBDataSetNOME: TIBStringField;
    IBDataSetENDERECO: TIBStringField;
    IBDataSetCIDADE: TIBStringField;
    IBDataSetTELEFONE: TIBStringField;
    IBDataSetSEXO: TIBStringField;
    IBDataSetEMAIL: TIBStringField;
    IBDataSetDNASC: TDateField;
    IBDataSetID_FUNCIONARIO: TIntegerField;
    IBDataSetFuncionario: TIBDataSet;
    DataSourceFuncionarios: TDataSource;
    IBDataSetFuncionarioNOME: TIBStringField;
    IBDataSetFuncionarioENDERECO: TIBStringField;
    IBDataSetFuncionarioCIDADE: TIBStringField;
    IBDataSetFuncionarioTELEFONE: TIBStringField;
    IBDataSetFuncionarioSEXO: TIBStringField;
    IBDataSetFuncionarioATIVO: TIBStringField;
    DataSourceItens: TDataSource;
    IBDataSetItens: TIBDataSet;
    IBDataSetItensDESCRICAO: TIBStringField;
    IBDataSetItensVALOR: TIBBCDField;
    IBDataSetPistas: TIBDataSet;
    DataSourcePistas: TDataSource;
    IBDataSetPistasDESCRICAO: TIBStringField;
    IBDataSetPistasDISPONIVEL: TIBStringField;
    IBDataSetPistasMANUTENCAO: TIBStringField;
    IBDataSetPistasID: TIntegerField;
    IBDataSetFuncionarioID: TIntegerField;
    IBDataSetItensID: TIntegerField;
    IBDataSetComanda: TIBDataSet;
    DataSourceComandas: TDataSource;
    IBStoredProcAbrirComanda: TIBStoredProc;
    IBDataSetComandaID: TIntegerField;
    IBDataSetComandaABERTURA: TDateTimeField;
    IBDataSetComandaPISTA: TIBStringField;
    IBDataSetComandaVALOR: TIBBCDField;
    IBDataSetComandaFECHAMENTO: TDateTimeField;
    IBStoredProcFecharComanda: TIBStoredProc;
    IBDataSetItensComanda: TIBDataSet;
    DataSourceItensComanda: TDataSource;
    IBDataSetItensComandaID: TIntegerField;
    IBDataSetItensComandaID_COMANDA: TIntegerField;
    IBDataSetItensComandaID_ITEM: TIntegerField;
    IBDataSetItensComandaQTDADE: TIntegerField;
    IBDataSetItensComandaitemd: TStringField;
    IBDataSetItensComandaVALOR_ITEM: TFloatField;
    IBQueryValorItem: TIBQuery;
    IBQueryValorItemVALOR: TIBBCDField;
    procedure DataModuleCreate(Sender: TObject);
    procedure IBDataSetItensComandaAfterInsert(DataSet: TDataSet);
    procedure IBDataSetItensComandaCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleGlobal: TDataModuleGlobal;

implementation
uses
  uUtils;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataModuleGlobal.DataModuleCreate(Sender: TObject);
begin
    // garante que estará fechado
    IBDatabase.Close;

    // configura o caminho da base com base no caminho da aplicação
    IBDatabase.DatabaseName := '\\127.0.0.1\' +
      ExtractFilePath(ParamStr(0)) + '..\..\database\database.fdb';

    // abre
    IBDatabase.Open;

    IBDataSet.Open;
    IBDataSetFuncionario.Open;
    IBDataSetItens.Open;
    IBDataSetPistas.Open;
    IBDataSetComanda.Open;
    IBDataSetItensComanda.Open;
end;

procedure TDataModuleGlobal.IBDataSetItensComandaAfterInsert(DataSet: TDataSet);
begin
  IBDataSetItensComanda.FieldByName('id_comanda').Value :=
    IBDataSetItensComanda.ParamByName('id_comanda').Value;
end;

procedure TDataModuleGlobal.IBDataSetItensComandaCalcFields(DataSet: TDataSet);
var
  qtdade: integer;
begin
  if IBDataSetItensComanda.FieldByName('qtdade').IsNull then
     IBDataSetItensComanda.FieldByName('qtdade').value := 1;

  qtdade := IBDataSetItensComanda.FieldByName('qtdade').value;

  IBQueryValorItem.Close;

  IBQueryValorItem.ParamByName('id').Value :=
    IBDataSetItensComanda.FieldByName('id_item').Value;

  IBQueryValorItem.Open;

  IBDataSetItensComanda.FieldByName('valor_item').Value :=
    IBQueryValorItem.FieldByName('valor').Value * qtdade;

//  frmUtils.debug(IBDataSetItensComanda.FieldByName('id_item').AsString
//    + ': ' + IBQueryValorItem.FieldByName('valor').AsString);
end;

end.
