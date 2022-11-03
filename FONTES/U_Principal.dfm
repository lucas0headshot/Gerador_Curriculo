object Frm_Principal: TFrm_Principal
  Left = 0
  Top = 0
  Caption = 'Seja bem-vindo'
  ClientHeight = 614
  ClientWidth = 1094
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = Menu
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar: TStatusBar
    Left = 0
    Top = 595
    Width = 1094
    Height = 19
    Panels = <
      item
        Text = 'Criado por:'
        Width = 65
      end
      item
        Text = 'Marcos e Lucas Ronchi'
        Width = 130
      end
      item
        Text = 'Cedup Ab'#237'lio Paulo'
        Width = 110
      end
      item
        Text = 'Data:'
        Width = 200
      end
      item
        Text = 'Hora:'
        Width = 50
      end>
  end
  object Panel: TPanel
    Left = 0
    Top = 0
    Width = 1094
    Height = 41
    Align = alTop
    Caption = 'Panel'
    TabOrder = 1
  end
  object Timer: TTimer
    OnTimer = TimerTimer
    Left = 1064
  end
  object Menu: TMainMenu
    Top = 40
    object Curriculo1: TMenuItem
      Caption = 'Curriculo'
      OnClick = Curriculo1Click
      object Criar1: TMenuItem
        Caption = 'Criar'
        OnClick = Curriculo1Click
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
    end
  end
end
