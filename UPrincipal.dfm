object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'SQL Formatter'
  ClientHeight = 508
  ClientWidth = 650
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 25
    Width = 32
    Height = 16
    Alignment = taCenter
    Caption = 'Input'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 336
    Top = 25
    Width = 42
    Height = 16
    Alignment = taCenter
    Caption = 'Output'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Memo1: TMemo
    Left = 8
    Top = 44
    Width = 305
    Height = 369
    TabOrder = 0
  end
  object Memo2: TMemo
    Left = 336
    Top = 44
    Width = 305
    Height = 369
    TabOrder = 1
  end
  object Button1: TButton
    Left = 240
    Top = 440
    Width = 169
    Height = 49
    Caption = 'GO!'
    TabOrder = 2
    OnClick = Button1Click
  end
end
