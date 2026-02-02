-- Query 32: A Recepção solicitou uma lista com o código do livro, nome do livro cujo valor do livro seja maior que R$90,00

select o.id_obra, o.titulo_obra, o.valor_unitario
from obra o
where valor_unitario > 90
order by valor_unitario