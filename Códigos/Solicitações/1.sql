-- 1. A Diretora Camilla Prado solicitou uma pesquisa que informe todas as obras cadastradas no acervo 
-- ordenadas por data de publicação.

SELECT ID_obra, titulo_obra, numero_publicacao, genero, valor_unitario, data_publicacao
from obra
order by data_publicacao