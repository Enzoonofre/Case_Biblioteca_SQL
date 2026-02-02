-- 8.A Gerência solicitou uma pesquisa para saber quais obras existem no acervo que são diferentes dos títulos das obras ‘O Conde de Monte Cristo’ e ‘Filhos e Amantes’

SELECT * 
FROM obra
where titulo_obra not in ('O Conde de Monte Cristo', 'Filhos e Amantes')
