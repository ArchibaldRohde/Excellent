unit excellent_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmLogin = class(TForm)
    lblLogin: TLabel;
    edtName: TEdit;
    edtPassword: TEdit;
    btnSubmit: TButton;
    lblName: TLabel;
    lblPassword: TLabel;
    tmrLogin: TTimer;
    procedure btnSubmitClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tmrLoginTimer(Sender: TObject);
  private
    sName : string;
    sPassword : string;
    arrName : array[0..10] of string;
    iBrutus : integer;
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

uses excellent2_u;

{$R *.dfm}



procedure TfrmLogin.FormCreate(Sender: TObject);
begin
  tmrLogin.Enabled := False;
 iBrutus := 0;
end;

procedure TfrmLogin.tmrLoginTimer(Sender: TObject);
begin
 btnSubmit.Enabled := true;
 tmrLogin.Enabled := false;
 iBrutus := 0;
end;



procedure TfrmLogin.btnSubmitClick(Sender: TObject);
var
  tfile : Textfile;
  k, t : integer;
begin
  sName := edtName.text;
  sPassword := edtPassword.Text;
 // arrName := nil;
  t := 0;
  assignfile(tfile, 'excellent.txt');
  try
  reset(tfile);
  except
    begin
      showmessage('excellent.txt could not be found. Consult a Nerd');
      exit;
    end;

  k := 0;

   while not eof(tfile) do
    begin
     readln(tfile, arrName[k]);
     inc(k);
    end;
        closefile(tfile);
        k := 0;
    for t:= 0 to 10 do
      begin
        if arrName[k] = (sName + '#' + sPassword) then
          begin
            Showmessage('You have logged in!!!');
              Application.CreateForm(TfrmExcellent2, frmExcellent2);
              exit;
         end;
        inc(k);
       end;
            showMessage('Incorrect Username or Password');
        inc(iBrutus);
          if ibrutus =4 then
          begin
           showMessage('Password or username entered incorrectly too many times. Please try again in 20sec');
           tmrLogin.Enabled := true;
           btnSubmit.Enabled := false;
           exit;
          end;
  end;



end;
end.
