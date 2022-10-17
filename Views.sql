/* CREATE VIEW itensVendasEPedidos AS
SELECT p.cliente_id , p.loja_id_Loja ,iv.subTotal 
from pedidos p
inner join itens_venda iv
where p.id_pedidos = iv.pedidoId
order by p.id_pedidos asc; */
#select * from itensVendasEPedidos

/* create view produtosEMarcas as
select p.nomeProduto , p.preco, m.nome_marca 
from produtos p
inner join produto_marca m 
where p.produto_id_Marca = m.id_Marca;
select * from produtosEMarcas */

/*create view produtosEMarcasECategorias as
select p.nomeProduto , p.preco, m.nome_marca, c.nome_categoria 
from produtos p
inner join produto_marca m 
inner join produto_categoria c
where p.produto_id_Marca = m.id_Marca and p.produto_id_Categoria = c.id_Categoria
order by p.preco;
select * from produtosEMarcasECategorias*/


#drop view dadosClientePedidoLoja
/*create view dadosClientePedidoLoja AS
select c.nomeCliente, c.emailCliente , p.id_pedidos , l.cidade 
from clientes c
inner join pedidos p 
inner join loja l
where c.idclientes = p.cliente_id and p.loja_id_Loja = l.id_Loja
order by l.cidade asc; 
select * from dadosClientePedidoLoja */

/* create view ClientesPedidoItensProdutoMarca as
select c.nomeCliente, p.id_pedidos , iv.subTotal, pd.nomeProduto , pm.nome_marca from clientes c
inner join pedidos p
inner join itens_venda iv
inner join produtos pd
inner join produto_marca pm
where c.idclientes = p.cliente_id and p.id_pedidos = iv.pedidoId and iv.produto_id = pd.id_Produtos and pd.produto_id_Marca = pm.id_Marca
order by iv.subTotal;
select * from ClientesPedidoItensProdutoMarca */

/* drop view itensPedido;
create view itensPedido as
select iv.produto_id as ProdutoID, p.id_pedidos as PedidoId, p.loja_id_Loja as LojaID from itens_venda iv 
left join pedidos p on iv.pedidoId = p.id_pedidos; 
select * from itensPedido */

/* create view produtoMarcasECategorias as
select p.nomeProduto , pm.nome_marca from produtos p
right join produto_marca pm on pm.id_Marca = p.produto_id_Marca;
select * from produtoMarcasECategorias */

