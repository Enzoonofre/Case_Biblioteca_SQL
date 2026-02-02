-- 25. A Gerência solicitou a lista de todos os livros, cujos autores não são brasileiros, que já foram devolvidos e 
-- o valor total de cada livro.

select o.titulo_obra, a.nacionalidade, a.nome_autor, o.valor_unitario, count(d.ID_Devolucao) as Qtd_Devolucoes
from autor a
inner join obra o on o.ID_autor = a.id_autor
inner join emprestimo emp  ON o.ID_Obra = emp.ID_Obra
inner join devolucao d on emp.ID_Emprestimo = d.ID_Emprestimo
where a.nacionalidade not in ('brasileiro','brasileira')
group by o.titulo_obra, a.nacionalidade, a.nome_autor, o.valor_unitario