unit Umahasiswa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm2 = class(TForm)
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
    procedure btn5Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses U_DM;

{$R *.dfm}

procedure TForm2.btn5Click(Sender: TObject);
begin
  edt1.Text := '';
  edt2.Text :='';
  edt3.Text :='';
  close;
end;

procedure TForm2.btn1Click(Sender: TObject);
begin
  edt1.Text := '';
  edt2.Text :='';
  edt3.Text :='';
end;

procedure TForm2.FormActivate(Sender: TObject);
begin
  DM.qry_mahasiswa.Close;
  DM.qry_mahasiswa.SQL.Clear;
  DM.qry_mahasiswa.SQL.Add('CALL TAMPIL_MAHASISWA');
  DM.qry_mahasiswa.Active := True;
end;

procedure TForm2.btn2Click(Sender: TObject);
begin
  with DM.qry_mahasiswa do
    begin
      DM.qry_mahasiswa.Close;
      DM.qry_mahasiswa.SQL.Clear;
      DM.qry_mahasiswa.SQL.Add('CALL TAMBAH_MAHASISWA ('+QuotedStr(edt1.Text)+','+QuotedStr(edt2.Text)+','+QuotedStr(edt3.Text)+')');
      DM.qry_mahasiswa.ExecSQL;

      DM.qry_mahasiswa.Close;
      DM.qry_mahasiswa.SQL.Clear;
      DM.qry_mahasiswa.SQL.Add('CALL TAMPIL_MAHASISWA');
      DM.qry_mahasiswa.Active := True;

      edt1.Text := '';
      edt2.Text :='';
      edt3.Text :='';
    end;

end;

procedure TForm2.btn3Click(Sender: TObject);
begin
  with DM.qry_mahasiswa do
    begin
      DM.qry_mahasiswa.Close;
      DM.qry_mahasiswa.SQL.Clear;
      DM.qry_mahasiswa.SQL.Add('CALL UBAH_MAHASISWA  ('+QuotedStr(edt1.Text)+','+QuotedStr(edt2.Text)+','+QuotedStr(edt3.Text)+')');
      DM.qry_mahasiswa.ExecSQL;

      DM.qry_mahasiswa.Close;
      DM.qry_mahasiswa.SQL.Clear;
      DM.qry_mahasiswa.SQL.Add('CALL TAMPIL_MAHASISWA');
      DM.qry_mahasiswa.Active := True;

      edt1.Text := '';
      edt2.Text :='';
      edt3.Text :='';
    end;
end;

procedure TForm2.btn4Click(Sender: TObject);
begin
  with DM.qry_mahasiswa do
    begin
      DM.qry_mahasiswa.Close;
      DM.qry_mahasiswa.SQL.Clear;
      DM.qry_mahasiswa.SQL.Add('CALL HAPUS_MAHASISWA ('+QuotedStr(edt1.Text)+')');
      DM.qry_mahasiswa.ExecSQL;

      DM.qry_mahasiswa.Close;
      DM.qry_mahasiswa.SQL.Clear;
      DM.qry_mahasiswa.SQL.Add('CALL TAMPIL_MAHASISWA');
      DM.qry_mahasiswa.Active := True;
    end;

end;

procedure TForm2.dbgrd1CellClick(Column: TColumn);
begin
  Edt1.Text := DM.qry_mahasiswa['NIM'] ;
  edt2.Text := DM.qry_mahasiswa['NAMAMHS'];     
  Edt3.Text := DM.qry_mahasiswa['KODEJURUSAN'];
end;

end.
