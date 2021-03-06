unit ufTarefa1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uspQuery,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFTarefa1 = class(TForm)
    MemoCol: TMemo;
    MemoTab: TMemo;
    MemoCon: TMemo;
    AlinhamentoTop: TGridPanel;
    LabelCol: TLabel;
    LabelTab: TLabel;
    LabelCon: TLabel;
    LabelResposta: TLabel;
    MemoResposta: TMemo;
    BtnExecSQL: TButton;
    spQuery1: TspQuery;
    AlinhamentoGeral: TGridPanel;
    procedure BtnExecSQLClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LimparMemo(aLista : TStrings);
  end;

var
  FTarefa1: TFTarefa1;

implementation

{$R *.dfm}

procedure TFTarefa1.BtnExecSQLClick(Sender: TObject);
var
  i: Integer;
begin
  LimparMemo(MemoCol.Lines);
  LimparMemo(MemoTab.Lines);
  LimparMemo(MemoCon.Lines);
  for i := 0 to MemoCol.Lines.Count - 1 do
  begin
    spQuery1.spColunas.Add(MemoCol.Lines.Strings[i]);
  end;

  for i := 0 to MemoTab.Lines.Count - 1 do
  begin
    spQuery1.spTabela.Add(MemoTab.Lines.Strings[i]);
  end;

  for i := 0 to MemoCon.Lines.Count - 1 do
  begin
    spQuery1.spCondicoes.Add(MemoCon.Lines.Strings[i]);
  end;

  MemoResposta.Lines.Text := spQuery1.GeraSQL;
end;

procedure TFTarefa1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:= caFree;
end;

procedure TFTarefa1.FormCreate(Sender: TObject);
begin
  Self.FormStyle := TFormStyle.fsMDIChild;
  Self.WindowState := TWindowState.wsMaximized;
end;

procedure TFTarefa1.LimparMemo(aLista: TStrings);
var
 i: integer;
begin
 for i := aLista.Count downto 0 do
   if (Trim(aLista[i]) = '') then
   begin
     aLista.Delete(i);
   end;
end;


end.
