object ProvidersConnection: TProvidersConnection
  Height = 199
  Width = 240
  PixelsPerInch = 96
  object FDConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=Liga')
    LoginPrompt = False
    Left = 24
    Top = 24
  end
  object FDPhysPgDriverLink: TFDPhysPgDriverLink
    VendorHome = 'C:\Projetos\Futebol\Server\'
    Left = 152
    Top = 80
  end
end
