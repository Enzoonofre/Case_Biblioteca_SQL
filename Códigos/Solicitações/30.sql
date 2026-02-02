-- 30. A Diretoria solicitou a lista de todos os funcionários da Biblioteca com seus respectivos departamentos que 
-- tem idade entre 30 e 40 anos.

SELECT f.ID_funcionario, d.nome_departamento, f.nome_funcionario, f.data_admissao,
    TIMESTAMPDIFF(YEAR, f.data_admissao, '2026-01-12') AS anos_na_empresa,
    TIMESTAMPDIFF(YEAR, f.data_admissao, '2026-01-12') + 18 as minimo_idade_possivel
FROM funcionario f
inner join departamento d on d.id_departamento = f.id_departamento
where (f.data_demissao is null or f.data_demissao >= '2026-01-12') -- and TIMESTAMPDIFF(YEAR, f.data_admissao, '2026-01-12') + 18 <= 40