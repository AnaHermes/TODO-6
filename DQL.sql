-- Quais são os 3 produtos mais caros?
select idprodutos, descricao, max(preco) from produtos 
group by descricao 
order by max(preco) desc
limit 3; 

-- Quantas avaliações cada cliente realizou?
select nome, count(idprodutos) as qtd_avaliacoes from avaliacoes
group by nome
order by qtd_avaliacoes desc;

-- Qual a média das avaliações de cada produto?
select P.idprodutos, descricao, avg(nota) as media_avaliacoes from avaliacoes A
inner join produtos P on P.IdProdutos = A.IdProdutos
group by IdProdutos;

-- Qual a data de avaliação mais recente de cada produto?
select idProdutos, max(`data`) as mais_recente from avaliacoes
group by IdProdutos
order by idprodutos;

-- Quais as clientes cujo o nome se inicia com Joana?
select * from clientes
where nome like 'joana%';

-- Qual o produto que recebeu a menor avaliação?
select idprodutos, min(nota) as menor_avaliacao
from avaliacoes;

-- Quais são os produtos cuja a avaliação mais recente é anterior à 30 dias, liste-os como “Avaliação desatualizada”?
select idprodutos, 'Avaliação desatualizada'
from avaliacoes 
where data < DATE_ADD(CURDATE(), INTERVAL -30 DAY)
group by IdProdutos
order by IdProdutos;




