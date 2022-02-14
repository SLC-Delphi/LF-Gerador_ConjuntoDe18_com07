program GeradorConjuntosDe18;

uses
  Vcl.Forms,
  GeradorConjuntosDe18_t1 in 'GeradorConjuntosDe18_t1.pas' {Frm_cjunto18por7};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_cjunto18por7, Frm_cjunto18por7);
  Application.Run;
end.
