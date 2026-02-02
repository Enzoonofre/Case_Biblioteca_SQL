-- 16. A Biblioteca recebeu a visita de um grupo de alunos, mas após a visita foi verificado desaparecimento de 
-- três livros, as obras que sumiram do acervo foram ‘Filho Nativo’, ‘Vidas Secas’ e ‘Dom Casmurro’, com isto 
-- será necessária a alteração da quantidade de livros no estoque de cada obra.

UPDATE estoque e
inner join obra o on o.ID_obra = e.ID_obra
SET e.quantidade_livro_total = e.quantidade_livro_total - 1
WHERE o.titulo_obra IN ('Filho Nativo', 'Vidas Secas', 'Dom Casmurro');

UPDATE estoque e
inner join obra o on o.ID_obra = e.ID_obra
SET e.quantidade_livro_disponivel = e.quantidade_livro_disponivel - 1
WHERE o.titulo_obra IN ('Filho Nativo', 'Vidas Secas', 'Dom Casmurro');