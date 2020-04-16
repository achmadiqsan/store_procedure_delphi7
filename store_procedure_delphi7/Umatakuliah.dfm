object Form5: TForm5
  Left = 235
  Top = 149
  Width = 928
  Height = 534
  Caption = 'DATA MATAKULIAH'
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
    Width = 176
    Height = 24
    Caption = 'KODE MATAKULIAH'
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
    Width = 177
    Height = 24
    Caption = 'NAMA MATAKULIAH'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 32
    Top = 120
    Width = 34
    Height = 24
    Caption = 'SKS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 32
    Top = 160
    Width = 120
    Height = 24
    Caption = 'KODE DOSEN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 32
    Top = 200
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
  object btn1: TButton
    Left = 96
    Top = 248
    Width = 75
    Height = 25
    Caption = 'new'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 192
    Top = 248
    Width = 75
    Height = 25
    Caption = 'save'
    TabOrder = 3
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 296
    Top = 248
    Width = 75
    Height = 25
    Caption = 'update'
    TabOrder = 4
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 392
    Top = 248
    Width = 75
    Height = 25
    Caption = 'delete'
    TabOrder = 5
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 488
    Top = 248
    Width = 75
    Height = 25
    Caption = 'close'
    TabOrder = 6
    OnClick = btn5Click
  end
  object dbgrd1: TDBGrid
    Left = 24
    Top = 304
    Width = 841
    Height = 177
    DataSource = DM.ds_matakuliah
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edt3: TEdit
    Left = 240
    Top = 120
    Width = 257
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object edt4: TEdit
    Left = 240
    Top = 160
    Width = 257
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
  object edt5: TEdit
    Left = 240
    Top = 200
    Width = 257
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
  end
  object btn6: TButton
    Left = 512
    Top = 160
    Width = 75
    Height = 25
    Caption = '...'
    TabOrder = 11
    OnClick = btn6Click
  end
  object btn7: TButton
    Left = 512
    Top = 200
    Width = 75
    Height = 25
    Caption = '...'
    TabOrder = 12
    OnClick = btn7Click
  end
end
