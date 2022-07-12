program Liga;

uses
  Vcl.Forms,
  View.Principal in 'src\View\View.Principal.pas' {ViewPrincipal},
  View.Time in 'src\View\Time\View.Time.pas' {Form1},
  View.Base.Item in 'src\View\Base\View.Base.Item.pas' {ViewBaseItem: TFrame},
  View.Time.Item.Lista in 'src\View\Time\View.Time.Item.Lista.pas' {ViewTimeItemLista: TFrame},
  Model.Client.Interfaces in 'src\Model\Model.Client.Interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  ReportMemoryLeaksOnShutdown := True;
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
