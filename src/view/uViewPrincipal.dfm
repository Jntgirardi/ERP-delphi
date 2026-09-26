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
