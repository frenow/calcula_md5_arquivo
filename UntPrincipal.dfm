object Form2: TForm2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'SR-MD5'
  ClientHeight = 72
  ClientWidth = 351
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 351
    Height = 72
    Align = alClient
    TabOrder = 0
    object Button1: TButton
      Left = 136
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Arquivo'
      TabOrder = 0
      OnClick = Button1Click
    end
    object EdtMd5: TEdit
      Left = 8
      Top = 39
      Width = 337
      Height = 21
      TabOrder = 1
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 240
    Top = 24
  end
end
