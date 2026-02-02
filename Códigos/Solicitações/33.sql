--- 33.A área de RH solicitou a atualização do salário do Auxiliar Financeiro de 12% sobre o seu salário atual.

update cargo
SET salario = salario * 1.12
where id_cargo = (select id_cargo from(select id_cargo from cargo where nome_cargo = 'Auxiliar Financeiro')as tab_tempo)