-- 15.A Recepcionista Alice Meire solicitou a alteração do bairro do usuário 
-- ‘Alberto Roberto’ que morava no ‘IAPI’ e agora mora no bairro de ‘Perdizes’.
update usuario
set bairro = 'Perdizes'
where ID_usuario = (select ID_usuario FROM(
					select ID_usuario
                    FROM usuario
                    where nome_usuario = 'Alberto Roberto') as tabela_temporaria)