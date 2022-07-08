unit UnitFMX1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm1 = class(TForm)
    btnConfirm: TButton;
    btnInfo: TButton;
    btnWarning: TButton;
    btnError: TButton;
    btnShowAllTypes: TButton;
    procedure btnConfirmClick(Sender: TObject);
    procedure btnInfoClick(Sender: TObject);
    procedure btnWarningClick(Sender: TObject);
    procedure btnErrorClick(Sender: TObject);
    procedure btnShowAllTypesClick(Sender: TObject);
  private
    procedure ShowConfirmation;
    procedure ShowWarning;
    procedure ShowInformation;
    procedure ShowError;
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

{$IF CompilerVersion >= 28}
uses
  System.Threading;
{$IFEND}

procedure TForm1.btnConfirmClick(Sender: TObject);
begin
  ShowConfirmation;
end;

procedure TForm1.btnErrorClick(Sender: TObject);
begin
  ShowError;
end;

procedure TForm1.btnInfoClick(Sender: TObject);
begin
  ShowInformation;
end;

procedure TForm1.btnShowAllTypesClick(Sender: TObject);
{$IF CompilerVersion >= 28}
var
  dlgTasks: ITask;
{$IFEND}
begin
{$IF CompilerVersion >= 28}
  dlgTasks := TTask.Create(ShowInformation);
  dlgTasks.Start;

  dlgTasks := TTask.Create(ShowConfirmation);
  dlgTasks.Start;

  dlgTasks := TTask.Create(ShowWarning);
  dlgTasks.Start;

  dlgTasks := TTask.Create(ShowError);
  dlgTasks.Start;
{$IFEND}
end;

procedure TForm1.btnWarningClick(Sender: TObject);
begin
  ShowWarning;
end;

procedure TForm1.ShowConfirmation;
begin
  MessageDlg('This is a confirmation dialog. Does it look OK?',
             TMsgDlgType.mtConfirmation,
             [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo],
             0);
end;

procedure TForm1.ShowError;
begin
  MessageDlg('This is a test of the Emergency Broadcast System!',
             TMsgDlgType.mtError,
             [TMsgDlgBtn.mbAbort],
             0);
end;

procedure TForm1.ShowInformation;
begin
  MessageDlg('This is an informational dialog.',
             TMsgDlgType.mtInformation,
             [TMsgDlgBtn.mbOK],
             0);
end;

procedure TForm1.ShowWarning;
begin
  MessageDlg('You have been Warned!',
             TMsgDlgType.mtWarning,
             [TMsgDlgBtn.mbIgnore],
             0);
end;

end.
