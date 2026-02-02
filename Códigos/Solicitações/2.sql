-- O Governador vai doar duzentos livros para a Biblioteca, mas só irá doar se a biblioteca tiver menos de 
-- 300 obras. O Gerente Márcio Tales solicitou que fosse feita a contagem de quantas obras a Biblioteca 
-- possui atualmente.


SELECT sum(quantidade_livro_total) as total_livro_estoque, sum(quantidade_livro_disponivel) as total_livro_disponivel
from estoque