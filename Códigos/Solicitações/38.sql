--- 38.A Diretoria solicitou uma lista que exiba a quantidade de endereços agrupados por usuário.

SELECT 
    logradouro, 
    COUNT(ID_usuario) AS quantidade_usuarios
FROM usuario
GROUP BY logradouro
ORDER BY quantidade_usuarios DESC;