program MeuERP;

uses
  Vcl.Forms,
  uDMConexao in 'src\dao\uDMConexao.pas' {dmConexao: TDataModule},
  uViewPrincipal in 'src\view\uViewPrincipal.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmConexao, dmConexao);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
