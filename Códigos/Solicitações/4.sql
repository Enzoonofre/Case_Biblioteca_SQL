-- Query 4: Empréstimos feitos pela recepcionista Alice Meire entre 08:00 e 09:00

select e.ID_emprestimo, f.nome_funcionario, e.ID_funcionario, e.data_emprestimo, e.hora_emprestimo
from emprestimo e
inner join funcionario f on f.ID_funcionario = e.id_funcionario
where f.nome_funcionario = 'Alice Meire' AND e.hora_emprestimo  BETWEEN '08:00:00' AND '09:00:00'