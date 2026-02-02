-- FUNCTION PARA CALCULAR MULTA

DELIMITER $$

CREATE FUNCTION fn_calcula_multa(
    data_entrega DATE,
    data_devolucao DATE,
    valor_diaria DECIMAL(10,2)
)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE dias INT;

    SET dias = DATEDIFF(data_devolucao, data_entrega);

    RETURN dias * valor_diaria;
END$$

DELIMITER ;

-- FUNCTION PARA RETORNAR SE USUÁRIO ESTÁ COM ATRASO EM ALGUMA ENTREGA

DELIMITER $$

CREATE FUNCTION fn_usuario_em_atraso(p_ID_usuario INT)
RETURNS BOOLEAN
DETERMINISTIC
BEGIN
    RETURN EXISTS (
        SELECT 1
        FROM emprestimo e
        LEFT JOIN devolucao d ON d.ID_emprestimo = e.ID_emprestimo
        WHERE e.ID_usuario = p_ID_usuario
          AND d.ID_emprestimo IS NULL
          AND CURDATE() > e.data_entrega
    );
END$$

DELIMITER ;