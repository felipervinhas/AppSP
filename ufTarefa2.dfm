object FTarefa2: TFTarefa2
  Left = 0
  Top = 0
  Caption = 'Tarefa 2'
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
  object GridPanel1: TGridPanel
    Left = 0
    Top = 0
    Width = 932
    Height = 425
    Align = alClient
    ColumnCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
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
        Column = 0
        Control = Memo1
        Row = 1
      end
      item
        Column = 1
        Control = Memo2
        Row = 1
      end
      item
        Column = 0
        Control = GridPanel2
        Row = 2
      end
      item
        Column = 1
        Control = GridPanel3
        Row = 2
      end
      item
        Column = 0
        Control = ProgressBar1
        Row = 3
      end
      item
        Column = 1
        Control = ProgressBar2
        Row = 3
      end>
    RowCollection = <
      item
        SizeStyle = ssAbsolute
        Value = 30.000000000000000000
      end
      item
        Value = 100.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 30.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 25.000000000000000000
      end>
    TabOrder = 0
    object LabelCol: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 459
      Height = 24
      Align = alClient
      Caption = 'Threads 1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 81
      ExplicitHeight = 18
    end
    object LabelTab: TLabel
      AlignWithMargins = True
      Left = 469
      Top = 4
      Width = 459
      Height = 24
      Align = alClient
      Caption = 'Threads 2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 81
      ExplicitHeight = 18
    end
    object Memo1: TMemo
      AlignWithMargins = True
      Left = 4
      Top = 34
      Width = 459
      Height = 332
      Align = alClient
      TabOrder = 0
    end
    object Memo2: TMemo
      AlignWithMargins = True
      Left = 469
      Top = 34
      Width = 459
      Height = 332
      Align = alClient
      TabOrder = 1
    end
    object GridPanel2: TGridPanel
      Left = 1
      Top = 369
      Width = 465
      Height = 30
      Align = alClient
      ColumnCollection = <
        item
          Value = 50.000000000000000000
        end
        item
          Value = 50.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = Label1
          Row = 0
        end
        item
          Column = 1
          Control = NumberBox1
          Row = 0
        end>
      RowCollection = <
        item
          Value = 100.000000000000000000
        end>
      TabOrder = 2
      object Label1: TLabel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 226
        Height = 22
        Align = alClient
        Caption = 'Tempo '
        ExplicitWidth = 39
        ExplicitHeight = 15
      end
      object NumberBox1: TNumberBox
        AlignWithMargins = True
        Left = 236
        Top = 4
        Width = 225
        Height = 22
        Align = alClient
        TabOrder = 0
        Value = 1.000000000000000000
        ExplicitHeight = 23
      end
    end
    object GridPanel3: TGridPanel
      Left = 466
      Top = 369
      Width = 465
      Height = 30
      Align = alClient
      ColumnCollection = <
        item
          Value = 50.000000000000000000
        end
        item
          Value = 50.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = Label2
          Row = 0
        end
        item
          Column = 1
          Control = NumberBox2
          Row = 0
        end>
      RowCollection = <
        item
          Value = 100.000000000000000000
        end>
      TabOrder = 3
      object Label2: TLabel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 226
        Height = 22
        Align = alClient
        Caption = 'Tempo'
        ExplicitWidth = 36
        ExplicitHeight = 15
      end
      object NumberBox2: TNumberBox
        AlignWithMargins = True
        Left = 236
        Top = 4
        Width = 225
        Height = 22
        Align = alClient
        TabOrder = 0
        Value = 1.000000000000000000
        ExplicitHeight = 23
      end
    end
    object ProgressBar1: TProgressBar
      AlignWithMargins = True
      Left = 4
      Top = 402
      Width = 459
      Height = 19
      Align = alClient
      TabOrder = 4
    end
    object ProgressBar2: TProgressBar
      AlignWithMargins = True
      Left = 469
      Top = 402
      Width = 459
      Height = 19
      Align = alClient
      TabOrder = 5
    end
  end
  object Button1: TButton
    AlignWithMargins = True
    Left = 3
    Top = 428
    Width = 926
    Height = 54
    Align = alBottom
    Caption = 'Executar Threads'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    AlignWithMargins = True
    Left = 3
    Top = 488
    Width = 926
    Height = 54
    Align = alBottom
    Caption = 'Finalizar Threads'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button2Click
  end
end
