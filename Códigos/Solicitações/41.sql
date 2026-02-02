-- 41. Hoje é aniversario da biblioteca e para comemorar foram comprados presentes a todos os usuários que 
-- foram os primeiros a utilizar a biblioteca, o gerente Carlos mendes pediu a relação da primeira pessoa  a 
-- reservar,  pegar emprestado e devolver um livro e suas respectivas informações para que possa ser 
-- entrado em contato com ele



(select 'Primeira reserva',u.*
from reserva r
inner join usuario u on u.id_usuario = r.id_usuario
order by data_reserva asc
limit 1)
union all
(select 'Primeiro emprestimo', u.*
from emprestimo e
inner join usuario u on u.id_usuario = e.id_usuario
order by e.data_emprestimo asc
limit 1)
union all
(select 'Primeira devolução', u.*
from usuario u
inner join emprestimo e on u.id_usuario = e.id_usuario
inner join devolucao d on d.id_emprestimo = e.id_emprestimo
order by d.data_devolucao asc
limit 1)