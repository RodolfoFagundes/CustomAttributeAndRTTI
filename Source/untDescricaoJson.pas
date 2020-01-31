unit untDescricaoJson;

interface

type
  DescricaoJson = class(TCustomAttribute)
  private
    FDescricao: string;
    procedure SetDescricao(const Value: string);
  public
    constructor Create(Descricao: string);
    property Descricao: string read FDescricao write SetDescricao;
  end;

implementation

{ DescricaoJson }

constructor DescricaoJson.Create(Descricao: string);
begin
  FDescricao := Descricao;
end;

procedure DescricaoJson.SetDescricao(const Value: string);
begin
  FDescricao := Value;
end;

end.
