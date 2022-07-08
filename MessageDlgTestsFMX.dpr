program MessageDlgTestsFMX;

uses
  System.StartUpCopy,
  FMX.Forms,
  UnitFMX1 in 'UnitFMX1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
