object Form2: TForm2
  Left = 311
  Top = 289
  Width = 928
  Height = 480
  Caption = 'DATA MAHASISWA'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 32
    Top = 32
    Width = 35
    Height = 24
    Caption = 'NIM'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 32
    Top = 72
    Width = 170
    Height = 24
    Caption = 'NAMA MAHASISWA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 32
    Top = 112
    Width = 139
    Height = 24
    Caption = 'KODE JURUSAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 240
    Top = 32
    Width = 257
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 240
    Top = 72
    Width = 257
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 240
    Top = 112
    Width = 257
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object btn1: TButton
    Left = 72
    Top = 184
    Width = 75
    Height = 25
    Caption = 'new'
    TabOrder = 3
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 168
    Top = 184
    Width = 75
    Height = 25
    Caption = 'save'
    TabOrder = 4
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 272
    Top = 184
    Width = 75
    Height = 25
    Caption = 'update'
    TabOrder = 5
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 368
    Top = 184
    Width = 75
    Height = 25
    Caption = 'delete'
    TabOrder = 6
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 464
    Top = 184
    Width = 75
    Height = 25
    Caption = 'close'
    TabOrder = 7
    OnClick = btn5Click
  end
  object dbgrd1: TDBGrid
    Left = 24
    Top = 232
    Width = 841
    Height = 177
    DataSource = DM.ds_mahasiswa
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
end
