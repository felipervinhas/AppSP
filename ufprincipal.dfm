object fPrincipal: TfPrincipal
  Left = 0
  Top = 0
  Caption = 'Softplan'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 15
  object MainMenu1: TMainMenu
    Left = 304
    Top = 224
    object arefas1: TMenuItem
      Caption = 'Tarefas'
      object arefas2: TMenuItem
        Caption = 'Tarefa 1'
        OnClick = arefas2Click
      end
      object arefa21: TMenuItem
        Caption = 'Tarefa 2'
        OnClick = arefa21Click
      end
      object arefa22: TMenuItem
        Caption = 'Tarefa 3'
        OnClick = arefa22Click
      end
    end
  end
end
