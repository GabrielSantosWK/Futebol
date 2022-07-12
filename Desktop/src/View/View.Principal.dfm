object ViewPrincipal: TViewPrincipal
  Left = 0
  Top = 0
  ClientHeight = 441
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 15
  object pnlBase: TPanel
    Left = 0
    Top = 0
    Width = 645
    Height = 441
    Align = alClient
    BevelOuter = bvNone
    Color = 15921906
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    object pnlTop: TPanel
      Left = 0
      Top = 0
      Width = 645
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      ShowCaption = False
      TabOrder = 0
    end
    object pnlBaseNavMain: TPanel
      Left = 0
      Top = 41
      Width = 645
      Height = 400
      Align = alClient
      BevelOuter = bvNone
      ShowCaption = False
      TabOrder = 1
      object pnlNav: TPanel
        Left = 0
        Top = 0
        Width = 208
        Height = 400
        Align = alLeft
        BevelOuter = bvNone
        Color = clMedGray
        ParentBackground = False
        ShowCaption = False
        TabOrder = 0
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 208
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          Caption = 'TIMES'
          TabOrder = 0
          OnDblClick = Panel1DblClick
          object Panel2: TPanel
            Left = 0
            Top = 39
            Width = 208
            Height = 2
            Align = alBottom
            BevelOuter = bvNone
            Color = clBlack
            ParentBackground = False
            TabOrder = 0
          end
        end
      end
      object pnlMain: TPanel
        Left = 208
        Top = 0
        Width = 437
        Height = 400
        Align = alClient
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        ShowCaption = False
        TabOrder = 1
      end
    end
  end
end
