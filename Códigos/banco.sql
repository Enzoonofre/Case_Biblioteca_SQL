CREATE DATABASE IF NOT EXISTS db_biblioteca;
USE db_biblioteca;

CREATE TABLE autor (
    ID_autor INT AUTO_INCREMENT PRIMARY KEY,
    nome_autor VARCHAR(40) NOT NULL,
    nacionalidade VARCHAR(40) NOT NULL
);

CREATE TABLE editora (
    ID_editora INT AUTO_INCREMENT PRIMARY KEY,
    nome_editora VARCHAR(40) NOT NULL,
    logradouro VARCHAR(40) NOT NULL,
    bairro VARCHAR(100),
    cidade VARCHAR(20) NOT NULL, 
    CEP VARCHAR(9)
);

CREATE TABLE usuario (
    ID_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome_usuario VARCHAR(40) NOT NULL,
    logradouro VARCHAR(40),
    bairro VARCHAR(100),
    cidade VARCHAR(20),
    CEP VARCHAR(9),    
    telefone VARCHAR(15),
    CPF VARCHAR(14) NOT NULL UNIQUE 
);

CREATE TABLE cargo (
    ID_cargo INT AUTO_INCREMENT PRIMARY KEY,
    nome_cargo VARCHAR(40) NOT NULL,
    salario DECIMAL(10,2) NOT NULL
);

CREATE TABLE departamento (
    ID_departamento INT AUTO_INCREMENT PRIMARY KEY,
    nome_departamento VARCHAR(40) NOT NULL
);

CREATE TABLE obra (
    ID_obra INT AUTO_INCREMENT PRIMARY KEY,
    ID_editora INT NOT NULL,      
    ID_autor INT NOT NULL,         
    titulo_obra VARCHAR(100) NOT NULL,
    numero_publicacao INT NOT NULL,
    genero VARCHAR(20) NOT NULL,
    data_publicacao DATE NOT NULL,
    valor_unitario DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (ID_editora) REFERENCES editora(ID_editora),
    FOREIGN KEY (ID_autor) REFERENCES autor(ID_autor)
);

CREATE TABLE funcionario (
    ID_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    ID_cargo INT NOT NULL,           
    ID_departamento INT NOT NULL,      
    nome_funcionario VARCHAR(100) NOT NULL,
    data_admissao DATE NOT NULL,
    data_demissao DATE NULL,
    FOREIGN KEY (ID_cargo) REFERENCES cargo(ID_cargo),
    FOREIGN KEY (ID_departamento) REFERENCES departamento(ID_departamento)
);

CREATE TABLE estoque (
    ID_estoque INT NOT NULL,          
    ID_obra INT NOT NULL,            
    quantidade_livro_total INT NOT NULL DEFAULT 0,   
    quantidade_livro_disponivel INT NOT NULL DEFAULT 0 CHECK (quantidade_livro_disponivel >= 0), 
    PRIMARY KEY (ID_estoque, ID_obra),
    FOREIGN KEY (ID_obra) REFERENCES obra(ID_obra)
);

CREATE TABLE reserva (
    ID_reserva INT AUTO_INCREMENT PRIMARY KEY,
    ID_funcionario INT NOT NULL,    
    ID_estoque INT NOT NULL,     
    ID_usuario INT NOT NULL,          
    ID_obra INT NOT NULL,            
    status_livro VARCHAR(40) NOT NULL,
    data_reserva DATE NOT NULL,
    hora_reserva TIME NOT NULL,
    FOREIGN KEY (ID_funcionario) REFERENCES funcionario(ID_funcionario),
    FOREIGN KEY (ID_estoque, ID_obra) REFERENCES estoque(ID_estoque, ID_obra),
    FOREIGN KEY (ID_usuario) REFERENCES usuario(ID_usuario)
);

CREATE TABLE emprestimo (
    ID_emprestimo INT AUTO_INCREMENT PRIMARY KEY,
    ID_funcionario INT NOT NULL,
    ID_estoque INT NOT NULL,
    ID_usuario INT NOT NULL,
    ID_obra INT NOT NULL,
    ID_obra_antigo INT NULL,
    ID_reserva INT NULL,
    data_emprestimo DATE NOT NULL,
    data_entrega DATE NOT NULL,
    hora_emprestimo TIME NOT NULL,
    FOREIGN KEY (ID_funcionario) REFERENCES funcionario(ID_funcionario),
    FOREIGN KEY (ID_estoque, ID_obra) REFERENCES estoque(ID_estoque, ID_obra),
    FOREIGN KEY (ID_usuario) REFERENCES usuario(ID_usuario),
    FOREIGN KEY (ID_reserva) REFERENCES reserva(ID_reserva)
);

CREATE TABLE devolucao (
    ID_devolucao INT AUTO_INCREMENT PRIMARY KEY,
    ID_funcionario INT NOT NULL,      
    ID_emprestimo INT NOT NULL UNIQUE,     
    data_devolucao DATE NOT NULL,
    hora_devolucao TIME NOT NULL,
    multa_atraso VARCHAR(2),          
    FOREIGN KEY (ID_funcionario) REFERENCES funcionario(ID_funcionario),
    FOREIGN KEY (ID_emprestimo) REFERENCES emprestimo(ID_emprestimo)
);