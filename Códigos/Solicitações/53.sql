-- 53.Crie uma tabela que exiba uma lista de todos livros por funcionario, o total de empréstimos e devoluções que cada um atendeu.


select o.titulo_obra, f.nome_funcionario, count(e.id_emprestimo) as contagem_emprestimo, count(d.id_devolucao) as contagem_devolucao
from obra o 
inner join emprestimo e on e.id_obra = o.id_obra
inner join devolucao d on e.id_emprestimo = d.id_emprestimo
inner join funcionario f on f.id_funcionario = e.id_funcionario
group by o.titulo_obra, f.nome_funcionario