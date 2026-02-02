-- 20. O Financeiro solicitou a inserção do valor individual de cada obra. Crie um campo com o nome Valor_Livro
-- na tabela Obra. Defina o tipo de dados que poderá ser aceito e o valor de cada título.

alter table obra
add column valor_livro decima(10,2)

UPDATE obra 
SET valor_livro = valor_unitario
WHERE id > 0;