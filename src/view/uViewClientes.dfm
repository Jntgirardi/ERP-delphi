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
    ExplicitTop = 50
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
    end
    object tabDados: TTabSheet
      Caption = #55357#56541' Dados do Cliente'
      ImageIndex = 1
    end
  end
end
