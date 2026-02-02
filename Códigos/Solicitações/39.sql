-- 39. Foi solicitado a busca de informações de todas as obras que foram reservadas no dia 18/08/11 as 15:00 e 
-- o nome do responsável pela reserva.

select r.ID_reserva, r.ID_funcionario, f.nome_funcionario, r.ID_obra, o.titulo_obra, r.data_reserva, r.hora_reserva
from reserva r
inner join obra o on o.id_obra = r.id_obra
inner join funcionario f on f.id_funcionario = r.id_funcionario
where r.hora_reserva = '15:00:00' and r.data_reserva = '2011-08-18'

