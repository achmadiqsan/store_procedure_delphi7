program P_store_procedure_d7;

uses
  Forms,
  U_menu in 'U_menu.pas' {Form1},
  U_DM in 'U_DM.pas' {DM: TDataModule},
  Umahasiswa in 'Umahasiswa.pas' {Form2},
  Udosen in 'Udosen.pas' {Form3},
  Ujurusan in 'Ujurusan.pas' {Form4},
  Umatakuliah in 'Umatakuliah.pas' {Form5},
  Unilai in 'Unilai.pas' {Form6},
  Ucaridosen in 'Ucaridosen.pas' {Form7},
  Ucarijurusan in 'Ucarijurusan.pas' {Form8},
  Ucarinim in 'Ucarinim.pas' {Form9},
  Ucarimatakuliah in 'Ucarimatakuliah.pas' {Form10};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm10, Form10);
  Application.Run;
end.
