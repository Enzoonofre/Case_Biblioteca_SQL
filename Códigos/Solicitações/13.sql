-- Query 13: A Diretoria identificar as obras com os maiores números de publicações agrupados por genero
select genero, sum(numero_publicacao) as total_publicações
from obra 
group by genero
order by sum(numero_publicacao) desc