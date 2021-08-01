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
  sDialogs, RegExpr, ShellAPI;

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
    sLabelFX10: TsLabelFX;
    sLabelFX11: TsLabelFX;
    sLabelFX12: TsLabelFX;
    sLabelFX13: TsLabelFX;
    sLabelFX14: TsLabelFX;
    sLabelFX15: TsLabelFX;
    sLabelFX16: TsLabelFX;
    sLabelFX17: TsLabelFX;
    sLabelFX18: TsLabelFX;
    sLabelFX19: TsLabelFX;
    PopupMenu1: TPopupMenu;
    N11: TMenuItem;
    N31: TMenuItem;
    sSpeedButton1: TsSpeedButton;
    sLabelFX20: TsLabelFX;
    N1: TMenuItem;
    sGroupBox4: TsGroupBox;
    sGroupBox5: TsGroupBox;
    importall: TsMemo;
    sLabelFX21: TsLabelFX;
    sLabelFX22: TsLabelFX;
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
sLabelFX1.Caption:='Будет загружен: '+save;
  if not FileExists(path+dds) then
sLabelFX2.Caption:='*.dds не найден, и он не будет закачан :('
  else
sLabelFX2.Caption:='А также: '+dds;
sLabelFX3.Caption:='И конечно же: name.txt с названием сохранения';
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
sButton3.Caption:='Загружаю...Наберитесь терпения:)';
Application.ProcessMessages;
FTP:=TFTPSend.Create;
FTP.TargetHost:=sEdit1.Text;
FTP.TargetPort:='21';
FTP.UserName:=sEdit2.Text;
FTP.Password:=sEdit3.Text;
FTP.PassiveMode:=sCheckBox1.Checked;
 if FTP.Login then
 begin
  sLabelFX5.Caption:='Статус подключения: Успешное подключение :)';
  FTP.DataStream.LoadFromFile(path+save);
  FTP.StoreFile('/'+sEdit5.Text+'/'+save,false);
  if FileExists(path+dds) then
  begin
  FTP.DataStream.LoadFromFile(path+dds);
  FTP.StoreFile('/'+sEdit5.Text+'/'+dds,false);
  end;
  FTP.DataStream.LoadFromFile(ExtractFilePath(ParamStr(0))+'name.txt');
  FTP.StoreFile('/'+sEdit5.Text+'/'+'name.txt',false);
  sLabelFX5.Caption:='Статус подключения: Успешная загрузка :)';
  DeleteFile(ExtractFilePath(ParamStr(0))+'name.txt');
  end
  else
  begin
  sLabelFX5.Caption:='Статус подключения: Что-то пошло не так :(';
end;
end;
sButton3.Enabled:=true;
sButton3.Caption:='Загрузить';
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
sEdit4.Text:=Ini.ReadString('SITE','URL',sEdit4.Text);
sEdit5.Text:=Ini.ReadString('SITE','FOLDER',sEdit5.Text);
tap:=Ini.ReadString('TAP','NUM',tap);
Ini.Free;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Ini := TIniFile.Create(ExtractFilePath(ParamStr(0))+'set.ini');
Ini.WriteString('MAIN','H',sEdit1.Text);
Ini.WriteString('MAIN','U',sEdit2.Text);
Ini.WriteString('MAIN','P',sEdit3.Text);
Ini.WriteString('MAIN','SAVEPATH',sDirectoryEdit1.Text);
Ini.WriteBool('MAIN','PASSIVE', scheckbox1.checked);
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
ShowMessage('Ошибка! Не заполнено поле "Адрес сайта" и "Папка на FTP". Перейдите в настройки и исправьте');
sEdit4.TextHint :='Не заполнено поле адрес сайта';
sEdit5.TextHint :='Не заполнено поле папка на FTP';
sButton1.Click;
end
else
begin
if sEdit4.Text = '' then
begin
ShowMessage('Ошибка! Не заполнено поле "Адрес сайта". Перейдите в настройки и исправьте');
sEdit4.TextHint :='Не заполнено поле адрес сайта';
sEdit5.TextHint :='Папка на FTP';
sButton1.Click;
end else
if sEdit5.Text = '' then
begin
ShowMessage('Ошибка! Не заполнено поле "Папка на FTP". Перейдите в настройки и исправьте');
sEdit4.TextHint :='Адрес сайта';
sEdit5.TextHint :='Не заполнено поле папка на FTP';
sButton1.Click;
end else begin
sEdit4.TextHint :='Адрес сайта';
sEdit5.TextHint :='Папка на FTP';
HttpGetText(sEdit4.Text+'/'+sEdit5.Text+'/'+'name.txt', namess.Lines);
if namess.Lines[0]= '' then
begin
sLabelFX6.Caption:='Ошибка подключения: Проверьте правильные';
sLabelFX7.Caption:='данные сайта и папки FTP в настройках';
end else begin
if namess.Lines[0]= '<!DOCTYPE html>' then
sLabelFX6.Caption:='Ошибка, не могу продолжить :( Файлы не найдены'
else
begin
sLabelFX6.Caption:='Будет скачан: '+namess.Lines[0]+'.sav';
sLabelFX7.Caption:='А также: '+namess.Lines[0]+'.dds';
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
ShowMessage('Ошибка! Не заполнено поле "Адрес сайта" и "Папка на FTP". Перейдите в настройки и исправьте');
sEdit4.TextHint :='Не заполнено поле адрес сайта';
sEdit5.TextHint :='Не заполнено поле папка на FTP';
sButton1.Click;
end
else
begin
if sEdit4.Text = '' then
begin
ShowMessage('Ошибка! Не заполнено поле "Адрес сайта". Перейдите в настройки и исправьте');
sEdit4.TextHint :='Не заполнено поле адрес сайта';
sEdit5.TextHint :='Папка на FTP';
sButton1.Click;
end else
if sEdit5.Text = '' then
begin
ShowMessage('Ошибка! Не заполнено поле "Папка на FTP". Перейдите в настройки и исправьте');
sEdit4.TextHint :='Адрес сайта';
sEdit5.TextHint :='Не заполнено поле папка на FTP';
sButton1.Click;
end else begin
sEdit4.TextHint :='Адрес сайта';
sEdit5.TextHint :='Папка на FTP';
HttpGetText(sEdit4.Text+'/'+sEdit5.Text+'/'+'name.txt', namess.Lines);
if namess.Lines[0]= '' then
begin
sLabelFX6.Caption:='Ошибка подключения: Проверьте правильные';
sLabelFX7.Caption:='данные сайта и папки FTP в настройках';
end else begin
if namess.Lines[0]= '<!DOCTYPE html>' then
sLabelFX6.Caption:='Ошибка, не могу продолжить :( Файлы не найдены'
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
    sLabelFX6.Caption:='Все файлы были скачаны успешно!';
end;

procedure TForm1.sLabelFX13Click(Sender: TObject);
begin
ShowMessage ('Хост обычно IP адрес сервера, который предоставил хостер. Если Вы не знаете хост, то рекомендуем узнать у хостера Ваши данные от FTP');
end;

procedure TForm1.sLabelFX12Click(Sender: TObject);
begin
ShowMessage ('Пользователь обычно Ваш хостинг логин. Он состоит из слова и/или букв. Если Вы не знаете логин, то рекомендуем узнать у хостера Ваши данные от FTP');
end;

procedure TForm1.sLabelFX11Click(Sender: TObject);
begin
ShowMessage ('Пароль доступа к Вашему FTP. Если Вы не знаете пароль, то рекомендуем узнать у хостера Ваши данные от FTP');
end;

procedure TForm1.sLabelFX10Click(Sender: TObject);
begin
ShowMessage ('В некоторых случаях, не подключается к FTP. Если Вы испытываете проблему с подключением, то рекомендуем попробовать выставить этот режим');
end;

procedure TForm1.sLabelFX14Click(Sender: TObject);
begin
ShowMessage ('Используйте эту опцию, если хотите поделиться данными со своими друзьями');
end;

procedure TForm1.N11Click(Sender: TObject);
begin
impt:='1';
sGroupBox4.Visible:=true;
sGroupBox5.Visible:=false;
sLabelFX21.Caption:='Импортировать все настройки';
importall.Clear;
sButton1.Enabled:=true;
end;

procedure TForm1.N31Click(Sender: TObject);
var
  buttonSelected : Integer;
begin
sLabelFX23.Caption:='Экспорт всех настроек';
if sCheckbox1.Checked=true then begin
pasive:='+'
end else begin
pasive:='-'
end;
impt:='3';
exportall.Clear;
sButton1.Enabled:=true;
buttonSelected := MessageDlg('Внимание. Дальнейшая информация будет содержать пароли от Вашего FTP и будет показана на экране. Просматривайте эти данные вне записи или трансляции, чтобы никто из посторонних лиц не смог их увидеть',mtError, mbOKCancel, 0);
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
sLabelFX23.Caption:='Экспорт настроек сайта и папок';
if sCheckbox1.Checked=true then begin
pasive:='+'
end else begin
pasive:='-'
end;
impt:='4';
exportall.Clear;
sButton1.Enabled:=true;
buttonSelected := MessageDlg('Внимание. Дальнейшая информация будет содержать данные сайта и папки. Просматривайте данные вне записи или трансляции, чтобы никто из постороних лиц их не узнал',mtError, mbOKCancel, 0);
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
ShowMessage ('Человек с кем Вы должны играть должен предоставить Вам данные, чтобы Вы смогли вместе с ним закачивать и скачивать свои сохранения.');
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
ShowMessage ('Успешно, теперь Вы можете прислать эти данные Вашим друзьям и знакомым:)');
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
ShowMessage ('Необходимо выбрать папку с сохранениями для сталкера, куда будут закачиваться сохранения');
end;

procedure TForm1.sLabelFX16Click(Sender: TObject);
begin
ShowMessage ('После нажатия этой клавиши, если все данные заполнены правильно, начнется скачивание сохранений');
end;

procedure TForm1.sLabelFX17Click(Sender: TObject);
begin
ShowMessage ('Перед скачиванием, Вы можете проверить, то что будет скачиваться');
end;

procedure TForm1.sLabelFX18Click(Sender: TObject);
begin
ShowMessage ('Выберите то сохранение которым хотите поделиться. После Выбора Вы сможете посмотреть, то что будет закачено');
end;

procedure TForm1.sLabelFX19Click(Sender: TObject);
begin
ShowMessage ('После проверки можно нажимать загрузить. По завершению загрузки, ниже Вы увидите статус загрузки');
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
ShowMessage ('Упс, ошибка!!!');
end else begin
if one = '' then
begin
sEdit4.Text:=four;
sEdit5.Text:=five;
ShowMessage ('Успешно импортировали настройки сайта и папок!:)');
end;
if one <> '' then
begin
sEdit1.Text:=one;
sEdit2.Text:=two;
sEdit3.Text:=free;
sEdit4.Text:=four;
sEdit5.Text:=five;
ShowMessage ('Успешно импортировали все настройки!:)');
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
//Вывести форму на второй монитор. Разрешением 3840x2160
//  Left := (Screen.DesktopWidth div 7) * -2;
end;

end.
