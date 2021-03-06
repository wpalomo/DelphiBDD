unit DataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.FMXUI.Wait, FireDAC.Comp.Client, FireDAC.Comp.UI,
  Data.DB, FireDAC.Comp.DataSet;

type
  TdmChangeAlerter = class(TDataModule)
    AdventureworksConnection: TFDConnection;
    ProductcategoryTable: TFDQuery;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDEventAlerter1: TFDEventAlerter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmChangeAlerter: TdmChangeAlerter;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
