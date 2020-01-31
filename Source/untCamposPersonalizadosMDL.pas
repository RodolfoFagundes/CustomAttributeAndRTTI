unit untCamposPersonalizadosMDL;

interface

uses
  untDescricaoJson;

type
  TCamposPersonalizadosMDL = class
  private
    FResponsavelProposta002: string;
    FEntregaEmbalagem001: string;
    FCargoResponsavelProposta003: string;
    FCondicoesPagamento006: string;
    FEmailResponsavelProposta004: string;
    FTelefoneResponsavelProposta005: string;
    FOrdemServico007: string;
    FHdaOrHdn009: string;
    FOrdemVenda008: string;
    procedure SetEntregaEmbalagem001(const Value: string);
    procedure SetResponsavelProposta002(const Value: string);
    procedure SetCargoResponsavelProposta003(const Value: string);
    procedure SetCondicoesPagamento006(const Value: string);
    procedure SetEmailResponsavelProposta004(const Value: string);
    procedure SetTelefoneResponsavelProposta005(const Value: string);
    procedure SetOrdemServico007(const Value: string);
    procedure SetHdaOrHdn009(const Value: string);
    procedure SetOrdemVenda008(const Value: string);
  public
    // Sequencial é necessário para garantir que o replace no JSON será único.
    [DescricaoJson('Entrega e embalagem')]
    property EntregaEmbalagem001: string read FEntregaEmbalagem001 write SetEntregaEmbalagem001;
    [DescricaoJson('Responsável pela Proposta')]
    property ResponsavelProposta002: string read FResponsavelProposta002 write SetResponsavelProposta002;
    [DescricaoJson('Cargo do Responsável pela Proposta')]
    property CargoResponsavelProposta003: string read FCargoResponsavelProposta003 write SetCargoResponsavelProposta003;
    [DescricaoJson('Email do Responsável pela Proposta')]
    property EmailResponsavelProposta004: string read FEmailResponsavelProposta004 write SetEmailResponsavelProposta004;
    [DescricaoJson('Telefone do Responsável pela Proposta')]
    property TelefoneResponsavelProposta005: string read FTelefoneResponsavelProposta005 write SetTelefoneResponsavelProposta005;
    [DescricaoJson('Condições de Pagamento')]
    property CondicoesPagamento006: string read FCondicoesPagamento006 write SetCondicoesPagamento006;
    [DescricaoJson('Ordem de Serviço')]
    property OrdemServico007: string read FOrdemServico007 write SetOrdemServico007;
    [DescricaoJson('Ordem de Venda')]
    property OrdemVenda008: string read FOrdemVenda008 write SetOrdemVenda008;
    [DescricaoJson('HDA ou HDN')]
    property HdaOrHdn009: string read FHdaOrHdn009 write SetHdaOrHdn009;
  end;

implementation

{ TCamposPersonalizados }

procedure TCamposPersonalizadosMDL.SetCargoResponsavelProposta003(const Value: string);
begin
  FCargoResponsavelProposta003 := Value;
end;

procedure TCamposPersonalizadosMDL.SetCondicoesPagamento006(const Value: string);
begin
  FCondicoesPagamento006 := Value;
end;

procedure TCamposPersonalizadosMDL.SetEmailResponsavelProposta004(const Value: string);
begin
  FEmailResponsavelProposta004 := Value;
end;

procedure TCamposPersonalizadosMDL.SetEntregaEmbalagem001(const Value: string);
begin
  FEntregaEmbalagem001 := Value;
end;

procedure TCamposPersonalizadosMDL.SetHdaOrHdn009(const Value: string);
begin
  FHdaOrHdn009 := Value;
end;

procedure TCamposPersonalizadosMDL.SetOrdemServico007(const Value: string);
begin
  FOrdemServico007 := Value;
end;

procedure TCamposPersonalizadosMDL.SetOrdemVenda008(const Value: string);
begin
  FOrdemVenda008 := Value;
end;

procedure TCamposPersonalizadosMDL.SetTelefoneResponsavelProposta005(const Value: string);
begin
  FTelefoneResponsavelProposta005 := Value;
end;

procedure TCamposPersonalizadosMDL.SetResponsavelProposta002(const Value: string);
begin
  FResponsavelProposta002 := Value;
end;

end.
