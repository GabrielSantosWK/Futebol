unit View.Time;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    ScrollBox: TScrollBox;
    Panel2: TPanel;
    Edit1: TEdit;
  private
    procedure ClearLista();
    procedure CreateItens();
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.ClearLista;
var
  I: Integer;
begin
  for I := 0 to pred(ScrollBox.ControlCount) do
  begin
    ScrollBox.Controls[i].Free;
  end;

end;

procedure TForm1.CreateItens;
begin

end;

end.
