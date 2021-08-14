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
  sMemo, ComCtrls, httpSend, ExtCtrls, Buttons, sSpeedButton, Menus, CLIPBrd,
  sDialogs, RegExpr, ShellAPI, acAlphaHints, sBitBtn;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  save, dds, path, impt, pasive, tap: string;
  count: integer;
  Ini:TiniFile;
  HTTP: THTTPSend;
  H: THandle;
implementation

{$R *.dfm}

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
sButton5.Enabled:=true;
sButton6.Enabled:=true;
tap:='3';
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
sEdit4.Text:=Ini.ReadString('SITE','URL',sEdit4.Text);
sEdit5.Text:=Ini.ReadString('SITE','FOLDER',sEdit5.Text);
tap:=Ini.ReadString('TAP','NUM',tap);
Ini.Free;
lang.Text:=rulang.Text;
////////////////////////////////////////////
languages.Click;
if N4.Checked=true then N4.Click;
if E1.Checked=true then E1.Click;
if N8.Checked=true then N8.Click;
if N7.Checked=true then N7.Click;
if N9.Checked=true then N9.Click;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
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
Ini.WriteString('SITE','URL',sEdit4.Text);
Ini.WriteString('SITE','FOLDER',sEdit5.Text);
Ini.WriteString('TAP','NUM',tap);
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
sButton5.Enabled:=false;
sButton6.Enabled:=true;
tap:='1';
end;

procedure TForm1.sButton6Click(Sender: TObject);
begin
sButton1.Enabled:=true;
sGroupBox1.Visible:=false;
sGroupBox2.Visible:=false;
sGroupBox3.Visible:=true;
sGroupBox4.Visible:=false;
sGroupBox5.Visible:=false;
sButton5.Enabled:=true;
sButton6.Enabled:=false;
tap:='2';
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

procedure TForm1.sLabelFX12Click(Sender: TObject);
begin
if N7.Checked=true then
begin
sLabelFX12.Hint:=lang.Lines[78];
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

procedure TForm1.sLabelFX10Click(Sender: TObject);
begin
if N7.Checked=true then
begin
sLabelFX10.Hint:=lang.Lines[80];
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

procedure TForm1.sLabelFX20Click(Sender: TObject);
begin
if N7.Checked=true then
begin
sLabelFX20.Hint:=lang.Lines[82];
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

procedure TForm1.sLabelFX16Click(Sender: TObject);
begin
if N7.Checked=true then
begin
sLabelFX16.Hint:=lang.Lines[74];
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

procedure TForm1.sLabelFX18Click(Sender: TObject);
begin
if N7.Checked=true then
begin
sLabelFX18.Hint:=lang.Lines[71];
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
lang.Text:=rulang.Text;
languages.Click;
if N7.Checked=true then
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
end;
end;

procedure TForm1.E1Click(Sender: TObject);
begin
N4.Checked:=false;
E1.Checked:=true;
lang.Text:=enlang.Text;
languages.Click;
if N7.Checked=true then
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
end;

procedure TForm1.N8Click(Sender: TObject);
begin
///////////////при нажатии
N8.Checked:=true;
N7.Checked:=false;
N9.Checked:=false;
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

procedure TForm1.N7Click(Sender: TObject);
begin
/////////////////при наведении
N8.Checked:=false;
N7.Checked:=true;
N9.Checked:=false;
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

end;

end.
