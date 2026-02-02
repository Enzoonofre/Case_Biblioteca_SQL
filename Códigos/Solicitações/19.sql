-- 19.A Recepção recebeu a informação que existem dois usuários duplicados na base, será necessária a exclusão de um desses registros.

-- Como o CPF é unico, considerei que usuarios duplicados teriam o mesmo nome(sei que é errado, deve ser feito por CPF, entretanto, é so mudar a consulta abaixo pra pegar o CPF)
-- caso a tabela usuário considere que CPF não é unico e você consiga insirir mais de um usuario com o mesmo CPF é so mudar a consulta pra buscar o CPF do usuario

DELETE FROM usuario 
WHERE nome_usuario = (select nome_usuario
from(select nome_usuario
from usuario
group by nome_usuario
order by count(*) desc
limit 1) as tab_temp)
ORDER BY ID_usuario DESC
LIMIT 1;

DELETE FROM usuario 
WHERE nome_usuario = (select nome_usuario
from(select nome_usuario
from usuario
group by nome_usuario
order by count(*) desc
limit 1) as tab_temp)
ORDER BY ID_usuario DESC
LIMIT 1;