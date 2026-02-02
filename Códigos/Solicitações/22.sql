-- Query 22: Foi verificado que o campo Multa_Atraso está com os registros preenchidos de forma errada, foi solicitada a alteração dos registros que forem 0 para Não e 1 para SIM.

update devolucao 
set multa_atraso = case 
    when multa_atraso = '1' then 'SIM' 
    else 'NÃO' 
end
where id_devolucao > 0;
