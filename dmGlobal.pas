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
    IBDataSetNOME: TIBStringField;
    IBDataSetENDERECO: TIBStringField;
    IBDataSetCIDADE: TIBStringField;
    IBDataSetTELEFONE: TIBStringField;
    IBDataSetSEXO: TIBStringField;
    IBDataSetEMAIL: TIBStringField;
    IBDataSetDNASC: TDateField;
    IBDataSetID_FUNCIONARIO: TIntegerField;
    IBDataSetID: TIntegerField;
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

end.
