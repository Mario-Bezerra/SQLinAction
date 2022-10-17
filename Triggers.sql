/* drop trigger calculaSubTotal;
alter table itens_venda modify subTotal double;

 DELIMITER //
create trigger calculaSubTotal BEFORE INSERT On itens_venda
for each row 
	begin
	set NEW.subTotal = NEW.quantidade * (select p.preco from produtos p where
    p.id_Produtos = New.produto_id);
    end//  */
    
/* DELIMITER $$
create trigger tr_atualiza_estoque AFTER INSERT On itens_venda
for each row
	
	begin
		declare produtoID int;
        declare lojaID int;
        select p.id_Produtos into produtoID from produtos p where new.pedidoId = p.id_Produtos;
        select pe.loja_id_Loja into lojaID from pedidos pe where pe.id_pedidos = new.pedidoId;
		update produto_estoque set quantidade = quantidade - new.quantidade where 
        loja_id = lojaID and produtoID = produtos_id;
	end$$
DELIMITER ; */

#drop trigger tr_atualiza_estoque_on_delete
/* DELIMITER $$
create trigger tr_atualiza_estoque_on_delete AFTER DELETE On itens_venda
for each row
	
	begin
		declare produtoID int;
        declare lojaID int;
        select p.id_Produtos into produtoID from produtos p where old.pedidoId = p.id_Produtos;
        select pe.loja_id_Loja into lojaID from pedidos pe where pe.id_pedidos = old.pedidoId;
		update produto_estoque set quantidade = quantidade + old.quantidade where 
        loja_id = lojaID and produtoID = produtos_id;
	end$$
DELIMITER ; */

/* DELIMITER $$
create trigger tr_atualiza_estoqueProduto AFTER update On itens_venda
for each row
begin
	declare produtoID int;
	declare lojaID int;
	select p.id_Produtos into produtoID from produtos p where old.pedidoId = p.id_Produtos;
	select pe.loja_id_Loja into lojaID from pedidos pe where pe.id_pedidos = old.pedidoId;
	update produto_estoque set quantidade = quantidade + old.quantidade where 
        loja_id = lojaID and produtoID = produtos_id;
	update produto_estoque set quantidade = quantidade - new.quantidade where 
        loja_id = lojaID and produtoID = produtos_id;
end$$
DELIMITER ; */


/* INSERT INTO itens_venda
(`produto_id`,
`quantidade`,
`pedidoId`)
VALUES
(5 , 5 , 2); 
select * from itens_venda;
select * from produto_estoque;
select * from pedidos; */
#delete from itens_venda where itens_venda.numItem = 11;
#delete from itens_venda where itens_venda.numItem = 10;