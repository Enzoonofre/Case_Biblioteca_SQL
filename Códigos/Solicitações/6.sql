-- 6. A Gerência solicitou uma pesquisa para saber quais reservas de livros que foram feitas com data maior  ou 
-- igual a 18/08/2011 que ainda possuem o status de “reservado”.

SELECT *
FROM reserva 
where (data_reserva >= '2011-08-18' AND status_livro = 'Reservado')
-- order by data_reserva