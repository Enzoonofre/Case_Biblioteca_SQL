-- diminuir estoque quando um empréstimo é realizado

DELIMITER //
CREATE TRIGGER trg_baixa_estoque_emprestimo
AFTER INSERT ON emprestimo
FOR EACH ROW
BEGIN
    UPDATE estoque
    SET quantidade_livro_disponivel = quantidade_livro_disponivel - 1
    WHERE ID_estoque = NEW.ID_estoque AND ID_obra = NEW.ID_obra;
END //
DELIMITER ;

-- aumentar estoque quando um devolução é realizado

DELIMITER //
CREATE TRIGGER trg_repoe_estoque_devolucao
AFTER INSERT ON devolucao
FOR EACH ROW
BEGIN
    DECLARE v_id_estoque INT;
    DECLARE v_id_obra INT;

    -- Descobre qual livro foi devolvido consultando a tabela de emprestimo original
    SELECT ID_estoque, ID_obra INTO v_id_estoque, v_id_obra
    FROM emprestimo
    WHERE ID_emprestimo = NEW.ID_emprestimo;

    -- Atualiza o estoque
    UPDATE estoque
    SET quantidade_livro_disponivel = quantidade_livro_disponivel + 1
    WHERE ID_estoque = v_id_estoque AND ID_obra = v_id_obra;
END //
DELIMITER ;

-- TRIGGER PARA BLOQUEAR NOVO EMPRÉSTIMO CASO USUÁRIO ESTEJA COM ATRASO EM ALGUMA ENTREGA

DELIMITER $$

CREATE TRIGGER trg_bloquear_usuario_atrasado
BEFORE INSERT ON emprestimo
FOR EACH ROW
BEGIN
    IF fn_usuario_em_atraso(NEW.ID_usuario) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Usuário possui empréstimo em atraso';
    END IF;
END$$

DELIMITER ;

SHOW TRIGGERS;