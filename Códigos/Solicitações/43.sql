/* 43.É fechamento referente ao mês de janeiro (hoje dia 03/02/2013) e a biblioteca está no vermelho, foi solicitado pelo financeiro que fosse feito um levantamento de todos os livros que não 
foram devolvidos, mostrando quantos dias de atraso e para cada dia foi dado uma multa de 5 reais, e mostrar o nome do usuário , livro emprestado e o total a receber pela biblioteca.*/
SELECT e.id_emprestimo, d.id_devolucao, e.data_emprestimo, u.nome_usuario, u.id_usuario, o.titulo_obra, DATEDIFF('2013-02-03', e.data_emprestimo) * 5 AS total_geral_a_receber
FROM emprestimo e
inner join obra o on o.id_obra = e.id_obra
inner join usuario u on u.id_usuario = e.id_usuario
LEFT JOIN devolucao d ON e.ID_Emprestimo = d.ID_Emprestimo
where (e.data_emprestimo < '2013-02-03') and (d.id_devolucao is null)
order by e.data_emprestimo