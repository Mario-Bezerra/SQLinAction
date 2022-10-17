/*  insert into produto_categoria(nome_categoria) values 
('geladeiras'),
('fogoes'),
('maquinas de lavar'),
('armarios'),
('camas'),
('garrafas'),
('xicaras'),
('mouses'),
('celulares'),
('televisoes'); */
#select * from produto_categoria

 /* insert into produto_marca(nome_marca) values 
('brastemp'),
('eletrolux'),
('consul'),
('linhares'),
('king'),
('tupperware'),
('oxford'),
('logitech'),
('motorola'),
('samsung'); */
#select * from produto_marca

 /* INSERT INTO `produtos`(`nomeProduto`,`preco`,`produto_id_Categoria`,`produto_id_Marca`)
VALUES
('Geladeira duas portas', 2.500 , 1 , 1),
('Fogão 5 bocas', 1500, 2 , 2),
('Maquina de lava 16kg', 3000, 3 , 3),
('Armario 6 portas', 1000, 4 , 4),
('Cama king size', 1200, 5 , 5),
('Garrafa termica', 200, 6 , 6),
('Xicara 500ml', 100, 7 , 7),
('Mouse gamer', 500, 8 , 8),
('Motorola 11g', 3.500, 9 , 9),
('Televisao 50" ', 4500, 10 , 10); */
#select * from produtos 

/* insert into loja(cidade) values 
('Sao Paulo'),
('Rio De Janeiro'),
('Blumenau'),
('Salvador'),
('Florianopolis'),
('Belo Horizonte'),
('Recife'),
('Linhares'),
('Altamira'),
('Anapu'),
('Souzel'); */
#select * from loja

/* INSERT INTO `produto_estoque`(`quantidade`,`produtos_id`,`loja_id`)
VALUES
(10 , 1, 1),
(10 , 2, 2),
(10 , 3, 3),
(10 , 4, 4),
(10 , 5, 5),
(10 , 6, 6),
(10 , 7, 7),
(10 , 8, 8),
(10 , 9, 9),
(10 , 10, 10); */
#select * from produto_estoque

/* INSERT INTO `classest-system`.`clientes`(`nomeCliente`,`emailCliente`,`telefoneCliente`)
VALUES
('Mario','mario@gmail','1234567910'),
('Lorenzo','Lorenzo@gmail','1234567910'),
('Vicenzo','Vicenzo@gmail','1234567910'),
('Osmario','Osmario@gmail','1234567910'),
('Noenia','Noenia@gmail','1234567910'),
('Mesolan','Mesolan@gmail','1234567910'),
('Enio','Enio@gmail','1234567910'),
('Patricia','Patricia@gmail','1234567910'),
('Jose','Jose@gmail','1234567910'),
('Joao','Joao@gmail','1234567910'); */
#select * from clientes

/* INSERT INTO `pedidos`(`cliente_id`,`loja_id_Loja`)
VALUES (1 , 1),
(2 , 2),
(3, 3),
(4 , 4),
(5 , 5),
(6 , 6),
(7 , 7),
(8 , 8),
(9 , 9),
(10 , 10); */
#select * from pedidos

#drop trigger calculaSubTotal;
#alter table itens_venda modify subTotal double;

/* DELIMITER //
create trigger calculaSubTotal BEFORE INSERT On itens_venda
for each row 
	begin
	set NEW.subTotal = NEW.quantidade * (select p.preco from produtos p where
    p.id_Produtos = New.produto_id);
    end//  */
    

 /* INSERT INTO `classest-system`.`itens_venda`
(`produto_id`,
`quantidade`,
`pedidoId`)
VALUES
(1 , 10 , 1 ),
(2 , 10 ,2 ),
(3 , 10 ,3 ),
(4 , 10 ,4 ),
(5 , 10 ,5 ),
(6 , 10 ,6 ),
(7 , 10 ,7 ),
(8 , 10 ,8 ),
(9 , 10 ,9 ),
(10 , 10 ,10 ); */




