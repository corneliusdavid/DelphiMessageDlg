unit Unit1;

interface

uses
  {$IF CompilerVersion < 22}
  Windows, Messages, SysUtils, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls;
  {$ELSE}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;
  {$IFEND}

type
  TForm1 = class(TForm)
    btnConfirm: TButton;
    btnInformation: TButton;
    btnWarning: TButton;
    btnError: TButton;
    btnShowAll: TButton;
    procedure btnConfirmClick(Sender: TObject);
    procedure btnInformationClick(Sender: TObject);
    procedure btnWarningClick(Sender: TObject);
    procedure btnErrorClick(Sender: TObject);
    procedure btnShowAllClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure ShowConfirmation;
    procedure ShowWarning;
    procedure ShowInformation;
    procedure ShowError;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

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

procedure TForm1.btnInformationClick(Sender: TObject);
begin
  ShowInformation;
end;

procedure TForm1.btnShowAllClick(Sender: TObject);
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

procedure TForm1.FormCreate(Sender: TObject);
begin
  {$IF CompilerVersion < 28}
  btnShowAll.Visible := False;
  {$IFEND}
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
