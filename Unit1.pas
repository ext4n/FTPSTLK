///////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
///////////////////////////                   ///////////////////////////
//////////////////////////     by EXT4N      ///////////////////////////
/////////////////////////(First v. 25/07/21)///////////////////////////
////////////////////////      extasy.es    ///////////////////////////
///////////////////////  admin@theslot.ru ///////////////////////////
//////////////////////     t.me/theslot  ///////////////////////////
/////////////////////Discord: EXT4N#8417///////////////////////////
//////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////

unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FTPSend, StdCtrls, sButton, sEdit, sCheckBox, Mask, sMaskEdit,
  sCustomComboEdit, sToolEdit, sLabel, sSkinManager, sGroupBox, IniFiles,
  sMemo, ComCtrls, httpSend, ssl_openssl, ExtCtrls, Buttons, sSpeedButton, Menus, CLIPBrd,
  sDialogs, RegExpr, ShellAPI, acAlphaHints, sBitBtn, acFloatCtrls,
  acTitleBar, acProgressBar, blcksock, synautil;

type
  TForm1 = class(TForm)
    sButton1: TsButton;
    sFilenameEdit1: TsFilenameEdit;
    sGroupBox1: TsGroupBox;
    sEdit1: TsEdit;
    sEdit2: TsEdit;
    sEdit3: TsEdit;
    sCheckBox1: TsCheckBox;
    sButton5: TsButton;
    sButton6: TsButton;
    namesav: TsMemo;
    sGroupBox2: TsGroupBox;
    sButton2: TsButton;
    sButton3: TsButton;
    sLabelFX1: TsLabelFX;
    sLabelFX2: TsLabelFX;
    sLabelFX3: TsLabelFX;
    sLabelFX5: TsLabelFX;
    sGroupBox3: TsGroupBox;
    sLabelFX4: TsLabelFX;
    sDirectoryEdit1: TsDirectoryEdit;
    sButton4: TsButton;
    sButton7: TsButton;
    sLabelFX6: TsLabelFX;
    sLabelFX7: TsLabelFX;
    namess: TsMemo;
    sButton8: TsButton;
    sSkinManager1: TsSkinManager;
    sLabelFX8: TsLabelFX;
    sLabelFX9: TsLabelFX;
    sEdit4: TsEdit;
    sEdit5: TsEdit;
    PopupMenu1: TPopupMenu;
    N11: TMenuItem;
    N31: TMenuItem;
    sSpeedButton1: TsSpeedButton;
    N1: TMenuItem;
    sGroupBox4: TsGroupBox;
    sGroupBox5: TsGroupBox;
    importall: TsMemo;
    sLabelFX21: TsLabelFX;
    sButton10: TsButton;
    sLabelFX23: TsLabelFX;
    exportall: TsMemo;
    sButton11: TsButton;
    sLabelFX24: TsLabelFX;
    sButton12: TsButton;
    sSaveDialog1: TsSaveDialog;
    regimport: TsButton;
    sButton9: TsButton;
    sOpenDialog1: TsOpenDialog;
    sSpeedButton2: TsSpeedButton;
    PopupMenu2: TPopupMenu;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N12: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    t1: TMenuItem;
    M1: TMenuItem;
    extasyes1: TMenuItem;
    lang: TsMemo;
    E1: TMenuItem;
    enlang: TsMemo;
    rulang: TsMemo;
    languages: TsButton;
    G1: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    sAlphaHints1: TsAlphaHints;
    sLabelFX18: TsBitBtn;
    sLabelFX19: TsBitBtn;
    sLabelFX15: TsBitBtn;
    sLabelFX16: TsBitBtn;
    sLabelFX17: TsBitBtn;
    sLabelFX22: TsBitBtn;
    sLabelFX13: TsBitBtn;
    sLabelFX12: TsBitBtn;
    sLabelFX11: TsBitBtn;
    sLabelFX10: TsBitBtn;
    sLabelFX14: TsBitBtn;
    sLabelFX20: TsBitBtn;
    N10: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    sLabelFX25: TsLabelFX;
    sLabelFX26: TsLabelFX;
    sLabelFX27: TsLabelFX;
    sLabelFX28: TsLabelFX;
    sLabelFX29: TsLabelFX;
    sLabelFX30: TsLabelFX;
    sLabelFX31: TsLabelFX;
    sLabelFX32: TsLabelFX;
    sLabelFX33: TsLabelFX;
    sLabelFX34: TsLabelFX;
    sLabelFX35: TsLabelFX;
    sLabelFX36: TsLabelFX;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    j1: TMenuItem;
    sGroupBox6: TsGroupBox;
    sLabelFX37: TsLabelFX;
    sLabelFX38: TsLabelFX;
    sBitBtn1: TsBitBtn;
    sCheckBox2: TsCheckBox;
    ngit: TsMemo;
    updvers: TsButton;
    sLabelFX39: TsButton;
    sTitleBar1: TsTitleBar;
    versionprogs: TsLabelFX;
    pbFile: TsProgressBar;
    lbProgress: TsLabelFX;
    Timer1: TTimer;
    procedure sButton2Click(Sender: TObject);
    procedure sButton3Click(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure sEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure sEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure sEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sButton5Click(Sender: TObject);
    procedure sButton6Click(Sender: TObject);
    procedure sButton7Click(Sender: TObject);
    procedure sButton4Click(Sender: TObject);
    procedure sButton8Click(Sender: TObject);
    procedure sLabelFX13Click(Sender: TObject);
    procedure sLabelFX12Click(Sender: TObject);
    procedure sLabelFX11Click(Sender: TObject);
    procedure sLabelFX10Click(Sender: TObject);
    procedure sLabelFX14Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure sLabelFX22Click(Sender: TObject);
    procedure sEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure sEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure sButton10Click(Sender: TObject);
    procedure sButton11Click(Sender: TObject);
    procedure sButton12Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sLabelFX15Click(Sender: TObject);
    procedure sLabelFX16Click(Sender: TObject);
    procedure sLabelFX17Click(Sender: TObject);
    procedure sLabelFX18Click(Sender: TObject);
    procedure sLabelFX19Click(Sender: TObject);
    procedure regimportClick(Sender: TObject);
    procedure sButton9Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure t1Click(Sender: TObject);
    procedure extasyes1Click(Sender: TObject);
    procedure M1Click(Sender: TObject);
    procedure sLabelFX5Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure languagesClick(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure sLabelFX20Click(Sender: TObject);
    procedure sLabelFX25Click(Sender: TObject);
    procedure sLabelFX26Click(Sender: TObject);
    procedure sLabelFX27Click(Sender: TObject);
    procedure sLabelFX28Click(Sender: TObject);
    procedure sLabelFX29Click(Sender: TObject);
    procedure sLabelFX30Click(Sender: TObject);
    procedure sLabelFX31Click(Sender: TObject);
    procedure sLabelFX32Click(Sender: TObject);
    procedure sLabelFX33Click(Sender: TObject);
    procedure sLabelFX34Click(Sender: TObject);
    procedure sLabelFX35Click(Sender: TObject);
    procedure sLabelFX36Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure j1Click(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure sLabelFX39Click(Sender: TObject);
    procedure sTitleBar1Items0Click(Sender: TObject);
    procedure updversClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
    TURLD = class(TThread)
    private
    { Private declarations }
  protected
  procedure Execute; override;
  end;

      TURLF = class(TThread)
    private
    Download: int64;
    procedure SynaProgress(Sender: TObject; Reason: THookSocketReason;
    const Value: String);
    function GetSize(URL: string): int64;
    function GetSize2(URL: string): int64;
  protected
  procedure Execute; override;
  end;

var
  Form1: TForm1;
  save, dds, path, impt, pasive, tap,vg, newv, resr, l, enterupd: string;
  count: integer;
  Ini:TiniFile;
  HTTP: THTTPSend;
  H: THandle;


  URLXD: TURLD;
  URLXF: TURLF;

implementation

{$R *.dfm}
{$R ssl.res}

procedure ExtractRes(ResType, ResName, ResNewName : String);
var Res : TResourceStream;
 begin Res := TResourceStream.Create(Hinstance, Resname, Pchar(ResType));
 Res.SavetoFile(ResNewName);
 Res.Free;
end;




function TURLF.GetSize(URL: string): int64;
var i:integer;
    size:string;
    ch:char;
begin
  Result:=-1;
  with THTTPSend.Create do
  if HTTPMethod('HEAD',URL) then
    begin
      for I := 0 to Headers.Count - 1 do
        begin
          if pos('content-length',lowercase(Headers[i]))>0 then
            begin
              size:='';
//              for ch in Headers[i]do
                if ch in ['0'..'9'] then
                   size:=size+ch;
              Result:=StrToInt(size)+Length(Headers.Text);
              break;
            end;
        end;
    end
end;

function TURLF.GetSize2(URL: string): int64;
var size:string;
begin
  Result:=-1;
  with THTTPSend.Create do
  if HTTPMethod('HEAD',URL) then
    begin
      HeadersToList(Headers);//приводим список заголовков к виду Ќазвание=«начение
      size:=Headers.Values['Content-Length'];
      Result:=StrToIntDef(size,-1);
      if Result>-1 then
         Result:=Result+Length(Headers.Text)
    end
end;


procedure TURLF.SynaProgress(Sender: TObject; Reason: THookSocketReason;
  const Value: String);
begin
  if Reason=HR_ReadCount then
    begin
      Download:=Download+StrToInt(Value);
      if Form1.pbFile.Max>0 then
        begin
          Form1.pbFile.Position:=Download;
          Form1.lbProgress.Caption:=IntToStr(Trunc((Download/Form1.pbFile.Max)*100))+'%';
        end
      else
      Form1.lbProgress.Caption:=IntToStr(Download)+' b';
      Application.ProcessMessages;
    end
end;






















procedure TURLD.execute;
begin
Form1.sBitBtn1.Click;
end;

procedure TURLF.execute;
var HTTP: THTTPSend;
    MaxSize: int64;
begin
Form1.pbFile.Visible:=true;
Form1.lbProgress.Visible:=true;
  Download:=0;
  MaxSize:=GetSize2('https://raw.githubusercontent.com/ext4n/FTPSTLK/main/FTPSTLK.exe');
  if MaxSize>0 then
    Form1.pbFile.Max:=MaxSize
  else
    Form1.pbFile.Max:=0;
  HTTP:=THTTPSend.Create;
  HTTP.Sock.OnStatus:=SynaProgress;
  try
    if HTTP.HTTPMethod('GET','https://raw.githubusercontent.com/ext4n/FTPSTLK/main/FTPSTLK.exe') then
       HTTP.Document.SaveToFile(ExtractFilePath(Application.ExeName)+'TEMP-FTPSTLK.bin');
  finally
    HTTP.Free;
  end;
end;

procedure TForm1.sButton2Click(Sender: TObject);
begin
if sFilenameEdit1.Dialog.Execute then
begin
sFileNameEdit1.Text:=sFilenameEdit1.Dialog.FileName;
save:=ExtractFileName(sFilenameEdit1.Dialog.FileName);
dds:=ExtractFileName(sFilenameEdit1.Dialog.FileName);
dds := StringReplace(dds, '.sav', '.dds', [rfReplaceAll]);
path := StringReplace(sFilenameEdit1.Dialog.FileName, save, '', [rfReplaceAll]);
//namesav.Text:=path;
sLabelFX1.Caption:=lang.Lines[41]+save;
  if not FileExists(path+dds) then
sLabelFX2.Caption:=lang.Lines[42]
  else
sLabelFX2.Caption:=lang.Lines[43]+dds;
sLabelFX3.Caption:=lang.Lines[44];
end;
sButton3.Enabled:=true;
end;

procedure TForm1.sButton3Click(Sender: TObject);
var
FTP: TFTPSend;
begin
namesav.Text:=save;
namesav.Text:= StringReplace(namesav.Text, '.sav', '', [rfReplaceAll]);
namesav.Lines.SaveToFile(ExtractFilePath(ParamStr(0))+'name.txt');
if namesav.Text <> '' then
begin
sButton3.Enabled:=false;
sButton3.Caption:=lang.Lines[45];
Application.ProcessMessages;
FTP:=TFTPSend.Create;
FTP.TargetHost:=sEdit1.Text;
FTP.TargetPort:='21';
FTP.UserName:=sEdit2.Text;
FTP.Password:=sEdit3.Text;
FTP.PassiveMode:=sCheckBox1.Checked;
 if FTP.Login then
 begin
  sLabelFX5.Caption:=lang.Lines[46];
  FTP.DataStream.LoadFromFile(path+save);
  FTP.StoreFile('/'+sEdit5.Text+'/'+save,false);
  if FileExists(path+dds) then
  begin
  FTP.DataStream.LoadFromFile(path+dds);
  FTP.StoreFile('/'+sEdit5.Text+'/'+dds,false);
  end;
  FTP.DataStream.LoadFromFile(ExtractFilePath(ParamStr(0))+'name.txt');
  FTP.StoreFile('/'+sEdit5.Text+'/'+'name.txt',false);
  sLabelFX5.Caption:=lang.Lines[47];
  DeleteFile(ExtractFilePath(ParamStr(0))+'name.txt');
  end
  else
  begin
  sLabelFX5.Caption:=lang.Lines[48];
end;
end;
sButton3.Enabled:=true;
sButton3.Caption:=lang.Lines[49];
DeleteFile(ExtractFilePath(ParamStr(0))+'name.txt');
end;

procedure TForm1.sButton1Click(Sender: TObject);
begin
sButton1.Enabled:=false;
sGroupBox1.Visible:=true;
sGroupBox2.Visible:=false;
sGroupBox3.Visible:=false;
sGroupBox4.Visible:=false;
sGroupBox5.Visible:=false;
sGroupBox6.Visible:=false;
sButton5.Enabled:=true;
sButton6.Enabled:=true;
tap:='3';
sLabelFX38.Caption:='';
updvers.Visible:=false;
sLabelFX39.Visible:=false;
end;

procedure TForm1.sEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then begin
key:=#0;
ActiveControl:= sEdit2;
end;
end;

procedure TForm1.sEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then begin
key:=#0;
ActiveControl:= sEdit3;
end;
end;

procedure TForm1.sEdit3KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then begin
key:=#0;
ActiveControl:= sEdit4;
end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
N12.Caption:=versionprogs.Caption;
Form1.ClientHeight:=300;
Form1.ClientWidth:=360;
sGroupBox1.Left:=8;
sGroupBox1.Top:=48;
sGroupBox2.Left:=8;
sGroupBox2.Top:=48;
sGroupBox3.Left:=8;
sGroupBox3.Top:=48;
sGroupBox4.Left:=8;
sGroupBox4.Top:=48;
sGroupBox5.Left:=8;
sGroupBox5.Top:=48;
sGroupBox6.Left:=8;
sGroupBox6.Top:=48;
Ini := TIniFile.Create(ExtractFilePath(ParamStr(0))+'set.ini');
sEdit1.Text:=Ini.ReadString('MAIN','H',sEdit1.Text);
sEdit2.Text:=Ini.ReadString('MAIN','U',sEdit2.Text);
sEdit3.Text:=Ini.ReadString('MAIN','P',sEdit3.Text);
sDirectoryEdit1.Text:=Ini.ReadString('MAIN','SAVEPATH',sDirectoryEdit1.Text);
scheckbox1.Checked:=Ini.ReadBool('MAIN','PASSIVE', scheckbox1.checked);
N4.Checked:=Ini.ReadBool('LANG','RU', N4.Checked);
E1.Checked:=Ini.ReadBool('LANG','EN', E1.Checked);
N8.Checked:=Ini.ReadBool('HINT','CLICK', N8.Checked);
N7.Checked:=Ini.ReadBool('HINT','HOVER', N7.Checked);
N9.Checked:=Ini.ReadBool('HINT','DISABLE', N9.Checked);
N14.Checked:=Ini.ReadBool('HINT','TYPE_TEXT', N14.Checked);
N13.Checked:=Ini.ReadBool('HINT','TYPE_BUTTON', N13.Checked);
N16.Checked:=Ini.ReadBool('THEME','THEME1', N16.Checked);
N17.Checked:=Ini.ReadBool('THEME','THEME2', N17.Checked);
sEdit4.Text:=Ini.ReadString('SITE','URL',sEdit4.Text);
sEdit5.Text:=Ini.ReadString('SITE','FOLDER',sEdit5.Text);
tap:=Ini.ReadString('TAP','NUM',tap);
resr:=Ini.ReadString('TAP','RES',resr);
Scheckbox2.Checked:=Ini.ReadBool('PROGRAM','UPDATE', Scheckbox2.Checked);
Ini.Free;
lang.Text:=rulang.Text;
////////////////////////////////////////////
languages.Click;
if N4.Checked=true then begin
N4.Click;
l:='ru' end;
if E1.Checked=true then begin
E1.Click;
l:='en' end;
if N8.Checked=true then N8.Click;
if N7.Checked=true then N7.Click;
if N9.Checked=true then N9.Click;
if N13.Checked=true then N13.Click;
if N14.Checked=true then N14.Click;
if N16.Checked=true then begin
N16.Click;
N16.Checked:=true;
N17.Checked:=false;
N16.Enabled:=false;
N17.Enabled:=true;
end;
if N17.Checked=true then begin
N17.Click;
N17.Checked:=true;
N16.Checked:=false;
N16.Enabled:=true;
N17.Enabled:=false;
end;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 resr:='n';
Ini := TIniFile.Create(ExtractFilePath(ParamStr(0))+'set.ini');
Ini.WriteString('MAIN','H',sEdit1.Text);
Ini.WriteString('MAIN','U',sEdit2.Text);
Ini.WriteString('MAIN','P',sEdit3.Text);
Ini.WriteString('MAIN','SAVEPATH',sDirectoryEdit1.Text);
Ini.WriteBool('MAIN','PASSIVE', scheckbox1.checked);
Ini.WriteBool('LANG','RU', N4.Checked);
Ini.WriteBool('LANG','EN', E1.Checked);
Ini.WriteBool('HINT','CLICK', N8.Checked);
Ini.WriteBool('HINT','HOVER', N7.Checked);
Ini.WriteBool('HINT','DISABLE', N9.Checked);
Ini.WriteBool('HINT','TYPE_TEXT', N14.Checked);
Ini.WriteBool('HINT','TYPE_BUTTON', N13.Checked);
Ini.WriteBool('THEME','THEME1', N16.Checked);
Ini.WriteBool('THEME','THEME2', N17.Checked);
Ini.WriteString('SITE','URL',sEdit4.Text);
Ini.WriteString('SITE','FOLDER',sEdit5.Text);
Ini.WriteString('TAP','NUM',tap);
Ini.WriteString('TAP','RES',resr);
Ini.WriteBool('PROGRAM','UPDATE', Scheckbox2.Checked);
Ini.Free;
end;

procedure TForm1.sButton5Click(Sender: TObject);
begin
sButton1.Enabled:=true;
sGroupBox1.Visible:=false;
sGroupBox2.Visible:=true;
sGroupBox3.Visible:=false;
sGroupBox4.Visible:=false;
sGroupBox5.Visible:=false;
sGroupBox5.Visible:=false;
sButton5.Enabled:=false;
sButton6.Enabled:=true;
tap:='1';
sLabelFX38.Caption:='';
updvers.Visible:=false;
sLabelFX39.Visible:=false;
end;

procedure TForm1.sButton6Click(Sender: TObject);
begin
sButton1.Enabled:=true;
sGroupBox1.Visible:=false;
sGroupBox2.Visible:=false;
sGroupBox3.Visible:=true;
sGroupBox4.Visible:=false;
sGroupBox5.Visible:=false;
sGroupBox6.Visible:=false;
sButton5.Enabled:=true;
sButton6.Enabled:=false;
tap:='2';
sLabelFX38.Caption:='';
updvers.Visible:=false;
sLabelFX39.Visible:=false;
end;

procedure TForm1.sButton7Click(Sender: TObject);
begin
namess.Clear;
if (sEdit4.Text = '') and (sEdit5.Text = '') then
begin
ShowMessage(lang.Lines[50]);
sEdit4.TextHint :=lang.Lines[51];
sEdit5.TextHint :=lang.Lines[52];
sButton1.Click;
end
else
begin
if sEdit4.Text = '' then
begin
ShowMessage(lang.Lines[55]);
sEdit4.TextHint :=lang.Lines[51];
sEdit5.TextHint :=lang.Lines[54];
sButton1.Click;
end else
if sEdit5.Text = '' then
begin
ShowMessage(lang.Lines[56]);
sEdit4.TextHint :=lang.Lines[53];
sEdit5.TextHint :=lang.Lines[52];
sButton1.Click;
end else begin
sEdit4.TextHint :=lang.Lines[53];
sEdit5.TextHint :=lang.Lines[54];
HttpGetText(sEdit4.Text+'/'+sEdit5.Text+'/'+'name.txt', namess.Lines);
if namess.Lines[0]= '' then
begin
sLabelFX6.Caption:=lang.Lines[57];
sLabelFX7.Caption:=lang.Lines[58];
end else begin
if namess.Lines[0]= '<!DOCTYPE html>' then
sLabelFX6.Caption:=lang.Lines[59]
else
begin
sLabelFX6.Caption:=lang.Lines[60]+namess.Lines[0]+'.sav';
sLabelFX7.Caption:=lang.Lines[43]+namess.Lines[0]+'.dds';
end;
  end;
    end;
      end;
        end;




procedure TForm1.sButton4Click(Sender: TObject);
begin
HTTP:=THTTPSend.Create;
sLabelFX6.Caption:='';
sLabelFX7.Caption:='';
namess.Clear;
if (sEdit4.Text = '') and (sEdit5.Text = '') then
begin
ShowMessage(lang.Lines[50]);
sEdit4.TextHint :=lang.Lines[51];
sEdit5.TextHint :=lang.Lines[52];
sButton1.Click;
end
else
begin
if sEdit4.Text = '' then
begin
ShowMessage(lang.Lines[55]);
sEdit4.TextHint :=lang.Lines[51];
sEdit5.TextHint :=lang.Lines[52];
sButton1.Click;
end else
if sEdit5.Text = '' then
begin
ShowMessage(lang.Lines[56]);
sEdit4.TextHint :=lang.Lines[53];
sEdit5.TextHint :=lang.Lines[52];
sButton1.Click;
end else begin
sEdit4.TextHint :=lang.Lines[53];
sEdit5.TextHint :=lang.Lines[54];
HttpGetText(sEdit4.Text+'/'+sEdit5.Text+'/'+'name.txt', namess.Lines);
if namess.Lines[0]= '' then
begin
sLabelFX6.Caption:=lang.Lines[57];
sLabelFX7.Caption:=lang.Lines[58];
end else begin
if namess.Lines[0]= '<!DOCTYPE html>' then
sLabelFX6.Caption:=lang.Lines[59]
else
begin
   if HTTP.HTTPMethod('GET',sEdit4.Text+'/'+sEdit5.Text+'/'+namess.Lines[0]+'.sav') then
   HTTP.Document.SaveToFile(sDirectoryEdit1.Text+'\'+namess.Lines[0]+'.sav');
    if HTTP.HTTPMethod('GET',sEdit4.Text+'/'+sEdit5.Text+'/'+namess.Lines[0]+'.dds') then
   HTTP.Document.SaveToFile(sDirectoryEdit1.Text+'\'+namess.Lines[0]+'.dds');
    HTTP.Free;
    sButton8.Click;
   namesav.Lines.LoadFromFile(sDirectoryEdit1.Text+'\'+namess.Lines[0]+'.dds');
   if namesav.Lines[0]='<!DOCTYPE html>' then
begin
Deletefile(sDirectoryEdit1.Text+'\'+namess.Lines[0]+'.dds');
end;
namesav.Clear;
end;
  end;
    end;
      end;
        end;

procedure TForm1.sButton8Click(Sender: TObject);
begin
HTTP:=THTTPSend.Create;
    if HTTP.HTTPMethod('GET',sEdit4.Text+'/'+sEdit5.Text+'/'+namess.Lines[0]+'.dds') then
   HTTP.Document.SaveToFile(sDirectoryEdit1.Text+'\'+namess.Lines[0]+'.dds');
    HTTP.Free;
    sLabelFX6.Caption:=lang.Lines[61];
end;

procedure TForm1.sLabelFX13Click(Sender: TObject);
begin
if N7.Checked=true then
begin
sLabelFX13.Hint:=lang.Lines[77];
end else begin
ShowMessage (lang.Lines[77]);
end;
end;

procedure TForm1.sLabelFX30Click(Sender: TObject);
begin
if N7.Checked=true then
begin
sLabelFX30.Hint:=lang.Lines[77];
end else begin
ShowMessage (lang.Lines[77]);
end;
end;

procedure TForm1.sLabelFX12Click(Sender: TObject);
begin
if N7.Checked=true then
begin
sLabelFX12.Hint:=lang.Lines[78];
end else begin
ShowMessage (lang.Lines[78]);
end;
end;

procedure TForm1.sLabelFX31Click(Sender: TObject);
begin
if N7.Checked=true then
begin
sLabelFX31.Hint:=lang.Lines[78];
end else begin
ShowMessage (lang.Lines[78]);
end;
end;

procedure TForm1.sLabelFX11Click(Sender: TObject);
begin
if N7.Checked=true then
begin
sLabelFX11.Hint:=lang.Lines[79];
end else begin
ShowMessage (lang.Lines[79]);
end;
end;

procedure TForm1.sLabelFX32Click(Sender: TObject);
begin
if N7.Checked=true then
begin
sLabelFX32.Hint:=lang.Lines[79];
end else begin
ShowMessage (lang.Lines[79]);
end;
end;

procedure TForm1.sLabelFX10Click(Sender: TObject);
begin
if N7.Checked=true then
begin
sLabelFX10.Hint:=lang.Lines[80];
end else begin
ShowMessage (lang.Lines[80]);
end;
end;

procedure TForm1.sLabelFX33Click(Sender: TObject);
begin
if N7.Checked=true then
begin
sLabelFX33.Hint:=lang.Lines[80];
end else begin
ShowMessage (lang.Lines[80]);
end;
end;

procedure TForm1.sLabelFX14Click(Sender: TObject);
begin
if N7.Checked=true then
begin
sLabelFX14.Hint:=lang.Lines[81];
end else begin
ShowMessage (lang.Lines[81]);
end;
end;

procedure TForm1.sLabelFX34Click(Sender: TObject);
begin
if N7.Checked=true then
begin
sLabelFX34.Hint:=lang.Lines[81];
end else begin
ShowMessage (lang.Lines[81]);
end;
end;

procedure TForm1.sLabelFX20Click(Sender: TObject);
begin
if N7.Checked=true then
begin
sLabelFX20.Hint:=lang.Lines[82];
end else begin
ShowMessage (lang.Lines[82]);
end;
end;

procedure TForm1.sLabelFX35Click(Sender: TObject);
begin
if N7.Checked=true then
begin
sLabelFX35.Hint:=lang.Lines[82];
end else begin
ShowMessage (lang.Lines[82]);
end;
end;

procedure TForm1.N11Click(Sender: TObject);
begin
impt:='1';
sGroupBox4.Visible:=true;
sGroupBox5.Visible:=false;
sLabelFX21.Caption:=lang.Lines[62];
importall.Clear;
sButton1.Enabled:=true;
end;

procedure TForm1.N31Click(Sender: TObject);
var
  buttonSelected : Integer;
begin
sLabelFX23.Caption:=lang.Lines[63];
if sCheckbox1.Checked=true then begin
pasive:='+'
end else begin
pasive:='-'
end;
impt:='3';
exportall.Clear;
sButton1.Enabled:=true;
buttonSelected := MessageDlg(lang.Lines[68],mtError, mbOKCancel, 0);
  if (buttonSelected = mrOK) and (impt='3') then
  begin
sGroupBox5.Visible:=true;
sGroupBox4.Visible:=false;
exportall.Lines.Add('H:='+sEdit1.Text);
exportall.Lines.Add('U:='+sEdit2.Text);
exportall.Lines.Add('P:='+sEdit3.Text);
exportall.Lines.Add('S:='+sEdit4.Text);
exportall.Lines.Add('F:='+sEdit5.Text);
exportall.Lines.Add('M:='+pasive);
end;
  if buttonSelected = mrCancel then
  sButton1.Enabled:=false;
end;

procedure TForm1.N1Click(Sender: TObject);
var
  buttonSelected : Integer;
begin
sLabelFX23.Caption:=lang.Lines[64];
if sCheckbox1.Checked=true then begin
pasive:='+'
end else begin
pasive:='-'
end;
impt:='4';
exportall.Clear;
sButton1.Enabled:=true;
buttonSelected := MessageDlg(lang.Lines[69],mtError, mbOKCancel, 0);
  if (buttonSelected = mrOK) and (impt='4') then
  begin
sGroupBox5.Visible:=true;
sGroupBox4.Visible:=false;
end;
if (impt='4') then
begin
exportall.Lines.Add('S:='+sEdit4.Text);
exportall.Lines.Add('F:='+sEdit5.Text);
exportall.Lines.Add('M:='+pasive);
end;
  if buttonSelected = mrCancel then
  sButton1.Enabled:=false;
end;

procedure TForm1.sLabelFX22Click(Sender: TObject);
begin
if N7.Checked=true then
begin
sLabelFX22.Hint:=lang.Lines[76];
end else begin
ShowMessage (lang.Lines[76]);
end;
end;

procedure TForm1.sLabelFX36Click(Sender: TObject);
begin
if N7.Checked=true then
begin
sLabelFX36.Hint:=lang.Lines[76];
end else begin
ShowMessage (lang.Lines[76]);
end;
end;

procedure TForm1.sEdit4KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then begin
key:=#0;
ActiveControl:= sEdit5;
end;
end;

procedure TForm1.sEdit5KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then begin
key:=#0;
ActiveControl:= sEdit1;
end;
end;

procedure TForm1.sButton10Click(Sender: TObject);
begin
Clipboard.AsText:=exportall.Text;
ShowMessage (lang.Lines[67]);
end;

procedure TForm1.sButton11Click(Sender: TObject);
begin
importall.Text:=Clipboard.AsText;
end;

procedure TForm1.sButton12Click(Sender: TObject);
begin
if sSaveDialog1.Execute then
begin
exportall.Lines.SaveToFile(sSaveDialog1.FileName);
end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
if tap='1' then sButton5.Click;
if tap='2' then sButton6.Click;
if tap='3' then sButton1.Click;
if resr='y' then
begin
 sGroupBox1.Visible:=false;
 sGroupBox2.Visible:=false;
 sGroupBox3.Visible:=false;
 sGroupBox4.Visible:=false;
 sGroupBox5.Visible:=false;
 sGroupBox6.Visible:=true;
 sButton1.Enabled:=true;
sLabelFX37.Caption :=sLabelFX37.Caption+N12.Caption;
end;
resr:='n';
enterupd:='0';

if (sCheckbox2.Checked=true) and (FileExists('libeay32.dll')) and (FileExists('ssleay32.dll')) then
begin
  URLXD:=TURLD.Create(False);
  URLXD.Priority:=tpNormal;
  URLXD.FreeOnTerminate:=true;
end;

end;

procedure TForm1.sLabelFX15Click(Sender: TObject);
begin
if N7.Checked=true then
begin
sLabelFX15.Hint:=lang.Lines[73];
end else begin
ShowMessage (lang.Lines[73]);
end;
end;

procedure TForm1.sLabelFX27Click(Sender: TObject);
begin
if N7.Checked=true then
begin
sLabelFX27.Hint:=lang.Lines[73];
end else begin
ShowMessage (lang.Lines[73]);
end;
end;

procedure TForm1.sLabelFX16Click(Sender: TObject);
begin
if N7.Checked=true then
begin
sLabelFX16.Hint:=lang.Lines[74];
end else begin
ShowMessage (lang.Lines[74]);
end;
end;

procedure TForm1.sLabelFX28Click(Sender: TObject);
begin
if N7.Checked=true then
begin
sLabelFX28.Hint:=lang.Lines[74];
end else begin
ShowMessage (lang.Lines[74]);
end;
end;

procedure TForm1.sLabelFX17Click(Sender: TObject);
begin
if N7.Checked=true then
begin
sLabelFX17.Hint:=lang.Lines[75];
end else begin
ShowMessage (lang.Lines[75]);
end;
end;

procedure TForm1.sLabelFX29Click(Sender: TObject);
begin
if N7.Checked=true then
begin
sLabelFX29.Hint:=lang.Lines[75];
end else begin
ShowMessage (lang.Lines[75]);
end;
end;

procedure TForm1.sLabelFX18Click(Sender: TObject);
begin
if N7.Checked=true then
begin
sLabelFX18.Hint:=lang.Lines[71];
end else begin
ShowMessage (lang.Lines[71]);
end;
end;

procedure TForm1.sLabelFX25Click(Sender: TObject);
begin
if N7.Checked=true then
begin
sLabelFX25.Hint:=lang.Lines[71];
end else begin
ShowMessage (lang.Lines[71]);
end;
end;

procedure TForm1.sLabelFX19Click(Sender: TObject);
begin
if N7.Checked=true then
begin
sLabelFX19.Hint:=lang.Lines[72];
end else begin
ShowMessage (lang.Lines[72]);
end;
end;

procedure TForm1.sLabelFX26Click(Sender: TObject);
begin
if N7.Checked=true then
begin
sLabelFX26.Hint:=lang.Lines[72];
end else begin
ShowMessage (lang.Lines[72]);
end;
end;

procedure TForm1.regimportClick(Sender: TObject);
var
sum1:tregexpr;
sum2:tregexpr;
sum3:tregexpr;
sum4:tregexpr;
sum5:tregexpr;
sum6:tregexpr;
s,one,two,free,four,five,six:string;
begin
//////////////////////////////////////////////////////////////////////////
namesav.Clear;
s:=importall.Text;
s := StringReplace(s, 'H:=', #13#10'H:=', [rfReplaceAll]);
s := StringReplace(s, 'U:=', #13#10'U:=', [rfReplaceAll]);
s := StringReplace(s, 'P:=', #13#10'P:=', [rfReplaceAll]);
s := StringReplace(s, 'S:=', #13#10'S:=', [rfReplaceAll]);
s := StringReplace(s, 'F:=', #13#10'F:=', [rfReplaceAll]);
s := StringReplace(s, 'M:=', #13#10'M:=', [rfReplaceAll]);
sum1:=tregexpr.Create;
sum1.Expression:='(H:=)(.*)';
if sum1.Exec(s) then
 begin
 namesav.Lines.Clear;
 repeat
 namesav.Lines.Add(sum1.Match[0]);
 until not sum1.ExecNext;
 end
 else
sum1.Free;
one:=namesav.Lines[0];
///////////////////////////////////////////////////////////////////////////
namesav.Clear;
s:=importall.Text;
s := StringReplace(s, 'H:=', #13#10'H:=', [rfReplaceAll]);
s := StringReplace(s, 'U:=', #13#10'U:=', [rfReplaceAll]);
s := StringReplace(s, 'P:=', #13#10'P:=', [rfReplaceAll]);
s := StringReplace(s, 'S:=', #13#10'S:=', [rfReplaceAll]);
s := StringReplace(s, 'F:=', #13#10'F:=', [rfReplaceAll]);
s := StringReplace(s, 'M:=', #13#10'M:=', [rfReplaceAll]);
sum2:=tregexpr.Create;
sum2.Expression:='(U:=)(.*)';
if sum2.Exec(s) then
 begin
 namesav.Lines.Clear;
 repeat
 namesav.Lines.Add(sum2.Match[0]);
 until not sum2.ExecNext;
 end
 else
sum2.Free;
two:=namesav.Lines[0];
///////////////////////////////////////////////////////////////////////////
namesav.Clear;
s:=importall.Text;
s := StringReplace(s, 'H:=', #13#10'H:=', [rfReplaceAll]);
s := StringReplace(s, 'U:=', #13#10'U:=', [rfReplaceAll]);
s := StringReplace(s, 'P:=', #13#10'P:=', [rfReplaceAll]);
s := StringReplace(s, 'S:=', #13#10'S:=', [rfReplaceAll]);
s := StringReplace(s, 'F:=', #13#10'F:=', [rfReplaceAll]);
s := StringReplace(s, 'M:=', #13#10'M:=', [rfReplaceAll]);
sum3:=tregexpr.Create;
sum3.Expression:='(P:=)(.*)';
if sum3.Exec(s) then
 begin
 namesav.Lines.Clear;
 repeat
 namesav.Lines.Add(sum3.Match[0]);
 until not sum3.ExecNext;
 end
 else
sum3.Free;
free:=namesav.Lines[0];
///////////////////////////////////////////////////////////////////////////
namesav.Clear;
s:=importall.Text;
s := StringReplace(s, 'H:=', #13#10'H:=', [rfReplaceAll]);
s := StringReplace(s, 'U:=', #13#10'U:=', [rfReplaceAll]);
s := StringReplace(s, 'P:=', #13#10'P:=', [rfReplaceAll]);
s := StringReplace(s, 'S:=', #13#10'S:=', [rfReplaceAll]);
s := StringReplace(s, 'F:=', #13#10'F:=', [rfReplaceAll]);
s := StringReplace(s, 'M:=', #13#10'M:=', [rfReplaceAll]);
sum4:=tregexpr.Create;
sum4.Expression:='(S:=)(.*)';
if sum4.Exec(s) then
 begin
 namesav.Lines.Clear;
 repeat
 namesav.Lines.Add(sum4.Match[0]);
 until not sum4.ExecNext;
 end
 else
sum4.Free;
four:=namesav.Lines[0];



///////////////////////////////////////////////////////////////////////////
namesav.Clear;
s:=importall.Text;
s := StringReplace(s, 'H:=', #13#10'H:=', [rfReplaceAll]);
s := StringReplace(s, 'U:=', #13#10'U:=', [rfReplaceAll]);
s := StringReplace(s, 'P:=', #13#10'P:=', [rfReplaceAll]);
s := StringReplace(s, 'S:=', #13#10'S:=', [rfReplaceAll]);
s := StringReplace(s, 'F:=', #13#10'F:=', [rfReplaceAll]);
s := StringReplace(s, 'M:=', #13#10'M:=', [rfReplaceAll]);
sum5:=tregexpr.Create;
sum5.Expression:='(F:=)(.*)';
if sum5.Exec(s) then
 begin
 namesav.Lines.Clear;
 repeat
 namesav.Lines.Add(sum5.Match[0]);
 until not sum5.ExecNext;
 end
 else
sum5.Free;
five:=namesav.Lines[0];
///////////////////////////////////////////////////////////////////////////
namesav.Clear;
s:=importall.Text;
s := StringReplace(s, 'H:=', #13#10'H:=', [rfReplaceAll]);
s := StringReplace(s, 'U:=', #13#10'U:=', [rfReplaceAll]);
s := StringReplace(s, 'P:=', #13#10'P:=', [rfReplaceAll]);
s := StringReplace(s, 'S:=', #13#10'S:=', [rfReplaceAll]);
s := StringReplace(s, 'F:=', #13#10'F:=', [rfReplaceAll]);
s := StringReplace(s, 'M:=', #13#10'M:=', [rfReplaceAll]);
sum6:=tregexpr.Create;
sum6.Expression:='(M:=)(.*)';
if sum6.Exec(s) then
 begin
 namesav.Lines.Clear;
 repeat
 namesav.Lines.Add(sum6.Match[0]);
 until not sum6.ExecNext;
 end
 else
sum6.Free;
six:=namesav.Lines[0];
///////////////////////////////////////////////
one := StringReplace(one, 'H:=', '', [rfReplaceAll]);
two := StringReplace(two, 'U:=', '', [rfReplaceAll]);
free := StringReplace(free, 'P:=', '', [rfReplaceAll]);
four := StringReplace(four, 'S:=', '', [rfReplaceAll]);
five := StringReplace(five, 'F:=', '', [rfReplaceAll]);
six := StringReplace(six, 'M:=', '', [rfReplaceAll]);
namesav.Clear;
if (one= '') and (two='') and (free='') and (four='') and (five='') and (six='')then
begin
ShowMessage (lang.Lines[70]);
end else begin
if one = '' then
begin
sEdit4.Text:=four;
sEdit5.Text:=five;
ShowMessage (lang.Lines[65]);
end;
if one <> '' then
begin
sEdit1.Text:=one;
sEdit2.Text:=two;
sEdit3.Text:=free;
sEdit4.Text:=four;
sEdit5.Text:=five;
ShowMessage (lang.Lines[66]);
end;
if six='+' then
begin
sCheckbox1.Checked:=true;
end;
if six='-' then
begin
sCheckbox1.Checked:=false;
end;
end;
end;







procedure TForm1.sButton9Click(Sender: TObject);
begin
if sOpenDialog1.Execute then
begin
importall.Lines.LoadFromFile(sOpenDialog1.FileName);
end;
end;

procedure TForm1.N6Click(Sender: TObject);
begin
ShellExecute( Handle, 'open', 'https://discord.gg/qawwT7b', nil, nil, SW_NORMAL );
end;

procedure TForm1.t1Click(Sender: TObject);
begin
ShellExecute( Handle, 'open', 'https://t.me/theslot', nil, nil, SW_NORMAL );
end;

procedure TForm1.extasyes1Click(Sender: TObject);
begin
ShellExecute( Handle, 'open', 'https://extasy.es', nil, nil, SW_NORMAL );
end;

procedure TForm1.M1Click(Sender: TObject);
var 
  eadress : string;
begin
  eadress := 'admin@theslot.ru';
  ShellExecute(application.Handle, 'Open', PChar(eadress), Nil, Nil, SW_SHOWDEFAULT);
end;

procedure TForm1.sLabelFX5Click(Sender: TObject);
begin
//¬ывести форму на второй монитор. –азрешением 3840x2160
//  Left := (Screen.DesktopWidth div 7) * -2;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
N4.Checked:=true;
E1.Checked:=false;
l:='ru';
lang.Text:=rulang.Text;
languages.Click;
if ((N7.Checked=true) and (N14.Checked=true)) or ((N7.Checked=true) and (N13.Checked=true)) then
begin
sLabelFX18.Click;
sLabelFX19.Click;
sLabelFX15.Click;
sLabelFX16.Click;
sLabelFX17.Click;
sLabelFX13.Click;
sLabelFX12.Click;
sLabelFX11.Click;
sLabelFX10.Click;
sLabelFX14.Click;
sLabelFX20.Click;
sLabelFX25.OnClick(sLabelFX25);
sLabelFX26.OnClick(sLabelFX26);
sLabelFX27.OnClick(sLabelFX27);
sLabelFX28.OnClick(sLabelFX28);
sLabelFX29.OnClick(sLabelFX29);
sLabelFX30.OnClick(sLabelFX30);
sLabelFX31.OnClick(sLabelFX31);
sLabelFX32.OnClick(sLabelFX32);
sLabelFX33.OnClick(sLabelFX33);
sLabelFX34.OnClick(sLabelFX34);
sLabelFX35.OnClick(sLabelFX35);
sLabelFX36.OnClick(sLabelFX36);
end;
end;

procedure TForm1.E1Click(Sender: TObject);
begin
N4.Checked:=false;
E1.Checked:=true;
l:='en';
lang.Text:=enlang.Text;
languages.Click;
if ((N7.Checked=true) and (N14.Checked=true)) or ((N7.Checked=true) and (N13.Checked=true)) then
begin
sLabelFX18.Click;
sLabelFX19.Click;
sLabelFX15.Click;
sLabelFX16.Click;
sLabelFX17.Click;
sLabelFX13.Click;
sLabelFX12.Click;
sLabelFX11.Click;
sLabelFX10.Click;
sLabelFX14.Click;
sLabelFX20.Click;
sLabelFX25.OnClick(sLabelFX25);
sLabelFX26.OnClick(sLabelFX26);
sLabelFX27.OnClick(sLabelFX27);
sLabelFX28.OnClick(sLabelFX28);
sLabelFX29.OnClick(sLabelFX29);
sLabelFX30.OnClick(sLabelFX30);
sLabelFX31.OnClick(sLabelFX31);
sLabelFX32.OnClick(sLabelFX32);
sLabelFX33.OnClick(sLabelFX33);
sLabelFX34.OnClick(sLabelFX34);
sLabelFX35.OnClick(sLabelFX35);
sLabelFX36.OnClick(sLabelFX36);
end;
end;

procedure TForm1.languagesClick(Sender: TObject);
begin
sButton5.Caption:=lang.Lines[0];
sButton6.Caption:=lang.Lines[1];
sButton1.Caption:=lang.Lines[2];
sGroupBox2.Caption:=lang.Lines[0];
sGroupBox3.Caption:=lang.Lines[1];
sGroupBox1.Caption:=lang.Lines[2];
sGroupBox4.Caption:=lang.Lines[25];
sGroupBox5.Caption:=lang.Lines[31];
sGroupBox6.Caption:=lang.Lines[90];
sButton2.Caption:=lang.Lines[3];
sButton3.Caption:=lang.Lines[4];
sLabelFx4.Caption:=lang.Lines[5];
sButton4.Caption:=lang.Lines[6];
sButton7.Caption:=lang.Lines[7];
sLabelFx8.Caption:=lang.Lines[8];
sCheckbox1.Caption:=lang.Lines[9];
sLabelFx9.Caption:=lang.Lines[10];
sSpeedButton1.Caption:=lang.Lines[11];
sSpeedButton2.Caption:=lang.Lines[15];
n11.Caption:=lang.Lines[12];
n31.Caption:=lang.Lines[13];
n1.Caption:=lang.Lines[14];
n5.Caption:=lang.Lines[16];
n6.Caption:=lang.Lines[17];
t1.Caption:=lang.Lines[18];
M1.Caption:=lang.Lines[19];
extasyes1.Caption:=lang.Lines[20];
N3.Caption:=lang.Lines[21];
/////////////////////
//ru lang
N4.Caption:=lang.Lines[22];
//ru lang
////////////////////
//en lang
E1.Caption:=lang.Lines[23];
//en lang
///////////////////
N2.Caption:=lang.Lines[24];
sLabelFx21.Caption:=lang.Lines[26];
sButton11.Caption:=lang.Lines[27];
sButton9.Caption:=lang.Lines[28];
sLabelFx24.Caption:=lang.Lines[29];
regimport.Caption:=lang.Lines[30];
sLabelFx23.Caption:=lang.Lines[32];
sButton10.Caption:=lang.Lines[33];
sButton12.Caption:=lang.Lines[34];
sEdit4.TextHint:=lang.Lines[35];
//подсказки
G1.Caption:=lang.Lines[36];
//при нажатии
N8.Caption:=lang.Lines[37];

//при наведении
N7.Caption:=lang.Lines[38];

//отключены
N9.Caption:=lang.Lines[39];
sLabelFX5.Caption:=lang.Lines[40];
//подсказки
N10.Caption:=lang.Lines[83];
N14.Caption:=lang.Lines[84];
N13.Caption:=lang.Lines[85];
//theme
N15.Caption:=lang.Lines[86];
N16.Caption:=lang.Lines[87];
N17.Caption:=lang.Lines[88];
j1.Caption:=lang.Lines[91];
sLabelFX37.Caption:=lang.Lines[92];
sBitBtn1.Caption:=lang.Lines[93];
sCheckbox2.Caption:=lang.Lines[94];
sLabelFX38.Caption:=lang.Lines[95];
sLabelFX39.Caption:=lang.Lines[96];
updvers.Caption:=lang.Lines[98];
if enterupd='0' then begin
sTitleBar1.Items[0].Caption:=lang.Lines[99]+ngit.Lines[0]+'. '+lang.Lines[100];
end;
if enterupd='1' then begin
sTitleBar1.Items[0].Caption:=lang.Lines[101];
end;
end;

procedure TForm1.N8Click(Sender: TObject);
begin
///////////////при нажатии
N10.Visible:=true;
N8.Checked:=true;
N7.Checked:=false;
N9.Checked:=false;
if (N13.Checked=true) and (N8.Checked=true) then
begin
sLabelFX18.Visible:=true;
sLabelFX19.Visible:=true;
sLabelFX15.Visible:=true;
sLabelFX16.Visible:=true;
sLabelFX17.Visible:=true;
sLabelFX22.Visible:=true;
sLabelFX13.Visible:=true;
sLabelFX12.Visible:=true;
sLabelFX11.Visible:=true;
sLabelFX10.Visible:=true;
sLabelFX14.Visible:=true;
sLabelFX20.Visible:=true;
sLabelFX18.ShowHint:=false;
sLabelFX19.ShowHint:=false;
sLabelFX15.ShowHint:=false;
sLabelFX16.ShowHint:=false;
sLabelFX17.ShowHint:=false;
sLabelFX13.ShowHint:=false;
sLabelFX12.ShowHint:=false;
sLabelFX11.ShowHint:=false;
sLabelFX10.ShowHint:=false;
sLabelFX14.ShowHint:=false;
sLabelFX20.ShowHint:=false;
sLabelFX18.Hint:='';
sLabelFX19.Hint:='';
sLabelFX15.Hint:='';
sLabelFX16.Hint:='';
sLabelFX17.Hint:='';
sLabelFX13.Hint:='';
sLabelFX12.Hint:='';
sLabelFX11.Hint:='';
sLabelFX10.Hint:='';
sLabelFX14.Hint:='';
sLabelFX20.Hint:='';
end;
if (N14.Checked=true) and (N8.Checked=true) then
begin
sLabelFX25.Visible:=true;
sLabelFX26.Visible:=true;
sLabelFX27.Visible:=true;
sLabelFX28.Visible:=true;
sLabelFX29.Visible:=true;
sLabelFX30.Visible:=true;
sLabelFX31.Visible:=true;
sLabelFX32.Visible:=true;
sLabelFX33.Visible:=true;
sLabelFX34.Visible:=true;
sLabelFX35.Visible:=true;
sLabelFX36.Visible:=true;
sLabelFX25.ShowHint:=false;
sLabelFX26.ShowHint:=false;
sLabelFX27.ShowHint:=false;
sLabelFX28.ShowHint:=false;
sLabelFX29.ShowHint:=false;
sLabelFX30.ShowHint:=false;
sLabelFX31.ShowHint:=false;
sLabelFX32.ShowHint:=false;
sLabelFX33.ShowHint:=false;
sLabelFX34.ShowHint:=false;
sLabelFX35.ShowHint:=false;
sLabelFX36.ShowHint:=false;
sLabelFX25.Hint:='';
sLabelFX26.Hint:='';
sLabelFX27.Hint:='';
sLabelFX28.Hint:='';
sLabelFX29.Hint:='';
sLabelFX30.Hint:='';
sLabelFX31.Hint:='';
sLabelFX32.Hint:='';
sLabelFX33.Hint:='';
sLabelFX34.Hint:='';
sLabelFX35.Hint:='';
sLabelFX36.Hint:='';
end;
end;

procedure TForm1.N7Click(Sender: TObject);
begin
/////////////////при наведении
N10.Visible:=true;
N8.Checked:=false;
N7.Checked:=true;
N9.Checked:=false;
if (N13.Checked=true) and (N7.Checked=true) then
begin
sLabelFX18.Visible:=true;
sLabelFX19.Visible:=true;
sLabelFX15.Visible:=true;
sLabelFX16.Visible:=true;
sLabelFX17.Visible:=true;
sLabelFX22.Visible:=true;
sLabelFX13.Visible:=true;
sLabelFX12.Visible:=true;
sLabelFX11.Visible:=true;
sLabelFX10.Visible:=true;
sLabelFX14.Visible:=true;
sLabelFX20.Visible:=true;
sLabelFX18.ShowHint:=true;
sLabelFX19.ShowHint:=true;
sLabelFX15.ShowHint:=true;
sLabelFX16.ShowHint:=true;
sLabelFX17.ShowHint:=true;
sLabelFX13.ShowHint:=true;
sLabelFX12.ShowHint:=true;
sLabelFX11.ShowHint:=true;
sLabelFX10.ShowHint:=true;
sLabelFX14.ShowHint:=true;
sLabelFX20.ShowHint:=true;
sLabelFX18.Hint:='';
sLabelFX19.Hint:='';
sLabelFX15.Hint:='';
sLabelFX16.Hint:='';
sLabelFX17.Hint:='';
sLabelFX13.Hint:='';
sLabelFX12.Hint:='';
sLabelFX11.Hint:='';
sLabelFX10.Hint:='';
sLabelFX14.Hint:='';
sLabelFX20.Hint:='';
sLabelFX18.Click;
sLabelFX19.Click;
sLabelFX15.Click;
sLabelFX16.Click;
sLabelFX17.Click;
sLabelFX13.Click;
sLabelFX12.Click;
sLabelFX11.Click;
sLabelFX10.Click;
sLabelFX14.Click;
sLabelFX20.Click;
end;
if (N14.Checked=true) and (N7.Checked=true) then
begin
sLabelFX25.Visible:=true;
sLabelFX26.Visible:=true;
sLabelFX27.Visible:=true;
sLabelFX28.Visible:=true;
sLabelFX29.Visible:=true;
sLabelFX30.Visible:=true;
sLabelFX31.Visible:=true;
sLabelFX32.Visible:=true;
sLabelFX33.Visible:=true;
sLabelFX34.Visible:=true;
sLabelFX35.Visible:=true;
sLabelFX36.Visible:=true;
sLabelFX25.ShowHint:=true;
sLabelFX26.ShowHint:=true;
sLabelFX27.ShowHint:=true;
sLabelFX28.ShowHint:=true;
sLabelFX29.ShowHint:=true;
sLabelFX30.ShowHint:=true;
sLabelFX31.ShowHint:=true;
sLabelFX32.ShowHint:=true;
sLabelFX33.ShowHint:=true;
sLabelFX34.ShowHint:=true;
sLabelFX35.ShowHint:=true;
sLabelFX36.ShowHint:=true;
sLabelFX25.Hint:='';
sLabelFX26.Hint:='';
sLabelFX27.Hint:='';
sLabelFX28.Hint:='';
sLabelFX29.Hint:='';
sLabelFX30.Hint:='';
sLabelFX31.Hint:='';
sLabelFX32.Hint:='';
sLabelFX33.Hint:='';
sLabelFX34.Hint:='';
sLabelFX35.Hint:='';
sLabelFX36.Hint:='';
sLabelFX25.OnClick(sLabelFX25);
sLabelFX26.OnClick(sLabelFX26);
sLabelFX27.OnClick(sLabelFX27);
sLabelFX28.OnClick(sLabelFX28);
sLabelFX29.OnClick(sLabelFX29);
sLabelFX30.OnClick(sLabelFX30);
sLabelFX31.OnClick(sLabelFX31);
sLabelFX32.OnClick(sLabelFX32);
sLabelFX33.OnClick(sLabelFX33);
sLabelFX34.OnClick(sLabelFX34);
sLabelFX35.OnClick(sLabelFX35);
sLabelFX36.OnClick(sLabelFX36);
end;



end;

procedure TForm1.N9Click(Sender: TObject);
begin
N8.Checked:=false;
N7.Checked:=false;
N9.Checked:=true;
sLabelFX18.Visible:=false;
sLabelFX19.Visible:=false;
sLabelFX15.Visible:=false;
sLabelFX16.Visible:=false;
sLabelFX17.Visible:=false;
sLabelFX22.Visible:=false;
sLabelFX13.Visible:=false;
sLabelFX12.Visible:=false;
sLabelFX11.Visible:=false;
sLabelFX10.Visible:=false;
sLabelFX14.Visible:=false;
sLabelFX20.Visible:=false;
sLabelFX25.Visible:=false;
sLabelFX26.Visible:=false;
sLabelFX27.Visible:=false;
sLabelFX28.Visible:=false;
sLabelFX29.Visible:=false;
sLabelFX30.Visible:=false;
sLabelFX31.Visible:=false;
sLabelFX32.Visible:=false;
sLabelFX33.Visible:=false;
sLabelFX34.Visible:=false;
sLabelFX35.Visible:=false;
sLabelFX36.Visible:=false;
N10.Visible:=false;
end;

procedure TForm1.N14Click(Sender: TObject);
begin
N14.Checked:=true;
N13.Checked:=false;
sLabelFX25.Visible:=true;
sLabelFX26.Visible:=true;
sLabelFX27.Visible:=true;
sLabelFX28.Visible:=true;
sLabelFX29.Visible:=true;
sLabelFX30.Visible:=true;
sLabelFX31.Visible:=true;
sLabelFX32.Visible:=true;
sLabelFX33.Visible:=true;
sLabelFX34.Visible:=true;
sLabelFX35.Visible:=true;
sLabelFX36.Visible:=true;
sLabelFX18.Visible:=false;
sLabelFX19.Visible:=false;
sLabelFX15.Visible:=false;
sLabelFX16.Visible:=false;
sLabelFX17.Visible:=false;
sLabelFX13.Visible:=false;
sLabelFX12.Visible:=false;
sLabelFX11.Visible:=false;
sLabelFX10.Visible:=false;
sLabelFX14.Visible:=false;
sLabelFX20.Visible:=false;
sLabelFX22.Visible:=false;

if (N14.Checked=true) and (N7.Checked=true) then
begin
sLabelFX25.Visible:=true;
sLabelFX26.Visible:=true;
sLabelFX27.Visible:=true;
sLabelFX28.Visible:=true;
sLabelFX29.Visible:=true;
sLabelFX30.Visible:=true;
sLabelFX31.Visible:=true;
sLabelFX32.Visible:=true;
sLabelFX33.Visible:=true;
sLabelFX34.Visible:=true;
sLabelFX35.Visible:=true;
sLabelFX36.Visible:=true;
sLabelFX25.ShowHint:=true;
sLabelFX26.ShowHint:=true;
sLabelFX27.ShowHint:=true;
sLabelFX28.ShowHint:=true;
sLabelFX29.ShowHint:=true;
sLabelFX30.ShowHint:=true;
sLabelFX31.ShowHint:=true;
sLabelFX32.ShowHint:=true;
sLabelFX33.ShowHint:=true;
sLabelFX34.ShowHint:=true;
sLabelFX35.ShowHint:=true;
sLabelFX36.ShowHint:=true;
sLabelFX25.Hint:='';
sLabelFX26.Hint:='';
sLabelFX27.Hint:='';
sLabelFX28.Hint:='';
sLabelFX29.Hint:='';
sLabelFX30.Hint:='';
sLabelFX31.Hint:='';
sLabelFX32.Hint:='';
sLabelFX33.Hint:='';
sLabelFX34.Hint:='';
sLabelFX35.Hint:='';
sLabelFX36.Hint:='';
sLabelFX25.OnClick(sLabelFX25);
sLabelFX26.OnClick(sLabelFX26);
sLabelFX27.OnClick(sLabelFX27);
sLabelFX28.OnClick(sLabelFX28);
sLabelFX29.OnClick(sLabelFX29);
sLabelFX30.OnClick(sLabelFX30);
sLabelFX31.OnClick(sLabelFX31);
sLabelFX32.OnClick(sLabelFX32);
sLabelFX33.OnClick(sLabelFX33);
sLabelFX34.OnClick(sLabelFX34);
sLabelFX35.OnClick(sLabelFX35);
sLabelFX36.OnClick(sLabelFX36);
end;

end;

procedure TForm1.N13Click(Sender: TObject);
begin
N14.Checked:=false;
N13.Checked:=true;
sLabelFX25.Visible:=false;
sLabelFX26.Visible:=false;
sLabelFX27.Visible:=false;
sLabelFX28.Visible:=false;
sLabelFX29.Visible:=false;
sLabelFX30.Visible:=false;
sLabelFX31.Visible:=false;
sLabelFX32.Visible:=false;
sLabelFX33.Visible:=false;
sLabelFX34.Visible:=false;
sLabelFX35.Visible:=false;
sLabelFX36.Visible:=false;
sLabelFX18.Visible:=true;
sLabelFX19.Visible:=true;
sLabelFX15.Visible:=true;
sLabelFX16.Visible:=true;
sLabelFX17.Visible:=true;
sLabelFX13.Visible:=true;
sLabelFX12.Visible:=true;
sLabelFX11.Visible:=true;
sLabelFX10.Visible:=true;
sLabelFX14.Visible:=true;
sLabelFX20.Visible:=true;
sLabelFX22.Visible:=true;

if (N13.Checked=true) and (N7.Checked=true) then
begin
sLabelFX18.Visible:=true;
sLabelFX19.Visible:=true;
sLabelFX15.Visible:=true;
sLabelFX16.Visible:=true;
sLabelFX17.Visible:=true;
sLabelFX22.Visible:=true;
sLabelFX13.Visible:=true;
sLabelFX12.Visible:=true;
sLabelFX11.Visible:=true;
sLabelFX10.Visible:=true;
sLabelFX14.Visible:=true;
sLabelFX20.Visible:=true;
sLabelFX18.ShowHint:=true;
sLabelFX19.ShowHint:=true;
sLabelFX15.ShowHint:=true;
sLabelFX16.ShowHint:=true;
sLabelFX17.ShowHint:=true;
sLabelFX13.ShowHint:=true;
sLabelFX12.ShowHint:=true;
sLabelFX11.ShowHint:=true;
sLabelFX10.ShowHint:=true;
sLabelFX14.ShowHint:=true;
sLabelFX20.ShowHint:=true;
sLabelFX18.Hint:='';
sLabelFX19.Hint:='';
sLabelFX15.Hint:='';
sLabelFX16.Hint:='';
sLabelFX17.Hint:='';
sLabelFX13.Hint:='';
sLabelFX12.Hint:='';
sLabelFX11.Hint:='';
sLabelFX10.Hint:='';
sLabelFX14.Hint:='';
sLabelFX20.Hint:='';
sLabelFX18.Click;
sLabelFX19.Click;
sLabelFX15.Click;
sLabelFX16.Click;
sLabelFX17.Click;
sLabelFX13.Click;
sLabelFX12.Click;
sLabelFX11.Click;
sLabelFX10.Click;
sLabelFX14.Click;
sLabelFX20.Click;
end;

end;

procedure TForm1.N16Click(Sender: TObject);
begin
N16.Checked:=true;
N17.Checked:=false;
N16.Enabled:=false;
N17.Enabled:=true;
sSkinmanager1.SkinName:='Windows 8 (internal)';
end;

procedure TForm1.N17Click(Sender: TObject);
begin
N17.Checked:=true;
N16.Checked:=false;
N16.Enabled:=true;
N17.Enabled:=false;
sSkinmanager1.SkinName:='TV-b (internal)';
end;

procedure TForm1.j1Click(Sender: TObject);
var
  buttonSelected : Integer;
  FullProgPath: PChar;
begin
  If (not FileExists('libeay32.dll')) and (not FileExists('ssleay32.dll')) then
  begin
buttonSelected := MessageDlg(lang.Lines[89],mtInformation, mbOKCancel, 0);
  if (buttonSelected = mrOK) then
  begin
 ExtractRes('EXEFILE', 'LIBEAY32', 'libeay32.dll');
 ExtractRes('EXEFILE', 'SSLEAY32', 'ssleay32.dll');
 ExtractRes('EXEFILE', 'UPDATE', 'update.exe');
 resr:='y';
Ini := TIniFile.Create(ExtractFilePath(ParamStr(0))+'set.ini');
Ini.WriteString('MAIN','H',sEdit1.Text);
Ini.WriteString('MAIN','U',sEdit2.Text);
Ini.WriteString('MAIN','P',sEdit3.Text);
Ini.WriteString('MAIN','SAVEPATH',sDirectoryEdit1.Text);
Ini.WriteBool('MAIN','PASSIVE', scheckbox1.checked);
Ini.WriteBool('LANG','RU', N4.Checked);
Ini.WriteBool('LANG','EN', E1.Checked);
Ini.WriteBool('HINT','CLICK', N8.Checked);
Ini.WriteBool('HINT','HOVER', N7.Checked);
Ini.WriteBool('HINT','DISABLE', N9.Checked);
Ini.WriteBool('HINT','TYPE_TEXT', N14.Checked);
Ini.WriteBool('HINT','TYPE_BUTTON', N13.Checked);
Ini.WriteBool('THEME','THEME1', N16.Checked);
Ini.WriteBool('THEME','THEME2', N17.Checked);
Ini.WriteString('SITE','URL',sEdit4.Text);
Ini.WriteString('SITE','FOLDER',sEdit5.Text);
Ini.WriteString('TAP','NUM',tap);
Ini.WriteString('TAP','RES',resr);
Ini.WriteBool('PROGRAM','UPDATE', Scheckbox2.Checked);
Ini.Free;
 FullProgPath:=PChar(Application.ExeName);
 WinExec(FullProgPath,SW_SHOW);
 Application.Terminate;
 end;
end;
  If (FileExists('libeay32.dll')) and (FileExists('ssleay32.dll')) then
  begin
 sGroupBox1.Visible:=false;
 sGroupBox2.Visible:=false;
 sGroupBox3.Visible:=false;
 sGroupBox4.Visible:=false;
 sGroupBox5.Visible:=false;
 sGroupBox6.Visible:=true;
 sButton1.Enabled:=true;
 end;
if sLabelFX37.Caption=lang.Lines[92] then
begin
sLabelFX37.Caption :=sLabelFX37.Caption+N12.Caption;
end;
sLabelFX38.Caption:='';
updvers.Visible:=false;
sLabelFX39.Visible:=false;
end;

procedure TForm1.sBitBtn1Click(Sender: TObject);
var
release:tregexpr;
git:string;
begin
sLabelFX38.Caption:='';
ngit.Clear;
HttpGetText('https://github.com/ext4n/FTPSTLK/releases.atom', ngit.Lines);
//////////////////////////////////////////////////////////////////////////
git:=ngit.Text;
release:=tregexpr.Create;
release.Expression:='(href="https://github.com/ext4n/FTPSTLK/releases/tag/)(.*)';
if release.Exec(git) then
 begin
 ngit.Lines.Clear;
 repeat
 ngit.Lines.Add(release.Match[0]);
 until not release.ExecNext;
 end
 else
release.Free;
ngit.Text := StringReplace(ngit.Text, 'href="https://github.com/ext4n/FTPSTLK/releases/tag/', '', [rfReplaceAll]);
ngit.Text := StringReplace(ngit.Text, '"/>', '', [rfReplaceAll]);
if versionprogs.Caption<>ngit.Lines[0] then
begin
sLabelFX38.Caption:=lang.Lines[95]+ngit.Lines[0];
updvers.Visible:=true;
sLabelFX39.Visible:=true;
sTitleBar1.Items[0].Visible:=true;
sTitleBar1.Items[0].Caption:=lang.Lines[99]+ngit.Lines[0]+'. '+lang.Lines[100];
enterupd:='0';
end;
if versionprogs.Caption=ngit.Lines[0] then
begin
sLabelFX38.Caption:=lang.Lines[97];
end;
end;

procedure TForm1.sLabelFX39Click(Sender: TObject);
var
link : string ;
begin
if l='ru' then  begin
ngit.Text := StringReplace(ngit.Text, '.', '', [rfReplaceAll]);
link:='https://github.com/ext4n/FTPSTLK#v-'+ngit.Lines[0]+'-ru-';
ShellExecute(0, 'open', PChar(link), nil, nil, SW_SHOW);
end;
if l='en' then  begin
ngit.Text := StringReplace(ngit.Text, '.', '', [rfReplaceAll]);
link:='https://github.com/ext4n/FTPSTLK#v-'+ngit.Lines[0]+'-en-';
ShellExecute(0, 'open', PChar(link), nil, nil, SW_SHOW);
end;
end;

procedure TForm1.sTitleBar1Items0Click(Sender: TObject);
var
  buttonSelected : Integer;
begin
buttonSelected := MessageDlg(lang.Lines[102],mtInformation, mbOKCancel, 0);
  if (buttonSelected = mrOK) then
  begin
enterupd:='1';
sTitleBar1.Items[0].Caption:=lang.Lines[101];
sTitleBar1.Items[0].Down:=true;
DeleteFile('TEMP-FTPSTLK.bin');
Form1.pbFile.Visible:=true;
Form1.lbProgress.Visible:=true;
  URLXF:=TURLF.Create(False);
  URLXF.Priority:=tphigher;
  URLXF.FreeOnTerminate:=true;
Timer1.Enabled:=true;
end;
end;

procedure TForm1.updversClick(Sender: TObject);
var
  buttonSelected : Integer;
begin
buttonSelected := MessageDlg(lang.Lines[102],mtInformation, mbOKCancel, 0);
  if (buttonSelected = mrOK) then
  begin
DeleteFile('TEMP-FTPSTLK.bin');
Form1.pbFile.Visible:=true;
Form1.lbProgress.Visible:=true;
  URLXF:=TURLF.Create(False);
  URLXF.Priority:=tphigher;
  URLXF.FreeOnTerminate:=true;
Timer1.Enabled:=true;
end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
    if (Form1.lbProgress.Caption='100%') or (Form1.lbProgress.Caption='99%') then
    begin
    ShellExecute(0, PChar('open'), PChar(ExtractFilePath(ParamStr(0))+'update.exe'), nil, nil, SW_RESTORE);
    Form1.Close;
    end;
end;

end.
