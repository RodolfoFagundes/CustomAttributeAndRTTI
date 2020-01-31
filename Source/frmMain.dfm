object formMain: TformMain
  Left = 0
  Top = 0
  ActiveControl = btnProcess
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsToolWindow
  Caption = 'Main'
  ClientHeight = 571
  ClientWidth = 794
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object btnProcess: TButton
    Left = 0
    Top = 0
    Width = 794
    Height = 25
    Align = alTop
    Caption = 'Process'
    TabOrder = 0
    OnClick = btnProcessClick
    ExplicitWidth = 784
  end
  object pnlClient: TPanel
    Left = 0
    Top = 25
    Width = 794
    Height = 505
    Align = alClient
    TabOrder = 1
    ExplicitHeight = 472
    object mmResult: TMemo
      Left = 1
      Top = 1
      Width = 792
      Height = 503
      Align = alClient
      ScrollBars = ssVertical
      TabOrder = 0
      ExplicitLeft = 388
      ExplicitWidth = 405
      ExplicitHeight = 544
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 530
    Width = 794
    Height = 41
    Align = alBottom
    TabOrder = 2
    ExplicitLeft = 312
    ExplicitTop = 280
    ExplicitWidth = 185
    object btnCopy: TButton
      Left = 368
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Copy'
      TabOrder = 0
      OnClick = btnCopyClick
    end
  end
end
