-- 34. O Financeiro solicitou uma atualização da data de demissão da funcionária Alice Meire para o último dia do 
-- Mês que você se encontra atualmente.

update funcionario
set data_demissao = '2026-01-31'
where id_funcionario = (select id_funcionario from (select id_funcionario from funcionario where nome_funcionario = 'Alice Meire')as tab_temp)
