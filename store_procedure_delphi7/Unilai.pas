unit Unilai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,U_DM, Grids, DBGrids, StdCtrls;

type
  TForm6 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    dbgrd1: TDBGrid;
    btn6: TButton;
    btn7: TButton;
    procedure btn5Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  A : Integer;
  B,C : string;

implementation

uses Ucarinim, Ucarimatakuliah;

{$R *.dfm}

procedure TForm6.btn5Click(Sender: TObject);
begin
  edt1.Text :='';
  edt2.Text :='';
  edt3.Text :='';
  close;
end;

procedure TForm6.btn1Click(Sender: TObject);
begin
  edt1.Text :='';
  edt2.Text :='';
  edt3.Text :='';
end;

procedure TForm6.FormActivate(Sender: TObject);
begin
  DM.qry_nilai.Close;
  DM.qry_nilai.SQL.Clear;
  DM.qry_nilai.SQL.Add('CALL TAMPIL_NILAI');
  DM.qry_nilai.Active := True;
end;

procedure TForm6.btn2Click(Sender: TObject);
begin
  A := StrtoInt(edt3.Text);
  if A >= 80 then
    begin
      B := 'A';
      C := 'LULUS';
    end
  else
  if A >= 68 then
    begin
      B := 'B';
      C := 'LULUS';
    end
  else
  if A >= 56 then
    begin
      B := 'C';
      C := 'LULUS';
    end
  else
  if A >= 45 then
    begin
      B := 'D';
      C := 'LULUS';
    end
  else
  if A <= 44 then
    begin
      B := 'E';
      C := 'TIDAK LULUS';
    end;
  //
  with DM.qry_nilai do
    begin
      DM.qry_nilai.Close;
      DM.qry_nilai.SQL.Clear;
      DM.qry_nilai.SQL.Add('CALL TAMBAH_NILAI ('+QuotedStr(edt1.Text)+','+QuotedStr(edt2.Text)+','+QuotedStr(edt3.Text)+','+QuotedStr(B)+','+QuotedStr(C)+')');
      DM.qry_nilai.ExecSQL;

      DM.qry_nilai.Close;
      DM.qry_nilai.SQL.Clear;
      DM.qry_nilai.SQL.Add('CALL TAMPIL_NILAI');
      DM.qry_nilai.Active := True;

      edt1.Text :='';
      edt2.Text :='';
      edt3.Text :='';
    end;
end;

procedure TForm6.btn3Click(Sender: TObject);
begin
  A := StrtoInt(edt3.Text);
  if A >= 80 then
    begin
      B := 'A';
      C := 'LULUS';
    end
  else
  if A >= 68 then
    begin
      B := 'B';
      C := 'LULUS';
    end
  else
  if A >= 56 then
    begin
      B := 'C';
      C := 'LULUS';
    end
  else
  if A >= 45 then
    begin
      B := 'D';
      C := 'LULUS';
    end
  else
  if A <= 44 then
    begin
      B := 'E';
      C := 'TIDAK LULUS';
    end;
  //
  with DM.qry_nilai do
    begin
      DM.qry_nilai.Close;
      DM.qry_nilai.SQL.Clear;
      DM.qry_nilai.SQL.Add('CALL UBAH_NILAI ('+QuotedStr(edt1.Text)+','+QuotedStr(edt2.Text)+','+QuotedStr(edt3.Text)+','+QuotedStr(B)+','+QuotedStr(C)+')');
      DM.qry_nilai.ExecSQL;

      DM.qry_nilai.Close;
      DM.qry_nilai.SQL.Clear;
      DM.qry_nilai.SQL.Add('CALL TAMPIL_NILAI');
      DM.qry_nilai.Active := True;

      edt1.Text :='';
      edt2.Text :='';
      edt3.Text :='';
    end;
end;

procedure TForm6.btn4Click(Sender: TObject);
begin
  with DM.qry_nilai do
    begin
      DM.qry_nilai.Close;
      DM.qry_nilai.SQL.Clear;
      DM.qry_nilai.SQL.Add('CALL HAPUS_NILAI ('+QuotedStr(edt1.Text)+')');
      DM.qry_nilai.ExecSQL;

      DM.qry_nilai.Close;
      DM.qry_nilai.SQL.Clear;
      DM.qry_nilai.SQL.Add('CALL TAMPIL_NILAI');
      DM.qry_nilai.Active := True;

      edt1.Text :='';
      edt2.Text :='';
      edt3.Text :='';
    end;
end;

procedure TForm6.dbgrd1CellClick(Column: TColumn);
begin
  edt1.Text := DM.qry_nilai['NIM'] ;
  edt2.Text := DM.qry_nilai['KODEMK'];
  edt3.Text := DM.qry_nilai['NILAIANGKA'];
end;

procedure TForm6.btn6Click(Sender: TObject);
begin
  Form9.show;
end;

procedure TForm6.btn7Click(Sender: TObject);
begin
  Form10.show;
end;

end.
