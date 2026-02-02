-- 40.O financeiro solicitou o levantamento da informação de quando as usuárias Emily Mall e Whitney Cinse pegaram livros emprestados, quais foram os livros e seus respectivos valores unitários
select e.ID_emprestimo,e.ID_usuario , u.nome_usuario, u.id_usuario,o.id_obra, o.titulo_obra, o.valor_unitario
from emprestimo e
inner join usuario u on u.id_usuario = e.id_usuario
inner join obra o on o.id_obra = e.id_obra
where u.nome_usuario in ('Emily Mall','Whitney Cinse')