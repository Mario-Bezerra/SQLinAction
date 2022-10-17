#--------------------- CLIENTES -----------------------------
/* drop procedure adicionarCliente
DELIMITER $$
 create procedure adicionarCliente(IN nome varchar(45), emailCliente varchar(45), telefoneCliente varchar(45))
 begin
   insert into clientes(nomeCliente, emailCliente, telefoneCliente) values (nome, emailCliente, telefoneCliente);
 end$$
DELIMITER ; 

call adicionarCliente('Vilson Moura', 'vilson@gmail.com', '479999999'); */


/* drop procedure  removerCliente
DELIMITER $$
 create procedure removerCliente(IN idCliente int)
 begin
   delete from pedidos where pedidos.cliente_id = idCliente;
   delete from clientes where idclientes = idCliente;
 end$$
DELIMITER ;
call removerCliente(1); 
select * from clientes */

/* DELIMITER $$
 create procedure alterarNomeCliente(IN idCliente int, in nome varchar(45))
 begin
   update clientes set nomeCliente = nome where idclientes = idCliente;
 end$$
DELIMITER ;
call alterarNomeCliente(1, 'Roberto');
select * from clientes */

/* DELIMITER $$
 create procedure alterarEmailCliente(IN idCliente int, in email varchar(45))
 begin
   update clientes set emailCliente = email where idclientes = idCliente;
 end$$
DELIMITER ;
call alterarEmailCliente(1, 'roberto@gmail.com');
select * from clientes */


/* DELIMITER $$
 create procedure alterarTelefoneCliente(IN idCliente int, in telefone varchar(45))
 begin
   update clientes set telefoneCliente = telefone where idclientes = idCliente;
 end$$
DELIMITER ; */
#--------------------------------- FIM CLIENTE -----------------------------

#--------------------------------- PRODUTOS -------------------------------- 
/* DELIMITER $$
 create procedure alterarNomeProduto(IN produtoID int, in novoNome varchar(45))
 begin
   update produtos set nomeProduto = novoNome where id_Produtos = produtoID;
 end$$
DELIMITER ;
call alterarNomeProduto(1, 'Geladeira uma porta');
select * from produtos */

/* DELIMITER $$
 create procedure alterarPrecoProduto(IN produtoID int, in novoPreco double)
 begin
   update produtos set preco = novoPreco where id_Produtos = produtoID;
 end$$
DELIMITER ; */

/* DELIMITER $$
 create procedure alterarEstoque(IN produtoID int, in lojaID int, in qtd int, in operacaoRetirada boolean)
 begin
	if operacaoRetirada = true then
	   update produto_estoque set quantidade = quantidade - qtd where 
	   produto_estoque.produtos_id = produtoID and produto_estoque.loja_id = lojaID;
	end if;
    if operacaoRetirada = false then
	   update produto_estoque set quantidade = quantidade + qtd where 
	   produto_estoque.produtos_id = produtoID and produto_estoque.loja_id = lojaID;
	end if;
 end$$
DELIMITER ;

call alterarEstoque(3, 3, 2 , false);
select * from produto_estoque */

/* DELIMITER $$
 create procedure inserirProduto(in nomeProduto double, in preco double, in categoriaId int, in marcaId int)
 begin
		INSERT INTO `produtos`(`nomeProduto`,`preco`,`produto_id_Categoria`,`produto_id_Marca`)
		VALUES (nomeProduto, preco, categoriaId, marcaId);
 end$$
DELIMITER ; */

/* drop procedure deletarProduto
 DELIMITER $$
 create procedure deletarProduto(in produtoID int)
 begin
		delete from itens_venda where itens_venda.produto_id = produtoID;
		delete from produto_estoque where produto_estoque.produtos_id = produtoID;
		delete from produtos where produtos.id_Produtos = produtoID;
 end$$
DELIMITER ;

call deletarProduto(1) */


