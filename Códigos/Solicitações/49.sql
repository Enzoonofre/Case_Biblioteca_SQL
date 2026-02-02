-- 49.A recepção pediu para verificar quais os usuários que já pegaram mais de 3 livros, e em caso positivo, mostrar nomes e quais livros, ordenando pelo CEP (crescente).


select id_usuario, count(*)
from emprestimo
group by id_usuario
order by count(*) desc

-- caso desse positivo

SELECT 
    u.nome_usuario, 
    o.titulo_obra, 
    u.CEP
FROM usuario u
INNER JOIN emprestimo e ON u.id_usuario = e.id_usuario
INNER JOIN obra o ON e.id_obra = o.id_obra
WHERE u.id_usuario IN (
    SELECT id_usuario 
    FROM emprestimo 
    GROUP BY id_usuario 
    HAVING COUNT(*) > 3
)
group by u.nome_usuario, o.titulo_obra, u.CEP
ORDER BY u.CEP ASC