program Liga;

uses
  Vcl.Forms,
  View.Principal in 'src\View\View.Principal.pas' {ViewPrincipal},
  View.Time in 'src\View\Time\View.Time.pas' {Form1},
  View.Base.Item in 'src\View\Base\View.Base.Item.pas' {ViewBaseItem: TFrame},
  View.Time.Item.Lista in 'src\View\Time\View.Time.Item.Lista.pas' {ViewTimeItemLista: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
