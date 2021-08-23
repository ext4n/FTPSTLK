unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ShellAPI, ExtCtrls, ComCtrls, XPMAN, IniFiles;

type
  TForm1 = class(TForm)
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    Timer1: TTimer;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Ini:TiniFile;
  dnl,exefile,nu: string;
implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
Ini := TIniFile.Create(ExtractFilePath(ParamStr(0))+'set.ini');
dnl:=Ini.ReadString('PROGRAM','UPDDWNL',dnl);
exefile:=Ini.ReadString('PROGRAM','EXE',exefile);
nu:=Ini.ReadString('PROGRAM','NEW UPDATE',nu);
Ini.Free;
exefile := StringReplace(exefile, '.exe', '', [rfReplaceAll]);
SetWindowPos(Handle, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE or SWP_NOSIZE or SWP_NOACTIVATE);
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  ProgressBar1.Position:=ProgressBar1.Position+1;
  if  ProgressBar1.Position=20 then
  Label2.Caption:='4 Second Left...';
  if  ProgressBar1.Position=40 then
  Label2.Caption:='3 Second Left...';
  if  ProgressBar1.Position=60 then
  Label2.Caption:='2 Second Left...';
    if  ProgressBar1.Position=80 then
  Label2.Caption:='1 Second Left...';
    if  ProgressBar1.Position=100 then
  Label2.Caption:='Done';
  If (ProgressBar1.Position=ProgressBar1.Max) Then
  begin
    Timer1.Enabled:=False;
dnl:='0';
nu:='1';
Ini := TIniFile.Create(ExtractFilePath(ParamStr(0))+'set.ini');
Ini.WriteString('PROGRAM','UPDDWNL',dnl);
Ini.WriteString('PROGRAM','NEW UPDATE',nu);
Ini.Free;
DeleteFile(exefile+'.exe');
RenameFile('TEMP-FTPSTLK.bin', exefile+'.exe');
ShellExecute(0, PChar('open'), PChar(ExtractFilePath(ParamStr(0))+exefile+'.exe'), nil, nil, SW_RESTORE);
Application.Terminate;
Exit;
end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
if dnl<>'Yeah!' then
begin
dnl:='0';
nu:='0';
Ini := TIniFile.Create(ExtractFilePath(ParamStr(0))+'set.ini');
Ini.WriteString('PROGRAM','UPDDWNL',dnl);
Ini.WriteString('PROGRAM','NEW UPDATE',nu);
Ini.Free;
close;
end;
end;


end.
