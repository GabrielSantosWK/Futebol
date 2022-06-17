program ServerLiga;
{$APPTYPE CONSOLE}
{$R *.res}
uses
  Horse,
  Horse.Jhonson,
  Horse.CORS,
  Horse.HandleException,
  Horse.OctetStream,
  Providers.Connection in 'src\providers\Providers.Connection.pas' {ProvidersConnection: TDataModule},
  Providers.Cadastro in 'src\providers\Providers.Cadastro.pas' {ProvidersCadastro: TDataModule},
  Controllers.Time in 'src\controllers\Controllers.Time.pas',
  Services.Time in 'src\services\Services.Time.pas' {ServiceTime: TDataModule},
  Services.Usuario in 'src\services\Services.Usuario.pas' {ServiceUsuario: TDataModule},
  Controllers.Usuario in 'src\controllers\Controllers.Usuario.pas';

begin
  THorse
    .Use(Jhonson())
    .Use(HandleException)
    .Use(OctetStream)
    .Use(CORS);
  Controllers.Time.Registry;
  Controllers.Usuario.Registry;
  THorse.Listen(9000);
end.
