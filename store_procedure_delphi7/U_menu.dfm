object Form1: TForm1
  Left = 233
  Top = 194
  Width = 928
  Height = 480
  Caption = 'MENU'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btn1: TButton
    Left = 88
    Top = 64
    Width = 201
    Height = 89
    Caption = 'MAHASISWA'
    TabOrder = 0
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 336
    Top = 64
    Width = 201
    Height = 89
    Caption = 'DOSEN'
    TabOrder = 1
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 592
    Top = 64
    Width = 201
    Height = 89
    Caption = 'JURUSAN'
    TabOrder = 2
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 88
    Top = 200
    Width = 201
    Height = 89
    Caption = 'MATAKULIAH'
    TabOrder = 3
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 336
    Top = 200
    Width = 201
    Height = 89
    Caption = 'NILAI'
    TabOrder = 4
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 592
    Top = 192
    Width = 201
    Height = 89
    Caption = 'CLOSE'
    TabOrder = 5
    OnClick = btn6Click
  end
end
