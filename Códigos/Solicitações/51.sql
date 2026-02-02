-- 51.Foi solicitada a pesquisa de qual a hora que a biblioteca tem mais movimento e, também, qual o horário de menor movimentação, faça a avaliação de todas as horas de devolução, empréstimo e reserva.

select horario, count(*) as total_movimentacoes
from (
    select hora_devolucao as horario from devolucao
    union all
    select hora_emprestimo as horario from emprestimo
    union all
    select hora_reserva as horario from reserva
) as movimentacao_geral
group by horario
order by total_movimentacoes desc;
