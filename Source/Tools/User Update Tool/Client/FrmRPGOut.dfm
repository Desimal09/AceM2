object FormRPGOut: TFormRPGOut
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = #23548#20986#25968#25454
  ClientHeight = 203
  ClientWidth = 291
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object bsSkinGroupBox3: TbsSkinGroupBox
    Left = 8
    Top = 59
    Width = 153
    Height = 81
    HintImageIndex = 0
    TabOrder = 0
    SkinData = DSkinData
    SkinDataName = 'groupbox'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    RibbonStyle = False
    ImagePosition = bsipDefault
    TransparentMode = True
    CaptionImageIndex = -1
    RealHeight = -1
    AutoEnabledControls = True
    CheckedMode = False
    Checked = False
    DefaultAlignment = taLeftJustify
    DefaultCaptionHeight = 22
    BorderStyle = bvFrame
    CaptionMode = True
    RollUpMode = False
    RollUpState = False
    NumGlyphs = 1
    Spacing = 2
    Caption = #32534#21495
    UseSkinSize = True
    object bsSkinStdLabel10: TbsSkinStdLabel
      Left = 11
      Top = 26
      Width = 54
      Height = 12
      EllipsType = bsetNone
      UseSkinFont = True
      UseSkinColor = True
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = -12
      DefaultFont.Name = #23435#20307
      DefaultFont.Style = []
      SkinData = DSkinData
      SkinDataName = 'stdlabel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnText
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      Caption = #36215#22987#32534#21495':'
      ParentFont = False
    end
    object bsSkinStdLabel1: TbsSkinStdLabel
      Left = 11
      Top = 54
      Width = 54
      Height = 12
      EllipsType = bsetNone
      UseSkinFont = True
      UseSkinColor = True
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = -12
      DefaultFont.Name = #23435#20307
      DefaultFont.Style = []
      SkinData = DSkinData
      SkinDataName = 'stdlabel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnText
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      Caption = #36215#22987#32534#21495':'
      ParentFont = False
    end
    object edtIndexStart: TbsSkinSpinEdit
      Left = 68
      Top = 21
      Width = 77
      Height = 22
      HintImageIndex = 0
      TabOrder = 0
      SkinData = DSkinData
      SkinDataName = 'spinedit'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clBlack
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 22
      UseSkinFont = True
      DefaultColor = clWindow
      UseSkinSize = True
      ValueType = vtInteger
      MaxValue = 65535.000000000000000000
      Increment = 1.000000000000000000
      EditorEnabled = True
      MaxLength = 0
    end
    object edtIndexEnd: TbsSkinSpinEdit
      Left = 68
      Top = 49
      Width = 77
      Height = 22
      HintImageIndex = 0
      TabOrder = 1
      SkinData = DSkinData
      SkinDataName = 'spinedit'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clBlack
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 22
      UseSkinFont = True
      DefaultColor = clWindow
      UseSkinSize = True
      ValueType = vtInteger
      MaxValue = 65535.000000000000000000
      Increment = 1.000000000000000000
      EditorEnabled = True
      MaxLength = 0
    end
  end
  object bsSkinGroupBox1: TbsSkinGroupBox
    Left = 167
    Top = 59
    Width = 114
    Height = 81
    HintImageIndex = 0
    TabOrder = 1
    SkinData = DSkinData
    SkinDataName = 'groupbox'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    RibbonStyle = False
    ImagePosition = bsipDefault
    TransparentMode = True
    CaptionImageIndex = -1
    RealHeight = -1
    AutoEnabledControls = True
    CheckedMode = False
    Checked = False
    DefaultAlignment = taLeftJustify
    DefaultCaptionHeight = 22
    BorderStyle = bvFrame
    CaptionMode = True
    RollUpMode = False
    RollUpState = False
    NumGlyphs = 1
    Spacing = 2
    Caption = #36873#39033
    UseSkinSize = True
    object Out_Alpha: TbsSkinCheckRadioBox
      Left = 11
      Top = 21
      Width = 78
      Height = 17
      HintImageIndex = 0
      TabOrder = 0
      SkinData = DSkinData
      SkinDataName = 'checkbox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = -12
      DefaultFont.Name = #23435#20307
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      WordWrap = True
      AllowGrayed = False
      State = cbChecked
      ImageIndex = 0
      Flat = True
      UseSkinFontColor = True
      TabStop = True
      CanFocused = True
      Radio = False
      Checked = True
      GroupIndex = 0
      Caption = #23548#20986'Alpha'
    end
    object Out_Offset: TbsSkinCheckRadioBox
      Left = 11
      Top = 41
      Width = 78
      Height = 17
      HintImageIndex = 0
      TabOrder = 1
      SkinData = DSkinData
      SkinDataName = 'checkbox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = -12
      DefaultFont.Name = #23435#20307
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      WordWrap = True
      AllowGrayed = False
      State = cbChecked
      ImageIndex = 0
      Flat = True
      UseSkinFontColor = True
      TabStop = True
      CanFocused = True
      Radio = False
      Checked = True
      GroupIndex = 0
      Caption = #23548#20986#22352#26631
      OnClick = Out_OffsetClick
    end
    object Out_Format: TbsSkinCheckRadioBox
      Left = 27
      Top = 58
      Width = 78
      Height = 17
      HintImageIndex = 0
      TabOrder = 2
      SkinData = DSkinData
      SkinDataName = 'checkbox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = -12
      DefaultFont.Name = #23435#20307
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      WordWrap = True
      AllowGrayed = False
      State = cbChecked
      ImageIndex = 0
      Flat = True
      UseSkinFontColor = True
      TabStop = True
      CanFocused = True
      Radio = False
      Checked = True
      GroupIndex = 0
      Caption = #23548#20986#26684#24335
      OnClick = Out_FormatClick
    end
  end
  object btnGo: TbsSkinButton
    Left = 48
    Top = 154
    Width = 75
    Height = 25
    HintImageIndex = 0
    TabOrder = 2
    SkinData = DSkinData
    SkinDataName = 'button'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    CheckedMode = False
    ImageIndex = -1
    AlwaysShowLayeredFrame = False
    UseSkinSize = True
    UseSkinFontColor = True
    RepeatMode = False
    RepeatInterval = 100
    AllowAllUp = False
    TabStop = True
    CanFocused = True
    Down = False
    GroupIndex = 0
    Caption = #25191#34892'(&E)'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnGoClick
  end
  object btnExit: TbsSkinButton
    Left = 167
    Top = 154
    Width = 75
    Height = 25
    HintImageIndex = 0
    TabOrder = 3
    SkinData = DSkinData
    SkinDataName = 'button'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    CheckedMode = False
    ImageIndex = -1
    AlwaysShowLayeredFrame = False
    UseSkinSize = True
    UseSkinFontColor = True
    RepeatMode = False
    RepeatInterval = 100
    AllowAllUp = False
    TabStop = True
    CanFocused = True
    Down = False
    GroupIndex = 0
    Caption = #36864#20986'(&X)'
    NumGlyphs = 1
    Spacing = 1
    Default = True
    OnClick = btnExitClick
  end
  object bsSkinGroupBox2: TbsSkinGroupBox
    Left = 8
    Top = 8
    Width = 275
    Height = 45
    HintImageIndex = 0
    TabOrder = 4
    SkinData = DSkinData
    SkinDataName = 'groupbox'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    RibbonStyle = False
    ImagePosition = bsipDefault
    TransparentMode = True
    CaptionImageIndex = -1
    RealHeight = -1
    AutoEnabledControls = True
    CheckedMode = False
    Checked = False
    DefaultAlignment = taLeftJustify
    DefaultCaptionHeight = 22
    BorderStyle = bvFrame
    CaptionMode = True
    RollUpMode = False
    RollUpState = False
    NumGlyphs = 1
    Spacing = 2
    Caption = #20445#23384#20301#32622
    UseSkinSize = True
    object bsSkinStdLabel2: TbsSkinStdLabel
      Left = 11
      Top = 21
      Width = 66
      Height = 12
      EllipsType = bsetNone
      UseSkinFont = True
      UseSkinColor = True
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = -12
      DefaultFont.Name = #23435#20307
      DefaultFont.Style = []
      SkinData = DSkinData
      SkinDataName = 'stdlabel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnText
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      Caption = #20445#23384#25991#20214#22841':'
      ParentFont = False
    end
    object EditSaveDir: TbsSkinEdit
      Left = 83
      Top = 18
      Width = 181
      Height = 20
      DefaultColor = clWindow
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clBlack
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      UseSkinFont = True
      DefaultWidth = 0
      DefaultHeight = 0
      ButtonMode = True
      SkinData = DSkinData
      SkinDataName = 'buttonedit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ButtonImageIndex = -1
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
      OnButtonClick = EditSaveDirButtonClick
    end
  end
  object GaugeMain: TbsSkinGauge
    Left = 0
    Top = 183
    Width = 291
    Height = 20
    HintImageIndex = 0
    TabOrder = 5
    SkinData = DSkinData
    SkinDataName = 'statusgauge'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 20
    UseSkinFont = True
    UseSkinSize = True
    ShowProgressText = False
    ShowPercent = False
    MinValue = 0
    MaxValue = 100
    Value = 0
    Vertical = False
    ProgressAnimationPause = 1000
    Align = alBottom
  end
  object DSkinData: TbsSkinData
    DlgTreeViewDrawSkin = True
    DlgTreeViewItemSkinDataName = 'listbox'
    DlgListViewDrawSkin = True
    DlgListViewItemSkinDataName = 'listbox'
    SkinnableForm = True
    AnimationForAllWindows = True
    EnableSkinEffects = True
    ShowButtonGlowFrames = True
    ShowCaptionButtonGlowFrames = True
    ShowLayeredBorders = True
    AeroBlurEnabled = True
    SkinIndex = 0
    Left = 72
  end
  object DForm: TbsBusinessSkinForm
    ShowMDIScrollBars = True
    WindowState = wsNormal
    QuickButtons = <>
    QuickButtonsShowHint = False
    QuickButtonsShowDivider = True
    ClientInActiveEffect = False
    ClientInActiveEffectType = bsieSemiTransparent
    DisableSystemMenu = False
    AlwaysResize = False
    PositionInMonitor = bspDesktopCenter
    UseFormCursorInNCArea = False
    MaxMenuItemsInWindow = 25
    ClientWidth = 0
    ClientHeight = 0
    HideCaptionButtons = False
    AlwaysShowInTray = False
    LogoBitMapTransparent = False
    AlwaysMinimizeToTray = False
    UseSkinFontInMenu = True
    UseSkinFontInCaption = True
    UseSkinSizeInMenu = True
    ShowIcon = True
    MaximizeOnFullScreen = False
    AlphaBlend = False
    AlphaBlendAnimation = False
    AlphaBlendValue = 255
    ShowObjectHint = True
    MenusAlphaBlend = False
    MenusAlphaBlendAnimation = False
    MenusAlphaBlendValue = 0
    DefCaptionFont.Charset = DEFAULT_CHARSET
    DefCaptionFont.Color = clBtnText
    DefCaptionFont.Height = 14
    DefCaptionFont.Name = 'Arial'
    DefCaptionFont.Style = [fsBold]
    DefInActiveCaptionFont.Charset = DEFAULT_CHARSET
    DefInActiveCaptionFont.Color = clBtnShadow
    DefInActiveCaptionFont.Height = 14
    DefInActiveCaptionFont.Name = 'Arial'
    DefInActiveCaptionFont.Style = [fsBold]
    DefMenuItemHeight = 23
    DefMenuItemFont.Charset = DEFAULT_CHARSET
    DefMenuItemFont.Color = clWindowText
    DefMenuItemFont.Height = 14
    DefMenuItemFont.Name = 'Arial'
    DefMenuItemFont.Style = []
    UseDefaultSysMenu = True
    SkinData = DSkinData
    MinHeight = 0
    MinWidth = 0
    MaxHeight = 0
    MaxWidth = 0
    Magnetic = False
    MagneticSize = 10
    BorderIcons = [biSystemMenu]
    Left = 104
  end
end
