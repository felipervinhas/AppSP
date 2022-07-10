object FTarefa3: TFTarefa3
  Left = 0
  Top = 0
  Caption = 'Tarefa 3'
  ClientHeight = 545
  ClientWidth = 932
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Verdana'
  Font.Style = []
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    AlignWithMargins = True
    Left = 5
    Top = 10
    Width = 922
    Height = 14
    Margins.Left = 5
    Margins.Top = 10
    Margins.Right = 5
    Margins.Bottom = 10
    Align = alTop
    Caption = 'Valor do Projeto'
    ExplicitWidth = 101
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 10
    Top = 44
    Width = 912
    Height = 357
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alClient
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'IdProjeto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeProjeto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Visible = True
      end>
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 5
    Top = 411
    Width = 922
    Height = 129
    Margins.Left = 5
    Margins.Top = 0
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alBottom
    TabOrder = 1
    object GridPanel1: TGridPanel
      Left = 736
      Top = 1
      Width = 185
      Height = 127
      Align = alRight
      ColumnCollection = <
        item
          Value = 100.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = Label2
          Row = 0
        end
        item
          Column = 0
          Control = Edit1
          Row = 1
        end
        item
          Column = 0
          Control = Label3
          Row = 2
        end
        item
          Column = 0
          Control = Edit2
          Row = 3
        end>
      RowCollection = <
        item
          Value = 25.000000000000000000
        end
        item
          Value = 25.000000000000000000
        end
        item
          Value = 25.000000000000000000
        end
        item
          Value = 25.000000000000000000
        end>
      TabOrder = 0
      object Label2: TLabel
        AlignWithMargins = True
        Left = 11
        Top = 6
        Width = 163
        Height = 21
        Margins.Left = 10
        Margins.Top = 5
        Margins.Right = 10
        Margins.Bottom = 5
        Align = alClient
        Caption = 'Total R$'
        ExplicitWidth = 50
        ExplicitHeight = 14
      end
      object Edit1: TEdit
        AlignWithMargins = True
        Left = 11
        Top = 37
        Width = 163
        Height = 22
        Margins.Left = 10
        Margins.Top = 5
        Margins.Right = 10
        Margins.Bottom = 5
        Align = alClient
        Alignment = taCenter
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Text = '0,00'
      end
      object Label3: TLabel
        AlignWithMargins = True
        Left = 11
        Top = 69
        Width = 163
        Height = 21
        Margins.Left = 10
        Margins.Top = 5
        Margins.Right = 10
        Margins.Bottom = 5
        Align = alClient
        Caption = 'Total Divis'#245'es R$'
        ExplicitWidth = 106
        ExplicitHeight = 14
      end
      object Edit2: TEdit
        AlignWithMargins = True
        Left = 11
        Top = 100
        Width = 163
        Height = 21
        Margins.Left = 10
        Margins.Top = 5
        Margins.Right = 10
        Margins.Bottom = 5
        Align = alClient
        Alignment = taCenter
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Text = '0,00'
        ExplicitHeight = 22
      end
    end
    object GridPanel2: TGridPanel
      Left = 551
      Top = 1
      Width = 185
      Height = 127
      Align = alRight
      ColumnCollection = <
        item
          Value = 100.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = Button1
          Row = 0
        end
        item
          Column = 0
          Control = Button2
          Row = 1
        end>
      RowCollection = <
        item
          Value = 50.000000000000000000
        end
        item
          Value = 50.000000000000000000
        end>
      TabOrder = 1
      object Button1: TButton
        AlignWithMargins = True
        Left = 11
        Top = 11
        Width = 163
        Height = 42
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alClient
        Caption = 'Obter Total'
        TabOrder = 0
        OnClick = Button1Click
      end
      object Button2: TButton
        AlignWithMargins = True
        Left = 11
        Top = 73
        Width = 163
        Height = 43
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alClient
        Caption = 'Obter Total Divis'#245'es'
        TabOrder = 1
        OnClick = Button2Click
      end
    end
  end
end
