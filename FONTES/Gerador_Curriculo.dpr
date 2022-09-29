program Gerador_Curriculo;

uses
  Vcl.Forms,
  U_Dm in 'U_Dm.pas' {Dm: TDataModule},
  U_Principal in 'U_Principal.pas' {Frm_Principal},
  U_Curriculo in 'U_Curriculo.pas' {Frm_Curriculo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDm, Dm);
  Application.CreateForm(TFrm_Principal, Frm_Principal);
  Application.CreateForm(TFrm_Curriculo, Frm_Curriculo);
  Application.Run;
end.
