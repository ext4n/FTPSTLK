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
  sDialogs;

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
    sWebLabel1: TsWebLabel;
    sWebLabel2: TsWebLabel;
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
    sButton9: TsButton;
    sLabelFX22: TsLabelFX;
    sButton10: TsButton;
    sLabelFX23: TsLabelFX;
    exportall: TsMemo;
    sButton11: TsButton;
    sLabelFX24: TsLabelFX;
    sButton12: TsButton;
    sSaveDialog1: TsSaveDialog;
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
    procedure sButton9Click(Sender: TObject);
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
sLabelFX1.Caption:='����� ��������: '+save;
  if not FileExists(path+dds) then
sLabelFX2.Caption:='*.dds �� ������, � �� �� ����� ������� :('
  else
sLabelFX2.Caption:='� �����: '+dds;
sLabelFX3.Caption:='� ������� ��: name.txt � ��������� ����������';
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
FTP:=TFTPSend.Create;
FTP.TargetHost:=sEdit1.Text;
FTP.TargetPort:='21';
FTP.UserName:=sEdit2.Text;
FTP.Password:=sEdit3.Text;
FTP.PassiveMode:=sCheckBox1.Checked;
 if FTP.Login then
 begin
  sLabelFX5.Caption:='������ �����������: �������� ����������� :)';
  FTP.DataStream.LoadFromFile(path+save);
  FTP.StoreFile('/'+sEdit5.Text+'/'+save,false);
  if FileExists(path+dds) then
  begin
  FTP.DataStream.LoadFromFile(path+dds);
  FTP.StoreFile('/'+sEdit5.Text+'/'+dds,false);
  end;
  FTP.DataStream.LoadFromFile(ExtractFilePath(ParamStr(0))+'name.txt');
  FTP.StoreFile('/'+sEdit5.Text+'/'+'name.txt',false);
  sLabelFX5.Caption:='������ �����������: �������� �������� :)';
  DeleteFile(ExtractFilePath(ParamStr(0))+'name.txt');
  end
  else
  begin
  sLabelFX5.Caption:='������ �����������: ���-�� ����� �� ��� :(';
end;
end;
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
ShowMessage('������! �� ��������� ���� "����� �����" � "����� �� FTP". ��������� � ��������� � ���������');
sEdit4.TextHint :='�� ��������� ���� ����� �����';
sEdit5.TextHint :='�� ��������� ���� ����� �� FTP';
sButton1.Click;
end
else
begin
if sEdit4.Text = '' then
begin
ShowMessage('������! �� ��������� ���� "����� �����". ��������� � ��������� � ���������');
sEdit4.TextHint :='�� ��������� ���� ����� �����';
sEdit5.TextHint :='����� �� FTP';
sButton1.Click;
end else
if sEdit5.Text = '' then
begin
ShowMessage('������! �� ��������� ���� "����� �� FTP". ��������� � ��������� � ���������');
sEdit4.TextHint :='����� �����';
sEdit5.TextHint :='�� ��������� ���� ����� �� FTP';
sButton1.Click;
end else begin
sEdit4.TextHint :='����� �����';
sEdit5.TextHint :='����� �� FTP';
HttpGetText(sEdit4.Text+'/'+sEdit5.Text+'/'+'name.txt', namess.Lines);
if namess.Lines[0]= '' then
begin
sLabelFX6.Caption:='������ �����������: ��������� ����������';
sLabelFX7.Caption:='������ ����� � ����� FTP � ����������';
end else begin
if namess.Lines[0]= '<!DOCTYPE html>' then
sLabelFX6.Caption:='������, �� ���� ���������� :( ����� �� �������'
else
begin
sLabelFX6.Caption:='����� ������: '+namess.Lines[0]+'.sav';
sLabelFX7.Caption:='� �����: '+namess.Lines[0]+'.dds';
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
ShowMessage('������! �� ��������� ���� "����� �����" � "����� �� FTP". ��������� � ��������� � ���������');
sEdit4.TextHint :='�� ��������� ���� ����� �����';
sEdit5.TextHint :='�� ��������� ���� ����� �� FTP';
sButton1.Click;
end
else
begin
if sEdit4.Text = '' then
begin
ShowMessage('������! �� ��������� ���� "����� �����". ��������� � ��������� � ���������');
sEdit4.TextHint :='�� ��������� ���� ����� �����';
sEdit5.TextHint :='����� �� FTP';
sButton1.Click;
end else
if sEdit5.Text = '' then
begin
ShowMessage('������! �� ��������� ���� "����� �� FTP". ��������� � ��������� � ���������');
sEdit4.TextHint :='����� �����';
sEdit5.TextHint :='�� ��������� ���� ����� �� FTP';
sButton1.Click;
end else begin
sEdit4.TextHint :='����� �����';
sEdit5.TextHint :='����� �� FTP';
HttpGetText(sEdit4.Text+'/'+sEdit5.Text+'/'+'name.txt', namess.Lines);
if namess.Lines[0]= '' then
begin
sLabelFX6.Caption:='������ �����������: ��������� ����������';
sLabelFX7.Caption:='������ ����� � ����� FTP � ����������';
end else begin
if namess.Lines[0]= '<!DOCTYPE html>' then
sLabelFX6.Caption:='������, �� ���� ���������� :( ����� �� �������'
else
begin
   if HTTP.HTTPMethod('GET',sEdit4.Text+'/'+sEdit5.Text+'/'+namess.Lines[0]+'.sav') then
   HTTP.Document.SaveToFile(sDirectoryEdit1.Text+'\'+namess.Lines[0]+'.sav');
    if HTTP.HTTPMethod('GET',sEdit4.Text+'/'+sEdit5.Text+'/'+namess.Lines[0]+'.dds') then
   HTTP.Document.SaveToFile(sDirectoryEdit1.Text+'\'+namess.Lines[0]+'.dds');
    HTTP.Free;
    sButton8.Click;
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
    sLabelFX6.Caption:='��� ����� ���� ������� �������!';
end;

procedure TForm1.sLabelFX13Click(Sender: TObject);
begin
ShowMessage ('���� ������ IP ����� �������, ������� ����������� ������. ���� �� �� ������ ����, �� ����������� ������ � ������� ���� ������ �� FTP');
end;

procedure TForm1.sLabelFX12Click(Sender: TObject);
begin
ShowMessage ('������������ ������ ��� ������� �����. �� ������� �� ����� �/��� ����. ���� �� �� ������ �����, �� ����������� ������ � ������� ���� ������ �� FTP');
end;

procedure TForm1.sLabelFX11Click(Sender: TObject);
begin
ShowMessage ('������ ������� � ������ FTP. ���� �� �� ������ ������, �� ����������� ������ � ������� ���� ������ �� FTP');
end;

procedure TForm1.sLabelFX10Click(Sender: TObject);
begin
ShowMessage ('� ��������� �������, �� ������������ � FTP. ���� �� ����������� �������� � ������������, �� ����������� ����������� ��������� ���� �����');
end;

procedure TForm1.sLabelFX14Click(Sender: TObject);
begin
ShowMessage ('����������� ��� �����, ���� ������ ���������� ������� �� ������ ��������');
end;

procedure TForm1.N11Click(Sender: TObject);
begin
impt:='1';
sGroupBox4.Visible:=true;
sGroupBox5.Visible:=false;
sLabelFX21.Caption:='������������� ��� ���������';
importall.Clear;
sButton1.Enabled:=true;
end;

procedure TForm1.N31Click(Sender: TObject);
var
  buttonSelected : Integer;
begin
sLabelFX23.Caption:='������� ���� ��������';
if sCheckbox1.Checked=true then begin
pasive:='+'
end else begin
pasive:='-'
end;
impt:='3';
exportall.Clear;
sButton1.Enabled:=true;
buttonSelected := MessageDlg('��������. ���������� ���������� ����� ��������� ������ �� ������ FTP � ����� �������� �� ������. �������������� ��� ������ ��� ������ ��� ����������, ����� ����� �� ����������� ��� �� ���� �� �������',mtError, mbOKCancel, 0);
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
sLabelFX23.Caption:='������� �������� ����� � �����';
if sCheckbox1.Checked=true then begin
pasive:='+'
end else begin
pasive:='-'
end;
impt:='4';
exportall.Clear;
sButton1.Enabled:=true;
buttonSelected := MessageDlg('��������. ���������� ���������� ����� ��������� ������ ����� � �����. �������������� ������ ��� ������ ��� ����������, ����� ����� �� ���������� ��� �� �� �����',mtError, mbOKCancel, 0);
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

procedure TForm1.sButton9Click(Sender: TObject);
begin
if importall.Lines[4]='' then
begin
sEdit4.Text:=importall.Lines[0];
sEdit5.Text:=importall.Lines[1];
ShowMessage ('������� ������������� ��������� ����� � �����!:)');
sEdit4.Text := StringReplace(sEdit4.Text, 'S:=', '', [rfReplaceAll]);
sEdit5.Text := StringReplace(sEdit5.Text, 'F:=', '', [rfReplaceAll]);
if importall.Lines[2]='M:=+' then
begin
sCheckbox1.Checked:=true;
end;
if importall.Lines[2]='M:=-' then
begin
sCheckbox1.Checked:=false;
end;
end else begin
if importall.Lines[5]<>'' then
begin
sEdit1.Text:=importall.Lines[0];
sEdit2.Text:=importall.Lines[1];
sEdit3.Text:=importall.Lines[2];
sEdit4.Text:=importall.Lines[3];
sEdit5.Text:=importall.Lines[4];
ShowMessage ('������� ������������� ��� ���������!:)');

sEdit1.Text := StringReplace(sEdit1.Text, 'H:=', '', [rfReplaceAll]);
sEdit2.Text := StringReplace(sEdit2.Text, 'U:=', '', [rfReplaceAll]);
sEdit3.Text := StringReplace(sEdit3.Text, 'P:=', '', [rfReplaceAll]);
sEdit4.Text := StringReplace(sEdit4.Text, 'S:=', '', [rfReplaceAll]);
sEdit5.Text := StringReplace(sEdit5.Text, 'F:=', '', [rfReplaceAll]);
if importall.Lines[5]='M:=+' then
begin
sCheckbox1.Checked:=true;
end;
if importall.Lines[5]='M:=-' then
begin
sCheckbox1.Checked:=false;
end;
end else begin
if importall.Text='' then
begin
ShowMessage ('������. ��������� ������������� ������')
    end;
      end;
        end;
          end;




procedure TForm1.sLabelFX22Click(Sender: TObject);
begin
ShowMessage ('������� � ��� �� ������ ������ ������ ������������ ��� ������, ����� �� ������ ������ � ��� ���������� � ��������� ���� ����������.');
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
ShowMessage ('�������, ������ �� ������ �������� ��� ������ ����� ������� � ��������:)');
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
ShowMessage ('���������� ������� ����� � ������������ ��� ��������, ���� ����� ������������ ����������');
end;

procedure TForm1.sLabelFX16Click(Sender: TObject);
begin
ShowMessage ('����� ������� ���� �������, ���� ��� ������ ��������� ���������, �������� ���������� ����������');
end;

procedure TForm1.sLabelFX17Click(Sender: TObject);
begin
ShowMessage ('����� �����������, �� ������ ���������, �� ��� ����� �����������');
end;

procedure TForm1.sLabelFX18Click(Sender: TObject);
begin
ShowMessage ('�������� �� ���������� ������� ������ ����������. ����� ������ �� ������� ����������, �� ��� ����� ��������');
end;

procedure TForm1.sLabelFX19Click(Sender: TObject);
begin
ShowMessage ('����� �������� ����� �������� ���������. �� ���������� ��������, ���� �� ������� ������ ��������');
end;

end.
