-- Query 50: A diretoria pediu que fosse feito uma analise do estoque, apresentando uma lista com todos os livros que já foram reservados e emprestados e, mostrar quantos estão disponíveis classificados por Gênero

-- lista com todos os livros que já foram emprestados e reservados

select o.genero, o.titulo_obra, es.quantidade_livro_total as estoque_total, es.quantidade_livro_disponivel as disponivel,    
(select count(*) -- conta qnts emprestimos livros ja teve
from emprestimo emp 
where emp.id_obra = o.id_obra) as total_emprestados,
(select count(*) -- conta qnts reservas livros ja teve
from reserva res 
where res.id_obra = o.id_obra) as total_reservados
from obra o
inner join estoque es on o.id_obra = es.id_obra
order by o.genero, o.titulo_obra


-- quantos disponiveis por genero
select o.genero, SUM(e.Quantidade_livro_disponivel) AS Total_Disponivel
from Obra o
inner join Estoque e on o.ID_Obra = e.ID_Obra
group by o.Genero
order by Total_Disponivel desc;
