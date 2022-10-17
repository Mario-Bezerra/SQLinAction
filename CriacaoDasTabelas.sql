/* CREATE TABLE IF NOT EXISTS `produto_categoria` (
  `id_Categoria` INT NOT NULL AUTO_INCREMENT,
  `nome_categoria` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`id_Categoria`));

CREATE TABLE IF NOT EXISTS `produto_marca` (
  `id_Marca` INT NOT NULL AUTO_INCREMENT,
  `nome_marca` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_Marca`));

CREATE TABLE IF NOT EXISTS `produtos` (
  `id_Produtos` INT NOT NULL AUTO_INCREMENT,
  `nomeProduto` VARCHAR(45) NOT NULL,
  `preco` double NOT NULL,
  `produto_id_Categoria` INT NOT NULL,
  `produto_id_Marca` INT NOT NULL,
  PRIMARY KEY (`id_Produtos`),
  CONSTRAINT `fk_produto_categoria`
    FOREIGN KEY (`produto_id_Categoria`)
    REFERENCES `produto_categoria` (`id_Categoria`),
  CONSTRAINT `fk_produto_marca`
    FOREIGN KEY (`produto_id_Marca`)
    REFERENCES `produto_marca` (`id_Marca`)
); 


CREATE TABLE IF NOT EXISTS `loja` (
  `id_Loja` INT NOT NULL auto_increment,
  `cidade` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_Loja`));


CREATE TABLE IF NOT EXISTS `produto_estoque` (
  `quantidade` INT NOT NULL,
  `produtos_id` INT NOT NULL,
  `loja_id` INT NOT NULL,
  PRIMARY KEY (`produtos_id`, `loja_id`),
  CONSTRAINT `fk_produto_id`
    FOREIGN KEY (`produtos_id`)
    REFERENCES `produtos` (`id_Produtos`),
  CONSTRAINT `fk_loja_id`
    FOREIGN KEY (`loja_id`)
    REFERENCES `loja` (`id_Loja`));


CREATE TABLE IF NOT EXISTS `clientes` (
  `idclientes` INT NOT NULL AUTO_INCREMENT,
  `nomeCliente` VARCHAR(45) NOT NULL,
  `emailCliente` VARCHAR(45) NOT NULL,
  `telefoneCliente` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idclientes`));
  
CREATE TABLE IF NOT EXISTS `pedidos` (
  `id_pedidos` INT NOT NULL AUTO_INCREMENT,
  `cliente_id` INT NOT NULL,
  `loja_id_Loja` INT NOT NULL,
  PRIMARY KEY (`id_pedidos`),
  CONSTRAINT `fk_cliente_id`
    FOREIGN KEY (`cliente_id`)
    REFERENCES `clientes` (`idclientes`),
  CONSTRAINT `fk_pedidos_loja`
    FOREIGN KEY (`loja_id_Loja`)
    REFERENCES `loja` (`id_Loja`)
);

CREATE TABLE IF NOT EXISTS `itens_venda` (
  `produto_id` INT NOT NULL,
  `quantidade` INT NOT NULL,
  `subTotal` DOUBLE NOT NULL,
  `pedidoId` INT NOT NULL,
  PRIMARY KEY (`pedidoId`),
  CONSTRAINT `fk_produto_id_itens_venda`
    FOREIGN KEY (`produto_id`)
    REFERENCES `produtos` (`id_Produtos`),
  CONSTRAINT `fk_pedido_id`
    FOREIGN KEY (`pedidoId`)
    REFERENCES `pedidos` (`id_pedidos`)); */
    
#alter table pedidos add column precoTotal double;