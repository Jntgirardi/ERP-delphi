unit uViewPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

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
    procedure menuCadSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.menuCadSairClick(Sender: TObject);
begin
  Close;
end;

end.
