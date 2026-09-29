unit uViewPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    mmPrincipal: TMainMenu;
    menuCadastro: TMenuItem;
    menuVendas: TMenuItem;
    menuFinanceiro: TMenuItem;
    menuRelatorios: TMenuItem;
    menuSair: TMenuItem;
    menuCadClientes: TMenuItem;
    menuCadProdutos: TMenuItem;
    N1: TMenuItem;
    menuCadSair: TMenuItem;
    stbPrincipal: TStatusBar;
    pnlMenuLateral: TPanel;
    pnlCentral: TPanel;
    pnlLogo: TPanel;
    btnClientes: TButton;
    btnProdutos: TButton;
    btnVendas: TButton;
    btnSair: TButton;
    procedure menuCadSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnClientesClick(Sender: TObject);
    procedure menuCadClientesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uDMConexao, uViewClientes;

procedure TfrmPrincipal.btnClientesClick(Sender: TObject);
begin
  Application.CreateForm(TfrmClientes, frmClientes);
  try
    frmClientes.ShowModal;
  finally
    FreeAndNil(frmClientes);
  end;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  if Assigned(dmConexao) and dmConexao.FDConn.Connected then
    stbPrincipal.Panels[1].Text := 'Banco de Dados: SQLite (Conectado)'
  else
    stbPrincipal.Panels[1].Text := 'Banco de Dados: Desconectado';
end;

procedure TfrmPrincipal.menuCadClientesClick(Sender: TObject);
begin
  btnClientesClick(Sender);
end;

procedure TfrmPrincipal.menuCadSairClick(Sender: TObject);
begin
  Close;
end;

end.
