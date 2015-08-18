object dmChangeNotification: TdmChangeNotification
  OldCreateOrder = False
  Height = 271
  Width = 404
  object AdventureworksConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=AdventureWorks')
    Connected = True
    LoginPrompt = False
    Left = 88
    Top = 52
  end
  object ProductcategoryTable: TFDQuery
    Active = True
    ChangeAlerter = FDEventAlerter1
    ChangeAlertName = 'ProductCategory'
    Connection = AdventureworksConnection
    SQL.Strings = (
      'SELECT * FROM AdventureWorks.Production.ProductCategory')
    Left = 88
    Top = 100
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 248
    Top = 48
  end
  object FDEventAlerter1: TFDEventAlerter
    Active = True
    Connection = AdventureworksConnection
    Names.Strings = (
      'SERVICE=?'
      'QUEUE=?'
      
        'CHANGE1=ProductCategory;SELECT * FROM AdventureWorks.Production.' +
        'ProductCategory')
    Options.Timeout = 5000
    OnAlert = FDEventAlerter1Alert
    OnTimeout = FDEventAlerter1Timeout
    Left = 80
    Top = 192
  end
end
