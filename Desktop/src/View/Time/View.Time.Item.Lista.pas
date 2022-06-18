unit View.Time.Item.Lista;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Base.Item, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TViewTimeItemLista = class(TViewBaseItem)
    lblDescricao: TLabel;
  private
    FDescricacao: string;
    procedure SetDescricacao(const Value: string);
  public
  property Descricacao:string read FDescricacao write SetDescricacao;
  end;

var
  ViewTimeItemLista: TViewTimeItemLista;

implementation

{$R *.dfm}

{ TViewTimeItemLista }


{ TViewTimeItemLista }

procedure TViewTimeItemLista.SetDescricacao(const Value: string);
begin
  FDescricacao := Value;
end;

end.
