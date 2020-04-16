unit Ucarimatakuliah;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm10 = class(TForm)
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
  Form10: TForm10;

implementation

uses U_DM, Unilai;

{$R *.dfm}

procedure TForm10.btn1Click(Sender: TObject);
begin
  CLose;
end;

procedure TForm10.FormActivate(Sender: TObject);
begin
  DM.qry_matakuliah.Close;
  DM.qry_matakuliah.SQL.Clear;
  DM.qry_matakuliah.SQL.Add('CALL TAMPIL_MATAKULIAH');
  DM.qry_matakuliah.Active := True;
end;

procedure TForm10.dbgrd1CellClick(Column: TColumn);
begin
  Form6.Edt2.Text := DM.qry_matakuliah['KODEMK'];
  Close;
end;

end.
