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
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 650
    Height = 508
    ActivePage = TabNewSQL
    Align = alClient
    TabOrder = 0
    object TabNewSQL: TTabSheet
      Caption = 'Format SQL'
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
      object Memo1: TMemo
        Left = 8
        Top = 44
        Width = 305
        Height = 369
        ScrollBars = ssVertical
        TabOrder = 0
        OnKeyDown = Memo1KeyDown
      end
      object Memo2: TMemo
        Left = 336
        Top = 44
        Width = 305
        Height = 369
        ScrollBars = ssVertical
        TabOrder = 1
        OnKeyDown = Memo2KeyDown
      end
      object Button2: TButton
        Left = 440
        Top = 431
        Width = 99
        Height = 49
        Caption = 'Clear'
        TabOrder = 2
        OnClick = Button2Click
      end
      object Button1: TButton
        Left = 553
        Top = 431
        Width = 89
        Height = 49
        Caption = 'GO!'
        TabOrder = 3
        OnClick = Button1Click
      end
    end
    object TabHistory: TTabSheet
      Caption = 'Recent History'
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 642
        Height = 425
        Align = alClient
        DataSource = dsHistory
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        PopupMenu = PopupMenu1
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'OUTPUT'
            Title.Caption = 'Register'
            Width = 600000
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 425
        Width = 642
        Height = 55
        Align = alBottom
        TabOrder = 1
        ExplicitTop = 426
        object btnClearHistory: TButton
          Left = 533
          Top = 1
          Width = 108
          Height = 53
          Align = alRight
          Caption = 'Clear History'
          TabOrder = 0
          OnClick = btnClearHistoryClick
          ExplicitLeft = 534
        end
      end
    end
  end
  object History: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 156
    Top = 456
    object HistoryID: TIntegerField
      FieldName = 'ID'
    end
    object HistoryINPUT: TMemoField
      FieldName = 'INPUT'
      OnGetText = HistoryINPUTGetText
      BlobType = ftMemo
    end
    object HistoryOUTPUT: TMemoField
      FieldName = 'OUTPUT'
      OnGetText = HistoryOUTPUTGetText
      BlobType = ftMemo
    end
  end
  object dsHistory: TDataSource
    DataSet = History
    Left = 108
    Top = 456
  end
  object PopupMenu1: TPopupMenu
    Left = 286
    Top = 136
    object Delete1: TMenuItem
      Caption = 'Delete'
      OnClick = Delete1Click
    end
    object Copy1: TMenuItem
      Caption = 'Copy'
      OnClick = Copy1Click
    end
  end
end
