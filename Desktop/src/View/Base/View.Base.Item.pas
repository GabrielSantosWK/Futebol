unit View.Base.Item;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TViewBaseItem = class(TFrame)
    pnlBase: TPanel;
    ShapeLeft: TShape;
    ShapeRight: TShape;
    pnlTop: TPanel;
    pnlBottom: TPanel;
    procedure FrameResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TViewBaseItem.FrameResize(Sender: TObject);
begin
//  pnlBase.Left := ShapeLeft.Left +5;
//  pnlBase.top := ShapeLeft.top;
end;

end.
