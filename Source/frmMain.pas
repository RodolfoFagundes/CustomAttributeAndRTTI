unit frmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TformMain = class(TForm)
    btnProcess: TButton;
    pnlClient: TPanel;
    mmResult: TMemo;
    pnlBottom: TPanel;
    btnCopy: TButton;
    procedure btnProcessClick(Sender: TObject);
    procedure btnCopyClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formMain: TformMain;

implementation

uses
  untCamposPersonalizadosMDL, untDescricaoJson, System.Rtti, ClipBrd;

const
  cJSON = '{"valorMensal":0,"observacao":"","bloquearProposta":false,"probabilidade":100,"valorAvulso":260.56,"cliente":{"id":18114285,"nome":""},"responsavel":'+
          '{"id":61442,"login":"teste@teste.com.br","nome":"DISPONIVEL"},"status":"","bloquearConclusao":false,"contato":{"id":18114285,"nome":"CLIENTE'+
          'TESTE"},"etapa":"","dataLimite":"2020-03-01T00:00:00.000Z","pipeline":"","nome":"Or\u00E7amento: 157842, Cliente: CLIENTE'+
          'TESTE","camposPersonalizados":'+
          '{"responsavelProposta002":"","entregaEmbalagem001":"","cargoResponsavelProposta003":"","condicoesPagamento006":"","emailResponsavelProposta004":"'+
          '","telefoneResponsavelProposta005":"","ordemServico007":"","hdaOrHdn009":"","ordemVenda008":""},"justificativas":[],"produtos":'+
          '[{"desconto":0,"isComissaoPorcentual":false,"recorrencia":0,"valor":80.2821,"valorTotal":160.56,"isDescontoPorcentual":false,"quantidade":2,"nome":'+
          '"CLASSE FISCAL 00","refId":10,"valorUnitario":80.2821,"categoria":{"ativo":true,"descricao":"MARCA","id":1,"nome":"MARCA","subCategorias":[]},"subCategoria":'+
          '{"ativo":true,"descricao":"PRODUTO","id":1,"nome":"PRODUTO"},"codigo":10,"id":10,"ativo":true},'+
          '{"desconto":0,"isComissaoPorcentual":false,"recorrencia":0,"valor":100,"valorTotal":100,"isDescontoPorcentual":false,"quantidade":1,"nome":"SERVICO","refId":'+
          '42775,"valorUnitario":100,"categoria":{"ativo":true,"descricao":"MARCA DOIS","id":2,"nome":"MARCA DOIS","subCategorias":[]},"subCategoria":'+
          '{"ativo":true,"descricao":"SERVI\u00C7O","id":2,"nome":"SERVI\u00C7O"},"codigo":42775,"id":42775,"ativo":true}],"autor":null,"autorAtualizacao":'+
          '{"id":61442,"login":"teste@teste.com.br","nome":"DISPONIVEL"},"id":6765306}';

{$R *.dfm}

procedure TformMain.btnCopyClick(Sender: TObject);
var
  Texto: string;
  Result: string;
begin
  for Texto in mmResult.Lines do
    Result := Result + Texto;
  Clipboard.AsText := Result;
end;

procedure TformMain.btnProcessClick(Sender: TObject);
var
  CamposPersonalizadosMDL: TCamposPersonalizadosMDL;
  RttiContext: TRttiContext;
  RttiType: TRttiType;
  RttiProperty: TRttiProperty;
  CustomAttribute: TCustomAttribute;
  Return: string;
begin
  Return := cJSON;
  mmResult.Lines.Clear;
  CamposPersonalizadosMDL := TCamposPersonalizadosMDL.Create;
  RttiContext := TRttiContext.Create;
  try
    RttiType := RttiContext.GetType(CamposPersonalizadosMDL.ClassType);
    for RttiProperty in RttiType.GetProperties do
      for CustomAttribute in RttiProperty.GetAttributes do
        if CustomAttribute is DescricaoJson then begin
          Return := StringReplace(Return,
                                  RttiProperty.Name,
                                  DescricaoJson(CustomAttribute).Descricao,
                                  [rfReplaceAll, rfIgnoreCase]);
        end;
  finally
    FreeAndNil(CamposPersonalizadosMDL);
    RttiContext.Free;
  end;
  mmResult.Lines.Text := Return;
end;

end.
