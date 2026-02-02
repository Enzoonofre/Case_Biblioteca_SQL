-- 5. A Diretoria solicitou uma pesquisa sobre devolução de livros entre as datas 29/03/2012 a 02/02/2013 (lista ou contagem?)
-- LISTA
SELECT d.*, f.nome_funcionario
FROM devolucao d inner join funcionario f on d.ID_funcionario = f.ID_funcionario
where d.data_devolucao between '2012-03-29' AND '2013-02-02'