object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'MeuERP - Sistema de Gest'#227'o'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = mmPrincipal
  Position = poScreenCenter
  WindowState = wsMaximized
  TextHeight = 15
  object stbPrincipal: TStatusBar
    Left = 0
    Top = 422
    Width = 624
    Height = 19
    Panels = <
      item
        Text = 'Operador: Administrador'
        Width = 200
      end
      item
        Text = 'Banco de Dados: SQLite (Desconectado)'
        Width = 250
      end
      item
        Text = 'Vers'#227'o: 1.0.0'
        Width = 150
      end>
    ExplicitLeft = 320
    ExplicitTop = 240
    ExplicitWidth = 0
  end
  object pnlMenuLateral: TPanel
    Left = 0
    Top = 0
    Width = 200
    Height = 422
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitLeft = -6
    ExplicitTop = -6
  end
  object pnlCentral: TPanel
    Left = 200
    Top = 0
    Width = 424
    Height = 422
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitLeft = 232
    ExplicitTop = 232
    ExplicitWidth = 185
    ExplicitHeight = 41
  end
  object mmPrincipal: TMainMenu
    Left = 304
    Top = 224
    object menuCadastro: TMenuItem
      Caption = '&Cadastros'
      object menuCadClientes: TMenuItem
        Caption = '&Clientes'
      end
      object menuCadProdutos: TMenuItem
        Caption = '&Produtos'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object menuCadSair: TMenuItem
        Caption = 'Sai&r do Sistema'
        OnClick = menuCadSairClick
      end
    end
    object menuVendas: TMenuItem
      Caption = '&Vendas'
    end
    object menuFinanceiro: TMenuItem
      Caption = '&Financeiro'
    end
    object menuRelatorios: TMenuItem
      Caption = '&Relatorios'
    end
    object menuSair: TMenuItem
      Caption = 'Sai&r'
    end
  end
end
