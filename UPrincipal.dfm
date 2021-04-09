object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'SQL Formatter'
  ClientHeight = 611
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
    Height = 611
    ActivePage = TabNewSQL
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 547
    object TabNewSQL: TTabSheet
      Caption = 'Format SQL'
      ExplicitHeight = 519
      object versionDetails: TLabel
        Left = 0
        Top = 567
        Width = 642
        Height = 16
        Align = alBottom
        Caption = 'Developed by Matheus Letra'
        Color = clBtnHighlight
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
        ExplicitTop = 487
        ExplicitWidth = 181
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 642
        Height = 233
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Panel3'
        TabOrder = 0
        object Memo1: TMemo
          Left = 3
          Top = 45
          Width = 633
          Height = 183
          ScrollBars = ssVertical
          TabOrder = 0
          OnKeyDown = Memo1KeyDown
        end
        object Panel5: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 636
          Height = 41
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = 'INPUT'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Padding.Left = 50
          Padding.Top = 50
          Padding.Right = 50
          Padding.Bottom = 50
          ParentFont = False
          TabOrder = 1
          ExplicitLeft = 4
          ExplicitTop = -2
          object Button1: TButton
            Left = 544
            Top = 0
            Width = 89
            Height = 41
            Caption = 'GO!'
            TabOrder = 0
            OnClick = Button1Click
          end
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 237
        Width = 642
        Height = 330
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object Memo2: TMemo
          Left = 3
          Top = 36
          Width = 633
          Height = 222
          ScrollBars = ssVertical
          TabOrder = 0
          OnKeyDown = Memo2KeyDown
        end
        object Panel6: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 636
          Height = 30
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = 'OUTPUT'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          ExplicitLeft = 4
          ExplicitTop = 5
          ExplicitWidth = 634
        end
      end
      object Button2: TButton
        Left = 571
        Top = 503
        Width = 65
        Height = 25
        Caption = 'Clear All'
        TabOrder = 2
        OnClick = Button2Click
      end
    end
    object TabHistory: TTabSheet
      Caption = 'Recent History'
      ImageIndex = 1
      ExplicitHeight = 519
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 642
        Height = 528
        Align = alClient
        DataSource = dsHistory
        Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
        Top = 528
        Width = 642
        Height = 55
        Align = alBottom
        TabOrder = 1
        ExplicitTop = 464
        object btnClearHistory: TButton
          Left = 533
          Top = 1
          Width = 108
          Height = 53
          Align = alRight
          Caption = 'Clear History'
          TabOrder = 0
          OnClick = btnClearHistoryClick
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
