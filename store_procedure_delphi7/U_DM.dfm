object DM: TDM
  OldCreateOrder = False
  Left = 259
  Top = 165
  Height = 393
  Width = 541
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=store' +
      '_procedure;Initial Catalog=store_procedure1'
    LoginPrompt = False
    Left = 32
    Top = 24
  end
  object qry_mahasiswa: TADOQuery
    Connection = con1
    Parameters = <>
    Left = 48
    Top = 112
  end
  object qry_dosen: TADOQuery
    Connection = con1
    Parameters = <>
    Left = 48
    Top = 200
  end
  object qry_matakuliah: TADOQuery
    Connection = con1
    Parameters = <>
    Left = 56
    Top = 272
  end
  object qry_jurusan: TADOQuery
    Connection = con1
    Parameters = <>
    Left = 344
    Top = 48
  end
  object qry_nilai: TADOQuery
    Connection = con1
    Parameters = <>
    Left = 360
    Top = 144
  end
  object ds_mahasiswa: TDataSource
    DataSet = qry_mahasiswa
    Left = 104
    Top = 136
  end
  object ds_dosen: TDataSource
    DataSet = qry_dosen
    Left = 104
    Top = 208
  end
  object ds_matakuliah: TDataSource
    DataSet = qry_matakuliah
    Left = 104
    Top = 288
  end
  object ds_jurusan: TDataSource
    DataSet = qry_jurusan
    Left = 408
    Top = 64
  end
  object ds_nilai: TDataSource
    DataSet = qry_nilai
    Left = 416
    Top = 152
  end
end
