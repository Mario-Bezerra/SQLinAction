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

 /* DELIMITER $$
 create procedure deletarPedido(in pedidoId int)
 begin
		delete from pedidos where pedidos.id_pedidos = pedidoId;
 end$$
DELIMITER ; 
call deletarPedido(1);
*/

/* DELIMITER $$
 create procedure inserirPedido(in clienteId int, in lojaId int)
 begin
		insert into pedidos(cliente_id, loja_id_Loja) values (clienteId, lojaId);
 end$$
DELIMITER ; 

call inserirPedido(5, 8); */


/* drop procedure alterarPedido
DELIMITER $$
 create procedure alterarPedido(in clienteNovo int, in lojaNova int, in idAlteração int)
 begin
		update pedidos set cliente_id = clienteNovo where pedidos.cliente_id = idAlteração;
        update pedidos set loja_id_Loja = lojaNova where pedidos.cliente_id = idAlteração;
 end$$
DELIMITER ; */

/*
drop procedure adicionarNacimento
DELIMITER $$
 create procedure adicionarNacimento(in idCliente int, in dataNascimento date)
 begin
		update clientes set clientes.nascimento = dataNascimento where clientes.idclientes = idCliente;
 end$$
DELIMITER ; 
call adicionarNacimento(1, '1999-03-05');
call adicionarNacimento(2, '1989-04-12');
call adicionarNacimento(3, '1979-05-31');
call adicionarNacimento(4, '1969-06-15');
call adicionarNacimento(5, '1988-07-12');
call adicionarNacimento(6, '1969-08-14');
call adicionarNacimento(7, '1993-09-06');
*/


/* 
drop procedure calcularIdade
DELIMITER $$
 create procedure calcularIdade(in idCliente int, out msg int)
 begin
		SELECT TIMESTAMPDIFF (YEAR,c.nascimento ,CURDATE()) as Idade into msg from clientes c where c.idclientes = idCliente;
 end$$
DELIMITER ; */

/* DELIMITER $$
 create procedure inserirLoja(in nomeCidade varchar(45))
 begin
		insert into loja(cidade) values (nomeCidade);
 end$$
DELIMITER ;

DELIMITER $$
 create procedure adicionarItemVenda(in produtoID int, in qtd int, in pedidoID int)
 begin
		insert into itens_loja(produto_id, quantidade, pedidoId) values (produtoID, qtd, pedidoID);
 end$$
DELIMITER ;

DELIMITER $$
 create procedure inserirCategoria(in nome varchar(45))
 begin
		insert into produto_categoria(nome_categoria) values (nome);
 end$$
DELIMITER ;

DELIMITER $$
 create procedure inserirMarca(in nome varchar(45))
 begin
		insert into produto_marca(nome_marca) values (nome);
 end$$
DELIMITER ;

DELIMITER $$
 create procedure removerMarca(in marcaID int)
 begin
		delete from produto_marca where id_Marca = marcaID;
 end$$
DELIMITER ;

DELIMITER $$
 create procedure removerCategoria(in categoriaID int)
 begin
		delete from produto_categoria where id_Categoria = categoriaID;
 end$$
DELIMITER ;

DELIMITER $$
 create procedure removerItemVenda(in itemNum int)
 begin
		delete from itens_venda where numItem = itemNum;
 end$$
DELIMITER ; */






