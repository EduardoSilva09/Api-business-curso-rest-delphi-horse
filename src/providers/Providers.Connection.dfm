object ProvidersConnection: TProvidersConnection
  OldCreateOrder = False
  Height = 254
  Width = 254
  object FDConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=curso_rest_pooled')
    LoginPrompt = False
    Left = 113
    Top = 32
  end
  object FDPhysPgDriverLink: TFDPhysPgDriverLink
    VendorHome = 'D:\Dev\DelphiProjects\curso-rest-delphi-horse\rest\business\src'
    Left = 112
    Top = 112
  end
end
