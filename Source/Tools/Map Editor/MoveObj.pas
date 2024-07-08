unit MoveObj;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, HUtil32;

type
  TFrmMoveObj = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Button1: TButton;
    Label4: TLabel;
    Edit4: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
  public
    procedure Execute;
  end;

var
  FrmMoveObj: TFrmMoveObj;

implementation

{$R *.DFM}

uses
  edmain;

procedure TFrmMoveObj.Execute;
begin
  Edit1.Text := '';
  //Edit2.Text := '';
  Edit3.Text := '';
  Edit4.Text := '';
  Show;
end;

procedure TFrmMoveObj.Button1Click(Sender: TObject);
var
  i, k, obj{, x}, y: integer;
  mi: TMapInfo;
begin
  obj := StrToIntDef(Edit1.Text, -1);
  //x   := Str_ToInt(Edit2.Text, 0);
  y := StrToIntDef(Edit3.Text, 0);
  if (obj >= 0) and (y < 10) then begin
    with FrmMain do begin
      CopyTempBegin;
      for i := 0 to MAXX - 10 do begin
        for k := MAXY - 10 downto 0 do begin
          mi := MapData[i, k];
          if (mi.FrImg and $7FFF) = (obj + 1) then begin
            mi.FrImg := (mi.FrImg and $8000);
            MapData[i, k] := mi;
            SetMapDataEx(i, k + y, FrImg, (MapData[i, k + y].FrImg and $8000) or (obj + 1));
          end;
        end;
      end;
      CopyTempEnd;
    end;
  end;
end;

procedure TFrmMoveObj.Button2Click(Sender: TObject);
var
  i, k, obj: integer;
  mi: TMapInfo;
begin
  obj := StrToIntDef(Edit4.Text, -1);
  if (obj >= 0) then begin
    with FrmMain do begin
      CopyTempBegin;
      for i := 0 to MAXX - 1 do begin
        for k := MAXY - 1 downto 0 do begin
          mi := MapData[i, k];
          if (mi.FrImg and $7FFF) = (obj + 1) then begin
            mi.FrImg := (mi.FrImg and $8000);
            MapData[i, k] := mi;
          end;
        end;
      end;
      CopyTempEnd;
    end;
  end;
end;

end.


