-- 55.Foi solicitado a criação de uma visão que traga todos os livros e o preço da editora Leya.

create view editora_leya as
select o.titulo_obra, o.valor_unitario, e.nome_editora
from obra o
inner join editora e on e.id_editora = o.id_editora
where e.nome_editora = 'Leya'
