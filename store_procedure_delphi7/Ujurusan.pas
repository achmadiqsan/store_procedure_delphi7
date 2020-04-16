unit Ujurusan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm4 = class(TForm)
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
  Form4: TForm4;

implementation

uses U_DM;

{$R *.dfm}

procedure TForm4.btn5Click(Sender: TObject);
begin
  edt1.Text := '';
  edt2.Text :='';
  close;
end;

procedure TForm4.btn1Click(Sender: TObject);
begin
  edt1.Text := '';
  edt2.Text :='';
end;

procedure TForm4.FormActivate(Sender: TObject);
begin
  DM.qry_jurusan.Close;
  DM.qry_jurusan.SQL.Clear;
  DM.qry_jurusan.SQL.Add('CALL TAMPIL_JURUSAN');
  DM.qry_jurusan.Active := True;
end;

procedure TForm4.btn2Click(Sender: TObject);
begin
  with DM.qry_jurusan do
    begin
      DM.qry_jurusan.Close;
      DM.qry_jurusan.SQL.Clear;
      DM.qry_jurusan.SQL.Add('CALL TAMBAH_JURUSAN ('+QuotedStr(edt1.Text)+','+QuotedStr(edt2.Text)+')');
      DM.qry_jurusan.ExecSQL;

      DM.qry_jurusan.Close;
      DM.qry_jurusan.SQL.Clear;
      DM.qry_jurusan.SQL.Add('CALL TAMPIL_JURUSAN');
      DM.qry_jurusan.Active := True;

      edt1.Text := '';
      edt2.Text :='';
    end;
end;

procedure TForm4.btn3Click(Sender: TObject);
begin
  with DM.qry_jurusan do
    begin
      DM.qry_jurusan.Close;
      DM.qry_jurusan.SQL.Clear;
      DM.qry_jurusan.SQL.Add('CALL UBAH_JURUSAN ('+QuotedStr(edt1.Text)+','+QuotedStr(edt2.Text)+')');
      DM.qry_jurusan.ExecSQL;

      DM.qry_jurusan.Close;
      DM.qry_jurusan.SQL.Clear;
      DM.qry_jurusan.SQL.Add('CALL TAMPIL_JURUSAN');
      DM.qry_jurusan.Active := True;

      edt1.Text := '';
      edt2.Text :='';
    end;
end;

procedure TForm4.btn4Click(Sender: TObject);
begin
  with DM.qry_jurusan do
    begin
      DM.qry_jurusan.Close;
      DM.qry_jurusan.SQL.Clear;
      DM.qry_jurusan.SQL.Add('CALL HAPUS_JURUSAN ('+QuotedStr(edt1.Text)+')');
      DM.qry_jurusan.ExecSQL;

      DM.qry_jurusan.Close;
      DM.qry_jurusan.SQL.Clear;
      DM.qry_jurusan.SQL.Add('CALL TAMPIL_JURUSAN');
      DM.qry_jurusan.Active := True;

      edt1.Text := '';
      edt2.Text :='';
    end;
end;

procedure TForm4.dbgrd1CellClick(Column: TColumn);
begin
  edt1.Text := DM.qry_jurusan['KODEJURUSAN'] ;
  edt2.Text := DM.qry_jurusan['JURUSAN'];
end;

end.
