program TesteFortes;

uses
  Vcl.Forms,
  unPrincipal in 'unPrincipal.pas' {frmPrincipal},
  unTanques in 'unTanques.pas' {frmTanques},
  unBombas in 'unBombas.pas' {frmBombas},
  unAbastecimento in 'unAbastecimento.pas' {frmAbastecimento},
  unDataGeral in 'unDataGeral.pas' {dmGeral: TDataModule},
  unRelTotalPeriodo in 'unRelTotalPeriodo.pas' {frmRelAbastecimento};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdmGeral, dmGeral);
  Application.Run;
end.
