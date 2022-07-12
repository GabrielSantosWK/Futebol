object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 169
    Width = 624
    Height = 272
    Align = alClient
    BevelOuter = bvNone
    ShowCaption = False
    TabOrder = 0
    object ScrollBox: TScrollBox
      Left = 0
      Top = 0
      Width = 624
      Height = 272
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      TabOrder = 0
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 624
        Height = 272
        Align = alClient
        Lines.Strings = (
          'Memo1')
        TabOrder = 0
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 169
    Align = alTop
    BevelOuter = bvNone
    Color = clAppWorkSpace
    ParentBackground = False
    ShowCaption = False
    TabOrder = 1
    object Edit1: TEdit
      Left = 56
      Top = 32
      Width = 121
      Height = 23
      BorderStyle = bsNone
      TabOrder = 0
      Text = 'Edit1'
    end
    object Button1: TButton
      Left = 368
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object HorseClientConnection1: THorseClientConnection
    Authentication = HorseClientAuthentication1
    Resourse = 'times'
    OnAfterGet = HorseClientConnection1AfterGet
    Left = 192
    Top = 225
  end
  object HorseClientAuthentication1: THorseClientAuthentication
    Protocol = Http
    Server = '127.0.0.1'
    Port = 9000
    Left = 416
    Top = 233
  end
end
