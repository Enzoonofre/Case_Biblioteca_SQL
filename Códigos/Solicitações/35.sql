-- 35.A Gerência solicitou uma lista de todas as Obras, que contenham a letra “C” ordenadas por gênero e que tenham data de publicação entre 2011 e 2013.

select * from obra
where lower(titulo_obra) like '%c%' AND data_publicacao between '2011-01-01' AND'2013-12-31'
