unit Ucaridosen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm7 = class(TForm)
    btn1: TButton;
    dbgrd1: TDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses U_DM, Umatakuliah;

{$R *.dfm}

procedure TForm7.FormActivate(Sender: TObject);
begin
  DM.qry_dosen.Close;
  DM.qry_dosen.SQL.Clear;
  DM.qry_dosen.SQL.Add('CALL TAMPIL_DOSEN');
  DM.qry_dosen.Active := True;
end;

procedure TForm7.dbgrd1CellClick(Column: TColumn);
begin
  Form5.Edt4.Text := DM.qry_dosen['KD_DOSEN'];
  Close;
end;

procedure TForm7.btn1Click(Sender: TObject);
begin
  close;
end;

end.
