object frmMain: TfrmMain
  Left = 172
  Top = 106
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'AceM2 GameCenter'
  ClientHeight = 470
  ClientWidth = 670
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = '??'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 10
    Top = 10
    Width = 650
    Height = 450
    ActivePage = TabSheet2
    HotTrack = True
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Main'
      object GroupBox5: TGroupBox
        Left = 10
        Top = 4
        Width = 621
        Height = 391
        Caption = 'Server Control'
        TabOrder = 0
        object Label24: TLabel
          Left = 413
          Top = 166
          Width = 16
          Height = 15
          Caption = 'Hr:'
        end
        object Label25: TLabel
          Left = 513
          Top = 166
          Width = 22
          Height = 15
          Caption = 'Min:'
        end
        object ButtonStartGame: TButton
          Left = 208
          Top = 333
          Width = 181
          Height = 41
          Caption = '&Start Server'
          TabOrder = 0
          OnClick = ButtonStartGameClick
        end
        object CheckBoxM2Server: TCheckBox
          Left = 10
          Top = 41
          Width = 201
          Height = 22
          Caption = 'M2Server'
          TabOrder = 1
          OnClick = CheckBoxM2ServerClick
        end
        object CheckBoxDBServer: TCheckBox
          Left = 10
          Top = 21
          Width = 221
          Height = 22
          Caption = 'DBServer'
          TabOrder = 2
          OnClick = CheckBoxDBServerClick
        end
        object CheckBoxLoginServer: TCheckBox
          Left = 310
          Top = 21
          Width = 221
          Height = 22
          Caption = 'LoginSrv'
          TabOrder = 3
          OnClick = CheckBoxLoginServerClick
        end
        object CheckBoxLogServer: TCheckBox
          Left = 310
          Top = 41
          Width = 221
          Height = 22
          Caption = 'LogDataServer'
          TabOrder = 4
          OnClick = CheckBoxLogServerClick
        end
        object CheckBoxSelGate1: TCheckBox
          Left = 310
          Top = 141
          Width = 201
          Height = 22
          Caption = '???????(SelGate):'
          TabOrder = 5
          OnClick = CheckBoxSelGate1Click
        end
        object CheckBoxRunGate: TCheckBox
          Left = 10
          Top = 61
          Width = 201
          Height = 22
          Caption = 'RunGate'
          TabOrder = 6
          OnClick = CheckBoxRunGateClick
        end
        object CheckBoxRunGate1: TCheckBox
          Tag = 1
          Left = 310
          Top = 61
          Width = 201
          Height = 22
          Caption = '?????(Rungate):'
          TabOrder = 7
          OnClick = CheckBoxRunGateClick
        end
        object CheckBoxRunGate2: TCheckBox
          Tag = 2
          Left = 10
          Top = 81
          Width = 201
          Height = 22
          Caption = '?????(Rungate):'
          TabOrder = 8
          OnClick = CheckBoxRunGateClick
        end
        object MemoLog: TMemo
          Left = 10
          Top = 190
          Width = 591
          Height = 131
          Color = clNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clYellow
          Font.Height = -15
          Font.Name = '??'
          Font.Style = []
          Lines.Strings = (
            'dsfasdfafd')
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 9
          OnChange = MemoLogChange
        end
        object CheckBoxRunGate3: TCheckBox
          Tag = 3
          Left = 310
          Top = 81
          Width = 201
          Height = 22
          Caption = '?????(Rungate):'
          TabOrder = 10
          OnClick = CheckBoxRunGateClick
        end
        object CheckBoxRunGate4: TCheckBox
          Tag = 4
          Left = 10
          Top = 101
          Width = 201
          Height = 22
          Caption = '?????(Rungate):'
          TabOrder = 11
          OnClick = CheckBoxRunGateClick
        end
        object CheckBoxRunGate5: TCheckBox
          Tag = 5
          Left = 310
          Top = 101
          Width = 201
          Height = 22
          Caption = '?????(Rungate):'
          TabOrder = 12
          OnClick = CheckBoxRunGateClick
        end
        object CheckBoxRunGate6: TCheckBox
          Tag = 6
          Left = 10
          Top = 121
          Width = 201
          Height = 22
          Caption = '?????(Rungate):'
          TabOrder = 13
          OnClick = CheckBoxRunGateClick
        end
        object CheckBoxRunGate7: TCheckBox
          Tag = 7
          Left = 310
          Top = 121
          Width = 201
          Height = 22
          Caption = '?????(Rungate):'
          TabOrder = 14
          OnClick = CheckBoxRunGateClick
        end
        object CheckBoxSelGate: TCheckBox
          Left = 10
          Top = 141
          Width = 201
          Height = 22
          Caption = 'SelGate'
          TabOrder = 15
          OnClick = CheckBoxSelGateClick
        end
        object CheckBoxLoginGate: TCheckBox
          Left = 10
          Top = 164
          Width = 203
          Height = 21
          Caption = 'LoginGate '
          TabOrder = 16
          OnClick = CheckBoxLoginGateClick
        end
        object ComboBoxRunStatus: TComboBox
          Left = 310
          Top = 161
          Width = 91
          Height = 23
          Style = csDropDownList
          ItemHeight = 15
          ItemIndex = 0
          TabOrder = 17
          Text = '????'
          OnChange = ComboBoxRunStatusChange
          Items.Strings = (
            '????'
            '????'
            '????')
        end
        object EditHour: TSpinEdit
          Left = 450
          Top = 161
          Width = 51
          Height = 24
          EditorEnabled = False
          Enabled = False
          MaxValue = 23
          MinValue = 0
          TabOrder = 18
          Value = 0
          OnChange = ComboBoxRunStatusChange
        end
        object EditMinute: TSpinEdit
          Left = 550
          Top = 161
          Width = 51
          Height = 24
          EditorEnabled = False
          Enabled = False
          MaxValue = 59
          MinValue = 0
          TabOrder = 19
          Value = 0
          OnChange = ComboBoxRunStatusChange
        end
        object CheckDBServer: TCheckBox
          Left = 220
          Top = 21
          Width = 58
          Height = 22
          Hint = '??????,????????????????'#13#10'??????,??????????????'
          Caption = '??'
          TabOrder = 20
          Visible = False
          OnClick = CheckDBServerClick
        end
        object CheckM2Server: TCheckBox
          Left = 220
          Top = 41
          Width = 58
          Height = 22
          Hint = '??????,????????????????'#13#10'??????,??????????????'
          Caption = '??'
          TabOrder = 21
          Visible = False
          OnClick = CheckM2ServerClick
        end
        object CheckRunGate1: TCheckBox
          Left = 220
          Top = 61
          Width = 58
          Height = 22
          Hint = '??????,????????????????'#13#10'??????,??????????????'
          Caption = '??'
          TabOrder = 22
          Visible = False
          OnClick = CheckRunGate1Click
        end
        object CheckRunGate7: TCheckBox
          Tag = 6
          Left = 220
          Top = 121
          Width = 58
          Height = 22
          Hint = '??????,????????????????'#13#10'??????,??????????????'
          Caption = '??'
          TabOrder = 23
          Visible = False
          OnClick = CheckRunGate1Click
        end
        object CheckRunGate5: TCheckBox
          Tag = 4
          Left = 220
          Top = 101
          Width = 58
          Height = 22
          Hint = '??????,????????????????'#13#10'??????,??????????????'
          Caption = '??'
          TabOrder = 24
          Visible = False
          OnClick = CheckRunGate1Click
        end
        object CheckRunGate3: TCheckBox
          Tag = 2
          Left = 220
          Top = 81
          Width = 58
          Height = 22
          Hint = '??????,????????????????'#13#10'??????,??????????????'
          Caption = '??'
          TabOrder = 25
          Visible = False
          OnClick = CheckRunGate1Click
        end
        object CheckLoginSrv: TCheckBox
          Left = 539
          Top = 23
          Width = 57
          Height = 21
          Hint = '??????,????????????????'#13#10'??????,??????????????'
          Caption = '??'
          TabOrder = 26
          Visible = False
          OnClick = CheckLoginSrvClick
        end
        object CheckLogServer: TCheckBox
          Left = 539
          Top = 41
          Width = 57
          Height = 22
          Hint = '??????,????????????????'#13#10'??????,??????????????'
          Caption = '??'
          TabOrder = 27
          Visible = False
          OnClick = CheckLogServerClick
        end
        object CheckRunGate2: TCheckBox
          Tag = 1
          Left = 539
          Top = 61
          Width = 57
          Height = 22
          Hint = '??????,????????????????'#13#10'??????,??????????????'
          Caption = '??'
          TabOrder = 28
          Visible = False
          OnClick = CheckRunGate1Click
        end
        object CheckRunGate4: TCheckBox
          Tag = 3
          Left = 539
          Top = 81
          Width = 57
          Height = 22
          Hint = '??????,????????????????'#13#10'??????,??????????????'
          Caption = '??'
          TabOrder = 29
          Visible = False
          OnClick = CheckRunGate1Click
        end
        object CheckRunGate6: TCheckBox
          Tag = 5
          Left = 539
          Top = 101
          Width = 57
          Height = 22
          Hint = '??????,????????????????'#13#10'??????,??????????????'
          Caption = '??'
          TabOrder = 30
          Visible = False
          OnClick = CheckRunGate1Click
        end
        object CheckRunGate8: TCheckBox
          Tag = 7
          Left = 539
          Top = 121
          Width = 57
          Height = 22
          Hint = '??????,????????????????'#13#10'??????,??????????????'
          Caption = '??'
          TabOrder = 31
          Visible = False
          OnClick = CheckRunGate1Click
        end
        object CheckSelGate2: TCheckBox
          Left = 539
          Top = 141
          Width = 57
          Height = 22
          Hint = '??????,????????????????'#13#10'??????,??????????????'
          Caption = '??'
          TabOrder = 32
          Visible = False
          OnClick = CheckSelGate2Click
        end
        object CheckLoginGate: TCheckBox
          Left = 220
          Top = 164
          Width = 58
          Height = 21
          Hint = '??????,????????????????'#13#10'??????,??????????????'
          Caption = '??'
          TabOrder = 33
          Visible = False
          OnClick = CheckLoginGateClick
        end
        object CheckSelGate1: TCheckBox
          Left = 220
          Top = 141
          Width = 58
          Height = 22
          Hint = '??????,????????????????'#13#10'??????,??????????????'
          Caption = '??'
          TabOrder = 34
          Visible = False
          OnClick = CheckSelGate1Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Server'
      ImageIndex = 1
      object PageControl2: TPageControl
        Left = 600
        Top = 180
        Width = 361
        Height = 241
        TabOrder = 0
      end
      object PageControl3: TPageControl
        Left = 0
        Top = 0
        Width = 642
        Height = 420
        ActivePage = TabSheet11
        Align = alClient
        TabOrder = 1
        TabPosition = tpBottom
        object TabSheet4: TTabSheet
          Caption = 'Server Details'
          object GroupBox1: TGroupBox
            Left = 4
            Top = 16
            Width = 611
            Height = 222
            Caption = 'Server Details'
            TabOrder = 0
            object Label1: TLabel
              Left = 10
              Top = 35
              Width = 107
              Height = 15
              Caption = 'Mir Server Location:'
            end
            object Label2: TLabel
              Left = 10
              Top = 65
              Width = 94
              Height = 15
              Caption = 'Database Name:'
            end
            object Label3: TLabel
              Left = 10
              Top = 95
              Width = 75
              Height = 15
              Caption = 'Server Name:'
            end
            object Label4: TLabel
              Left = 45
              Top = 125
              Width = 100
              Height = 15
              Alignment = taRightJustify
              Caption = 'Server IP Address:'
            end
            object Label30: TLabel
              Left = 59
              Top = 158
              Width = 109
              Height = 15
              Alignment = taRightJustify
              Caption = 'External Server IP 2:'
              Visible = False
            end
            object EditGameDir: TEdit
              Left = 170
              Top = 30
              Width = 281
              Height = 23
              Hint = '???????????????'#8220'D:\MirServer\'#8221'?'
              TabOrder = 0
              Text = 'D:\MirServer\'
            end
            object EditHeroDB: TEdit
              Left = 170
              Top = 60
              Width = 281
              Height = 23
              Hint = '????BDE ?????,??? '#8220'HeroDB'#8221'?'
              TabOrder = 1
              Text = 'HeroDB'
            end
            object EditGameName: TEdit
              Left = 170
              Top = 90
              Width = 201
              Height = 23
              Hint = '????????'
              TabOrder = 2
              Text = '?????'
            end
            object EditGameExtIPaddr: TEdit
              Left = 170
              Top = 120
              Width = 121
              Height = 23
              Hint = '????????IP???'
              TabOrder = 3
              Text = '127.0.0.1'
            end
            object ButtonGeneralDefalult: TButton
              Left = 500
              Top = 180
              Width = 101
              Height = 31
              Caption = '&Default'
              TabOrder = 4
              OnClick = ButtonGeneralDefalultClick
            end
            object CheckBoxIP2: TCheckBox
              Left = 309
              Top = 123
              Width = 142
              Height = 21
              Caption = 'Dual IP Setting'
              TabOrder = 5
              OnClick = CheckBoxIP2Click
            end
            object EditGameExtIPaddr2: TEdit
              Left = 170
              Top = 153
              Width = 121
              Height = 23
              Hint = '????????IP???'
              TabOrder = 6
              Text = '127.0.0.1'
              Visible = False
            end
          end
          object ButtonNext1: TButton
            Left = 510
            Top = 329
            Width = 101
            Height = 41
            Caption = '&Next'
            TabOrder = 1
            OnClick = ButtonNext1Click
          end
          object ButtonReLoadConfig: TButton
            Left = 510
            Top = 279
            Width = 101
            Height = 41
            Caption = '&Reload'
            TabOrder = 2
            OnClick = ButtonReLoadConfigClick
          end
          object GroupBox20: TGroupBox
            Left = 4
            Top = 245
            Width = 231
            Height = 126
            Caption = 'Server Options'
            TabOrder = 3
            object CheckBoxCloseWuXin: TCheckBox
              Left = 16
              Top = 24
              Width = 172
              Height = 21
              Caption = '?????????'
              TabOrder = 0
            end
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'LoginGate Details'
          ImageIndex = 1
          object ButtonNext2: TButton
            Left = 510
            Top = 329
            Width = 101
            Height = 41
            Caption = '&Next'
            TabOrder = 0
            OnClick = ButtonNext2Click
          end
          object GroupBox2: TGroupBox
            Left = 10
            Top = 10
            Width = 611
            Height = 221
            Caption = 'LoginGate'
            TabOrder = 1
            object GroupBox7: TGroupBox
              Left = 10
              Top = 20
              Width = 161
              Height = 91
              Caption = 'Position'
              TabOrder = 0
              object Label9: TLabel
                Left = 10
                Top = 25
                Width = 10
                Height = 15
                Caption = 'X:'
              end
              object Label10: TLabel
                Left = 10
                Top = 55
                Width = 9
                Height = 15
                Caption = 'Y:'
              end
              object EditLoginGate_MainFormX: TSpinEdit
                Left = 60
                Top = 20
                Width = 81
                Height = 24
                Hint = '?????????????,??X?'
                MaxValue = 10000
                MinValue = 0
                TabOrder = 0
                Value = 0
                OnChange = EditLoginGate_MainFormXChange
              end
              object EditLoginGate_MainFormY: TSpinEdit
                Left = 60
                Top = 50
                Width = 81
                Height = 24
                Hint = '?????????????,??Y?'
                MaxValue = 10000
                MinValue = 0
                TabOrder = 1
                Value = 0
                OnChange = EditLoginGate_MainFormYChange
              end
            end
            object ButtonLoginGateDefault: TButton
              Left = 506
              Top = 186
              Width = 102
              Height = 32
              Caption = '&Default'
              TabOrder = 1
              OnClick = ButtonLoginGateDefaultClick
            end
            object GroupBox23: TGroupBox
              Left = 180
              Top = 20
              Width = 161
              Height = 61
              Caption = 'Port Used'
              TabOrder = 2
              object Label28: TLabel
                Left = 10
                Top = 25
                Width = 25
                Height = 15
                Caption = 'Port:'
              end
              object EditLoginGate_GatePort: TEdit
                Left = 70
                Top = 20
                Width = 51
                Height = 23
                TabOrder = 0
                Text = '7000'
              end
            end
            object GroupBox27: TGroupBox
              Left = 10
              Top = 120
              Width = 181
              Height = 51
              Caption = 'Auto Start'
              TabOrder = 3
              object CheckBoxboLoginGate_GetStart: TCheckBox
                Left = 10
                Top = 20
                Width = 161
                Height = 21
                Caption = 'Enable'
                TabOrder = 0
                OnClick = CheckBoxboLoginGate_GetStartClick
              end
            end
          end
          object ButtonPrv2: TButton
            Left = 400
            Top = 329
            Width = 101
            Height = 41
            Caption = '&Previous'
            TabOrder = 2
            OnClick = ButtonPrv2Click
          end
        end
        object TabSheet6: TTabSheet
          Caption = 'SelGate Details'
          ImageIndex = 2
          object GroupBox3: TGroupBox
            Left = 10
            Top = 10
            Width = 611
            Height = 221
            Caption = 'SelGate'
            TabOrder = 0
            object GroupBox8: TGroupBox
              Left = 10
              Top = 20
              Width = 161
              Height = 91
              Caption = 'Position'
              TabOrder = 0
              object Label11: TLabel
                Left = 10
                Top = 25
                Width = 10
                Height = 15
                Caption = 'X:'
              end
              object Label12: TLabel
                Left = 10
                Top = 55
                Width = 9
                Height = 15
                Caption = 'Y:'
              end
              object EditSelGate_MainFormX: TSpinEdit
                Left = 60
                Top = 20
                Width = 81
                Height = 24
                Hint = '?????????????,??X?'
                MaxValue = 10000
                MinValue = 0
                TabOrder = 0
                Value = 0
                OnChange = EditSelGate_MainFormXChange
              end
              object EditSelGate_MainFormY: TSpinEdit
                Left = 60
                Top = 50
                Width = 81
                Height = 24
                Hint = '?????????????,??Y?'
                MaxValue = 10000
                MinValue = 0
                TabOrder = 1
                Value = 0
                OnChange = EditSelGate_MainFormYChange
              end
            end
            object ButtonSelGateDefault: TButton
              Left = 500
              Top = 180
              Width = 101
              Height = 31
              Caption = '&Defaults'
              TabOrder = 1
              OnClick = ButtonSelGateDefaultClick
            end
            object GroupBox24: TGroupBox
              Left = 180
              Top = 20
              Width = 161
              Height = 91
              Caption = 'Port Used'
              TabOrder = 2
              object Label29: TLabel
                Left = 10
                Top = 25
                Width = 32
                Height = 15
                Caption = 'Port1:'
              end
              object Label49: TLabel
                Left = 10
                Top = 55
                Width = 32
                Height = 15
                Caption = 'Port2:'
              end
              object EditSelGate_GatePort: TEdit
                Left = 70
                Top = 20
                Width = 51
                Height = 23
                TabOrder = 0
                Text = '7100'
              end
              object EditSelGate_GatePort1: TEdit
                Left = 70
                Top = 50
                Width = 51
                Height = 23
                TabOrder = 1
                Text = '7100'
              end
            end
            object GroupBox28: TGroupBox
              Left = 10
              Top = 120
              Width = 191
              Height = 71
              Caption = 'Auto Start'
              TabOrder = 3
              object CheckBoxboSelGate_GetStart: TCheckBox
                Left = 10
                Top = 20
                Width = 161
                Height = 21
                Caption = 'Enable1'
                TabOrder = 0
                OnClick = CheckBoxboSelGate_GetStartClick
              end
              object CheckBoxboSelGate_GetStart2: TCheckBox
                Left = 10
                Top = 41
                Width = 161
                Height = 22
                Caption = 'Enable2'
                TabOrder = 1
                OnClick = CheckBoxboSelGate_GetStart2Click
              end
            end
          end
          object ButtonPrv3: TButton
            Left = 400
            Top = 329
            Width = 101
            Height = 41
            Caption = '&Previous'
            TabOrder = 1
            OnClick = ButtonPrv3Click
          end
          object ButtonNext3: TButton
            Left = 510
            Top = 329
            Width = 101
            Height = 41
            Caption = '&Next'
            TabOrder = 2
            OnClick = ButtonNext3Click
          end
        end
        object TabSheet12: TTabSheet
          Caption = 'RunGate Details'
          ImageIndex = 8
          object ButtonPrv4: TButton
            Left = 400
            Top = 329
            Width = 101
            Height = 41
            Caption = '&Previous'
            TabOrder = 0
            OnClick = ButtonPrv4Click
          end
          object ButtonNext4: TButton
            Left = 510
            Top = 329
            Width = 101
            Height = 41
            Caption = '&Next'
            TabOrder = 1
            OnClick = ButtonNext4Click
          end
          object GroupBox17: TGroupBox
            Left = 10
            Top = 10
            Width = 611
            Height = 221
            Caption = 'RunGate'
            TabOrder = 2
            object GroupBox18: TGroupBox
              Left = 10
              Top = 20
              Width = 161
              Height = 91
              Caption = 'Position'
              TabOrder = 0
              object Label21: TLabel
                Left = 10
                Top = 25
                Width = 10
                Height = 15
                Caption = 'X:'
              end
              object Label22: TLabel
                Left = 10
                Top = 55
                Width = 9
                Height = 15
                Caption = 'Y:'
              end
              object EditRunGate_MainFormX: TSpinEdit
                Left = 60
                Top = 20
                Width = 81
                Height = 24
                Hint = '?????????????,??X?'
                MaxValue = 10000
                MinValue = 0
                TabOrder = 0
                Value = 0
                OnChange = EditRunGate_MainFormXChange
              end
              object EditRunGate_MainFormY: TSpinEdit
                Left = 60
                Top = 50
                Width = 81
                Height = 24
                Hint = '?????????????,??Y?'
                MaxValue = 10000
                MinValue = 0
                TabOrder = 1
                Value = 0
                OnChange = EditRunGate_MainFormYChange
              end
            end
            object GroupBox19: TGroupBox
              Left = 10
              Top = 140
              Width = 443
              Height = 71
              Caption = 'Auto Start'
              TabOrder = 1
              object Label23: TLabel
                Left = 10
                Top = 25
                Width = 17
                Height = 15
                Caption = '??:'
              end
              object CheckBoxboRunGate_GetStart1: TCheckBox
                Left = 10
                Top = 20
                Width = 101
                Height = 21
                Caption = 'Enable1'
                TabOrder = 0
                OnClick = CheckBoxboRunGate_GetStart2Click
              end
              object CheckBoxboRunGate_GetStart2: TCheckBox
                Tag = 1
                Left = 10
                Top = 41
                Width = 101
                Height = 22
                Caption = 'Enable2'
                TabOrder = 1
                OnClick = CheckBoxboRunGate_GetStart2Click
              end
              object CheckBoxboRunGate_GetStart3: TCheckBox
                Tag = 2
                Left = 119
                Top = 20
                Width = 101
                Height = 21
                Caption = 'Enable3'
                TabOrder = 2
                OnClick = CheckBoxboRunGate_GetStart2Click
              end
              object CheckBoxboRunGate_GetStart4: TCheckBox
                Tag = 3
                Left = 119
                Top = 41
                Width = 101
                Height = 22
                Caption = 'Enable4'
                TabOrder = 3
                OnClick = CheckBoxboRunGate_GetStart2Click
              end
              object CheckBoxboRunGate_GetStart5: TCheckBox
                Tag = 4
                Left = 228
                Top = 20
                Width = 101
                Height = 21
                Caption = 'Enable5'
                TabOrder = 4
                OnClick = CheckBoxboRunGate_GetStart2Click
              end
              object CheckBoxboRunGate_GetStart6: TCheckBox
                Tag = 5
                Left = 228
                Top = 41
                Width = 101
                Height = 22
                Caption = 'Enable6'
                TabOrder = 5
                OnClick = CheckBoxboRunGate_GetStart2Click
              end
              object CheckBoxboRunGate_GetStart7: TCheckBox
                Tag = 6
                Left = 336
                Top = 20
                Width = 102
                Height = 21
                Caption = 'Enable7'
                TabOrder = 6
                OnClick = CheckBoxboRunGate_GetStart2Click
              end
              object CheckBoxboRunGate_GetStart8: TCheckBox
                Tag = 7
                Left = 336
                Top = 41
                Width = 102
                Height = 22
                Caption = 'Enable8'
                TabOrder = 7
                OnClick = CheckBoxboRunGate_GetStart2Click
              end
            end
            object GroupBox22: TGroupBox
              Left = 180
              Top = 20
              Width = 411
              Height = 119
              Caption = 'Port Used'
              TabOrder = 2
              object LabelRunGate_GatePort1: TLabel
                Left = 10
                Top = 25
                Width = 32
                Height = 15
                Caption = 'Port1:'
              end
              object LabelLabelRunGate_GatePort2: TLabel
                Left = 10
                Top = 55
                Width = 32
                Height = 15
                Caption = 'Port2:'
              end
              object LabelRunGate_GatePort3: TLabel
                Left = 10
                Top = 85
                Width = 32
                Height = 15
                Caption = 'Port3:'
              end
              object LabelRunGate_GatePort4: TLabel
                Left = 130
                Top = 25
                Width = 32
                Height = 15
                Caption = 'Port4:'
              end
              object LabelRunGate_GatePort5: TLabel
                Left = 130
                Top = 55
                Width = 32
                Height = 15
                Caption = 'Port5:'
              end
              object LabelRunGate_GatePort6: TLabel
                Left = 130
                Top = 88
                Width = 32
                Height = 15
                Caption = 'Port6:'
              end
              object LabelRunGate_GatePort7: TLabel
                Left = 250
                Top = 25
                Width = 32
                Height = 15
                Caption = 'Port7:'
              end
              object LabelRunGate_GatePort78: TLabel
                Left = 250
                Top = 55
                Width = 32
                Height = 15
                Caption = 'Port8:'
              end
              object EditRunGate_GatePort1: TEdit
                Left = 70
                Top = 20
                Width = 51
                Height = 23
                TabOrder = 0
                Text = '7200'
              end
              object EditRunGate_GatePort2: TEdit
                Left = 70
                Top = 50
                Width = 51
                Height = 23
                TabOrder = 1
                Text = '7200'
              end
              object EditRunGate_GatePort3: TEdit
                Left = 70
                Top = 80
                Width = 51
                Height = 23
                TabOrder = 2
                Text = '7200'
              end
              object EditRunGate_GatePort4: TEdit
                Left = 190
                Top = 20
                Width = 51
                Height = 23
                TabOrder = 3
                Text = '7200'
              end
              object EditRunGate_GatePort5: TEdit
                Left = 190
                Top = 50
                Width = 51
                Height = 23
                TabOrder = 4
                Text = '7200'
              end
              object EditRunGate_GatePort6: TEdit
                Left = 190
                Top = 83
                Width = 51
                Height = 23
                TabOrder = 5
                Text = '7200'
              end
              object EditRunGate_GatePort7: TEdit
                Left = 310
                Top = 20
                Width = 51
                Height = 23
                TabOrder = 6
                Text = '7200'
              end
              object EditRunGate_GatePort8: TEdit
                Left = 310
                Top = 50
                Width = 51
                Height = 23
                TabOrder = 7
                Text = '7200'
              end
            end
            object ButtonRunGateDefault: TButton
              Left = 500
              Top = 180
              Width = 101
              Height = 31
              Caption = '&Defaults'
              TabOrder = 3
              OnClick = ButtonRunGateDefaultClick
            end
          end
        end
        object TabSheet7: TTabSheet
          Caption = 'LoginSrv Details'
          ImageIndex = 3
          object GroupBox9: TGroupBox
            Left = 10
            Top = 10
            Width = 611
            Height = 221
            Caption = 'LoginSrv'
            TabOrder = 0
            object GroupBox10: TGroupBox
              Left = 10
              Top = 20
              Width = 161
              Height = 91
              Caption = 'Position'
              TabOrder = 0
              object Label13: TLabel
                Left = 10
                Top = 25
                Width = 10
                Height = 15
                Caption = 'X:'
              end
              object Label14: TLabel
                Left = 10
                Top = 55
                Width = 9
                Height = 15
                Caption = 'Y:'
              end
              object EditLoginServer_MainFormX: TSpinEdit
                Left = 60
                Top = 20
                Width = 81
                Height = 24
                Hint = '?????????????,??X?'
                MaxValue = 10000
                MinValue = 0
                TabOrder = 0
                Value = 0
                OnChange = EditLoginServer_MainFormXChange
              end
              object EditLoginServer_MainFormY: TSpinEdit
                Left = 60
                Top = 50
                Width = 81
                Height = 24
                Hint = '?????????????,??Y?'
                MaxValue = 10000
                MinValue = 0
                TabOrder = 1
                Value = 0
                OnChange = EditLoginServer_MainFormYChange
              end
            end
            object ButtonLoginSrvDefault: TButton
              Left = 500
              Top = 180
              Width = 101
              Height = 31
              Caption = '&Default'
              TabOrder = 1
              OnClick = ButtonLoginSrvDefaultClick
            end
            object GroupBox33: TGroupBox
              Left = 180
              Top = 20
              Width = 268
              Height = 91
              Caption = 'Port Used'
              TabOrder = 2
              object Label50: TLabel
                Left = 10
                Top = 25
                Width = 54
                Height = 15
                Caption = 'Gate Port:'
              end
              object Label51: TLabel
                Left = 10
                Top = 55
                Width = 63
                Height = 15
                Caption = 'Server Port:'
              end
              object Label26: TLabel
                Left = 136
                Top = 25
                Width = 25
                Height = 15
                Caption = 'Port:'
              end
              object EditLoginServerGatePort: TEdit
                Left = 80
                Top = 20
                Width = 51
                Height = 23
                TabOrder = 0
                Text = '7200'
              end
              object EditLoginServerServerPort: TEdit
                Left = 80
                Top = 50
                Width = 51
                Height = 23
                TabOrder = 1
                Text = '7200'
              end
              object EditLoginServerMonPort: TEdit
                Left = 206
                Top = 20
                Width = 52
                Height = 23
                TabOrder = 2
                Text = '7200'
              end
            end
            object GroupBox34: TGroupBox
              Left = 10
              Top = 120
              Width = 201
              Height = 51
              Caption = 'Auto Start'
              TabOrder = 3
              object CheckBoxboLoginServer_GetStart: TCheckBox
                Left = 10
                Top = 20
                Width = 171
                Height = 21
                Caption = 'Enable'
                TabOrder = 0
                OnClick = CheckBoxboLoginServer_GetStartClick
              end
            end
          end
          object ButtonPrv5: TButton
            Left = 400
            Top = 329
            Width = 101
            Height = 41
            Caption = '&Previous'
            TabOrder = 1
            OnClick = ButtonPrv5Click
          end
          object ButtonNext5: TButton
            Left = 510
            Top = 329
            Width = 101
            Height = 41
            Caption = '&Next'
            TabOrder = 2
            OnClick = ButtonNext5Click
          end
        end
        object TabSheet8: TTabSheet
          Caption = 'DBSrv Details'
          ImageIndex = 4
          object GroupBox11: TGroupBox
            Left = 10
            Top = 10
            Width = 611
            Height = 221
            Caption = 'DB Server'
            TabOrder = 0
            object GroupBox12: TGroupBox
              Left = 10
              Top = 20
              Width = 161
              Height = 91
              Caption = 'Position'
              TabOrder = 0
              object Label15: TLabel
                Left = 10
                Top = 25
                Width = 10
                Height = 15
                Caption = 'X:'
              end
              object Label16: TLabel
                Left = 10
                Top = 55
                Width = 9
                Height = 15
                Caption = 'Y:'
              end
              object EditDBServer_MainFormX: TSpinEdit
                Left = 60
                Top = 20
                Width = 81
                Height = 24
                Hint = '?????????????,??X?'
                MaxValue = 10000
                MinValue = 0
                TabOrder = 0
                Value = 0
                OnChange = EditDBServer_MainFormXChange
              end
              object EditDBServer_MainFormY: TSpinEdit
                Left = 60
                Top = 50
                Width = 81
                Height = 24
                Hint = '?????????????,??Y?'
                MaxValue = 10000
                MinValue = 0
                TabOrder = 1
                Value = 0
                OnChange = EditDBServer_MainFormYChange
              end
            end
            object ButtonDBServerDefault: TButton
              Left = 500
              Top = 180
              Width = 101
              Height = 31
              Caption = '&Default'
              TabOrder = 1
              OnClick = ButtonDBServerDefaultClick
            end
            object GroupBox35: TGroupBox
              Left = 10
              Top = 120
              Width = 161
              Height = 51
              Caption = 'Auto Start'
              TabOrder = 2
              object CheckBoxDBServerGetStart: TCheckBox
                Left = 10
                Top = 20
                Width = 141
                Height = 21
                Caption = 'Enable'
                TabOrder = 0
                OnClick = CheckBoxDBServerGetStartClick
              end
            end
            object GroupBox36: TGroupBox
              Left = 180
              Top = 20
              Width = 261
              Height = 91
              Caption = 'Port Used'
              TabOrder = 3
              object Label52: TLabel
                Left = 10
                Top = 25
                Width = 54
                Height = 15
                Caption = 'Gate Port:'
              end
              object Label53: TLabel
                Left = 10
                Top = 55
                Width = 63
                Height = 15
                Caption = 'Server Port:'
              end
              object EditDBServerGatePort: TEdit
                Left = 100
                Top = 19
                Width = 51
                Height = 23
                TabOrder = 0
                Text = '5100'
              end
              object EditDBServerServerPort: TEdit
                Left = 100
                Top = 49
                Width = 51
                Height = 23
                TabOrder = 1
                Text = '6000'
              end
            end
          end
          object ButtonPrv6: TButton
            Left = 400
            Top = 329
            Width = 101
            Height = 41
            Caption = '&Previous'
            TabOrder = 1
            OnClick = ButtonPrv6Click
          end
          object ButtonNext6: TButton
            Left = 510
            Top = 329
            Width = 101
            Height = 41
            Caption = '&Next'
            TabOrder = 2
            OnClick = ButtonNext6Click
          end
        end
        object TabSheet9: TTabSheet
          Caption = 'LogData Details'
          ImageIndex = 5
          object GroupBox13: TGroupBox
            Left = 10
            Top = 10
            Width = 611
            Height = 221
            Caption = 'LogData Server'
            TabOrder = 0
            object GroupBox14: TGroupBox
              Left = 10
              Top = 20
              Width = 161
              Height = 91
              Caption = 'Position'
              TabOrder = 0
              object Label17: TLabel
                Left = 10
                Top = 25
                Width = 10
                Height = 15
                Caption = 'X:'
              end
              object Label18: TLabel
                Left = 10
                Top = 55
                Width = 9
                Height = 15
                Caption = 'Y:'
              end
              object EditLogServer_MainFormX: TSpinEdit
                Left = 60
                Top = 20
                Width = 81
                Height = 24
                Hint = '?????????????,??X?'
                MaxValue = 10000
                MinValue = 0
                TabOrder = 0
                Value = 0
                OnChange = EditLogServer_MainFormXChange
              end
              object EditLogServer_MainFormY: TSpinEdit
                Left = 60
                Top = 50
                Width = 81
                Height = 24
                Hint = '?????????????,??Y?'
                MaxValue = 10000
                MinValue = 0
                TabOrder = 1
                Value = 0
                OnChange = EditLogServer_MainFormYChange
              end
            end
            object ButtonLogServerDefault: TButton
              Left = 500
              Top = 180
              Width = 101
              Height = 31
              Caption = '&Default'
              TabOrder = 1
              OnClick = ButtonLogServerDefaultClick
            end
            object GroupBox37: TGroupBox
              Left = 10
              Top = 120
              Width = 161
              Height = 51
              Caption = 'Auto Start'
              TabOrder = 2
              object CheckBoxLogServerGetStart: TCheckBox
                Left = 10
                Top = 20
                Width = 141
                Height = 21
                Caption = 'Enable'
                TabOrder = 0
                OnClick = CheckBoxLogServerGetStartClick
              end
            end
            object GroupBox38: TGroupBox
              Left = 180
              Top = 20
              Width = 261
              Height = 91
              Caption = 'Port Used'
              TabOrder = 3
              object Label54: TLabel
                Left = 10
                Top = 25
                Width = 25
                Height = 15
                Caption = 'Port:'
              end
              object EditLogServerPort: TEdit
                Left = 80
                Top = 20
                Width = 51
                Height = 23
                TabOrder = 0
                Text = '10000'
              end
            end
          end
          object ButtonPrv7: TButton
            Left = 400
            Top = 329
            Width = 101
            Height = 41
            Caption = '&Previous'
            TabOrder = 1
            OnClick = ButtonPrv7Click
          end
          object ButtonNext7: TButton
            Left = 510
            Top = 329
            Width = 101
            Height = 41
            Caption = '&Next'
            TabOrder = 2
            OnClick = ButtonNext7Click
          end
        end
        object TabSheet10: TTabSheet
          Caption = 'M2Server Details'
          ImageIndex = 6
          object GroupBox15: TGroupBox
            Left = 10
            Top = 10
            Width = 611
            Height = 221
            Caption = 'M2Server'
            TabOrder = 0
            object GroupBox16: TGroupBox
              Left = 10
              Top = 20
              Width = 161
              Height = 91
              Caption = 'Position'
              TabOrder = 0
              object Label19: TLabel
                Left = 10
                Top = 25
                Width = 10
                Height = 15
                Caption = 'X:'
              end
              object Label20: TLabel
                Left = 10
                Top = 55
                Width = 9
                Height = 15
                Caption = 'Y:'
              end
              object EditM2Server_MainFormX: TSpinEdit
                Left = 60
                Top = 20
                Width = 81
                Height = 24
                Hint = '?????????????,??X?'
                MaxValue = 10000
                MinValue = 0
                TabOrder = 0
                Value = 0
                OnChange = EditM2Server_MainFormXChange
              end
              object EditM2Server_MainFormY: TSpinEdit
                Left = 60
                Top = 50
                Width = 81
                Height = 24
                Hint = '?????????????,??Y?'
                MaxValue = 10000
                MinValue = 0
                TabOrder = 1
                Value = 0
                OnChange = EditM2Server_MainFormYChange
              end
            end
            object ButtonM2ServerDefault: TButton
              Left = 500
              Top = 180
              Width = 101
              Height = 31
              Caption = '&Default'
              TabOrder = 1
              OnClick = ButtonM2ServerDefaultClick
            end
            object GroupBox39: TGroupBox
              Left = 180
              Top = 20
              Width = 231
              Height = 91
              Caption = 'Port Used'
              TabOrder = 2
              object Label55: TLabel
                Left = 10
                Top = 25
                Width = 54
                Height = 15
                Caption = 'Gate Port:'
              end
              object Label56: TLabel
                Left = 10
                Top = 55
                Width = 63
                Height = 15
                Caption = 'Server Port:'
              end
              object EditM2ServerGatePort: TEdit
                Left = 103
                Top = 20
                Width = 51
                Height = 23
                TabOrder = 0
                Text = '5000'
              end
              object EditM2ServerMsgSrvPort: TEdit
                Left = 103
                Top = 50
                Width = 51
                Height = 23
                TabOrder = 1
                Text = '4900'
              end
            end
            object GroupBox40: TGroupBox
              Left = 10
              Top = 120
              Width = 241
              Height = 51
              Caption = 'Auto Start'
              TabOrder = 3
              object CheckBoxM2ServerGetStart: TCheckBox
                Left = 10
                Top = 20
                Width = 211
                Height = 21
                Caption = 'Enable'
                TabOrder = 0
                OnClick = CheckBoxM2ServerGetStartClick
              end
            end
          end
          object ButtonPrv8: TButton
            Left = 400
            Top = 329
            Width = 101
            Height = 41
            Caption = '&previous'
            TabOrder = 1
            OnClick = ButtonPrv8Click
          end
          object ButtonNext8: TButton
            Left = 509
            Top = 331
            Width = 101
            Height = 42
            Caption = '&Next'
            TabOrder = 2
            OnClick = ButtonNext8Click
          end
        end
        object TabSheet11: TTabSheet
          Caption = 'Save Details'
          ImageIndex = 7
          object ButtonSave: TButton
            Left = 510
            Top = 329
            Width = 101
            Height = 41
            Caption = '&Save'
            TabOrder = 0
            OnClick = ButtonSaveClick
          end
          object ButtonGenGameConfig: TButton
            Left = 265
            Top = 329
            Width = 126
            Height = 41
            Caption = '&Generate Config'
            TabOrder = 1
            OnClick = ButtonGenGameConfigClick
          end
          object ButtonPrv9: TButton
            Left = 400
            Top = 329
            Width = 101
            Height = 41
            Caption = '&previous'
            TabOrder = 2
            OnClick = ButtonPrv9Click
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Backup'
      ImageIndex = 2
      object LabelBackMsg: TLabel
        Left = 480
        Top = 380
        Width = 8
        Height = 15
        Font.Charset = GB2312_CHARSET
        Font.Color = clGreen
        Font.Height = -15
        Font.Name = '??'
        Font.Style = []
        ParentFont = False
      end
      object GroupBox4: TGroupBox
        Left = 10
        Top = 10
        Width = 621
        Height = 191
        Caption = 'Backup List'
        TabOrder = 0
        object ListViewDataBackup: TListView
          Left = 10
          Top = 20
          Width = 601
          Height = 161
          Columns = <
            item
              Caption = 'Source'
              Width = 275
            end
            item
              Caption = 'Destination'
              Width = 275
            end>
          GridLines = True
          ReadOnly = True
          RowSelect = True
          TabOrder = 0
          ViewStyle = vsReport
          OnClick = ListViewDataBackupClick
        end
      end
      object GroupBox6: TGroupBox
        Left = 10
        Top = 210
        Width = 621
        Height = 151
        Caption = 'Details'
        TabOrder = 1
        object Label5: TLabel
          Left = 10
          Top = 25
          Width = 42
          Height = 15
          Caption = 'Source:'
        end
        object Label6: TLabel
          Left = 10
          Top = 55
          Width = 66
          Height = 15
          Caption = 'Destination:'
        end
        object Label7: TLabel
          Left = 150
          Top = 85
          Width = 20
          Height = 15
          Caption = 'Hr1'
        end
        object Label8: TLabel
          Left = 250
          Top = 85
          Width = 26
          Height = 15
          Caption = 'Min1'
        end
        object Label64: TLabel
          Left = 145
          Top = 115
          Width = 20
          Height = 15
          Caption = 'Hr2'
        end
        object Label65: TLabel
          Left = 250
          Top = 115
          Width = 26
          Height = 15
          Caption = 'Min2'
        end
        object RadioButtonBackMode1: TRadioButton
          Left = 10
          Top = 80
          Width = 61
          Height = 21
          Caption = 'Mode1'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = RadioButtonBackMode1Click
        end
        object RzButtonEditSource: TRzButtonEdit
          Left = 80
          Top = 20
          Width = 531
          Height = 23
          TabOrder = 1
          AltBtnWidth = 19
          ButtonWidth = 19
          OnButtonClick = RzButtonEditSourceButtonClick
        end
        object RzButtonEditDest: TRzButtonEdit
          Left = 80
          Top = 50
          Width = 531
          Height = 23
          TabOrder = 2
          AltBtnWidth = 19
          ButtonWidth = 19
          OnButtonClick = RzButtonEditDestButtonClick
        end
        object RadioButtonBackMode2: TRadioButton
          Left = 10
          Top = 110
          Width = 61
          Height = 21
          Caption = 'Mode2'
          TabOrder = 3
          OnClick = RadioButtonBackMode2Click
        end
        object RzSpinEditHour1: TRzSpinEdit
          Left = 80
          Top = 80
          Width = 59
          Height = 23
          Max = 23.000000000000000000
          TabOrder = 4
        end
        object RzSpinEditHour2: TRzSpinEdit
          Left = 80
          Top = 110
          Width = 59
          Height = 23
          Max = 10000000000.000000000000000000
          TabOrder = 5
        end
        object RzSpinEditMin1: TRzSpinEdit
          Left = 180
          Top = 80
          Width = 59
          Height = 23
          Max = 59.000000000000000000
          TabOrder = 6
        end
        object CheckBoxBackUp: TCheckBox
          Left = 280
          Top = 100
          Width = 61
          Height = 21
          Caption = 'Enable'
          Checked = True
          State = cbChecked
          TabOrder = 7
        end
        object RzSpinEditMin2: TRzSpinEdit
          Left = 180
          Top = 110
          Width = 59
          Height = 23
          Max = 59.000000000000000000
          TabOrder = 8
        end
        object CheckBoxZip: TCheckBox
          Left = 360
          Top = 100
          Width = 61
          Height = 21
          Caption = 'Zip'
          Checked = True
          State = cbChecked
          TabOrder = 9
        end
        object CheckBoxAutoRunBak: TCheckBox
          Left = 436
          Top = 100
          Width = 160
          Height = 21
          Caption = 'Auto Backup'
          TabOrder = 10
          OnClick = CheckBoxAutoRunBakClick
        end
      end
      object ButtonBackChg: TButton
        Left = 10
        Top = 370
        Width = 81
        Height = 31
        Caption = '&Change'
        TabOrder = 2
        OnClick = ButtonBackChgClick
      end
      object ButtonBackDel: TButton
        Left = 100
        Top = 370
        Width = 81
        Height = 31
        Caption = '&Delete'
        TabOrder = 3
        OnClick = ButtonBackDelClick
      end
      object ButtonBackAdd: TButton
        Left = 190
        Top = 370
        Width = 81
        Height = 31
        Caption = '&Add'
        TabOrder = 4
        OnClick = ButtonBackAddClick
      end
      object ButtonBackStart: TButton
        Left = 370
        Top = 370
        Width = 103
        Height = 31
        Caption = 'Start Backup'
        TabOrder = 5
        OnClick = ButtonBackStartClick
      end
      object ButtonBackSave: TButton
        Left = 280
        Top = 370
        Width = 81
        Height = 31
        Caption = '&Save'
        TabOrder = 6
        OnClick = ButtonBackSaveClick
      end
    end
    object TabSheetDebug: TTabSheet
      Caption = '??'
      ImageIndex = 6
      object GroupBox29: TGroupBox
        Left = 10
        Top = 0
        Width = 621
        Height = 411
        Caption = '????'
        TabOrder = 0
        object GroupBox30: TGroupBox
          Left = 10
          Top = 20
          Width = 331
          Height = 141
          Caption = '????'
          TabOrder = 0
          object Label45: TLabel
            Left = 10
            Top = 25
            Width = 17
            Height = 15
            Caption = '??:'
          end
          object Label46: TLabel
            Left = 10
            Top = 55
            Width = 24
            Height = 15
            Caption = '???:'
          end
          object Label58: TLabel
            Left = 10
            Top = 85
            Width = 24
            Height = 15
            Caption = '???:'
          end
          object EditM2CheckCodeAddr: TEdit
            Left = 70
            Top = 20
            Width = 121
            Height = 23
            TabOrder = 0
          end
          object EditM2CheckCode: TEdit
            Left = 70
            Top = 50
            Width = 121
            Height = 23
            TabOrder = 1
          end
          object ButtonM2Suspend: TButton
            Left = 250
            Top = 40
            Width = 71
            Height = 31
            Caption = '????'
            TabOrder = 2
            Visible = False
            OnClick = ButtonM2SuspendClick
          end
          object EditM2CheckStr: TEdit
            Left = 70
            Top = 80
            Width = 251
            Height = 23
            TabOrder = 3
          end
        end
        object GroupBox31: TGroupBox
          Left = 10
          Top = 170
          Width = 331
          Height = 131
          Caption = '???'
          TabOrder = 1
          object Label47: TLabel
            Left = 10
            Top = 25
            Width = 17
            Height = 15
            Caption = '??:'
          end
          object Label48: TLabel
            Left = 10
            Top = 55
            Width = 24
            Height = 15
            Caption = '???:'
          end
          object Label57: TLabel
            Left = 10
            Top = 85
            Width = 21
            Height = 15
            Caption = '???'
          end
          object EditDBCheckCodeAddr: TEdit
            Left = 70
            Top = 20
            Width = 121
            Height = 23
            TabOrder = 0
          end
          object EditDBCheckCode: TEdit
            Left = 70
            Top = 50
            Width = 121
            Height = 23
            TabOrder = 1
          end
          object Button3: TButton
            Left = 250
            Top = 40
            Width = 71
            Height = 31
            Caption = '????'
            TabOrder = 2
            Visible = False
            OnClick = ButtonM2SuspendClick
          end
          object EditDBCheckStr: TEdit
            Left = 70
            Top = 80
            Width = 251
            Height = 23
            TabOrder = 3
          end
        end
      end
    end
    object tsDataList: TTabSheet
      Caption = '????'
      ImageIndex = 4
      object Label27: TLabel
        Left = 13
        Top = 349
        Width = 17
        Height = 15
        Caption = '??:'
      end
      object LabelLog: TLabel
        Left = 58
        Top = 349
        Width = 3
        Height = 15
      end
      object GroupBox21: TGroupBox
        Left = 10
        Top = 10
        Width = 621
        Height = 330
        Caption = '????'
        TabOrder = 0
        object ListViewDataList: TListView
          Left = 10
          Top = 20
          Width = 601
          Height = 299
          Columns = <
            item
              Caption = '????'
              Width = 256
            end
            item
              Caption = '????'
              Width = 163
            end
            item
              Caption = '????'
              Width = 75
            end
            item
              Alignment = taCenter
              Caption = '??'
              Width = 75
            end>
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = '??'
          Font.Style = []
          GridLines = True
          MultiSelect = True
          ReadOnly = True
          RowSelect = True
          ParentFont = False
          PopupMenu = pm1
          TabOrder = 0
          ViewStyle = vsReport
          OnDblClick = ListViewDataListDblClick
        end
      end
      object btDataListSelect: TButton
        Left = 10
        Top = 370
        Width = 111
        Height = 31
        Caption = '????(&R)'
        TabOrder = 1
        OnClick = btDataListSelectClick
      end
      object btDataListAll: TButton
        Left = 129
        Top = 370
        Width = 111
        Height = 31
        Caption = '????(&A)'
        TabOrder = 2
        OnClick = btDataListAllClick
      end
      object btDataListList: TButton
        Left = 248
        Top = 370
        Width = 111
        Height = 31
        Caption = '????(&L)'
        TabOrder = 3
        OnClick = btDataListListClick
      end
    end
    object TabSheet13: TTabSheet
      Caption = 'Clean Up'
      ImageIndex = 5
      object GroupBox25: TGroupBox
        Left = 10
        Top = 10
        Width = 621
        Height = 238
        Caption = '????'
        TabOrder = 0
        object CheckBox1: TCheckBox
          Left = 20
          Top = 25
          Width = 161
          Height = 21
          Caption = 'Delete Char Data'
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
        object CheckBox2: TCheckBox
          Left = 20
          Top = 54
          Width = 181
          Height = 21
          Caption = 'Delete Account Data'
          Checked = True
          State = cbChecked
          TabOrder = 1
        end
        object CheckBox3: TCheckBox
          Left = 20
          Top = 83
          Width = 161
          Height = 21
          Caption = 'Delete Guild Data'
          Checked = True
          State = cbChecked
          TabOrder = 2
        end
        object CheckBox4: TCheckBox
          Left = 20
          Top = 111
          Width = 161
          Height = 22
          Caption = 'Delete Castle Data'
          Checked = True
          State = cbChecked
          TabOrder = 3
        end
        object CheckBox5: TCheckBox
          Left = 20
          Top = 140
          Width = 161
          Height = 21
          Caption = 'Empty Global Vars'
          TabOrder = 4
        end
        object CheckBox6: TCheckBox
          Left = 20
          Top = 169
          Width = 141
          Height = 21
          Caption = 'Reset Item ID'
          Checked = True
          State = cbChecked
          TabOrder = 5
        end
        object CheckBox7: TCheckBox
          Left = 20
          Top = 198
          Width = 210
          Height = 21
          Caption = 'Empty Relations Data'
          Checked = True
          State = cbChecked
          TabOrder = 6
        end
        object CheckBox8: TCheckBox
          Left = 260
          Top = 25
          Width = 190
          Height = 21
          Caption = 'Delete NPC Build Data'
          Checked = True
          State = cbChecked
          TabOrder = 7
        end
        object CheckBox9: TCheckBox
          Left = 260
          Top = 54
          Width = 151
          Height = 21
          Caption = 'Delete EMail Data'
          Checked = True
          State = cbChecked
          TabOrder = 8
        end
        object CheckBox10: TCheckBox
          Left = 260
          Top = 83
          Width = 201
          Height = 21
          Caption = 'Delete Account Logs'
          Checked = True
          State = cbChecked
          TabOrder = 9
        end
        object CheckBox11: TCheckBox
          Left = 260
          Top = 111
          Width = 181
          Height = 22
          Caption = 'Delete M2server Logs'
          Checked = True
          State = cbChecked
          TabOrder = 10
        end
        object CheckBox12: TCheckBox
          Left = 260
          Top = 140
          Width = 151
          Height = 21
          Caption = 'Delete Game Logs'
          Checked = True
          State = cbChecked
          TabOrder = 11
        end
      end
      object Button1: TButton
        Left = 218
        Top = 283
        Width = 173
        Height = 31
        Caption = '&Start Cleanup'
        TabOrder = 1
        OnClick = Button1Click
      end
    end
  end
  object TimerStartGame: TTimer
    Enabled = False
    Interval = 200
    OnTimer = TimerStartGameTimer
    Left = 88
    Top = 232
  end
  object TimerStopGame: TTimer
    Enabled = False
    Interval = 500
    OnTimer = TimerStopGameTimer
    Left = 120
    Top = 232
  end
  object TimerCheckRun: TTimer
    Enabled = False
    Interval = 2000
    OnTimer = TimerCheckRunTimer
    Left = 152
    Top = 232
  end
  object Timer: TTimer
    Enabled = False
    Interval = 10
    Left = 184
    Top = 232
  end
  object TimerCheckDebug: TTimer
    Enabled = False
    Interval = 500
    OnTimer = TimerCheckDebugTimer
    Left = 56
    Top = 232
  end
  object CSocket: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Port = 0
    OnConnecting = CSocketConnecting
    OnConnect = CSocketConnect
    OnDisconnect = CSocketDisconnect
    OnRead = CSocketRead
    OnError = CSocketError
    Left = 24
    Top = 232
  end
  object pm1: TPopupMenu
    Left = 216
    Top = 232
    object N1: TMenuItem
      Caption = '?????(&W)'
      OnClick = N1Click
    end
  end
  object dlgSave: TSaveDialog
    FilterIndex = 0
    Options = [ofHideReadOnly, ofNoChangeDir, ofNoNetworkButton, ofEnableSizing]
    Left = 248
    Top = 232
  end
end
