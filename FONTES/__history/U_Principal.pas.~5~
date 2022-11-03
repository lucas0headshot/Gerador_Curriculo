unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TFrm_Principal = class(TForm)
    Timer: TTimer;
    StatusBar: TStatusBar;
    Image_1: TImage;
    Image_2: TImage;
    Panel: TPanel;
    Menu: TMainMenu;
    Curriculo1: TMenuItem;
    Criar1: TMenuItem;
    Sair1: TMenuItem;
    procedure TimerTimer(Sender: TObject);
    procedure SairClick(Sender: TObject);
    procedure Curriculo1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Principal: TFrm_Principal;

implementation

{$R *.dfm}

uses U_Curriculo, U_Dm;

Procedure TFrm_Curriculo(Sender: TObject);
  Begin
    Frm_Curriculo.Visible:= true;
    Frm_Principal.Visible:= false;
  End;

procedure TFrm_Principal.Curriculo1Click(Sender: TObject);
  begin
    Frm_Curriculo.Visible:= true;
    Frm_Principal.Visible:= false;
  end;

Procedure TFrm_Principal.SairClick(Sender: TObject);
  Begin
    Frm_Principal.Close;
    Frm_Curriculo.Close;
  End;

Procedure TFrm_Principal.TimerTimer(Sender: TObject);
  Begin
    Statusbar.Panels[3].Text:= 'Data: ' + FormatDateTime('dddd, dd "de" mmm "de" yyyy', Now);
    Statusbar.Panels[4].Text:= 'Hora: ' + FormatDateTime('hh:mm:ss', Now);
  End;

End.
