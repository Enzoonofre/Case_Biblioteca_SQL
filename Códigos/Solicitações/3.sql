-- 3.A Gerência solicitou uma pesquisa para saber quais datas ocorreram empréstimos de livros e a quantidade emprestada. 
-- A consulta deverá retornar apenas um registro para cada data.


select data_emprestimo, count(*) as qtd_livros_emprestados
from emprestimo
group by data_emprestimo
order by count(*)