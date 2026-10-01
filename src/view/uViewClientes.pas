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
    procedure btnNovoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
    procedure LimparCampos;
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

procedure TfrmClientes.btnCancelarClick(Sender: TObject);
begin
  LimparCampos;
  pgcPrincipal.ActivePage := tabConsulta;
end;

procedure TfrmClientes.btnEditarClick(Sender: TObject);
begin
  // 1. Verifica se a consulta tem algum registro selecionado
  if qryClientes.IsEmpty then
  begin
    ShowMessage('Selecione um cliente na lista para editar.');
    Exit;
  end;
  // 2. Carrega os dados da linha selecionada para os campos da tela
  edtID.Text       := qryClientes.FieldByName('ID').AsString;
  edtNome.Text     := qryClientes.FieldByName('NOME').AsString;
  edtCpfCnpj.Text  := qryClientes.FieldByName('CPF_CNPJ').AsString;
  edtTelefone.Text := qryClientes.FieldByName('TELEFONE').AsString;
  edtEmail.Text    := qryClientes.FieldByName('EMAIL').AsString;
  // 3. Muda para a aba de dados e foca no nome
  pgcPrincipal.ActivePage := tabDados;
  edtNome.SetFocus;
end;

procedure TfrmClientes.btnExcluirClick(Sender: TObject);
var
  vID: Integer;
begin
  // 1. Descobre o ID: se estiver na aba de dados (edtID) ou pela linha selecionada na grid
  if Trim(edtID.Text) <> '' then
    vID := StrToInt(edtID.Text)
  else if not qryClientes.IsEmpty then
    vID := qryClientes.FieldByName('ID').AsInteger
  else
  begin
    ShowMessage('Selecione um cliente na lista para excluir.');
    Exit;
  end;

  // 2. Pede confirmação nativa do Windows (Sim / Não)
  if Application.MessageBox('Deseja realmente excluir este cliente?', 'Confirmação', MB_YESNO + MB_ICONQUESTION) = IDYES then
  begin
    // 3. Executa o DELETE com parâmetro seguro
    dmConexao.FDConn.ExecSQL('DELETE FROM CLIENTES WHERE ID = :ID', [vID]);

    // 4. Limpa os edits, recarrega a consulta e volta para a aba de pesquisa
    LimparCampos;
    qryClientes.Close;
    qryClientes.Open;
    pgcPrincipal.ActivePage := tabConsulta;

    ShowMessage('Cliente excluído com sucesso!');
  end;
end;

procedure TfrmClientes.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmClientes.btnNovoClick(Sender: TObject);
begin
  LimparCampos;
  pgcPrincipal.ActivePage := tabDados;
  edtNome.SetFocus;
end;

procedure TfrmClientes.btnSalvarClick(Sender: TObject);
begin
  // 1. Validação básica obrigatória
  if Trim(edtNome.Text) = '' then
  begin
    ShowMessage('Por favor, informe o Nome Completo do cliente.');
    edtNome.SetFocus;
    Exit;
  end;

  // 2. Verifica se é Inclusão (novo) ou Alteração (editar)
  if Trim(edtID.Text) = '' then
  begin
    // INSERT - Novo Cliente
    dmConexao.FDConn.ExecSQL(
      'INSERT INTO CLIENTES (NOME, CPF_CNPJ, TELEFONE, EMAIL) ' +
      'VALUES (:NOME, :CPF_CNPJ, :TELEFONE, :EMAIL)',
      [Trim(edtNome.Text), Trim(edtCpfCnpj.Text), Trim(edtTelefone.Text), Trim(edtEmail.Text)]
    );
    ShowMessage('Cliente cadastrado com sucesso!');
  end
  else
  begin
    // UPDATE - Atualizar Cliente Existente
    dmConexao.FDConn.ExecSQL(
      'UPDATE CLIENTES SET ' +
      '  NOME = :NOME, ' +
      '  CPF_CNPJ = :CPF_CNPJ, ' +
      '  TELEFONE = :TELEFONE, ' +
      '  EMAIL = :EMAIL ' +
      'WHERE ID = :ID',
      [Trim(edtNome.Text), Trim(edtCpfCnpj.Text), Trim(edtTelefone.Text), Trim(edtEmail.Text), StrToInt(edtID.Text)]
    );
    ShowMessage('Cliente atualizado com sucesso!');
  end;

  // 3. Atualiza a tabela na tela e volta para a consulta
  LimparCampos;
  qryClientes.Close;
  qryClientes.Open;
  pgcPrincipal.ActivePage := tabConsulta;
end;

procedure TfrmClientes.FormShow(Sender: TObject);
begin
  pgcPrincipal.ActivePage := tabConsulta;

  // Liga o SQL na conexão com o SQLite
  qryClientes.Connection := dmConexao.FDConn;

  // Abre os dados
  qryClientes.Open('SELECT * FROM CLIENTES ORDER BY NOME');
end;

procedure TfrmClientes.LimparCampos;
begin
  edtID.Clear;
  edtNome.Clear;
  edtCpfCnpj.Clear;
  edtTelefone.Clear;
  edtEmail.Clear;
end;

end.
