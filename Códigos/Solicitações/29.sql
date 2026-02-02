-- 29.A Gerência solicitou uma lista de todos os livros com os nomes dos autores, nomes das editoras e a quantidade de livros em estoque.

select o.titulo_obra, a.nome_autor, e.nome_editora, est.quantidade_livro_total
from obra o
inner join editora e on e.id_editora = o.id_editora
inner join autor a on o.id_autor = a.id_autor
inner join estoque est on est.id_obra = o.id_obra
