object frmIPaddrFilter: TfrmIPaddrFilter
  Left = 276
  Top = 168
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Web Security Filtering'
  ClientHeight = 331
  ClientWidth = 634
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 12
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 116
    Height = 316
    Caption = 'Current Connection'
    TabOrder = 0
    object Label4: TLabel
      Left = 8
      Top = 16
      Width = 96
      Height = 12
      Caption = 'Connection List:'
    end
    object ListBoxActiveList: TListBox
      Left = 8
      Top = 34
      Width = 99
      Height = 271
      ItemHeight = 12
      Items.Strings = (
        '888.888.888.888')
      ParentShowHint = False
      PopupMenu = ActiveListPopupMenu
      ShowHint = True
      Sorted = True
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 123
    Top = 8
    Width = 225
    Height = 316
    Caption = 'Filter List'
    TabOrder = 1
    object LabelTempList: TLabel
      Left = 8
      Top = 16
      Width = 108
      Height = 12
      Caption = 'Dynamic Filtering:'
    end
    object Label1: TLabel
      Left = 113
      Top = 16
      Width = 114
      Height = 12
      Caption = 'Permanent filtrati:'
    end
    object Label23: TLabel
      Left = 7
      Top = 187
      Width = 96
      Height = 12
      Caption = 'Filter IP range:'
    end
    object ListBoxBlockList: TListBox
      Left = 113
      Top = 34
      Width = 99
      Height = 146
      Hint = #27704#20037#36807#28388#21015#34920#65292#22312#27492#21015#34920#20013#30340'IP'#23558#26080#27861#24314#31435#36830#25509#65292#27492#21015#34920#23558#20445#23384#20110#37197#32622#25991#20214#20013#65292#22312#31243#24207#37325#26032#21551#21160#26102#20250#37325#26032#21152#36733#27492#21015#34920
      ItemHeight = 12
      Items.Strings = (
        '888.888.888.888')
      ParentShowHint = False
      PopupMenu = BlockListPopupMenu
      ShowHint = True
      Sorted = True
      TabOrder = 0
    end
    object ListBoxTempList: TListBox
      Left = 8
      Top = 34
      Width = 99
      Height = 146
      Hint = #21160#24577#36807#28388#21015#34920#65292#22312#27492#21015#34920#20013#30340'IP'#23558#26080#27861#24314#31435#36830#25509#65292#20294#22312#31243#24207#37325#26032#21551#21160#26102#27492#21015#34920#30340#20449#24687#23558#34987#28165#31354
      ItemHeight = 12
      Items.Strings = (
        '888.888.888.888')
      ParentShowHint = False
      PopupMenu = TempBlockListPopupMenu
      ShowHint = True
      Sorted = True
      TabOrder = 1
    end
    object ListBoxIpList: TListBox
      Left = 8
      Top = 202
      Width = 204
      Height = 103
      ItemHeight = 12
      Items.Strings = (
        '888.888.888.888')
      ParentShowHint = False
      PopupMenu = IPListPopupMenu
      ShowHint = True
      Sorted = True
      TabOrder = 2
    end
  end
  object GroupBox6: TGroupBox
    Left = 354
    Top = 8
    Width = 247
    Height = 283
    Caption = 'Attack Protection'
    TabOrder = 2
    object GroupBox7: TGroupBox
      Left = 10
      Top = 19
      Width = 215
      Height = 142
      Caption = 'Connection protection'
      TabOrder = 0
      object Label7: TLabel
        Left = 57
        Top = 91
        Width = 66
        Height = 12
        Caption = 'M/S/connect'
      end
      object Label2: TLabel
        Left = 57
        Top = 116
        Width = 66
        Height = 12
        Caption = 'M/s/Connect'
      end
      object Label9: TLabel
        Left = 7
        Top = 41
        Width = 54
        Height = 12
        Caption = 'Time out:'
      end
      object Label3: TLabel
        Left = 7
        Top = 19
        Width = 54
        Height = 12
        Caption = 'Connect :'
      end
      object Label10: TLabel
        Left = 119
        Top = 17
        Width = 78
        Height = 12
        Caption = 'Connection/IP'
      end
      object Label11: TLabel
        Left = 119
        Top = 41
        Width = 36
        Height = 12
        Caption = 'Second'
      end
      object Label5: TLabel
        Left = 7
        Top = 65
        Width = 66
        Height = 12
        Caption = 'Empty time:'
      end
      object Label6: TLabel
        Left = 119
        Top = 65
        Width = 36
        Height = 12
        Caption = 'Second'
      end
      object Edit_CountLimit1: TSpinEdit
        Left = 126
        Top = 87
        Width = 38
        Height = 21
        Hint = #36229#36830#25509#20445#25252#65292#22312#25351#23450#30340#36830#25509#26102#38388#20869#26368#22823#20801#35768#36830#25509#25968#12290
        MaxValue = 255
        MinValue = 1
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Value = 1
        OnChange = Edit_CountLimit1Change
      end
      object Edit_CountLimit2: TSpinEdit
        Left = 126
        Top = 112
        Width = 38
        Height = 21
        Hint = #36229#36830#25509#20445#25252#65292#22312#25351#23450#30340#36830#25509#26102#38388#20869#26368#22823#20801#35768#36830#25509#25968#12290
        MaxValue = 255
        MinValue = 1
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Value = 1
        OnChange = Edit_CountLimit2Change
      end
      object Edit_LimitTime1: TSpinEdit
        Left = 7
        Top = 87
        Width = 47
        Height = 21
        Hint = #36229#36830#25509#20445#25252#65292#36830#25509#25351#23450#26102#38388#12290
        Increment = 100
        MaxValue = 20000
        MinValue = 1
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Value = 1
        OnChange = Edit_LimitTime1Change
      end
      object Edit_LimitTime2: TSpinEdit
        Left = 7
        Top = 112
        Width = 47
        Height = 21
        Hint = #36229#36830#25509#20445#25252#65292#36830#25509#25351#23450#26102#38388#12290
        Increment = 100
        MaxValue = 20000
        MinValue = 1
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        Value = 1
        OnChange = Edit_LimitTime2Change
      end
      object EditMaxConnect: TSpinEdit
        Left = 75
        Top = 14
        Width = 41
        Height = 21
        MaxValue = 1000
        MinValue = 1
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        Value = 50
        OnChange = EditMaxConnectChange
      end
      object EditClientTimeOutTime: TSpinEdit
        Left = 75
        Top = 37
        Width = 41
        Height = 21
        MaxValue = 999
        MinValue = 1
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        Value = 5
        OnChange = EditClientTimeOutTimeChange
      end
      object EditConnectTimeOut: TSpinEdit
        Left = 75
        Top = 61
        Width = 41
        Height = 21
        MaxValue = 999
        MinValue = 1
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        Value = 5
        OnChange = EditConnectTimeOutChange
      end
    end
    object GroupBox3: TGroupBox
      Left = 10
      Top = 167
      Width = 223
      Height = 73
      Caption = 'Attack Operation'
      TabOrder = 1
      object RadioAddBlockList: TRadioButton
        Left = 16
        Top = 48
        Width = 204
        Height = 17
        Hint = 
          'Add the IP of this connection to the permanent filter list and f' +
          'orcibly terminate all connections of this IP'
        Caption = 'Add to permanent filter list'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = RadioAddBlockListClick
      end
      object RadioAddTempList: TRadioButton
        Left = 16
        Top = 32
        Width = 193
        Height = 17
        Hint = 
          'Add the IP of this connection to the dynamic filter list and for' +
          'cibly terminate all connections of this IP'
        Caption = 'Add to dynamic filter list'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = RadioAddTempListClick
      end
      object RadioDisConnect: TRadioButton
        Left = 16
        Top = 16
        Width = 129
        Height = 17
        Hint = 'Simply disconnect the connection'
        Caption = 'Disconnect'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = RadioDisConnectClick
      end
    end
    object CheckBoxCCProtect: TCheckBox
      Left = 10
      Top = 260
      Width = 223
      Height = 17
      Hint = #26412#35774#32622#21487#38450#19968#23450#37327#30340'CC'#25915#20987#13#10#35831#19981#35201#24403#38450#28779#22681#20351#29992#65292#23545#20110#22823#27969#37327#30340#25915#20987#36824#26159#26080#33021#20026#21147#30340
      Caption = 'Automatically identify CC attacks and enable defense'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = CheckBoxCCProtectClick
    end
    object CheckBoxCheckClientMsg: TCheckBox
      Left = 10
      Top = 245
      Width = 234
      Height = 17
      Caption = 'Enable packet filtering detection'
      TabOrder = 3
      OnClick = CheckBoxCheckClientMsgClick
    end
  end
  object ButtonOK: TButton
    Left = 475
    Top = 297
    Width = 66
    Height = 27
    Caption = 'OK(&O)'
    TabOrder = 3
    OnClick = ButtonOKClick
  end
  object BlockListPopupMenu: TPopupMenu
    OnPopup = BlockListPopupMenuPopup
    Left = 264
    Top = 120
    object BPOPMENU_REFLIST: TMenuItem
      Caption = #21047#26032'(&R)'
      OnClick = BPOPMENU_REFLISTClick
    end
    object BPOPMENU_SORT: TMenuItem
      Caption = #25490#24207'(&S)'
      OnClick = BPOPMENU_SORTClick
    end
    object BPOPMENU_ADD: TMenuItem
      Caption = #22686#21152'(&A)'
      OnClick = BPOPMENU_ADDClick
    end
    object BPOPMENU_ADDTEMPLIST: TMenuItem
      Caption = #21152#20837#21160#24577#36807#28388#21015#34920'(&A)'
      OnClick = BPOPMENU_ADDTEMPLISTClick
    end
    object BPOPMENU_DELETE: TMenuItem
      Caption = #21024#38500'(&D)'
      OnClick = BPOPMENU_DELETEClick
    end
  end
  object TempBlockListPopupMenu: TPopupMenu
    OnPopup = TempBlockListPopupMenuPopup
    Left = 168
    Top = 120
    object TPOPMENU_REFLIST: TMenuItem
      Caption = #21047#26032'(&R)'
      OnClick = TPOPMENU_REFLISTClick
    end
    object TPOPMENU_SORT: TMenuItem
      Caption = #25490#24207'(&S)'
      OnClick = TPOPMENU_SORTClick
    end
    object TPOPMENU_ADD: TMenuItem
      Caption = #22686#21152'(&A)'
      OnClick = TPOPMENU_ADDClick
    end
    object TPOPMENU_BLOCKLIST: TMenuItem
      Caption = #21152#20837#27704#20037#36807#28388#21015#34920'(&D)'
      OnClick = TPOPMENU_BLOCKLISTClick
    end
    object TPOPMENU_DELETE: TMenuItem
      Caption = #21024#38500'(&D)'
      OnClick = TPOPMENU_DELETEClick
    end
  end
  object ActiveListPopupMenu: TPopupMenu
    OnPopup = ActiveListPopupMenuPopup
    Left = 56
    Top = 160
    object APOPMENU_REFLIST: TMenuItem
      Caption = #21047#26032'(&R)'
      OnClick = APOPMENU_REFLISTClick
    end
    object APOPMENU_SORT: TMenuItem
      Caption = #25490#24207'(&S)'
      OnClick = APOPMENU_SORTClick
    end
    object APOPMENU_ADDTEMPLIST: TMenuItem
      Caption = #21152#20837#21160#24577#36807#28388#21015#34920'(&A)'
      OnClick = APOPMENU_ADDTEMPLISTClick
    end
    object APOPMENU_BLOCKLIST: TMenuItem
      Caption = #21152#20837#27704#20037#36807#28388#21015#34920'(&D)'
      OnClick = APOPMENU_BLOCKLISTClick
    end
    object APOPMENU_KICK: TMenuItem
      Caption = #36386#38500#19979#32447'(&K)'
      OnClick = APOPMENU_KICKClick
    end
  end
  object IPListPopupMenu: TPopupMenu
    OnPopup = IPListPopupMenuPopup
    Left = 215
    Top = 253
    object IPMENU_SORT: TMenuItem
      Caption = #25490#24207'(&S)'
      OnClick = IPMENU_SORTClick
    end
    object IPMENU_ADD: TMenuItem
      Caption = #22686#21152'IP'#27573'(&A)'
      OnClick = IPMENU_ADDClick
    end
    object IPMENU_DEL: TMenuItem
      Caption = #21024#38500'IP'#27573'(&D)'
      OnClick = IPMENU_DELClick
    end
  end
end
