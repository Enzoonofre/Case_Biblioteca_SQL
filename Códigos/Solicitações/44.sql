-- Query 44: Foi solicitado a informação de todos os usuários que morem em uma avenida, e ainda, que seja mostrado o nome do usuário, CPF e logradouro em ordem de CPF do maior para o menor
SELECT
  nome_usuario,
  CPF,
  logradouro
FROM usuario
WHERE logradouro LIKE 'Avenida %'
   OR logradouro LIKE 'Av. %'
ORDER BY CPF DESC;

select u.nome_usuario, u.logradouro, u.cpf
from usuario u
where lower(u.logradouro) like '%avenida%' or lower(u.logradouro LIKE 'av.%')
order by u.cpf desc