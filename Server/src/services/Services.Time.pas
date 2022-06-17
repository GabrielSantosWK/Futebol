unit Services.Time;

interface

uses
  System.SysUtils, System.Classes, Providers.Cadastro, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.ConsoleUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.PG, FireDAC.Phys.PGDef;

type
  TServiceTime = class(TProvidersCadastro)
    qryPesquisaid: TIntegerField;
    qryPesquisanome: TWideStringField;
    qryPesquisacategoria: TWideStringField;
    qryCadastroid: TIntegerField;
    qryCadastronome: TWideStringField;
    qryCadastrocategoria: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServiceTime: TServiceTime;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

end.
