program GVGESTOR;

uses
  Vcl.Forms,
  uLogin in 'uLogin.pas' {frLogin},
  udmConnectionGVGestor in '..\GESTORForms\DataModule\udmConnectionGVGestor.pas' {dmConnection: TDataModule},
  udmDadosGVGESTOR in '..\GESTORForms\DataModule\udmDadosGVGESTOR.pas' {dmTabelas: TDataModule},
  uPadraoCadastroGVGESTOR in '..\GESTORForms\uPadraoCadastroGVGESTOR.pas' {frPadraoCadastroGVGESTOR},
  uPadraoConsultaGVGESTOR in '..\GESTORForms\uPadraoConsultaGVGESTOR.pas' {frPadraoConsultaGVGSTOR},
  uPadraoRelatorioGVGESTOR in '..\GESTORForms\uPadraoRelatorioGVGESTOR.pas' {frPadraoRelatorioGVGESTOR},
  uPrincipal in 'uPrincipal.pas' {frPrincipal},
  uUsuarioLogado in 'uUsuarioLogado.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmConnection, dmConnection);
  Application.CreateForm(TdmTabelas, dmTabelas);
  Application.CreateForm(TfrLogin, frLogin);
  Application.CreateForm(TfrPadraoCadastroGVGESTOR, frPadraoCadastroGVGESTOR);
  Application.CreateForm(TfrPadraoConsultaGVGSTOR, frPadraoConsultaGVGSTOR);
  Application.CreateForm(TfrPadraoRelatorioGVGESTOR, frPadraoRelatorioGVGESTOR);
  Application.CreateForm(TfrPrincipal, frPrincipal);
  Application.Run;
end.
