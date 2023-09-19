object dmGeral: TdmGeral
  OnCreate = DataModuleCreate
  Height = 480
  Width = 640
  object FDConnection1: TFDConnection
    Params.Strings = (
      'LockingMode=Normal'
      
        'Database=C:\Users\als_a\Desktop\TesteFortes\Win32\Debug\dbGerAba' +
        'stecimento.db'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 72
    Top = 40
  end
  object qryTanqueBomba: TFDQuery
    Connection = FDConnection1
    Left = 72
    Top = 128
  end
  object qryAbastecimento: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT'
      '  a.IdAbastecimento, b.DsBomba, a.QtdeLitros, a.DsImposto, '
      '  cast(a.VlAbastecimento as varchar(10)) as VlAbastecimento ,'
      '  a.DsAbastecimento, a.DtAbastecimento '
      'FROM '
      '  Abastecimentos a '
      '  INNER JOIN Bombas b on a.IdBomba = b.IdBomba'
      'ORDER BY '
      '  a.DtAbastecimento Desc')
    Left = 72
    Top = 216
  end
end
