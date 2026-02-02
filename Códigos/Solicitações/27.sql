-- Query 27: O Financeiro solicitou a lista de todas as obras que tiveram data de publicação menor que 04-03-2013, sua respectiva quantidade e o seu valor unitário
select o.ID_obra, o.titulo_obra , o.valor_unitario, o.data_publicacao, e.quantidade_livro_total
from obra o
inner join estoque e on e.id_obra = o.id_obra
where o.data_publicacao < '2013-03-04'
order by data_publicacao desc