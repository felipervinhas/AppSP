unit ufTarefa2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.NumberBox,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uspQuery, Vcl.ComCtrls, System.Threading;

type
  TFTarefa2 = class(TForm)
    GridPanel1: TGridPanel;
    LabelCol: TLabel;
    LabelTab: TLabel;
    Button1: TButton;
    Memo1: TMemo;
    Memo2: TMemo;
    GridPanel2: TGridPanel;
    GridPanel3: TGridPanel;
    Label1: TLabel;
    NumberBox1: TNumberBox;
    Label2: TLabel;
    NumberBox2: TNumberBox;
    ProgressBar1: TProgressBar;
    ProgressBar2: TProgressBar;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    TH1, TH2 :TThread;

  end;

  var
      TerminateTh : Boolean;



var
  FTarefa2: TFTarefa2;

implementation

{$R *.dfm}

procedure TTHead1;
var
  i: integer;
begin
    for i := 0 to 100 do begin
      Sleep(Trunc(FTarefa2.NumberBox1.Value * 1000));
      TThread.Queue(nil,
        procedure
        begin
          if not (TerminateTh) then
          begin
            FTarefa2.Memo1.Lines.Add('Percorrendo: ' + i.ToString);
            FTarefa2.ProgressBar1.Position := i
          end
          else
            exit;
        end);
    end;
end;

procedure TTHead2;
var
  i: integer;
begin
    for i := 0 to 100 do begin
      Sleep(Trunc(FTarefa2.NumberBox2.Value * 1000));
      TThread.Queue(nil,
        procedure
        begin
          if not (TerminateTh) then
          begin
            FTarefa2.Memo2.Lines.Add('Percorrendo: ' + i.ToString);
            FTarefa2.ProgressBar2.Position := i
          end
          else
            exit;
        end);
    end;
end;

procedure TFTarefa2.Button1Click(Sender: TObject);
begin
  Memo1.Clear;
  Memo2.Clear;
  if (NumberBox1.Value < 1) or (NumberBox2.Value < 1) then
  begin
    ShowMessage('Preencha Corretamente o Tempo');
    abort;
  end;
  Button1.Enabled := False;
  TerminateTh := False;
  TH1 := TThread.CreateAnonymousThread(TTHead1);
  TH1.FreeOnTerminate := False;
  TH1.Start;

  TH2 := TThread.CreateAnonymousThread(TTHead2);
  TH2.FreeOnTerminate := False;
  TH2.Start;

  Button1.Enabled := true;
end;

procedure TFTarefa2.Button2Click(Sender: TObject);
begin
  TerminateTh := true;
  TH1.Suspend;
  TH2.Suspend;
end;

procedure TFTarefa2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:= caFree;
end;

procedure TFTarefa2.FormCreate(Sender: TObject);
begin
  Self.FormStyle := TFormStyle.fsMDIChild;
  Self.WindowState := TWindowState.wsMaximized;
end;

end.
