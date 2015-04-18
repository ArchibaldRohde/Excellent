program excellent__P;

uses
  Forms,
  excellent_u in 'excellent_u.pas' {frmLogin},
  excellent2_u in 'excellent2_u.pas' {frmExcellent2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmExcellent2, frmExcellent2);
  Application.Run;
end.
