object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'MessageDlg Tests'
  ClientHeight = 286
  ClientWidth = 870
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
    Left = 46
    Top = 108
    Width = 144
    Height = 48
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Caption = 'Confirm'
    TabOrder = 0
    OnClick = btnConfirmClick
  end
  object btnInformation: TButton
    Left = 248
    Top = 108
    Width = 144
    Height = 48
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Caption = 'Information'
    TabOrder = 1
    OnClick = btnInformationClick
  end
  object btnWarning: TButton
    Left = 448
    Top = 108
    Width = 146
    Height = 48
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Caption = 'Warning'
    TabOrder = 2
    OnClick = btnWarningClick
  end
  object btnError: TButton
    Left = 650
    Top = 108
    Width = 144
    Height = 48
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Caption = 'Error'
    TabOrder = 3
    OnClick = btnErrorClick
  end
  object btnShowAll: TButton
    Left = 248
    Top = 200
    Width = 346
    Height = 48
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Caption = 'Show all types at once'
    TabOrder = 4
    OnClick = btnShowAllClick
  end
  object chkUseLatestDlgs: TCheckBox
    Left = 46
    Top = 40
    Width = 291
    Height = 34
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Caption = 'Use modern dialog boxes'
    Checked = True
    State = cbChecked
    TabOrder = 5
  end
end
