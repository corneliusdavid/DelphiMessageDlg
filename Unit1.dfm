object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'MessageDlg Tests'
  ClientHeight = 143
  ClientWidth = 435
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btnConfirm: TButton
    Left = 23
    Top = 54
    Width = 72
    Height = 24
    Caption = 'Confirm'
    TabOrder = 0
    OnClick = btnConfirmClick
  end
  object btnInformation: TButton
    Left = 124
    Top = 54
    Width = 72
    Height = 24
    Caption = 'Information'
    TabOrder = 1
    OnClick = btnInformationClick
  end
  object btnWarning: TButton
    Left = 224
    Top = 54
    Width = 73
    Height = 24
    Caption = 'Warning'
    TabOrder = 2
    OnClick = btnWarningClick
  end
  object btnError: TButton
    Left = 325
    Top = 54
    Width = 72
    Height = 24
    Caption = 'Error'
    TabOrder = 3
    OnClick = btnErrorClick
  end
  object btnShowAll: TButton
    Left = 124
    Top = 100
    Width = 173
    Height = 24
    Caption = 'Show all types at once'
    TabOrder = 4
    OnClick = btnShowAllClick
  end
end
