unit Umatakuliah;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm5 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    dbgrd1: TDBGrid;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    btn6: TButton;
    btn7: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
//  procedure btn5Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses U_DM,Ucaridosen, Ucarijurusan;

{$R *.dfm}

procedure TForm5.btn1Click(Sender: TObject);
begin
  edt1.Text :='';
  edt2.Text := '';
  edt3.Text := '';
  edt4.Text := '';
  edt5.Text := '';
end;


procedure TForm5.btn5Click(Sender: TObject);
begin
  edt1.Text :='';
  edt2.Text := '';
  edt3.Text := '';
  edt4.Text := '';
  edt5.Text := '';
  close;
end;

procedure TForm5.btn2Click(Sender: TObject);
begin
  with DM.qry_matakuliah do
    begin
      DM.qry_matakuliah.Close;
      DM.qry_matakuliah.SQL.Clear;
      DM.qry_matakuliah.SQL.Add('CALL TAMBAH_MATAKULIAH ('+QuotedStr(edt1.Text)+','+QuotedStr(edt2.Text)+','+QuotedStr(edt3.Text)+','+QuotedStr(edt4.Text)+','+QuotedStr(edt5.Text)+')');
      DM.qry_matakuliah.ExecSQL;

      DM.qry_matakuliah.Close;
      DM.qry_matakuliah.SQL.Clear;
      DM.qry_matakuliah.SQL.Add('CALL TAMPIL_MATAKULIAH');
      DM.qry_matakuliah.Active := True;

      edt1.Text :='';
  edt2.Text := '';
  edt3.Text := '';
  edt4.Text := '';
  edt5.Text := '';
    end;
end;

procedure TForm5.btn3Click(Sender: TObject);
begin
  with DM.qry_matakuliah do
    begin
      DM.qry_matakuliah.Close;
      DM.qry_matakuliah.SQL.Clear;
      DM.qry_matakuliah.SQL.Add('CALL UBAH_MATAKULIAH ('+QuotedStr(edt1.Text)+','+QuotedStr(edt2.Text)+','+QuotedStr(edt3.Text)+','+QuotedStr(edt4.Text)+','+QuotedStr(edt5.Text)+')');
      DM.qry_matakuliah.ExecSQL;

      DM.qry_matakuliah.Close;
      DM.qry_matakuliah.SQL.Clear;
      DM.qry_matakuliah.SQL.Add('CALL TAMPIL_MATAKULIAH');
      DM.qry_matakuliah.Active := True;

      edt1.Text :='';
  edt2.Text := '';
  edt3.Text := '';
  edt4.Text := '';
  edt5.Text := '';
    end;
end;

procedure TForm5.btn4Click(Sender: TObject);
begin
  with DM.qry_matakuliah do
    begin
      DM.qry_matakuliah.Close;
      DM.qry_matakuliah.SQL.Clear;
      DM.qry_matakuliah.SQL.Add('CALL HAPUS_MATAKULIAH ('+QuotedStr(edt1.Text)+')');
      DM.qry_matakuliah.ExecSQL;

      DM.qry_matakuliah.Close;
      DM.qry_matakuliah.SQL.Clear;
      DM.qry_matakuliah.SQL.Add('CALL TAMPIL_MATAKULIAH');
      DM.qry_matakuliah.Active := True;

      edt1.Text :='';
  edt2.Text := '';
  edt3.Text := '';
  edt4.Text := '';
  edt5.Text := '';
    end;
end;

procedure TForm5.FormActivate(Sender: TObject);
begin
  DM.qry_matakuliah.Close;
  DM.qry_matakuliah.SQL.Clear;
  DM.qry_matakuliah.SQL.Add('CALL TAMPIL_MATAKULIAH');
  DM.qry_matakuliah.Active := True;
end;

procedure TForm5.dbgrd1CellClick(Column: TColumn);
begin
  edt1.Text := DM.qry_matakuliah['KODEMK'] ;
  edt2.Text := DM.qry_matakuliah['NAMAMK'];
  edt3.Text := DM.qry_matakuliah['SKS'];
  edt4.Text := DM.qry_matakuliah['KD_DOSEN'];
  edt5.Text := DM.qry_matakuliah['KODEJURUSAN'];
end;

procedure TForm5.btn6Click(Sender: TObject);
begin
  Form7.Show;
end;

procedure TForm5.btn7Click(Sender: TObject);
begin
  Form8.show;
end;

end.
