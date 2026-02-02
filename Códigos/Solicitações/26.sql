-- 26.A área de RH solicitou a lista de todos usuários que fizeram empréstimo com o dia de entrega igual 21/08/2011.

select u.*
from usuario u
inner join emprestimo e on e.id_usuario = u.id_usuario
where e.data_entrega = '2011-08-21'