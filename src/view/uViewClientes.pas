unit uViewClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, uDMConexao, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

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
    qryClientes: TFDQuery;
    dcClientes: TDataSource;
    lblID: TLabel;
    edtID: TEdit;
    lblNome: TLabel;
    edtNome: TEdit;
    lblCpfCnpj: TLabel;
    edtCpfCnpj: TEdit;
    lblTelefone: TLabel;
    edtTelefone: TEdit;
    lblEmail: TLabel;
    edtEmail: TEdit;
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bntFiltrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClientes: TfrmClientes;

implementation

{$R *.dfm}


procedure TfrmClientes.bntFiltrarClick(Sender: TObject);
begin
  qryClientes.Close;
  qryClientes.SQL.Text := 'SELECT * FROM CLIENTES WHERE NOME LIKE :NOME ORDER BY NOME';
  qryClientes.ParamByName('NOME').AsString := '%' + Trim(edtPesquisa.Text) + '%';
  qryClientes.Open;
end;

procedure TfrmClientes.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmClientes.FormShow(Sender: TObject);
begin
  pgcPrincipal.ActivePage := tabConsulta;

  // Liga o SQL na conexão com o SQLite
  qryClientes.Connection := dmConexao.FDConn;

  // Abre os dados
  qryClientes.Open('SELECT * FROM CLIENTES ORDER BY NOME');
end;

end.
