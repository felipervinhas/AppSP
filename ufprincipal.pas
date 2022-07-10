unit ufprincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,uspQuery,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteWrapper.Stat;


type
  TfPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    arefas1: TMenuItem;
    arefas2: TMenuItem;
    arefa21: TMenuItem;
    arefa22: TMenuItem;
    procedure arefas2Click(Sender: TObject);
    procedure arefa21Click(Sender: TObject);
    procedure arefa22Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  fPrincipal : TfPrincipal;

implementation

{$R *.dfm}

uses ufTarefa1, ufTarefa2, ufTarefa3;

procedure TfPrincipal.arefa21Click(Sender: TObject);
begin
  FTarefa2 := TFTarefa2.Create(self);
  FTarefa2.Show;
end;

procedure TfPrincipal.arefa22Click(Sender: TObject);
begin
  FTarefa3 := TFTarefa3.Create(self);
  FTarefa3.Show;

end;

procedure TfPrincipal.arefas2Click(Sender: TObject);
begin
  FTarefa1 := TFTarefa1.Create(self);
  FTarefa1.Show;
end;


END.
