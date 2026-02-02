-- 10. A Diretoria solicitou uma pesquisa para identificar qual o livro possuiu a maior quantidade em estoque, 
-- incluir respectiva editora e o respectivo autor.

SELECT a.nome_autor, ed.nome_editora, (SELECT max(quantidade_livro_total) from estoque) as quantidade_em_estoque
FROM estoque e
inner join obra o on o.ID_obra = e.ID_obra
inner join editora ed on o.ID_editora = ed.ID_editora
inner join autor a on a.ID_autor = o.ID_autor
where e.quantidade_livro_total = (SELECT max(quantidade_livro_total) from estoque)

