program FTPSTLK;
uses
  Forms,Windows,Dialogs,
  Unit1 in 'Unit1.pas' {Form1};
{$R *.res}


var
H: THandle;
begin
H := CreateMutex(nil, True, 'FTPSTLK SAVE');
if GetLastError = ERROR_ALREADY_EXISTS then
begin
ShowMessage(':-O');
halt;
end;
  Application.Initialize;
  Application.Title := 'FTPSTLK SAVE';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
