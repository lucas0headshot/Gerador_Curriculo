unit U_Curriculo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Buttons, Data.DB,
  Vcl.Menus, Vcl.Grids, Vcl.DBGrids;

type
  TFrm_Curriculo = class(TForm)
    PageControl: TPageControl;
    tb_produto: TTabSheet;
    txt_ID: TDBEdit;
    txt_Nome: TDBEdit;
    Menu: TMainMenu;
    Sair1: TMenuItem;
    txt_Funcao: TDBEdit;
    Image1: TImage;
    txt_Informacoes_Pessoais: TDBEdit;
    txt_Interesses_Pessoais: TDBEdit;
    txt_Endereco: TDBEdit;
    txt_Celular: TDBEdit;
    txt_Email: TDBEdit;
    txt_Link_Portifolio: TDBEdit;
    txt_Link_LinkedIn: TDBEdit;
    txt_Link_Instagram: TDBEdit;
    Image2: TImage;
    Image3: TImage;
    txt_Nome_Escola: TDBEdit;
    txt_Formacao: TDBEdit;
    txt_Especializacoes: TDBEdit;
    txt_Detalhes_Ultimo_Emprego: TDBEdit;
    txt_Empresa_Ultimo_Emprego: TDBEdit;
    txt_Ultimo_Emprego: TDBEdit;
    btn_inserir: TSpeedButton;
    btn_salvar: TSpeedButton;
    btn_imprimir: TButton;
    procedure btn_inserirClick(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  Frm_Curriculo: TFrm_Curriculo;

implementation

{$R *.dfm}

uses U_Dm, U_principal;

procedure TFrm_Curriculo.btn_salvarClick(Sender: TObject);
begin
  Dm.tb_Curriculo.Post; //Salva dados na tabela
  ShowMessage('Salvo com sucesso');
end;

Procedure TFrm_Curriculo.Sair1Click(Sender: TObject); //Fecha o programa
  Begin
    If (Dm.tb_Curriculo.State in [dsInsert, dsEdit]) then
      Begin
        showMessage('Salve ou cancele antes de fechar!');
        exit;
      End
    Else
      Frm_Principal.Close;
      Frm_Curriculo.Close;
  End;

Procedure TFrm_Curriculo.btn_inserirClick(Sender: TObject); //Inserir
  Begin
    Dm.tb_Curriculo.Active:= true; //Incia inserção
    Dm.tb_Curriculo.Insert;

    txt_Nome.SetFocus; //Foca no nome
  End;

End.
