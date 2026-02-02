-- 31. O Financeiro solicitou a criação de uma visão que retorne o nome do livro, seu autor e o valor.

create view vw_relatorio_financeiro as
select 
    o.Titulo_obra, 
    a.Nome_autor, 
    o.Valor_unitario
from obra o
inner join autor a on o.ID_Autor = a.id_autor;

select * from vw_relatorio_financeiro
