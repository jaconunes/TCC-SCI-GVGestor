﻿program GVGESTOR;

uses
  Vcl.Forms,
  udmConnectionGVGestor in '..\GESTORForms\DataModule\udmConnectionGVGestor.pas' {dmConnection: TDataModule},
  udmDadosGVGESTOR in '..\GESTORForms\DataModule\udmDadosGVGESTOR.pas' {dmTabelas: TDataModule},
  uPadraoCadastroGVGESTOR in '..\GESTORForms\uPadraoCadastroGVGESTOR.pas' {frPadraoCadastroGVGESTOR},
  uPadraoConsultaGVGESTOR in '..\GESTORForms\uPadraoConsultaGVGESTOR.pas' {frPadraoConsultaGVGSTOR},
  uPadraoRelatorioGVGESTOR in '..\GESTORForms\uPadraoRelatorioGVGESTOR.pas' {frPadraoRelatorioGVGESTOR},
  uPrincipal in 'uPrincipal.pas' {frPrincipal},
  uCadUsuario in 'uCadUsuario.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmConnection, dmConnection);
  Application.CreateForm(TdmTabelas, dmTabelas);
  Application.CreateForm(TfrPrincipal, frPrincipal);
  Application.Run;
end.
