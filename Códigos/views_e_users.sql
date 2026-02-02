use biblioteca_leega;

-- ------------------------------------------------
-- VIEWS PARA FINANCEIRO
-- ------------------------------------------------

CREATE VIEW vw_obra_financeiro AS
SELECT ID_obra, titulo_obra, valor_unitario
FROM obra;

CREATE VIEW vw_emprestimo_financeiro AS
SELECT ID_emprestimo, ID_usuario, ID_obra, data_emprestimo, data_entrega
FROM emprestimo;

CREATE VIEW vw_devolucao_financeiro AS
SELECT d.ID_devolucao, d.ID_emprestimo, d.data_devolucao, d.multa_atraso
FROM devolucao d;

CREATE VIEW vw_funcionario_financeiro AS
SELECT ID_funcionario, nome_funcionario, ID_cargo
FROM funcionario;

-- ------------------------------------------------
-- CRIAÇÃO DE USUÁRIOS E ROLES
-- ------------------------------------------------

CREATE USER IF NOT EXISTS 'fabriolap'@'localhost' IDENTIFIED WITH
mysql_native_password BY 'pereira';

CREATE USER IF NOT EXISTS 'carlosm'@'localhost' IDENTIFIED WITH
mysql_native_password BY 'meireles';

CREATE USER IF NOT EXISTS 'adalbertoc'@'localhost' IDENTIFIED WITH
mysql_native_password BY 'cristovao';

CREATE USER IF NOT EXISTS 'camilap'@'localhost' IDENTIFIED WITH
mysql_native_password BY 'prado';

CREATE USER IF NOT EXISTS 'marcios'@'localhost' IDENTIFIED WITH
mysql_native_password BY 'souza';

CREATE USER IF NOT EXISTS 'fernandos'@'localhost' IDENTIFIED WITH
mysql_native_password BY 'silva';

CREATE USER IF NOT EXISTS 'barbaram'@'localhost' IDENTIFIED WITH
mysql_native_password BY 'maria';

CREATE USER IF NOT EXISTS 'alicem'@'localhost' IDENTIFIED WITH
mysql_native_password BY 'meire';

CREATE USER IF NOT EXISTS 'joaos'@'localhost' IDENTIFIED WITH
mysql_native_password BY 'silva';

CREATE USER IF NOT EXISTS 'marcosp'@'localhost' IDENTIFIED WITH
mysql_native_password BY 'prado';

CREATE USER IF NOT EXISTS 'claudiac'@'localhost' IDENTIFIED WITH
mysql_native_password BY 'cristina';

CREATE ROLE IF NOT EXISTS 'role_diretoria', 'role_gerencia', 'role_financeiro', 'role_contabil', 'role_ti', 'role_rh', 'role_recepcao';

-- ------------------------------------------------
-- GRANTS PARA DIRETORIA
-- ------------------------------------------------

GRANT SELECT ON autor TO 'role_diretoria';
GRANT SELECT ON editora TO 'role_diretoria';
GRANT SELECT ON obra TO 'role_diretoria';
GRANT SELECT ON estoque TO 'role_diretoria';
GRANT SELECT ON reserva TO 'role_diretoria';
GRANT SELECT ON emprestimo TO 'role_diretoria';
GRANT SELECT ON devolucao TO 'role_diretoria';
GRANT SELECT ON usuario TO 'role_diretoria';
GRANT SELECT ON funcionario TO 'role_diretoria';
GRANT SELECT ON cargo TO 'role_diretoria';
GRANT SELECT ON departamento TO 'role_diretoria';

-- ------------------------------------------------
-- GRANTS PARA GERÊNCIA
-- ------------------------------------------------

GRANT SELECT, INSERT, UPDATE ON autor TO 'role_gerencia';
GRANT SELECT, INSERT, UPDATE ON editora TO 'role_gerencia';
GRANT SELECT, INSERT, UPDATE ON obra TO 'role_gerencia';
GRANT SELECT, INSERT, UPDATE ON estoque TO 'role_gerencia';
GRANT SELECT ON devolucao TO 'role_gerencia';
GRANT SELECT ON emprestimo TO 'role_gerencia';
GRANT SELECT ON funcionario TO 'role_gerencia';
GRANT SELECT ON reserva TO 'role_gerencia';
GRANT SELECT ON usuario TO 'role_gerencia';

-- ------------------------------------------------
-- GRANTS PARA FINANCEIRO
-- ------------------------------------------------

GRANT SELECT ON cargo TO 'role_financeiro';
GRANT SELECT ON vw_obra_financeiro TO 'role_financeiro';
GRANT SELECT ON vw_emprestimo_financeiro TO 'role_financeiro';
GRANT SELECT ON vw_devolucao_financeiro TO 'role_financeiro';
GRANT SELECT ON vw_funcionario_financeiro TO 'role_financeiro';

-- ------------------------------------------------
-- GRANTS PARA CONTÁBIL
-- ------------------------------------------------

GRANT SELECT ON obra TO 'role_contabil';
GRANT SELECT ON emprestimo TO 'role_contabil';
GRANT SELECT ON devolucao TO 'role_contabil';
GRANT SELECT ON cargo TO 'role_contabil';
GRANT SELECT ON funcionario TO 'role_contabil';
GRANT SELECT ON estoque TO 'role_contabil';

-- ------------------------------------------------
-- GRANTS PARA TI
-- ------------------------------------------------

GRANT SELECT ON autor TO 'role_ti';
GRANT SELECT ON editora TO 'role_ti';
GRANT SELECT ON obra TO 'role_ti';
GRANT SELECT ON estoque TO 'role_ti';
GRANT SELECT ON usuario TO 'role_ti';
GRANT SELECT ON funcionario TO 'role_ti';
GRANT SELECT ON cargo TO 'role_ti';
GRANT SELECT ON departamento TO 'role_ti';
GRANT SELECT ON reserva TO 'role_ti';
GRANT SELECT ON emprestimo TO 'role_ti';
GRANT SELECT ON devolucao TO 'role_ti';

-- ------------------------------------------------
-- GRANTS PARA RH
-- ------------------------------------------------

GRANT SELECT, INSERT, UPDATE ON funcionario TO 'role_rh';
GRANT SELECT, INSERT, UPDATE ON cargo TO 'role_rh';
GRANT SELECT, INSERT, UPDATE ON departamento TO 'role_rh';

-- ------------------------------------------------
-- GRANTS PARA RECEPCAO
-- ------------------------------------------------

GRANT SELECT, INSERT, UPDATE ON usuario TO 'role_recepcao';
GRANT SELECT, INSERT, UPDATE ON reserva TO 'role_recepcao';
GRANT SELECT, INSERT, UPDATE ON emprestimo TO 'role_recepcao';
GRANT SELECT, INSERT ON devolucao TO 'role_recepcao';
GRANT SELECT ON estoque TO 'role_recepcao';
GRANT SELECT ON obra TO 'role_recepcao';

-- ------------------------------------------------
-- GRANTS DE ROLES PARA USUÁRIOS
-- ------------------------------------------------

GRANT 'role_diretoria' TO 'adalbertoc'@'localhost', 'camilap'@'localhost';
GRANT 'role_gerencia'  TO 'carlosm'@'localhost', 'marcios'@'localhost';
GRANT 'role_financeiro' TO 'barbaram'@'localhost';
GRANT 'role_rh' TO 'joaos'@'localhost';
GRANT 'role_recepcao'  TO 'alicem'@'localhost', 'claudiac'@'localhost', 'fabriolap'@'localhost';
GRANT 'role_ti' TO 'fernandos'@'localhost';
GRANT 'role_contabil'  TO 'marcosp'@'localhost';

SET DEFAULT ROLE ALL TO 
    'adalbertoc'@'localhost', 'camilap'@'localhost',
    'carlosm'@'localhost', 'marcios'@'localhost',
    'barbaram'@'localhost', 'joaos'@'localhost',
    'alicem'@'localhost', 'claudiac'@'localhost', 'fabriolap'@'localhost',
    'fernandos'@'localhost', 'marcosp'@'localhost';
FLUSH PRIVILEGES;