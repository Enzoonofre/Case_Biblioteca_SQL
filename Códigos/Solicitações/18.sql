-- Query 18: Gerência solicitou uma consulta para verificar se existe duplicidade de usuários no Banco de Dados
select count(*), nome_usuario
from usuario
group by nome_usuario
order by count(*) desc