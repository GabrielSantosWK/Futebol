unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, View.Time;

type
  TViewPrincipal = class(TForm)
    pnlBase: TPanel;
    pnlTop: TPanel;
    pnlBaseNavMain: TPanel;
    pnlNav: TPanel;
    pnlMain: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure Panel1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}

procedure TViewPrincipal.Panel1DblClick(Sender: TObject);
begin
  Form1.Show;
end;

end.
