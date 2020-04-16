object Form3: TForm3
  Left = 283
  Top = 179
  Width = 928
  Height = 480
  Caption = 'DATA DOSEN'
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
  object lbl2: TLabel
    Left = 32
    Top = 72
    Width = 121
    Height = 24
    Caption = 'NAMA DOSEN'
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
    Left = 64
    Top = 136
    Width = 75
    Height = 25
    Caption = 'new'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 160
    Top = 136
    Width = 75
    Height = 25
    Caption = 'save'
    TabOrder = 3
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 264
    Top = 136
    Width = 75
    Height = 25
    Caption = 'update'
    TabOrder = 4
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 360
    Top = 136
    Width = 75
    Height = 25
    Caption = 'delete'
    TabOrder = 5
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 456
    Top = 136
    Width = 75
    Height = 25
    Caption = 'close'
    TabOrder = 6
    OnClick = btn5Click
  end
  object dbgrd1: TDBGrid
    Left = 24
    Top = 224
    Width = 841
    Height = 177
    DataSource = DM.ds_dosen
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
end
