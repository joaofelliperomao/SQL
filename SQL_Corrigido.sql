
create database db_malvader;
use db_malvader;

create table clientes (
    id_usuario INT AUTO_INCREMENT not null,
    nome VARCHAR(100) not null,
    cpf VARCHAR(11) not null,
    data_nascimento DATE not null,
    telefone VARCHAR(15),
    tipo_usuario ENUM('FUNCIONARIO', 'CLIENTE') not null,
    senha VARCHAR(50),
    primary key (id_usuario)
);

create table funcionario (
    id_funcionario INT AUTO_INCREMENT not null,
    codigo_funcionario VARCHAR(20),
    cargo VARCHAR(50),
    id_usuario INT,
    primary key (id_funcionario),
    foreign key (id_usuario) references clientes(id_usuario)
);

create table cliente (
    id_conta INT AUTO_INCREMENT not null,
    numero_conta VARCHAR(20),
    agencia VARCHAR(10),
    saldo DECIMAL(15,2),
    tipo_conta ENUM('POUPANCA', 'CORRENTE'),
    id_cliente INT,
    primary key (id_conta),
    foreign key (id_cliente) references clientes(id_usuario)
);

create table conta_corrente (
    id_conta_corrente INT AUTO_INCREMENT not null,
    limite DECIMAL(15,2),
    data_vencimento DATE,
    id_conta INT,
    primary key (id_conta_corrente),
    foreign key (id_conta) references cliente(id_conta)
);

create table conta_poupanca (
    id_conta_poupanca INT AUTO_INCREMENT not null,
    rendimento DECIMAL(15,2),
    data_aniversario DATE,
    id_conta INT,
    primary key (id_conta_poupanca),
    foreign key (id_conta) references cliente(id_conta)
);
