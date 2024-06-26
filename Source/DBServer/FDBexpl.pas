unit FDBexpl;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, DateUtils, 
  Controls, Forms, Dialogs, StdCtrls, ExtCtrls, Buttons, Grobal2, HumDB, Spin,
  ComCtrls;
type
  TFrmFDBExplore = class(TForm)
    ListBox1: TListBox;
    EdFind: TEdit;
    Label1: TLabel;
    BtnAdd: TButton;
    BtnDel: TButton;
    ListBox2: TListBox;
    BtnRebuild: TButton;
    BtnBlankCount: TButton;
    GroupBox1: TGroupBox;
    BtnAutoClean: TButton;
    Timer1: TTimer;
    BtnCopyRcd: TButton;
    BtnCopyNew: TButton;
    CkLv1: TCheckBox;
    CkLv7: TCheckBox;
    CkLv14: TCheckBox;
    Button1: TButton;
    GroupBox2: TGroupBox;
    CheckBoxClear1: TCheckBox;
    EditTime: TSpinEdit;
    Label2: TLabel;
    EditLevel: TSpinEdit;
    Label3: TLabel;
    CheckBoxClearDelHum: TCheckBox;
    ProgressBar1: TProgressBar;
    Label5: TLabel;
    Button2: TButton;
    CheckBoxClearTime: TCheckBox;
    EditDay: TSpinEdit;
    Label4: TLabel;

    procedure ListBox1Click(Sender: TObject);
    procedure BtnDelClick(Sender: TObject);
    procedure BtnRebuildClick(Sender: TObject);
    procedure BtnBlankCountClick(Sender: TObject);
    procedure BtnAddClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnAutoCleanClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BtnCopyRcdClick(Sender: TObject);
    procedure BtnCopyNewClick(Sender: TObject);
    procedure EdFindKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    //    nClearIndex:Integer; //0x324
    //    nClearCount:Integer;//0x328
    SList_320: TStringList;
//    function ClearHumanItem(var ChrRecord: THumDataInfo): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFDBExplore: TFrmFDBExplore;

  {This file is generated by DeDe Ver 3.50.02 Copyright (c) 1999-2002 DaFixer}

implementation

uses NewChr, UsrSoc, frmcpyrcd, DBSMain, DBShare;

{$R *.DFM}

procedure TFrmFDBExplore.EdFindKeyPress(Sender: TObject; var Key: Char);
begin
  if Key <> #13 then
    Exit;
  Button1Click(self);
end;

procedure TFrmFDBExplore.ListBox1Click(Sender: TObject);
//0x004A5790
begin
  ListBox2.ItemIndex := ListBox1.ItemIndex;
end;

procedure TFrmFDBExplore.BtnDelClick(Sender: TObject);
//0x004A5A44
var
  nIndex: Integer;
begin
  if ListBox1.ItemIndex <= -1 then
    Exit;
  nIndex := Integer(ListBox1.Items.Objects[ListBox1.ItemIndex]);
  if MessageDlg('Are you sure you want to delete the character data: ' + IntToStr(nIndex) + ' ��',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
    try
      //if HumDataDB.Open then begin
        HumDataDB.Delete(nIndex);
      //end;
    finally
    end;
  end;
end;

procedure TFrmFDBExplore.BtnRebuildClick(Sender: TObject); //0x004A5B64
begin
  if MessageDlg('Whilst rebuilding the database the server will stop working. Do you want to continue��',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
    boAutoClearDB := False;
    //HumDataDB.Rebuild();
    MessageDlg('Database rebuilt������', mtInformation, [mbOK], 0);
  end;
end;

procedure TFrmFDBExplore.Button1Click(Sender: TObject);
var
  i: Integer;
  sChrName: string;
begin
  sChrName := Trim(EdFind.Text);
  if sChrName = '' then
    Exit;
  ListBox1.Clear;
  ListBox2.Clear;

  try
    //if HumDataDB.OpenEx then begin
      HumDataDB.Find(sChrName, ListBox1.Items);
      for i := 0 to ListBox1.Items.Count - 1 do begin
        ListBox2.Items.Add(IntToStr(Integer(ListBox1.Items.Objects[i])));
      end;
    //end;
  finally
    //HumDataDB.Close;
  end;
end;

procedure TFrmFDBExplore.Button2Click(Sender: TObject);
var
  OldAutoClearDB: Boolean;
  I, nIdx, nCount: Integer;
  ChrRecord: THumDataInfo;
  HumDBRecord: THumInfo;
  boDelete: Boolean;
  ChrNameList: TList;
begin
  if MessageDlg('���ڷ�����ֹͣʱʹ�ã��Ƿ�ȷ�ϼ�����', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
    if MessageDlg('�Ƿ��Ѿ����������ݿ��ļ���', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      OldAutoClearDB := boAutoClearDB;
      boAutoClearDB := False;
      ProgressBar1.Position := 0;
      try
        //if HumDataDB.Open then begin
          nCount := HumDataDB.m_QuickList.Count;
          for I := HumDataDB.m_QuickList.Count - 1 downto 0 do begin
            if HumDataDB.Get(I, ChrRecord) >= 0 then begin
              if not ChrRecord.Header.boDeleted and (ChrRecord.Data.sChrName <> '') then begin
                boDelete := True;
                nIdx := HumChrDB.Index(ChrRecord.Data.sChrName);
                if nIdx >= 0 then begin
                  if HumChrDB.Get(ChrRecord.Data.sChrName, HumDBRecord) then begin
                    boDelete := False;
                    if CheckBoxClearDelHum.Checked and (HumDBRecord.boDeleted or HumDBRecord.boGMDeleted) then
                      boDelete := True;
                  end else nIdx := -1;
                end;
                if (not boDelete) and CheckBoxClear1.Checked then begin
                  if (DaysBetween(ChrRecord.Header.dwCreateDate, Now) >= EditTime.Value) and (ChrRecord.Data.Abil.Level < EditLevel.Value) then
                    boDelete := True;
                end;
                if (not boDelete) and CheckBoxClearTime.Checked then begin
                  if (DaysBetween(ChrRecord.Header.dwUpdateDate, Now) >= EditDay.Value) then
                    boDelete := True;
                end;
                if boDelete then begin
                  if HumDataDB.DeleteRecord(Integer(HumDataDB.m_QuickList.Objects[I])) then begin
                    HumDataDB.m_QuickList.Delete(I);
                  end;
                  if nIdx >= 0 then begin
                    if HumChrDB.Delete(ChrRecord.Data.sChrName) then begin
                      HumChrDB.m_QuickList.Delete(nIdx);
                    end;
                    nIdx := HumChrDB.m_QuickIDList.GetChrList(HumDBRecord.sAccount, ChrNameList);
                    if nIdx >= 0 then begin
                      HumChrDB.m_QuickIDList.DelRecord(nIdx, HumDBRecord.sChrName);
                    end;
                  end;
                end;
              end;
            end;

            ProgressBar1.Position := Round((nCount - I + 1) / nCount * 100);
            Label5.Caption := IntToStr(ProgressBar1.Position) + '%';
            Application.ProcessMessages;
          end;

          //HumDataDB.Delete(sChrName);
       // end;
      finally
        //HumDataDB.Close;
        boAutoClearDB := OldAutoClearDB;
      end;
      Application.MessageBox('��������ɣ�', '��ʾ��Ϣ', MB_OK + MB_ICONINFORMATION);
    end;
  end;
end;

procedure TFrmFDBExplore.BtnBlankCountClick(Sender: TObject);
//0x004A5C40
begin
  ListBox1.Clear;
  ListBox2.Clear;
end;

procedure TFrmFDBExplore.BtnAddClick(Sender: TObject);
var
  sChrName: string;
  //i: Integer;
begin
  FrmNewChr.sub_49BD60(sChrName);
  FrmUserSoc.NewChrData(sChrName, 0, 0, 0);
  //for I := 0 to 80 do
    //FrmUserSoc.NewChrData(IntToStr(I), 0, 0, 0);
end;

procedure TFrmFDBExplore.FormCreate(Sender: TObject);
//0x004A55B8
begin
  //Timer1.Interval := dwInterval;
  //Timer1.Enabled := True;
  SList_320 := TStringList.Create;
  g_nClearIndex := 0;
  g_nClearCount := 0;
  g_nClearItemIndexCount := 0;
end;

procedure TFrmFDBExplore.BtnAutoCleanClick(Sender: TObject);
//0x004A5D40
begin
  boAutoClearDB := not boAutoClearDB;
  if boAutoClearDB then
    BtnAutoClean.Caption := 'ֹͣ����'
  else
    BtnAutoClean.Caption := '�Զ�����';
  CkLv1.Enabled := not boAutoClearDB;
  CkLv7.Enabled := not boAutoClearDB;
  CkLv14.Enabled := not boAutoClearDB;
end;

procedure TFrmFDBExplore.Timer1Timer(Sender: TObject);
//0x004A5EDC
 (* function GetDateTime(wM, wD: Word): TDateTime;
  var
    Year, Month, Day: Word;
    i: Integer;
  begin
    DecodeDate(Now, Year, Month, Day);
    for i := 0 to wM - 1 do begin
      if Month > 1 then
        Dec(Month)
      else begin
        Month := 12;
        Dec(Year);
      end;
    end;
    for i := 0 to wD - 1 do begin
      if Day > 1 then
        Dec(Day)
      else begin
        Day := 28;
        if Month > 1 then
          Dec(Month)
        else begin
          Month := 12;
          Dec(Year);
        end;
      end;
    end;
    Result := EncodeDate(Year, Month, Day);
  end;
var
  w32, wDayCount1, wLevel1, w38, wDayCount7, wLevel7, w3E, wDayCount14,
    wLevel14: Word;
  dt20, dt28, dt30: TDateTime;
  n8, n10: Integer;

  sHumName: string;
  ChrRecord: THumDataInfo;  *)
begin
  //if not boAutoClearDB then
  Exit;
 (* w32 := 0;
  w38 := 0;
  w3E := 0;
  wDayCount1 := 0;
  wDayCount7 := 0;
  wDayCount14 := 0;
  wLevel1 := 0;
  wLevel7 := 0;
  wLevel14 := 0;
  if CkLv1.Checked then begin
    w32 := nMonth1;
    wDayCount1 := nDay1;
    wLevel1 := nLevel1;
  end;
  if CkLv7.Checked then begin
    w38 := nMonth2;
    wDayCount7 := nDay2;
    wLevel7 := nLevel2;
  end;
  if CkLv14.Checked then begin
    w3E := nMonth3;
    wDayCount14 := nDay3;
    wLevel14 := nLevel3;
  end;
  dt20 := GetDateTime(w32, wDayCount1);
  dt28 := GetDateTime(w38, wDayCount7);
  dt30 := GetDateTime(w3E, wDayCount14);
  g_nClearRecordCount := 0;
  sHumName := '';
  try
    if HumDataDB.Open then begin
      g_nClearRecordCount := HumDataDB.Count;
      if g_nClearIndex < g_nClearRecordCount then begin
        n8 := HumDataDB.Get(g_nClearIndex, ChrRecord);
        if n8 >= 0 then begin
          if ((ChrRecord.Header.dwUpdateDate < dt20) and
            (ChrRecord.Data.Abil.Level <= wLevel1)) or
            ((ChrRecord.Header.dwUpdateDate < dt28) and (ChrRecord.Data.Abil.Level <= wLevel7)) or
            ((ChrRecord.Header.dwUpdateDate < dt30) and (ChrRecord.Data.Abil.Level <= wLevel14)) then begin
            n10 := n8;
            sHumName := ChrRecord.Header.sName;
            HumDataDB.Delete(n10);
            Inc(g_nClearCount);
          end
          else begin
            if ClearHumanItem(ChrRecord) then begin
              HumDataDB.Update(g_nClearIndex, ChrRecord);
            end;
          end;
          Inc(g_nClearIndex);
        end;
      end
      else
        g_nClearIndex := 0;
    end;
  finally
    HumDataDB.Close;
  end;
  if sHumName <> '' then begin
    FrmDBSrv.DelHum(sHumName);
  end;
  //  FrmDBSrv.LbAutoClean.Caption:=IntToStr(g_nClearIndex) + '/' + IntToStr(g_nClearCount) + '/' + IntToStr(g_nClearRecordCount);
  *)
end;
(*
function TFrmFDBExplore.ClearHumanItem(var ChrRecord: THumDataInfo): Boolean;
var
  i: Integer;
  //  HumItems: array of THumItems;
  //  HumAddItems: array of THumItems;
  UserItem: pTUserItem;
  Item: pTUserItem;
  SaveList: TStringList;
  ClearList: TList;
  sFileName: string;
  sMsg: string;
begin
  Result := False;
  ClearList := nil;
  //ChrRecord.Data.HumItems
  //HumItems:=@ChrRecord.Data.HumItems;
  for i := Low(ChrRecord.Data.HumItems) to High(ChrRecord.Data.HumItems) do begin
    UserItem := @ChrRecord.Data.HumItems[i];
    if UserItem.wIndex <= 0 then
      Continue;
    if InClearMakeIndexList(UserItem.MakeIndex) then begin
      if ClearList = nil then
        ClearList := TList.Create;
      New(Item);
      Item^ := UserItem^;
      ClearList.Add(Item);
      UserItem.wIndex := 0;
      Result := True;
    end;
  end;
  //HumAddItems:=@ChrRecord.Data.
  {for i := Low(ChrRecord.Data.HumAddItems) to High(ChrRecord.Data.HumAddItems) do begin
    UserItem := @ChrRecord.Data.HumAddItems[i];
    if UserItem.wIndex <= 0 then Continue;
    if InClearMakeIndexList(UserItem.MakeIndex) then begin
      if ClearList = nil then ClearList := TList.Create;
      New(Item);
      Item^ := UserItem^;
      ClearList.Add(Item);

      UserItem.wIndex := 0;
      Result := True;
    end;
  end;  }
  for i := Low(ChrRecord.Data.BagItems) to High(ChrRecord.Data.BagItems) do begin
    UserItem := @ChrRecord.Data.BagItems[i];
    if UserItem.wIndex <= 0 then
      Continue;
    if InClearMakeIndexList(UserItem.MakeIndex) then begin
      if ClearList = nil then
        ClearList := TList.Create;
      New(Item);
      Item^ := UserItem^;
      ClearList.Add(Item);
      UserItem.wIndex := 0;
      Result := True;
    end;
  end;
  for i := Low(ChrRecord.Data.StorageItems) to High(ChrRecord.Data.StorageItems)
    do begin
    UserItem := @ChrRecord.Data.StorageItems[i];
    if UserItem.wIndex <= 0 then
      Continue;
    if InClearMakeIndexList(UserItem.MakeIndex) then begin
      if ClearList = nil then
        ClearList := TList.Create;
      New(Item);
      Item^ := UserItem^;
      ClearList.Add(Item);

      UserItem.wIndex := 0;
      Result := True;
    end;
  end;
  if Result then begin
    Inc(g_nClearItemIndexCount, ClearList.Count);

    SaveList := TStringList.Create;
    sFileName := 'ClearItemLog.txt';
    if FileExists(sFileName) then begin
      SaveList.LoadFromFile(sFileName);
    end;
    for i := 0 to ClearList.Count - 1 do begin
      UserItem := ClearList.Items[i];
      sMsg := ChrRecord.Data.sChrName + #9 + IntToStr(UserItem.wIndex) + #9 +
        IntToStr(UserItem.MakeIndex);
      SaveList.Insert(0, sMsg);
      Dispose(UserItem);
    end;
    SaveList.SaveToFile(sFileName);
    SaveList.Free;
  end;
  if ClearList <> nil then
    ClearList.Free;
end;
         *)
procedure TFrmFDBExplore.BtnCopyRcdClick(Sender: TObject);
//0x004A6220
var
  sSrcChrName, sDestChrName, sUserId: string;
begin
  if not FrmCopyRcd.sub_49C09C then
    Exit;
  sSrcChrName := FrmCopyRcd.s2F0;
  sDestChrName := FrmCopyRcd.s2F4;
  sUserId := FrmCopyRcd.s2F8;
  if FrmDBSrv.CopyHumData(sSrcChrName, sDestChrName, sUserId) then
    ShowMessage(sSrcChrName + ' -> ' + sDestChrName + ' ���Ƴɹ�������');
end;

procedure TFrmFDBExplore.BtnCopyNewClick(Sender: TObject);
//0x004A631C
var
  sSrcChrName, sDestChrName, sUserId: string;
begin
  if not FrmCopyRcd.sub_49C09C then
    Exit;
  sSrcChrName := FrmCopyRcd.s2F0;
  sDestChrName := FrmCopyRcd.s2F4;
  sUserId := FrmCopyRcd.s2F8;
  if FrmUserSoc.NewChrData(sDestChrName, 0, 0, 0) and
    FrmDBSrv.CopyHumData(sSrcChrName, sDestChrName, sUserId) then
    ShowMessage(sSrcChrName + ' -> ' + sDestChrName + ' ���Ƴɹ�������');
end;

procedure TFrmFDBExplore.FormDestroy(Sender: TObject);
begin
  SList_320.Free;
end;

end.