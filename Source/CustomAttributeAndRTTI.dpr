program CustomAttributeAndRTTI;

uses
  Vcl.Forms,
  frmMain in 'frmMain.pas' {formMain},
  untCamposPersonalizadosMDL in 'untCamposPersonalizadosMDL.pas',
  untDescricaoJson in 'untDescricaoJson.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformMain, formMain);
  Application.Run;
end.
