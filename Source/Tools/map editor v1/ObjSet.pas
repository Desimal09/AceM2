unit ObjSet;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ObjEdit, Grids, Buttons, ExtCtrls, HUtil32, Menus, StdCtrls;

type
  TFrmObjSet = class(TForm)
    SetGrid: TDrawGrid;
    Panel1: TPanel;
    BtnSave: TSpeedButton;
    BtnLoad: TSpeedButton;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    CBObjSet: TComboBox;
    BtnCopy: TButton;
    BtnPaste: TButton;
    BtnDelete: TButton;
    procedure FormCreate(Sender: TObject);
    procedure ReloadObjSets();
    procedure SetGridDblClick(Sender: TObject);
    procedure SetGridDrawCell(Sender: TObject; Col, Row: Longint;
      Rect: TRect; State: TGridDrawState);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnLoadClick(Sender: TObject);
    procedure SetGridClick(Sender: TObject);
    procedure SetGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CBObjSetSelect(Sender: TObject);
    procedure BtnCopyClick(Sender: TObject);
    procedure BtnPasteClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
  private
    SetList: TList; // list of list
    Buffers: TList;
    procedure ClearSet;


    procedure InsertSet(idx: integer; plist: TList);
    procedure CopySet(idx: integer);
    procedure PasteSet(idx: integer);
    procedure DelSet(idx: integer; delsolid: Boolean);
  public
    procedure GetSet(idx: integer; var plist: TList);
    procedure InitializeObjSet;
    procedure Execute;
    function GetCurrentSet: TList;
    procedure LoadFromFile(flname: string);
    procedure SaveToFile(flname: string);
    procedure UpdateSet(idx: integer; plist: TList);
  end;

var
  FrmObjSet: TFrmObjSet;
  SetType: Boolean;
implementation

uses edmain;

{$R *.DFM}

procedure TFrmObjSet.FormCreate(Sender: TObject);
begin
  SetList := TList.Create;
  Buffers := TList.Create;
  ReloadObjSets();
end;

procedure TFrmObjSet.ReloadObjSets();
var
  SearchRec: TSearchRec;
begin
  CBObjSet.Items.Clear;
   if (FindFirst(GetCurrentDir + '\SetLibary\*.Set', faAnyFile-faDirectory, SearchRec) = 0) then
   try
      repeat
         CBObjSet.Items.Add(SearchRec.Name);
        until(findnext(searchrec)<>0);
      finally
   findclose(searchrec);
   end;
end;

procedure TFrmObjSet.InitializeObjSet;
Var
  filename : String;
begin
  filename := 'AceM2.set';
  LoadFromFile(GetCurrentDir + '\SetLibary\' + filename);
  FrmObjSet.Caption := 'Object Sets - ' + filename;
end;

procedure TFrmObjSet.CBObjSetSelect(Sender: TObject);
begin
  LoadFromFile(GetCurrentDir + '\SetLibary\' + CBObjSet.Text);
  FrmObjSet.Caption := 'Object Sets - ' + CBObjSet.Text;
  ReloadObjSets();
end;

procedure TFrmObjSet.ClearSet;
var
  i, j: integer;
  p: PTPieceInfo;
begin
  for i := 0 to SetList.Count - 1 do begin
    for j := 0 to TList(SetList[i]).Count - 1 do begin
      p := PTPieceInfo(TList(SetList[i])[j]);
      Dispose(p);
    end;
    TList(SetList[i]).Free;
  end;
  SetList.Clear;
end;

function Str_ToInt1(Str: string; def: Longint): Longint;
var
  i, j, k: Longint;
begin
  if SetType then begin
    Result := StrToIntDef(str, def);
    Exit;
  end;
  Result := def;
  if Str <> '' then begin
    if ((word(Str[1]) >= word('0')) and (word(str[1]) <= word('9'))) or (str[1] = '+') or (str[1] = '-') then try
      k := StrToInt64(Str);
      i := k div 10000;
      j := k mod 10000;
      Result := i * 65535 + j;
    except
    end;
  end;
end;

procedure TFrmObjSet.LoadFromFile(flname: string);
var
  i{, j}: integer;
  slist: TStringList;
  plist: TList;
  p: PTPieceInfo;
  str, data: string;
begin
  SetType := False;
  plist := nil;
  slist := TStringList.Create;
  if FileExists(flname) then begin
    ClearSet;
    slist.LoadFromFile(flname);
    for i := 0 to slist.Count - 1 do begin
      str := Trim(slist[i]);
      if str = 'NEW' then
        SetType := True;
      if (str <> '') and (str <> 'NEW') then begin
        if str[1] = '[' then begin
          if plist <> nil then begin
            SetList.Add(plist);
          end;
          plist := TList.Create;
        end
        else begin
          if plist <> nil then begin
            new(p);
            FillChar(p^, sizeof(TPieceInfo), 0);
            str := GetValidStr3(str, data, [' ']);
            p.rx := Str_ToInt1(data, 0);
            str := GetValidStr3(str, data, [' ']);
            p.ry := Str_ToInt1(data, 0);
            str := GetValidStr3(str, data, [' ']);
            p.bkimg := Str_ToInt1(data, 0);
            str := GetValidStr3(str, data, [' ']);
            p.img := Str_ToInt1(data, 0);
            str := GetValidStr3(str, data, [' ']);
            p.mark := Str_ToInt1(data, 0);
            str := GetValidStr3(str, data, [' ']);
            p.AniFrame := Str_ToInt1(data, 0);
            str := GetValidStr3(str, data, [' ']);
            p.AniTick := Str_ToInt1(data, 0);
            str := GetValidStr3(str, data, [' ']);
            if CompareText(data, 't') = 0 then
              p.blend := TRUE
            else
              p.blend := FALSE;
            str := GetValidStr3(str, data, [' ']);
            p.light := Str_ToInt1(data, 0);
            str := GetValidStr3(str, data, [' ']);
            p.doorindex := Str_ToInt1(data, 0);
            str := GetValidStr3(str, data, [' ']);
            p.dooroffset := Str_ToInt1(data, 0);
            str := GetValidStr3(str, data, [' ']);
            p.bkindex := Str_ToInt1(data, 0);
            str := GetValidStr3(str, data, [' ']);
            p.midimg := Str_ToInt1(data, 0);
            str := GetValidStr3(str, data, [' ']);
            p.midindex := Str_ToInt1(data, 0);
            plist.Add(p);
          end;
        end;
      end;
    end;
  end;
  if plist <> nil then begin
    if plist.Count > 0 then
      SetList.Add(plist);
  end;
  slist.Free;
  SetGrid.RowCount := SetList.Count + 1;
end;

procedure TFrmObjSet.SaveToFile(flname: string);
var
  i, j: integer;
  slist: TStringList;
  plist: TList;
  blendstr: string;
  p: PTPieceInfo;
begin
  slist := TStringList.Create;
  SList.Add('NEW');
  for i := 0 to SetList.Count - 1 do begin
    plist := SetList[i];
    if plist <> nil then begin
      slist.Add('[' + IntToStr(i) + ']');
      for j := 0 to plist.Count - 1 do begin
        p := PTPieceInfo(plist[j]);
        if p.blend then
          blendstr := 't'
        else
          blendstr := 'f';
        slist.Add(IntToStr(p.rx) + ' ' +
          IntToStr(p.ry) + ' ' +
          IntToStr(p.bkimg) + ' ' +
          IntToStr(p.img) + ' ' +
          IntToStr(p.mark) + ' ' +
          IntToStr(p.AniFrame) + ' ' +
          IntToStr(p.AniTick) + ' ' +
          blendstr + ' ' +
          IntToStr(p.light) + ' ' +
          IntToStr(p.doorindex) + ' ' +
          IntToStr(p.dooroffset) + ' ' +
          IntToStr(p.bkindex) + ' ' +
          IntToStr(p.midimg) + ' ' +
          IntToStr(p.midindex) + ' ');
      end;
    end;
  end;
  slist.SaveToFile(flname);
  slist.Free;
end;

procedure TFrmObjSet.Execute;
begin
  Show;
end;

procedure TFrmObjSet.SetGridDrawCell(Sender: TObject; Col, Row: Longint;
  Rect: TRect; State: TGridDrawState);
var
  i, idx, nx, ny, dx, dy{, tick}: integer;
  plist: TList;
  p: PTPieceInfo;
  aniflag: Boolean;
begin
  aniflag := FALSE;
  idx := Row;
  p := nil;
  if idx < SetList.Count then begin
    plist := SetList[idx];
    if plist <> nil then begin
      nx := SetGrid.DefaultColWidth div 2 - 12;
      ny := SetGrid.DefaultRowHeight div 2;
      for i := 0 to plist.Count - 1 do begin
        p := PTPieceInfo(plist[i]);
        if p.bkimg >= 0 then begin
          dx := nx + p.rx * 12;
          dy := ny + p.ry * 8;
          with FrmMain.WilTile(p.bkindex) do
            DrawZoom(SetGrid.Canvas,
              Rect.Left + dx,
              Rect.Top + dy,
              p.bkimg,
              0.25);
        end;
      end;
    end;
  end;
  if idx < SetList.Count then begin
    plist := SetList[idx];
    if plist <> nil then begin
      nx := SetGrid.DefaultColWidth div 2 - 12;
      ny := SetGrid.DefaultRowHeight div 2;
      for i := 0 to plist.Count - 1 do begin
        p := PTPieceInfo(plist[i]);
        //if p.midimg = 0 then p.midimg := - 2; //fix broken object sets tiles - have to scroll through all of object set to fix...
        if p.midimg >= 0 then begin
          dx := nx + p.rx * 12;
          dy := ny + p.ry * 8;
          with FrmMain.WilSmTile(p.midindex) do
            DrawZoom(SetGrid.Canvas,
              Rect.Left + dx,
              Rect.Top + dy,
              p.midimg,
              0.25);
        end;
      end;
    end;
  end;
  if idx < SetList.Count then begin
    plist := SetList[idx];
    if plist <> nil then begin
      nx := SetGrid.DefaultColWidth div 2 - 12;
      ny := SetGrid.DefaultRowHeight div 2 + 8;
      for i := 0 to plist.Count - 1 do begin
        p := PTPieceInfo(plist[i]);
        if p.img >= 0 then begin
          if p.aniframe > 0 then begin
            aniflag := TRUE;
//            tick := p.anitick;
          end;
          dx := nx + p.rx * 12;
          dy := ny + p.ry * 8;
          with FrmMain.ObjWil(p.img) do
            DrawZoomEx(SetGrid.Canvas,
              Rect.Left + dx,
              Rect.Top + dy,
              p.img mod 65535,
              0.25, FALSE);
        end;
      end;
    end;
    if aniflag and (p <> nil) then
      SetGrid.Canvas.TextOut(Rect.Left, Rect.Top, 'animation ' + IntToStr(p.anitick));
  end;
  SetGrid.Canvas.TextOut(Rect.Right - 40, Rect.Bottom - 15,IntToStr(Row));
end;

procedure TFrmObjSet.GetSet(idx: integer; var plist: TList);
{var
  i: integer; }
begin
  plist := nil;
  if (idx >= 0) and (idx <= SetList.Count - 1) then begin
    plist := SetList[idx];
  end;
end;

procedure TFrmObjSet.UpdateSet(idx: integer; plist: TList);
var
  i: integer;
  p: TList;
begin
  if idx <= SetList.Count - 1 then begin
    p := SetList[idx];
    if p <> nil then begin
      for i := 0 to p.Count - 1 do begin
        Dispose(PTPieceInfo(p[i]));
      end;
      p.Free;
    end;
    SetList.Delete(idx);
    SetList.Insert(idx, plist);
  end
  else begin
    SetList.Add(plist);
  end;
  SetGrid.RowCount := SetList.Count + 1;
end;

procedure TFrmObjSet.InsertSet(idx: integer; plist: TList);
begin
  SetList.Insert(idx, plist);
  SetGrid.RowCount := SetList.Count + 1;
end;

procedure TFrmObjSet.BtnCopyClick(Sender: TObject);
begin
CopySet(SetGrid.Row);
SetGrid.Refresh;
end;

procedure TFrmObjSet.CopySet(idx: integer);
var
  i: integer;
  p: PTPieceInfo;
  plist: TList;
begin
  if idx < SetList.Count then begin
    for i := 0 to Buffers.Count - 1 do
      Dispose(PTPieceInfo(Buffers[i]));
    Buffers.Clear;

    plist := TList(SetList[idx]);
    for i := 0 to plist.Count - 1 do begin
      new(p);
      p^ := PTPieceInfo(plist[i])^;
      if Buffers = nil then
        Buffers := TList.Create;
      Buffers.Add(p);
    end;
  end;
end;

procedure TFrmObjSet.PasteSet(idx: integer);
var
  i: integer;
  p: PTPieceInfo;
  plist: TList;
begin
  if Buffers.Count <= 0 then
    exit;
  plist := TList.Create;
  for i := 0 to Buffers.Count - 1 do begin
    new(p);
    p^ := PTPieceInfo(Buffers[i])^;
    plist.Add(p);
  end;
  SetList.Insert(idx, plist);
end;

procedure TFrmObjSet.DelSet(idx: integer; delsolid: Boolean);
var
  i: integer;
  p: TList;
begin
  if idx <= SetList.Count - 1 then begin
    p := SetList[idx];
    if (p <> nil) and (delsolid) then begin
      for i := 0 to p.Count - 1 do begin
        Dispose(PTPieceInfo(p[i]));
      end;
      p.Free;
      SetList.Delete(idx);
    end
    else begin
      if p = nil then
        SetList.Delete(idx);
    end;
  end;
  SetGrid.RowCount := SetList.Count + 1;
end;

function TFrmObjSet.GetCurrentSet: TList;
var
  plist: TList;
begin
  GetSet(SetGrid.Row, plist);
  Result := plist;
end;

procedure TFrmObjSet.SetGridDblClick(Sender: TObject);
var
  plist: TList;
begin
  GetSet(SetGrid.Row, plist);
  FrmObjEdit.SetPieceList(plist);
  if FrmObjEdit.Execute then begin
    plist := TList.Create;
    FrmObjEdit.DuplicatePieceList(plist);
    UpdateSet(SetGrid.Row, plist);
  end;
end;

procedure TFrmObjSet.BtnSaveClick(Sender: TObject);
begin
  with SaveDialog1 do begin
    FileName := '';
    if Execute then begin
      SaveToFile(FileName);
    end;
  end;
end;

procedure TFrmObjSet.BtnPasteClick(Sender: TObject);
begin
PasteSet(SetGrid.Row);
SetGrid.Refresh;
end;

procedure TFrmObjSet.BtnDeleteClick(Sender: TObject);
begin
DelSet(SetGrid.Row, True);
end;

procedure TFrmObjSet.BtnLoadClick(Sender: TObject);
begin
  with OpenDialog1 do begin
    FileName := '';
    if Execute then begin
      LoadFromFile(FileName);
    end;
  end;
end;

procedure TFrmObjSet.SetGridClick(Sender: TObject);
var
  plist: TList;
begin
  FrmMain.DrawMode := mdObjSet;
  plist := GetCurrentSet;
  FrmMain.MakeSetCursor(plist);
end;

procedure TFrmObjSet.SetGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_INSERT: begin
        if [ssCtrl] = Shift then begin
          CopySet(SetGrid.Row);
        end
        else begin
          if [ssShift] = Shift then begin
            PasteSet(SetGrid.Row);
            SetGrid.Refresh;
          end
          else begin
            InsertSet(SetGrid.Row, nil);
            SetGrid.Refresh;
          end;
        end;
      end;
    VK_DELETE: begin
        if ssCtrl in Shift then
          DelSet(SetGrid.Row, TRUE)
        else
          DelSet(SetGrid.Row, FALSE);
        SetGrid.Refresh;
      end;
    VK_F5:
      FrmMain.MapPaint.Refresh;
    VK_RETURN: begin
        SetGridDblClick(self);
      end;
  end;
end;

end.

