unit dmGlobal;

interface

uses
  System.SysUtils, System.Classes, Data.DB, IBDatabase, IBCustomDataSet;

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
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleGlobal: TDataModuleGlobal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataModuleGlobal.DataModuleCreate(Sender: TObject);
begin
    // garante que estará fechado
    IBDatabase.Close;

    // configura o caminho da base com base no caminho da aplicação
    IBDatabase.DatabaseName := '\\127.0.0.1\' +
      ExtractFilePath(ParamStr(0)) + 'database\database.fdb';

    // abre
    IBDatabase.Open;

    IBTransaction.Active := true;
end;

end.
