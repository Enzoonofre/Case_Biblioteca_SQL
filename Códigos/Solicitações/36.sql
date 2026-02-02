-- 36. A Recepção solicitou uma lista  como todos os funcionários da Biblioteca com código, nome, e 
-- departamento, classificado pelo nome do funcionário e que não emprestaram nenhum livro.

select  f.ID_funcionario, f.nome_funcionario, d.nome_departamento
from funcionario f
inner join departamento d on d.id_departamento = f.id_departamento
left join emprestimo e on e.id_funcionario = f.id_funcionario
where e.id_funcionario is null
order by f.nome_funcionario


