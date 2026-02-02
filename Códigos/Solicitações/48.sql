-- 48.Carlos pediu que seja feita uma pesquisa informando de todos os usuários que tem cadastro na biblioteca e que nunca levaram livros mostrar o nome de todos em Maiúsculas
select u.ID_usuario, upper(u.nome_usuario)
from usuario u
where u.id_usuario not in (select id_usuario from emprestimo);