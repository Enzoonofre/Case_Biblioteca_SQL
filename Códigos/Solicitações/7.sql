-- A área de RH solicitou uma pesquisa para saber quais devoluções de livros  foram feitas antes de 
--- 29/03/2012.

SELECT * 
FROM devolucao
where data_devolucao < '2012-03-29'
