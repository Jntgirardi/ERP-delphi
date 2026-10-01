object frmClientes: TfrmClientes
  Left = 0
  Top = 0
  Caption = 'Cadastro de Clientes'
  ClientHeight = 500
  ClientWidth = 750
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 15
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 750
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    Caption = #55357#56421' Cadastro de Clientes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object pnlBotoes: TPanel
    Left = 0
    Top = 450
    Width = 750
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object btnNovo: TButton
      Left = 0
      Top = 0
      Width = 80
      Height = 50
      Align = alLeft
      Caption = 'Novo'
      TabOrder = 0
      ExplicitLeft = 24
    end
    object btnEditar: TButton
      Left = 80
      Top = 0
      Width = 80
      Height = 50
      Align = alLeft
      Caption = 'Editar'
      TabOrder = 1
    end
    object btnSalvar: TButton
      Left = 160
      Top = 0
      Width = 80
      Height = 50
      Align = alLeft
      Caption = 'Salvar'
      TabOrder = 2
    end
    object btnCancelar: TButton
      Left = 240
      Top = 0
      Width = 80
      Height = 50
      Align = alLeft
      Caption = 'Cancelar'
      TabOrder = 3
    end
    object btnExcluir: TButton
      Left = 320
      Top = 0
      Width = 80
      Height = 50
      Align = alLeft
      Caption = 'Excluir'
      TabOrder = 4
    end
    object btnFechar: TButton
      Left = 670
      Top = 0
      Width = 80
      Height = 50
      Align = alRight
      Caption = 'Fechar'
      TabOrder = 5
      OnClick = btnFecharClick
    end
  end
  object pgcPrincipal: TPageControl
    Left = 0
    Top = 50
    Width = 750
    Height = 400
    ActivePage = tabDados
    Align = alClient
    TabOrder = 2
    object tabConsulta: TTabSheet
      Caption = #55357#56589' Consulta / Pesquisa'
      object pnlFiltro: TPanel
        Left = 0
        Top = 0
        Width = 742
        Height = 55
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 6
          Width = 114
          Height = 15
          Caption = 'Pesquisar por Nome:'
        end
        object edtPesquisa: TEdit
          Left = 16
          Top = 24
          Width = 350
          Height = 25
          TabOrder = 0
        end
        object bntFiltrar: TButton
          Left = 376
          Top = 24
          Width = 100
          Height = 25
          Caption = #55357#56589' Pesquisar'
          TabOrder = 1
          OnClick = bntFiltrarClick
        end
      end
      object dbgClientes: TDBGrid
        Left = 0
        Top = 55
        Width = 742
        Height = 315
        Align = alClient
        DataSource = dcClientes
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
    end
    object tabDados: TTabSheet
      Caption = #55357#56541' Dados do Cliente'
      ImageIndex = 1
      object lblID: TLabel
        Left = 24
        Top = 20
        Width = 42
        Height = 15
        Caption = 'C'#243'digo:'
      end
      object lblNome: TLabel
        Left = 24
        Top = 67
        Width = 100
        Height = 15
        Caption = 'Nome Completo: *'
      end
      object lblCpfCnpj: TLabel
        Left = 24
        Top = 130
        Width = 62
        Height = 15
        Caption = 'CPF / CNPJ:'
      end
      object lblTelefone: TLabel
        Left = 240
        Top = 130
        Width = 48
        Height = 15
        Caption = 'Telefone:'
      end
      object lblEmail: TLabel
        Left = 24
        Top = 185
        Width = 37
        Height = 15
        Caption = 'E-mail:'
      end
      object edtID: TEdit
        Left = 24
        Top = 38
        Width = 80
        Height = 23
        Enabled = False
        TabOrder = 0
      end
      object edtNome: TEdit
        Left = 24
        Top = 88
        Width = 450
        Height = 23
        TabOrder = 1
      end
      object edtCpfCnpj: TEdit
        Left = 24
        Top = 148
        Width = 200
        Height = 23
        TabOrder = 2
      end
      object edtTelefone: TEdit
        Left = 240
        Top = 148
        Width = 234
        Height = 23
        TabOrder = 3
      end
      object edtEmail: TEdit
        Left = 24
        Top = 203
        Width = 450
        Height = 23
        TabOrder = 4
      end
    end
  end
  object qryClientes: TFDQuery
    Left = 328
    Top = 320
  end
  object dcClientes: TDataSource
    DataSet = qryClientes
    Left = 384
    Top = 320
  end
end
