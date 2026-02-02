-- 14. A Funcionária Alice Meire solicitou a alteração da obra ‘Discurso do Método’ para o gênero Político.

UPDATE obra
SET genero = 'Político'
WHERE ID_obra = ( SELECT ID_obra FROM (
		SELECT ID_obra
        FROM obra 
        WHERE titulo_obra = 'Discurso do Método'
    ) AS tabela_temporaria
);