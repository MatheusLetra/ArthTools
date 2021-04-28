object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'ARTH Tools'
  ClientHeight = 656
  ClientWidth = 662
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
    Width = 662
    Height = 656
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    OnChange = PageControl1Change
    ExplicitHeight = 629
    object TabSheet1: TTabSheet
      Caption = 'SQL Formatter'
      ExplicitWidth = 642
      ExplicitHeight = 583
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 654
        Height = 628
        ActivePage = TabNewSQL
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 650
        ExplicitHeight = 611
        object TabNewSQL: TTabSheet
          Caption = 'Format SQL'
          ExplicitHeight = 573
          object versionDetails: TLabel
            Left = 0
            Top = 584
            Width = 646
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
            ExplicitTop = 539
            ExplicitWidth = 181
          end
          object Panel3: TPanel
            Left = 0
            Top = 0
            Width = 646
            Height = 241
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
              Width = 640
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
              ExplicitWidth = 628
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
            Top = 254
            Width = 646
            Height = 330
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitTop = 228
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
              Width = 640
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
              ExplicitWidth = 628
            end
          end
          object Button2: TButton
            Left = 571
            Top = 535
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
          ExplicitHeight = 555
          object DBGrid1: TDBGrid
            Left = 0
            Top = 0
            Width = 646
            Height = 545
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
            Top = 545
            Width = 646
            Height = 55
            Align = alBottom
            TabOrder = 1
            ExplicitTop = 500
            object btnClearHistory: TButton
              Left = 537
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
    end
    object TabSheet2: TTabSheet
      Caption = 'Tag Converter'
      ImageIndex = 1
      ExplicitLeft = 8
      ExplicitTop = 28
      ExplicitHeight = 601
      object Label1: TLabel
        Left = 251
        Top = 248
        Width = 31
        Height = 21
        Caption = 'Pixels:'
        Layout = tlCenter
      end
      object Label2: TLabel
        Left = 224
        Top = 208
        Width = 62
        Height = 13
        Caption = 'Centimeters:'
        Layout = tlCenter
      end
      object Label3: TLabel
        Left = 224
        Top = 168
        Width = 51
        Height = 13
        Caption = 'Milimeters:'
        Layout = tlCenter
      end
      object Label4: TLabel
        Left = 212
        Top = 115
        Width = 70
        Height = 13
        Caption = 'Main Measure:'
      end
      object Edit1: TEdit
        Left = 288
        Top = 208
        Width = 121
        Height = 21
        Enabled = False
        TabOrder = 0
        OnKeyPress = Edit1KeyPress
      end
      object Edit2: TEdit
        Left = 288
        Top = 248
        Width = 121
        Height = 21
        Enabled = False
        TabOrder = 1
        OnKeyPress = Edit2KeyPress
      end
      object Button3: TButton
        Left = 288
        Top = 288
        Width = 121
        Height = 25
        Caption = 'Convert'
        TabOrder = 2
        OnClick = Button3Click
      end
      object Edit3: TEdit
        Left = 288
        Top = 165
        Width = 121
        Height = 21
        TabOrder = 3
        OnKeyPress = Edit1KeyPress
      end
      object ComboBox1: TComboBox
        Left = 288
        Top = 112
        Width = 121
        Height = 21
        ItemIndex = 0
        TabOrder = 4
        Text = 'Milimeters'
        OnChange = ComboBox1Change
        Items.Strings = (
          'Milimeters'
          'Centimeters'
          'Pixels')
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
