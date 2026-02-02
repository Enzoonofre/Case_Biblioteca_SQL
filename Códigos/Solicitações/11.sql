-- 11.O Financeiro precisa saber qual é o livro que possui a menor quantidade em estoque e quantas vezes ele
-- foi emprestado para que seja feita uma analise para compra de mais alguns exemplares.

select o.titulo_obra, min(e.quantidade_livro_total) as quantidade_em_estoque, count(em.ID_emprestimo) as quantidade_emprestada
from estoque e
inner join emprestimo em on em.ID_obra = e.ID_obra
inner join obra o on o.ID_obra = e.ID_obra
GROUP BY o.titulo_obra, e.quantidade_livro_total
order by e.quantidade_livro_total asc
limit 1;