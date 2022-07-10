object FTarefa1: TFTarefa1
  Left = 0
  Top = 0
  Caption = 'Tarefa 1'
  ClientHeight = 545
  ClientWidth = 932
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object AlinhamentoGeral: TGridPanel
    Left = 0
    Top = 0
    Width = 932
    Height = 545
    Align = alClient
    ColumnCollection = <
      item
        Value = 100.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = AlinhamentoTop
        Row = 0
      end
      item
        Column = 0
        Control = LabelResposta
        Row = 1
      end
      item
        Column = 0
        Control = MemoResposta
        Row = 2
      end
      item
        Column = 0
        Control = BtnExecSQL
        Row = 3
      end>
    RowCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 30.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 50.000000000000000000
      end>
    TabOrder = 0
    object AlinhamentoTop: TGridPanel
      Left = 1
      Top = 1
      Width = 930
      Height = 232
      Align = alClient
      ColumnCollection = <
        item
          Value = 33.333333333333340000
        end
        item
          Value = 33.333333333333340000
        end
        item
          Value = 33.333333333333310000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = LabelCol
          Row = 0
        end
        item
          Column = 1
          Control = LabelTab
          Row = 0
        end
        item
          Column = 2
          Control = LabelCon
          Row = 0
        end
        item
          Column = 0
          Control = MemoCol
          Row = 1
        end
        item
          Column = 1
          Control = MemoTab
          Row = 1
        end
        item
          Column = 2
          Control = MemoCon
          Row = 1
        end>
      RowCollection = <
        item
          SizeStyle = ssAbsolute
          Value = 30.000000000000000000
        end
        item
          Value = 100.000000000000000000
        end>
      TabOrder = 0
      object LabelCol: TLabel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 303
        Height = 24
        Align = alClient
        Caption = 'Colunas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 65
        ExplicitHeight = 18
      end
      object LabelTab: TLabel
        AlignWithMargins = True
        Left = 313
        Top = 4
        Width = 304
        Height = 24
        Align = alClient
        Caption = 'Tabelas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 62
        ExplicitHeight = 18
      end
      object LabelCon: TLabel
        AlignWithMargins = True
        Left = 623
        Top = 4
        Width = 303
        Height = 24
        Align = alClient
        Caption = 'Condi'#231#245'es'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 83
        ExplicitHeight = 18
      end
      object MemoCol: TMemo
        AlignWithMargins = True
        Left = 4
        Top = 34
        Width = 303
        Height = 194
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        Lines.Strings = (
          'ID'
          'NOME'
          'CPF')
        ParentFont = False
        TabOrder = 0
        ExplicitTop = 57
        ExplicitHeight = 171
      end
      object MemoTab: TMemo
        AlignWithMargins = True
        Left = 313
        Top = 34
        Width = 304
        Height = 194
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        Lines.Strings = (
          'CLIENTES')
        ParentFont = False
        TabOrder = 1
        ExplicitTop = 57
        ExplicitHeight = 171
      end
      object MemoCon: TMemo
        AlignWithMargins = True
        Left = 623
        Top = 34
        Width = 303
        Height = 194
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        Lines.Strings = (
          'ID = 1000'
          'ATIVO = '#39'S'#39)
        ParentFont = False
        TabOrder = 2
        ExplicitTop = 57
        ExplicitHeight = 171
      end
    end
    object LabelResposta: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 236
      Width = 924
      Height = 24
      Align = alClient
      Caption = 'Colunas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 65
      ExplicitHeight = 18
    end
    object MemoResposta: TMemo
      AlignWithMargins = True
      Left = 4
      Top = 266
      Width = 924
      Height = 225
      Align = alClient
      Anchors = []
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object BtnExecSQL: TButton
      AlignWithMargins = True
      Left = 4
      Top = 497
      Width = 924
      Height = 44
      Align = alClient
      Caption = 'Gerar SQL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BtnExecSQLClick
    end
  end
  object spQuery1: TspQuery
    Left = 408
    Top = 208
  end
end
