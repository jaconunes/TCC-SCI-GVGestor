﻿program GVGESTOR;

uses
  Vcl.Forms,
  udmConnectionGVGestor in '..\GESTORForms\DataModule\udmConnectionGVGestor.pas' {dmConnection: TDataModule},
  udmDadosGVGESTOR in '..\GESTORForms\DataModule\udmDadosGVGESTOR.pas' {dmTabelas: TDataModule},
  uPadraoCadastroGVGESTOR in '..\GESTORForms\uPadraoCadastroGVGESTOR.pas' {frPadraoCadastroGVGESTOR},
  uPadraoConsultaGVGESTOR in '..\GESTORForms\uPadraoConsultaGVGESTOR.pas' {frPadraoConsultaGVGSTOR},
  uPadraoRelatorioGVGESTOR in '..\GESTORForms\uPadraoRelatorioGVGESTOR.pas' {frPadraoRelatorioGVGESTOR},
  uPrincipal in 'uPrincipal.pas' {frPrincipal},
  uCadUsuario in 'Cadastros\uCadUsuario.pas' {frCadUsuario},
  uConsUsuario in 'Consultas\uConsUsuario.pas' {frConsUsuario},
  uCadImovel in 'Cadastros\uCadImovel.pas' {frCadImovel},
  uConsProprietario in 'Consultas\uConsProprietario.pas' {frConsProprietario},
  uConsImovel in 'Consultas\uConsImovel.pas' {frConsImovel},
  uCadProprietario in 'Cadastros\uCadProprietario.pas' {frCadProprietario},
  uCadCliente in 'Cadastros\uCadCliente.pas' {frCadCliente},
  uConsCliente in 'Consultas\uConsCliente.pas' {frConsCliente},
  uCadLocatario in 'Cadastros\uCadLocatario.pas' {frCadLocatario},
  uConsLocatario in 'Consultas\uConsLocatario.pas' {frConsLocatario},
  uCadVistoria in 'Cadastros\uCadVistoria.pas' {frCadVistoria},
  uCadAmbiente in 'Cadastros\uCadAmbiente.pas' {frCadAmbiente},
  uCadFoto in 'Cadastros\uCadFoto.pas' {frCadFoto},
  uLogin in 'uLogin.pas' {frLogin},
  uCadItem in 'Cadastros\uCadItem.pas' {frCadItem},
  uPadraoConsultaDetalheGVGESTOR in '..\GESTORForms\uPadraoConsultaDetalheGVGESTOR.pas' {frPadraoConsultaDetalheGVGSTOR},
  uConsVistoria in 'Consultas\uConsVistoria.pas' {frConsVistoria},
  uConsAmbiente in 'Consultas\uConsAmbiente.pas' {frConsAmbiente},
  uConsItem in 'Consultas\uConsItem.pas' {frConsItem},
  uConsFoto in 'Consultas\uConsFoto.pas' {frConsFoto};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmConnection, dmConnection);
  Application.CreateForm(TdmTabelas, dmTabelas);
  Application.CreateForm(TfrPrincipal, frPrincipal);
  Application.Run;
end.
