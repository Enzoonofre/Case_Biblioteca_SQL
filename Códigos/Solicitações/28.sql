-- 28. A área de RH solicitou a lista de todos os funcionários separados por ativos ou não, seus respectivos 
-- cargos e salários

select f.nome_funcionario, f.id_funcionario, case when f.data_demissao is not null then "Não Ativo" else "ativo" end as status_funcionario,
c.nome_cargo, c.salario
from funcionario f
inner join cargo c on c.id_cargo = f.id_cargo
order by salario