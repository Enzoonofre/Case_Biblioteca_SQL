-- 46.O Financeiro pediu para apresentar o valor médio dos livros e informar quais são os que estão abaixo dessa media, 
-- referente a devolução e empréstimo.
select o.id_obra, o.titulo_obra, o.valor_unitario ,(select sum(o.valor_unitario * e.quantidade_livro_total) / sum(e.quantidade_livro_total)from obra o inner join estoque e) as preço_medio_dos_livros
from obra o
inner join emprestimo e on e.id_obra = o.Id_obra
where o.valor_unitario > (select sum(o.valor_unitario * e.quantidade_livro_total) / sum(e.quantidade_livro_total)from obra o inner join estoque e)
group by o.titulo_obra, o.id_obra, o.titulo_obra
order by o.valor_unitario
