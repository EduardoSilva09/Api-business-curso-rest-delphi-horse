program business;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  Horse,
  Horse.JWT,
  System.JSON,
  Horse.Jhonson,
  Horse.OctetStream,
  Horse.HandleException,  
  Providers.Connection in 'src\providers\Providers.Connection.pas' {ProvidersConnection: TDataModule},
  Providers.Cadastro in 'src\providers\Providers.Cadastro.pas' {ProvidersCadastro: TDataModule},
  Controller.Produto in 'src\controllers\Controller.Produto.pas',
  Services.Produto in 'src\services\Services.Produto.pas' {ServiceProduto: TDataModule},
  Controller.Cliente in 'src\controllers\Controller.Cliente.pas',
  Services.Cliente in 'src\services\Services.Cliente.pas' {ServiceCliente: TDataModule},
  Services.Pedido in 'src\services\Services.Pedido.pas' {ServicePedido: TDataModule},
  Controller.Pedido in 'src\controllers\Controller.Pedido.pas',
  Services.Pedido.Item in 'src\services\Services.Pedido.Item.pas' {ServicePedidoItem: TDataModule},
  Controller.Pedido.Item in 'src\controllers\Controller.Pedido.Item.pas',
  Services.Usuario in 'src\services\Services.Usuario.pas' {ServiceUsuario: TDataModule},
  Controller.Usuario in 'src\controllers\Controller.Usuario.pas';

begin
  THorse
  .Use(Jhonson())
  .Use(HandleException)
  .Use(OctetStream)
  .Use(HorseJWT('curso-rest-horse'));
  
  Controller.Produto.Registry;
  Controller.Cliente.Registry;
  Controller.Pedido.Registry;
  Controller.Pedido.Item.Registry;
  Controller.Usuario.Registry;

  THorse.Listen(9000);

end.
