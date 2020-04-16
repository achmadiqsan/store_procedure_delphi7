unit Ucarijurusan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm8 = class(TForm)
    btn1: TButton;
    dbgrd1: TDBGrid;
    procedure btn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

uses U_DM, Umatakuliah;

{$R *.dfm}

procedure TForm8.btn1Click(Sender: TObject);
begin
  close;
end;

procedure TForm8.FormActivate(Sender: TObject);
begin
  DM.qry_jurusan.Close;
  DM.qry_jurusan.SQL.Clear;
  DM.qry_jurusan.SQL.Add('CALL TAMPIL_JURUSAN');
  DM.qry_jurusan.Active := True;
end;

procedure TForm8.dbgrd1CellClick(Column: TColumn);
begin
  Form5.Edt5.Text := DM.qry_jurusan['KODEJURUSAN'];
  Close;
end;

end.
