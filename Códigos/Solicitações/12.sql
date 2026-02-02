-- 12.A área de RH precisa identificar a quantidade total dos empréstimos feitos por cada funcionário ativos.

select f.nome_funcionario, count(e.ID_emprestimo) as total_emprestimos_por_funcionario
from emprestimo e
inner join funcionario f on f.ID_funcionario = e.ID_funcionario
where f.data_demissao is null
group by f.nome_funcionario
