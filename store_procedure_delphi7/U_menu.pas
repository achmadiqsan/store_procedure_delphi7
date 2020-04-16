unit U_menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Umahasiswa, Udosen, Ujurusan, Umatakuliah, Unilai;

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
  Form2.show;
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  Form3.show;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  Form4.show;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
  Form5.show;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
  Form6.show;
end;

end.
