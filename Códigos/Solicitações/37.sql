-- Query 37: A Biblioteca solicitou uma lista que exiba a quantidade de logradouros de usuários agrupados por número do CEP.

select cep, count(logradouro) as logradouro_por_cep
from usuario
group by cep