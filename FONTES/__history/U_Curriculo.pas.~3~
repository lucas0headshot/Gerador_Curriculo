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
    txt_Descricao: TDBEdit;
    txt_Especificacoes: TDBEdit;
    txt_Preco: TDBEdit;
    db_Disponibilidade: TDBComboBox;
    txt_Quantidade: TDBEdit;
    txt_Codigo: TDBEdit;
    txt_Caracteristicas: TDBEdit;
    Menu: TMainMenu;
    Sair1: TMenuItem;
    txt_Peso: TDBEdit;
    txt_data: TDBEdit;
    procedure btn_inserirClick(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  Frm_Curriculo: TFrm_Curriculo;

implementation

{$R *.dfm}

uses U_Dm, U_principal;

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

    txt_nome.SetFocus; //Foca no nome
  End;

End.
