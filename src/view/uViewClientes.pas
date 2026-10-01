unit uViewClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmClientes = class(TForm)
    pnlTop: TPanel;
    pnlBotoes: TPanel;
    pgcPrincipal: TPageControl;
    tabConsulta: TTabSheet;
    tabDados: TTabSheet;
    btnNovo: TButton;
    btnEditar: TButton;
    btnSalvar: TButton;
    btnCancelar: TButton;
    btnExcluir: TButton;
    btnFechar: TButton;
    pnlFiltro: TPanel;
    Label1: TLabel;
    edtPesquisa: TEdit;
    bntFiltrar: TButton;
    dbgClientes: TDBGrid;
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClientes: TfrmClientes;

implementation

{$R *.dfm}

procedure TfrmClientes.btnFecharClick(Sender: TObject);
begin
  Close;
end;

end.
