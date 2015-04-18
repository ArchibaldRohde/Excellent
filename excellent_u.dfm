object frmLogin: TfrmLogin
  Left = 1500
  Top = 628
  Width = 319
  Height = 238
  Caption = 'frmLogin'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblLogin: TLabel
    Left = 96
    Top = 16
    Width = 50
    Height = 26
    Caption = 'Login:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object lblName: TLabel
    Left = 96
    Top = 56
    Width = 52
    Height = 13
    Caption = 'Username:'
  end
  object lblPassword: TLabel
    Left = 96
    Top = 96
    Width = 50
    Height = 13
    Caption = 'Password:'
  end
  object edtName: TEdit
    Left = 56
    Top = 72
    Width = 129
    Height = 21
    TabOrder = 0
    Text = '<Enter Username Here>'
  end
  object edtPassword: TEdit
    Left = 56
    Top = 112
    Width = 129
    Height = 21
    TabOrder = 1
    Text = '<Enter Password Here>'
  end
  object btnSubmit: TButton
    Left = 80
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Submit'
    TabOrder = 2
    OnClick = btnSubmitClick
  end
  object tmrLogin: TTimer
    Enabled = False
    Interval = 20000
    OnTimer = tmrLoginTimer
    Left = 184
  end
end
