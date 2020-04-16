object Form8: TForm8
  Left = 290
  Top = 159
  Width = 436
  Height = 480
  Caption = 'CARI JURUSAN'
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
  object btn1: TButton
    Left = 24
    Top = 24
    Width = 377
    Height = 81
    Caption = 'close'
    TabOrder = 0
    OnClick = btn1Click
  end
  object dbgrd1: TDBGrid
    Left = 24
    Top = 120
    Width = 369
    Height = 297
    DataSource = DM.ds_jurusan
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
end
