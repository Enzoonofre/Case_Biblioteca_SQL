-- Query 9: O Funcionário João Paulo solicitou uma pesquisa para saber quantas obras do gênero Ficção ’ existem no acervo

SELECT count(*) 
FROM obra
where genero = 'Ficção'