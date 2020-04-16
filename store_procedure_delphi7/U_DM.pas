unit U_DM;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDM = class(TDataModule)
    con1: TADOConnection;
    qry_mahasiswa: TADOQuery;
    qry_dosen: TADOQuery;
    qry_matakuliah: TADOQuery;
    qry_jurusan: TADOQuery;
    qry_nilai: TADOQuery;
    ds_mahasiswa: TDataSource;
    ds_dosen: TDataSource;
    ds_matakuliah: TDataSource;
    ds_jurusan: TDataSource;
    ds_nilai: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
