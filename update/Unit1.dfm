object Form1: TForm1
  Left = 1093
  Top = 516
  BorderStyle = bsNone
  ClientHeight = 97
  ClientWidth = 286
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 257
    Height = 16
    Alignment = taCenter
    AutoSize = False
    Caption = 'Updating...Please Wait!'
  end
  object Label2: TLabel
    Left = 16
    Top = 40
    Width = 257
    Height = 16
    Alignment = taCenter
    AutoSize = False
    Caption = '5 Second Left...'
  end
  object ProgressBar1: TProgressBar
    Left = 16
    Top = 64
    Width = 257
    Height = 21
    TabOrder = 0
  end
  object Timer1: TTimer
    Interval = 40
    OnTimer = Timer1Timer
  end
end
