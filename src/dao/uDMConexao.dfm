object dmConexao: TdmConexao
  OnCreate = DataModuleCreate
  Height = 480
  Width = 640
  object FDConn: TFDConnection
    Params.Strings = (
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 304
    Top = 224
  end
  object FDDriverLink: TFDPhysSQLiteDriverLink
    Left = 344
    Top = 224
  end
  object FDWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 384
    Top = 224
  end
end
