unit Ucarinim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm9 = class(TForm)
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
  Form9: TForm9;

implementation

uses U_DM, Unilai;

{$R *.dfm}

procedure TForm9.btn1Click(Sender: TObject);
begin
  close;
end;

procedure TForm9.FormActivate(Sender: TObject);
begin
  DM.qry_mahasiswa.Close;
  DM.qry_mahasiswa.SQL.Clear;
  DM.qry_mahasiswa.SQL.Add('CALL TAMPIL_MAHASISWA');
  DM.qry_mahasiswa.Active := True;
end;

procedure TForm9.dbgrd1CellClick(Column: TColumn);
begin
  Form6.Edt1.Text := DM.qry_mahasiswa['NIM'];
  Close;
end;

end.
