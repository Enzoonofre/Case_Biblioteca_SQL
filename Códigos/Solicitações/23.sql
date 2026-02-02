-- 23. A Diretoria solicitou a exclusão do campo Valor_Livro da tabela Obra pois, o pedido feito pelo Financeiro 
-- estava errado.

alter table obra
drop column valor_livro

