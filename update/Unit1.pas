unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ShellAPI;

type
  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
Application.ShowMainform:=false;
DeleteFile('FTPSTLK.exe');
RenameFile('TEMP-FTPSTLK.bin', 'FTPSTLK.exe');
ShellExecute(0, PChar('open'), PChar(ExtractFilePath(ParamStr(0))+'FTPSTLK.exe'), nil, nil, SW_RESTORE);
Application.Terminate;
Exit;
end;

end.
