unit uspQuery;

interface

uses
  System.Classes,
  Data.DB,
  System.SysUtils,
  FireDAC.Comp.Client,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  FireDAC.Comp.DataSet;

Type
  TspQuery = class(TFDQuery)

    private
      FParams : TParams;
      FTabela : TStringList;
      FColunas : TStringList;
      FCondicoes : TStringList;
    protected

      procedure SetTabela(const Value: TStringList);
      procedure SetColunas(const Value: TStringList);
      procedure SetCondicoes(const Value: TStringList);

    public
      constructor Create(AOwner: TComponent); override;
      destructor Destroy; override;

      Function GeraSQL : String;
    published
    { Published declarations }
       property spTabela : TStringList read FTabela write FTabela;
       property spColunas : TStringList read FColunas write FColunas;
       property spCondicoes : TStringList read FCondicoes write FCondicoes;

  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('SpComponentes', [TSpQuery]);
end;


constructor TspQuery.Create(AOwner: TComponent);
begin
  inherited;

  if not Assigned(FColunas) then
      FColunas := TStringList.Create;

  if not Assigned(FCondicoes) then
    FCondicoes := TStringList.Create;

  if not Assigned(FTabela) then
    FTabela := TStringList.Create;
end;

destructor TspQuery.Destroy;
begin
//  FreeAndNil(Self);
  inherited;
end;


function TspQuery.GeraSQL: String;
var
  i1,i2,i3 : Integer;
  vTabela : String;
  vColunas: String;
  vCondicoes: String;
begin
  try
    Self.Active := False;
    for i1 := 0 to FTabela.Count - 1 do
    begin
      vTabela := vTabela + FTabela.Strings[i1];
    end;
    for i2 := 0 to FColunas.Count - 1 do
    begin
      if i2 = FColunas.Count -1 then
      begin
        vColunas := vColunas + FColunas.Strings[i2]
      end
      else
      vColunas := vColunas + FColunas.Strings[i2] + ',';
    end;
    for i3 := 0 to FCondicoes.Count - 1 do
    begin
      if (I3 <= 0) then
      begin
        vCondicoes := vCondicoes + ' Where ' + FCondicoes.Strings[i3]
      end
      else
      vCondicoes := vCondicoes + ' and ' + FCondicoes.Strings[i3]
    end;

    if (FTabela.Count > 1) then
    begin
       raise Exception.Create('N?o ? permitido utiliza??o de mais de uma TABELA no SQL');
      abort;
    end;

    Self.SQL.Text := 'Select ' +
                      vColunas + ' ' +
                      vTabela + ' ' +
                      vCondicoes;

    Result := Self.SQL.Text;
  finally
    FTabela.Clear;
    FColunas.Clear;
    FCondicoes.Clear;
  end;
end;

procedure TspQuery.SetColunas(const Value: TStringList);
begin
  FColunas := Value;
end;

procedure TspQuery.SetCondicoes(const Value: TStringList);
begin
  FCondicoes := Value;
end;

procedure TspQuery.SetTabela(const Value: TStringList);
begin
  FTabela := Value;
end;

end.
