-- 24.A Diretoria solicitou a lista de todos os livros que já foram emprestados mas foram entregues com atraso e os respectivos nomes dos funcionários que fizeram os empréstimos.
select o.titulo_obra, f.nome_funcionario
from obra o
inner join emprestimo emp on emp.id_obra = o.id_obra
inner join devolucao d on d.id_emprestimo = emp.id_emprestimo
inner join funcionario f on f.id_funcionario = d.id_funcionario
where d.multa_atraso = 'SIM'