object frmViewLevel: TfrmViewLevel
  Left = 666
  Top = 388
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Level and Exp List'
  ClientHeight = 274
  ClientWidth = 312
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = '??'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 12
  object GroupBox10: TGroupBox
    Left = 8
    Top = 8
    Width = 121
    Height = 49
    Caption = 'Select Level'
    TabOrder = 0
    object Label4: TLabel
      Left = 8
      Top = 20
      Width = 36
      Height = 12
      Caption = 'Level:'
    end
    object EditHumanLevel: TSpinEdit
      Left = 44
      Top = 15
      Width = 45
      Height = 21
      EditorEnabled = False
      MaxValue = 0
      MinValue = 0
      TabOrder = 0
      Value = 1
      OnChange = EditHumanLevelChange
    end
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 64
    Width = 121
    Height = 49
    Caption = 'Select Class'
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 20
      Width = 36
      Height = 12
      Caption = 'Class:'
    end
    object ComboBoxJob: TComboBox
      Left = 40
      Top = 16
      Width = 73
      Height = 20
      Style = csDropDownList
      ItemHeight = 12
      ItemIndex = 0
      TabOrder = 0
      Text = '??'
      OnChange = ComboBoxJobChange
      Items.Strings = (
        '??'
        '???'
        '??')
    end
  end
  object GridHumanInfo: TStringGrid
    Left = 136
    Top = 8
    Width = 169
    Height = 257
    ColCount = 2
    DefaultRowHeight = 18
    RowCount = 13
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing]
    TabOrder = 2
    ColWidths = (
      64
      99)
    RowHeights = (
      18
      18
      18
      18
      18
      18
      18
      18
      18
      18
      18
      18
      18)
  end
  object ButtonClose: TButton
    Left = 32
    Top = 152
    Width = 65
    Height = 25
    Caption = 'Close(&C)'
    TabOrder = 3
    OnClick = ButtonCloseClick
  end
end
