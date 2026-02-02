-- 52. A sociedade brasileira de editoras solicitou o levantamento para a biblioteca de qual são os 3 autores que 
-- tem mais livros lidos no ano de 2012 e 2013 e os 2 que tem menos obras lidas.

select a.nome_autor, count(e.id_emprestimo), a.nacionalidade
from autor a
inner join obra o on o.id_autor = a.id_autor
inner join emprestimo e on e.id_obra = o.id_obra
where e.data_emprestimo between '2012-01-01' and '2013-12-31' -- and a.nacionalidade in ('Brasileiro','Brasileira')
group by a.nome_autor, a.nacionalidade
order by count(e.id_emprestimo) -- asc/desc
-- limit 2/3