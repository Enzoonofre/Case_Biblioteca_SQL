-- 54. A biblioteca quer fechar parceria com as editoras, e existem usuários que trabalham nas editoras 
-- facilitando esse contato, para tanto, verificar quais usuários possuem o mesmo endereço das editoras, 
-- informe seu nome, telefone e o nome da editora que trabalha.

select u.nome_usuario, u.logradouro, ed.nome_editora
from usuario u
inner join editora ed on u.logradouro = ed.logradouro;