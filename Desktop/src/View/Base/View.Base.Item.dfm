object ViewBaseItem: TViewBaseItem
  Left = 0
  Top = 0
  Width = 501
  Height = 80
  TabOrder = 0
  OnResize = FrameResize
  PixelsPerInch = 96
  DesignSize = (
    501
    80)
  object ShapeLeft: TShape
    AlignWithMargins = True
    Left = 20
    Top = 5
    Width = 62
    Height = 70
    Margins.Left = 20
    Margins.Top = 5
    Margins.Right = 20
    Margins.Bottom = 5
    Align = alLeft
    Pen.Color = 5215004
    Shape = stRoundRect
    ExplicitLeft = 12
    ExplicitTop = 6
    ExplicitHeight = 86
  end
  object ShapeRight: TShape
    AlignWithMargins = True
    Left = 419
    Top = 5
    Width = 62
    Height = 70
    Margins.Left = 20
    Margins.Top = 5
    Margins.Right = 20
    Margins.Bottom = 5
    Align = alRight
    Pen.Color = 5215004
    Shape = stRoundRect
    ExplicitLeft = 28
    ExplicitTop = 10
    ExplicitHeight = 82
  end
  object pnlBase: TPanel
    AlignWithMargins = True
    Left = 32
    Top = 5
    Width = 436
    Height = 70
    Margins.Left = 0
    Margins.Top = 5
    Margins.Right = 20
    Margins.Bottom = 5
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    object pnlTop: TPanel
      AlignWithMargins = True
      Left = 0
      Top = 0
      Width = 436
      Height = 1
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      BevelOuter = bvNone
      Color = 5215004
      ParentBackground = False
      ShowCaption = False
      TabOrder = 0
      ExplicitTop = 5
      ExplicitWidth = 549
    end
    object pnlBottom: TPanel
      AlignWithMargins = True
      Left = 0
      Top = 69
      Width = 436
      Height = 1
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alBottom
      BevelOuter = bvNone
      Color = 5215004
      ParentBackground = False
      ShowCaption = False
      TabOrder = 1
      ExplicitTop = 5
      ExplicitWidth = 549
    end
  end
end
