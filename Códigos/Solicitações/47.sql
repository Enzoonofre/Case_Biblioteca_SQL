-- 47. Barbara do financeiro pediu para verificar qual a media do salario dos 
-- funcionários e quem são os que 
-- ganham mais do que a media em cada departamento

-- quem ganha mais que a media de salario por funcionario
select (select avg(c.salario) from cargo c inner join funcionario f on f.id_cargo = c.id_cargo) as salario_medio, 
f.nome_funcionario, c.nome_cargo, c.salario, d.nome_departamento
from cargo c 
inner join funcionario f on f.id_cargo = c.id_cargo
inner join departamento d on d.id_departamento = f.id_departamento
where c.salario > (select avg(c.salario) from cargo c inner join funcionario f on f.id_cargo = c.id_cargo)

-- media de salario por departamento
select avg(c.salario), d.nome_departamento
from cargo c 
inner join funcionario f on f.id_cargo = c.id_cargo
inner join departamento d on d.id_departamento = f.id_departamento
group by d.nome_departamento

-- quem ganha mais que a media de salario por departamento
select 
    f.nome_funcionario, 
    d.nome_departamento, 
    c.salario
from funcionario f
inner join cargo c on f.id_cargo = c.id_cargo
inner join departamento d on f.id_departamento = d.id_departamento
where c.salario > (
    -- Esta é a sua subquery adaptada para ser correlacionada
    select avg(c2.salario)
    from funcionario f2
    inner join cargo c2 on f2.id_cargo = c2.id_cargo
    where f2.id_departamento = f.id_departamento
)