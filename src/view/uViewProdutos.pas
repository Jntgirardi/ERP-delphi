unit uViewProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrmProdutos = class(TForm)
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
    btnFiltrar: TButton;
    dbgProdutos: TDBGrid;
    qryProdutos: TFDQuery;
    dcProdutos: TDataSource;
    Label2: TLabel;
    edtID: TEdit;
    Label3: TLabel;
    edtCodigoBarras: TEdit;
    Label4: TLabel;
    edtDescricao: TEdit;
    Label5: TLabel;
    edtPrecoCusto: TEdit;
    Label6: TLabel;
    edtPrecoVenda: TEdit;
    Label7: TLabel;
    edtEstoque: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProdutos: TfrmProdutos;

implementation

{$R *.dfm}

end.
