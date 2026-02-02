-- Query 57: Foi solicitado apresentarmos quais as 5 obras que tiveram menos publicações e as 5 de maior, ainda, mostrar qual o autor, editora, nome do livro e quantidade de publicações em ordem decrescente


select a.nome_autor, o.titulo_obra, o.numero_publicacao
from obra o 
inner join autor a on a.id_autor = o.id_autor
order by o.numero_publicacao -- desc/asc
-- limit 5