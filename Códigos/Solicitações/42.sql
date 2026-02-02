--- 42.Foi solicitado pela diretoria saber quantas obras cada editora tem na biblioteca.

select ed.nome_editora, sum(e.quantidade_livro_total) as quantidade_livro_por_editora
from estoque e
inner join obra o on o.id_obra = e.id_obra
inner join editora ed on ed.id_editora = o.id_editora
group by ed.nome_editora