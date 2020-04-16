object Form6: TForm6
  Left = 248
  Top = 163
  Width = 928
  Height = 480
  Caption = 'DATA NILAI'
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
  object lbl3: TLabel
    Left = 32
    Top = 120
    Width = 117
    Height = 24
    Caption = 'NILAI ANGKA'
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
    Top = 120
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
    Left = 56
    Top = 176
    Width = 75
    Height = 25
    Caption = 'new'
    TabOrder = 3
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 152
    Top = 176
    Width = 75
    Height = 25
    Caption = 'save'
    TabOrder = 4
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 256
    Top = 176
    Width = 75
    Height = 25
    Caption = 'update'
    TabOrder = 5
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 352
    Top = 176
    Width = 75
    Height = 25
    Caption = 'delete'
    TabOrder = 6
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 448
    Top = 176
    Width = 75
    Height = 25
    Caption = 'close'
    TabOrder = 7
    OnClick = btn5Click
  end
  object dbgrd1: TDBGrid
    Left = 16
    Top = 240
    Width = 841
    Height = 177
    DataSource = DM.ds_nilai
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object btn6: TButton
    Left = 504
    Top = 32
    Width = 75
    Height = 25
    Caption = '...'
    TabOrder = 9
    OnClick = btn6Click
  end
  object btn7: TButton
    Left = 504
    Top = 72
    Width = 75
    Height = 25
    Caption = '...'
    TabOrder = 10
    OnClick = btn7Click
  end
end
