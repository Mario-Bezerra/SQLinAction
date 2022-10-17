select * from produtos p where p.preco between 500 and 1000;
select * from clientes c where c.nomeCliente like '%a' or c.nomeCliente like 'L%';
select * from produtos p where p.preco > 1000 order by p.preco asc;
select count(*) from clientes c where c.telefoneCliente like '%456%' 
having count(length(c.telefoneCliente)) > 5;
select min(p.preco) from produtos p;
select max(p.preco) from produtos p;


SELECT p.preco,
CASE
    WHEN p.preco < 1000 THEN 'menor que 1000'
    WHEN p.preco between 1000 and 2000 THEN 'menor que 2000'
    WHEN p.preco > 2000 THEN 'Maior que 2000'
    WHEN p.preco > 5000 THEN 'Idoso'
    ELSE 'preco indefinido'
END as Preco from produtos p  order by p.preco;

SELECT  c.nomeCliente ,DATE_FORMAT(c.nascimento , "%d %M  %Y") as DataFormatada from clientes c;
