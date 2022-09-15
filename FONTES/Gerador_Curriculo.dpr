program Gerador_Curriculo;

uses
  Vcl.Forms,
  U_Dm in 'U_Dm.pas' {Dm: TDataModule},
  U_Produto in 'U_Produto.pas' {Frm_Produto};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDm, Dm);
  Application.CreateForm(TFrm_Produto, Frm_Produto);
  Application.Run;
end.
