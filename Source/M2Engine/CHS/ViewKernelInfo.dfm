object frmViewKernelInfo: TfrmViewKernelInfo
  Left = 818
  Top = 584
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Kernal Data View'
  ClientHeight = 389
  ClientWidth = 403
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = '??'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 12
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 385
    Height = 373
    ActivePage = TabSheet5
    TabOrder = 0
    object TabSheet3: TTabSheet
      Caption = 'Global Variables'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object ListViewInteger: TListView
        Left = 9
        Top = 9
        Width = 359
        Height = 139
        Columns = <
          item
            Caption = 'No.'
          end
          item
            Caption = 'Current Value'
            Width = 285
          end>
        GridLines = True
        ReadOnly = True
        RowSelect = True
        TabOrder = 0
        ViewStyle = vsReport
        OnDblClick = ListViewIntegerDblClick
      end
      object ListViewString: TListView
        Left = 9
        Top = 163
        Width = 359
        Height = 139
        Columns = <
          item
            Caption = 'No.'
          end
          item
            Caption = 'Current String'
            Width = 285
          end>
        GridLines = True
        ReadOnly = True
        RowSelect = True
        TabOrder = 1
        ViewStyle = vsReport
        OnDblClick = ListViewStringDblClick
      end
      object Button1: TButton
        Left = 8
        Top = 312
        Width = 80
        Height = 25
        Caption = 'Empty Var'
        TabOrder = 2
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 105
        Top = 312
        Width = 80
        Height = 25
        Caption = 'Empty String'
        TabOrder = 3
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 289
        Top = 312
        Width = 80
        Height = 25
        Caption = '&Reload'
        TabOrder = 4
        Visible = False
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Game Data'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox1: TGroupBox
        Left = 8
        Top = 4
        Width = 168
        Height = 133
        Caption = 'Game Database'
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 20
          Width = 102
          Height = 12
          Caption = 'Load HumDB Count:'
        end
        object Label2: TLabel
          Left = 8
          Top = 44
          Width = 138
          Height = 12
          Caption = 'Load HumDB Error Count:'
        end
        object Label3: TLabel
          Left = 8
          Top = 68
          Width = 102
          Height = 12
          Caption = 'Save HumDB Count:'
        end
        object Label4: TLabel
          Left = 8
          Top = 92
          Width = 84
          Height = 12
          Caption = 'HumDB QueryID:'
        end
        object EditLoadHumanDBCount: TEdit
          Left = 88
          Top = 16
          Width = 71
          Height = 20
          ReadOnly = True
          TabOrder = 0
        end
        object EditLoadHumanDBErrorCoun: TEdit
          Left = 88
          Top = 40
          Width = 71
          Height = 20
          ReadOnly = True
          TabOrder = 1
        end
        object EditSaveHumanDBCount: TEdit
          Left = 88
          Top = 64
          Width = 71
          Height = 20
          ReadOnly = True
          TabOrder = 2
        end
        object EditHumanDBQueryID: TEdit
          Left = 88
          Top = 88
          Width = 71
          Height = 20
          ReadOnly = True
          TabOrder = 3
        end
      end
      object GroupBox4: TGroupBox
        Left = 182
        Top = 4
        Width = 190
        Height = 133
        Caption = 'Item Number'
        TabOrder = 1
        object Label7: TLabel
          Left = 8
          Top = 20
          Width = 78
          Height = 12
          Caption = 'Dropped Item:'
        end
        object Label8: TLabel
          Left = 8
          Top = 44
          Width = 72
          Height = 12
          Caption = 'Made by CMD:'
        end
        object EditItemNumber: TEdit
          Left = 88
          Top = 16
          Width = 93
          Height = 20
          ReadOnly = True
          TabOrder = 0
        end
        object EditItemNumberEx: TEdit
          Left = 88
          Top = 40
          Width = 93
          Height = 20
          ReadOnly = True
          TabOrder = 1
        end
      end
      object GroupBox3: TGroupBox
        Left = 8
        Top = 156
        Width = 168
        Height = 187
        Caption = 'Win Lottery'
        TabOrder = 2
        object Label9: TLabel
          Left = 8
          Top = 20
          Width = 24
          Height = 12
          Caption = '1st:'
        end
        object Label10: TLabel
          Left = 8
          Top = 44
          Width = 24
          Height = 12
          Caption = '2nd:'
        end
        object Label11: TLabel
          Left = 8
          Top = 68
          Width = 24
          Height = 12
          Caption = '3rd:'
        end
        object Label12: TLabel
          Left = 8
          Top = 92
          Width = 24
          Height = 12
          Caption = '4th:'
        end
        object Label13: TLabel
          Left = 8
          Top = 116
          Width = 24
          Height = 12
          Caption = '5th:'
        end
        object Label14: TLabel
          Left = 8
          Top = 140
          Width = 24
          Height = 12
          Caption = '6th:'
        end
        object EditWinLotteryLevel1: TEdit
          Left = 88
          Top = 16
          Width = 71
          Height = 20
          ReadOnly = True
          TabOrder = 0
        end
        object EditWinLotteryLevel2: TEdit
          Left = 88
          Top = 40
          Width = 71
          Height = 20
          ReadOnly = True
          TabOrder = 1
        end
        object EditWinLotteryLevel3: TEdit
          Left = 88
          Top = 64
          Width = 71
          Height = 20
          ReadOnly = True
          TabOrder = 2
        end
        object EditWinLotteryLevel4: TEdit
          Left = 88
          Top = 88
          Width = 71
          Height = 20
          ReadOnly = True
          TabOrder = 3
        end
        object EditWinLotteryLevel5: TEdit
          Left = 88
          Top = 112
          Width = 71
          Height = 20
          ReadOnly = True
          TabOrder = 4
        end
        object EditWinLotteryLevel6: TEdit
          Left = 88
          Top = 136
          Width = 71
          Height = 20
          ReadOnly = True
          TabOrder = 5
        end
      end
      object GroupBox2: TGroupBox
        Left = 182
        Top = 156
        Width = 190
        Height = 187
        Caption = 'Lottery Winning Number'
        TabOrder = 3
        object Label5: TLabel
          Left = 8
          Top = 20
          Width = 60
          Height = 12
          Caption = 'Win Count:'
        end
        object Label6: TLabel
          Left = 8
          Top = 44
          Width = 78
          Height = 12
          Caption = 'No Win Count:'
        end
        object EditWinLotteryCount: TEdit
          Left = 88
          Top = 16
          Width = 93
          Height = 20
          ReadOnly = True
          TabOrder = 0
        end
        object EditNoWinLotteryCount: TEdit
          Left = 88
          Top = 40
          Width = 93
          Height = 20
          ReadOnly = True
          TabOrder = 1
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Thread'
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox7: TGroupBox
        Left = 10
        Top = 3
        Width = 364
        Height = 137
        Caption = 'Thread State'
        TabOrder = 0
        object GridThread: TStringGrid
          Left = 10
          Top = 18
          Width = 343
          Height = 108
          DefaultRowHeight = 20
          FixedCols = 0
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
          TabOrder = 0
          ColWidths = (
            48
            50
            51
            102
            84)
        end
      end
    end
  end
  object Timer: TTimer
    Enabled = False
    OnTimer = TimerTimer
    Left = 368
    Top = 360
  end
  object MainMenu1: TMainMenu
    Top = 272
    object V1: TMenuItem
      Caption = '&View'
      object N1: TMenuItem
        Caption = '&Update Speed'
        object N2: TMenuItem
          Caption = '&High'
        end
        object N3: TMenuItem
          Caption = '&Normal'
          Checked = True
        end
        object N4: TMenuItem
          Caption = '&Low'
        end
      end
    end
    object A1: TMenuItem
      Caption = '&About'
    end
  end
end
