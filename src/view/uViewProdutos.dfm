object frmProdutos: TfrmProdutos
  Left = 0
  Top = 0
  Caption = 'Cadastro de Produtos'
  ClientHeight = 500
  ClientWidth = 750
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 750
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    Caption = #55357#56550' Cadastro de Produtos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
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
    ExplicitTop = 459
    object btnNovo: TButton
      Left = 0
      Top = 0
      Width = 80
      Height = 50
      Align = alLeft
      Caption = 'Novo'
      TabOrder = 0
      ExplicitLeft = 8
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
      ExplicitTop = 2
    end
    object btnFechar: TButton
      Left = 670
      Top = 0
      Width = 80
      Height = 50
      Align = alRight
      Caption = 'Fechar'
      TabOrder = 5
    end
  end
  object pgcPrincipal: TPageControl
    Left = 0
    Top = 50
    Width = 750
    Height = 400
    ActivePage = tabConsulta
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
          Width = 128
          Height = 15
          Caption = 'Pesquisar por Descri'#231#227'o:'
        end
        object edtPesquisa: TEdit
          Left = 16
          Top = 24
          Width = 350
          Height = 23
          TabOrder = 0
        end
        object btnFiltrar: TButton
          Left = 376
          Top = 24
          Width = 100
          Height = 25
          Caption = #55357#56589' Pesquisar'
          TabOrder = 1
        end
      end
      object dbgProdutos: TDBGrid
        Left = 0
        Top = 55
        Width = 742
        Height = 315
        Align = alClient
        DataSource = dcProdutos
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
    end
    object tabDados: TTabSheet
      Caption = #55357#56541' Dados do Produto'
      ImageIndex = 1
    end
  end
  object qryProdutos: TFDQuery
    Left = 312
    Top = 256
  end
  object dcProdutos: TDataSource
    DataSet = qryProdutos
    Left = 376
    Top = 264
  end
end
