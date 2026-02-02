-- 56.A biblioteca foi comprar mais livros para aumentar seu acervo, mas a editora Saraiva aumentou em 16% o valor de seus livros, atualize os preços dos livros da editora na porcentagem designada.

update obra
set valor_unitario = 1.16 * valor_unitario
where id_editora = (select id_editora from(select id_editora from editora where nome_editora = 'Saraiva')as tab_temp)