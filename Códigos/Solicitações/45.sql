-- 45. Chegou na biblioteca uma mensagem urgente da Camila pedindo um relatório contendo a informação de 
-- todos os livros que foram emprestados mais de uma vez nos anos de 2011 a 2013 agrupados pelo nome 
-- do livro.


select o.id_obra, o.titulo_obra, count(e.id_emprestimo)
from obra o
inner join emprestimo e on e.id_obra = o.id_obra
where e.data_emprestimo between '2011-01-01' and '2013-12-31'
group by o.id_obra, o.titulo_obra
having count(e.id_emprestimo) > 1
order by count(e.id_emprestimo) desc
