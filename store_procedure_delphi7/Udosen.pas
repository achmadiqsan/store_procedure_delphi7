unit Udosen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm3 = class(TForm)
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
  Form3: TForm3;

implementation

uses U_DM;

{$R *.dfm}

procedure TForm3.btn5Click(Sender: TObject);
begin
  edt1.Text :='';
  edt2.Text :='';
  close;
end;

procedure TForm3.btn1Click(Sender: TObject);
begin
  edt1.Text :='';
  edt2.Text :='';
end;

procedure TForm3.FormActivate(Sender: TObject);
begin
  DM.qry_dosen.Close;
  DM.qry_dosen.SQL.Clear;
  DM.qry_dosen.SQL.Add('CALL TAMPIL_DOSEN');
  DM.qry_dosen.Active := True;
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
  with DM.qry_dosen do
    begin
      DM.qry_dosen.Close;
      DM.qry_dosen.SQL.Clear;
      DM.qry_dosen.SQL.Add('CALL TAMBAH_DOSEN ('+QuotedStr(edt1.Text)+','+QuotedStr(edt2.Text)+')');
      DM.qry_dosen.ExecSQL;

      DM.qry_dosen.Close;
      DM.qry_dosen.SQL.Clear;
      DM.qry_dosen.SQL.Add('CALL TAMPIL_DOSEN');
      DM.qry_dosen.Active := True;

      edt1.Text :='';
      edt2.Text :='';
    end;
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
  with DM.qry_dosen do
    begin
      DM.qry_dosen.Close;
      DM.qry_dosen.SQL.Clear;
      DM.qry_dosen.SQL.Add('CALL UBAH_DOSEN ('+QuotedStr(edt1.Text)+','+QuotedStr(edt2.Text)+')');
      DM.qry_dosen.ExecSQL;

      DM.qry_dosen.Close;
      DM.qry_dosen.SQL.Clear;
      DM.qry_dosen.SQL.Add('CALL TAMPIL_DOSEN');
      DM.qry_dosen.Active := True;

      edt1.Text :='';
      edt2.Text :='';
    end;
end;

procedure TForm3.btn4Click(Sender: TObject);
begin
  with DM.qry_dosen do
    begin
      DM.qry_dosen.Close;
      DM.qry_dosen.SQL.Clear;
      DM.qry_dosen.SQL.Add('CALL HAPUS_DOSEN ('+QuotedStr(edt1.Text)+')');
      DM.qry_dosen.ExecSQL;

      DM.qry_dosen.Close;
      DM.qry_dosen.SQL.Clear;
      DM.qry_dosen.SQL.Add('CALL TAMPIL_DOSEN');
      DM.qry_dosen.Active := True;

      edt1.Text :='';
      edt2.Text :='';
    end;
end;

procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
  edt1.Text := DM.qry_dosen['KD_DOSEN'] ;
  edt2.Text := DM.qry_dosen['NAMA_DOSEN'];
end;

end.
