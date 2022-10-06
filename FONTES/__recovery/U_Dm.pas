unit U_Dm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Phys.MySQLDef, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, frxClass, frxDBSet;

type
  TDm = class(TDataModule)
    Driver: TFDPhysMySQLDriverLink;
    FDConnection: TFDConnection;
    DS_Curriculo: TDataSource;
    tb_curriculo: TFDTable;
    Report: TfrxReport;
    Ds_Rel_Curriculo: TfrxDBDataset;
    tb_curriculoID_Curriculo: TFDAutoIncField;
    tb_curriculoNome: TStringField;
    tb_curriculoFuncao: TStringField;
    tb_curriculoInformacoes_Pessoais: TStringField;
    tb_curriculoInteresses_Pessoais: TStringField;
    tb_curriculoEndereco: TStringField;
    tb_curriculoCelular: TStringField;
    tb_curriculoEmail: TStringField;
    tb_curriculoLink_Portifolio: TStringField;
    tb_curriculoLink_LinkedIn: TStringField;
    tb_curriculoLink_Instagram: TStringField;
    tb_curriculoNome_Escola: TStringField;
    tb_curriculoFormacao: TStringField;
    tb_curriculoInformacoes_Formacao: TStringField;
    tb_curriculoUltimo_Emprego: TStringField;
    tb_curriculoEmpresa_Ultimo_Emprego: TStringField;
    tb_curriculoDetalhes_Ultimo_Emprego: TStringField;
    tb_curriculoEspecializacoes: TStringField;
    procedure DataModuleCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dm: TDm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses U_Curriculo, U_Principal;

{$R *.dfm}

procedure TDm.DataModuleCreate(Sender: TObject);
begin
  FDconnection.Params.Database:= 'Gerador_Curriculo'; //Parâmetros
  FDconnection.Params.UserName:= 'root';
  FDconnection.Params.Password:= '';

  FDconnection.Connected:= true; //Conexão
  Driver.VendorLib:= GetCurrentDir + '\LIB\libmysql.dll';

  tb_Curriculo.TableName := 'Curriculo'; //Especifica a tabela do Banco de Dados
  tb_Curriculo.Active := true;
end;

end.
