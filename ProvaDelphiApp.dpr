program ProvaDelphiApp;

uses
  Vcl.Forms,
  ufprincipal in 'ufprincipal.pas' {fPrincipal},
  uspQuery in 'Lib\uspQuery.pas',
  ufTarefa1 in 'ufTarefa1.pas' {FTarefa1},
  ufTarefa2 in 'ufTarefa2.pas' {FTarefa2},
  ufTarefa3 in 'ufTarefa3.pas' {FTarefa3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfPrincipal, fPrincipal);
  Application.Run;
end.
