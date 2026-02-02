-- 17.A Recepcionista Claudia Cristina não conseguiu terminar o cadastro de cinco usuários que passaram pela Biblioteca, foi solicitado a inserção desses usuários. São eles:
-- • 31, Alfredo Tenttoni, Rua Amazonas 58, Pirai, 6549-5421, 02170-251, 294.264.875-32
-- • 32, Cindy Crall, Rua Ipiranga 123, Vila Cristal, 5846-6577, 02182-637, 122.147.655-49
-- • 33, Rubens Pardo, Avenida dos Monges 51, Campo Grande, 5184-8978, 52412-365, 654.586.472-98
-- • 34, Carlos Pracidelli, Travessa dos Irmãos 48, Cotia, 8945-7986, 23124-005, 341.251.651-75
-- • 35, Ernesto Coimbra, Avenida Ampére 414, Jardim Elvira, 5844-2654, 05728-368, 193.107.214-35

-- ALTER TABLE usuario
-- DROP CONSTRAINT CPF;

INSERT INTO usuario (ID_usuario, nome_usuario, logradouro, bairro, telefone, CEP, CPF) VALUES
(31 , 'Alfredo Tenttoni' , 'Rua Amazonas 58' , 'Pirai', '6549-5421' , '02170-251' , '294.264.875-32'),
(32 , 'Cindy Crall' , 'Rua Ipiranga 123' , 'Vila Cristal', '5846-6577' , '02182-637' , '122.147.655-49'), --ERRO DE DUPLICIDADE, PRECISA SER NULL
(33 , 'Rubens Pardo', 'Avenida dos Monges 51' , 'Campo Grande', '5184-8978' , '52412-365' , '654.586.472-98'),
(34 , 'Carlos Pracidelli' , 'Travessa dos Irmãos 48' , 'Cotia', '8945-7986' , '23124-005' , '341.251.651-75'),
(35 , 'Ernesto Coimbra', 'Avenida Ampére 414' , 'Jardim Elvira', '5844-2654' , '05728-368' , '193.107.214-35') --ERRO DE DUPLICIDADE, PRECISA SER NULL