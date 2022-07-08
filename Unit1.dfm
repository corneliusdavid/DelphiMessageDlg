object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'MessageDlg Tests'
  ClientHeight = 296
  ClientWidth = 904
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -22
  Font.Name = 'Tahoma'
  Font.Style = []
  OnCreate = FormCreate
  PixelsPerInch = 192
  TextHeight = 27
  object btnConfirm: TButton
    Left = 48
    Top = 112
    Width = 150
    Height = 50
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Caption = 'Confirm'
    TabOrder = 0
    OnClick = btnConfirmClick
  end
  object btnInformation: TButton
    Left = 258
    Top = 112
    Width = 150
    Height = 50
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Caption = 'Information'
    TabOrder = 1
    OnClick = btnInformationClick
  end
  object btnWarning: TButton
    Left = 466
    Top = 112
    Width = 150
    Height = 50
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Caption = 'Warning'
    TabOrder = 2
    OnClick = btnWarningClick
  end
  object btnError: TButton
    Left = 674
    Top = 112
    Width = 150
    Height = 50
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Caption = 'Error'
    TabOrder = 3
    OnClick = btnErrorClick
  end
  object btnShowAll: TButton
    Left = 258
    Top = 208
    Width = 358
    Height = 50
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Caption = 'Show all types at once'
    TabOrder = 4
    OnClick = btnShowAllClick
  end
end
