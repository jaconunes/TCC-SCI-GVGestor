program GVGESTOR;

uses
  Vcl.Forms,
  uLogin in 'uLogin.pas' {frLogin},
  udmConnectionGVGestor in '..\GESTORForms\DataModule\udmConnectionGVGestor.pas' {dmConnection: TDataModule},
  udmDadosGVGESTOR in '..\GESTORForms\DataModule\udmDadosGVGESTOR.pas' {dmTabelas: TDataModule},
  uPadraoCadastroGVGESTOR in '..\GESTORForms\uPadraoCadastroGVGESTOR.pas' {frPadraoCadastroGVGESTOR};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmConnection, dmConnection);
  Application.CreateForm(TdmTabelas, dmTabelas);
  Application.CreateForm(TfrLogin, frLogin);
  Application.CreateForm(TfrPadraoCadastroGVGESTOR, frPadraoCadastroGVGESTOR);
  Application.Run;
end.