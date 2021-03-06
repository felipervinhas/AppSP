unit ufTarefa3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient, Datasnap.Provider, Vcl.Mask,
  Vcl.DBCtrls;


type
  TFTarefa3 = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    Label3: TLabel;
    GridPanel1: TGridPanel;
    GridPanel2: TGridPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);

  private
    { Private declarations }
  public
    CDS : TClientDataSet;
    DS  : TDataSource;
    FieldAggregate: TAggregateField;
  end;


var
  FTarefa3: TFTarefa3;

implementation

{$R *.dfm}

procedure TFTarefa3.Button1Click(Sender: TObject);
begin
  edit1.Text := FormatFloat('R$0.00',CDS.Aggregates[0].value);
end;

procedure TFTarefa3.Button2Click(Sender: TObject);
var
  sumTemp, sumPrior, sumDiv : Currency;
begin
  sumDiv := 0;
  sumTemp := 0;
  sumPrior := 0;
  CDS.First;
  CDS.Next;
  CDS.DisableControls;
  while not CDS.Eof do
  begin
    CDS.Prior;
    sumPrior := CDS.FieldByName('Valor').AsCurrency;
    CDS.Next;
    sumTemp :=  CDS.FieldByName('Valor').AsCurrency;
    sumDiv := sumDiv + (sumTemp / sumPrior);
    CDS.Next;
  end;
  CDS.EnableControls;
  Edit2.Text := FormatFloat('0.00',sumDiv);
end;

procedure TFTarefa3.FormActivate(Sender: TObject);
begin
 DBGrid1.Columns[0].Width := trunc(DBGrid1.Width * 20 / 100);
 DBGrid1.Columns[1].Width := trunc(DBGrid1.Width * 60 / 100);
 DBGrid1.Columns[2].Width := trunc(DBGrid1.Width * 20 / 100);

end;

procedure TFTarefa3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:= caFree;
end;

procedure TFTarefa3.FormCreate(Sender: TObject);
begin
  Self.FormStyle := TFormStyle.fsMDIChild;
  Self.WindowState := TWindowState.wsMaximized;
end;

procedure TFTarefa3.FormShow(Sender: TObject);
var
  I   : Integer;
begin
 CDS := TClientDataSet.Create(Self);
 DS  := TDataSource.Create(Self);

 DS.DataSet := CDS;

 CDS.Close;
 CDS.FieldDefs.Clear;
 CDS.FieldDefs.add('IdProjeto',ftInteger);
 CDS.FieldDefs.add('NomeProjeto',ftString,50);
 CDS.FieldDefs.add('Valor',ftFloat);

 FieldAggregate := TAggregateField.Create(CDS);
 FieldAggregate.FieldName := 'Total';
 FieldAggregate.Expression := 'SUM(Valor)';
 FieldAggregate.DataSet := CDS;

 CDS.CreateDataSet;
 with CDS.Aggregates.Add do begin
    Name := 'Total';
    Expression := 'SUM(Valor)';
    Active := True;
 end;
 CDS.AggregatesActive := True;
 CDS.Open;

 for I := 1 to 10 do
 begin
  CDS.Insert;
  CDS.FieldByName('IdProjeto').AsInteger := i;
  CDS.FieldByName('NomeProjeto').AsString := 'Projeto ' + i.ToString;
  CDS.FieldByName('Valor').AsCurrency := i * 10;
  CDS.Post;
 end;

 CDS.IndexFieldNames := 'IdProjeto';


 DBGrid1.DataSource := DS;

end;

end.
