create database db_malvader;
use db_malvader;

create table clientes
(
id_usuario INT AUTO_INCREMENT not null,
nome VARCHAR(100) not null,
cpf VARCHAR(11) not null,
data_nascimento not null,
telefone VARCHAR (15),
tipo_usuario ENUM ('FUNCIONARIO', 'CLIENTE') not null,
senha VARCHAR  (50), 
primary key (id_usuario)
);
	
create table funcionario
(
id_funcionario  INT AUTO_INCREMENT  not null,
codigo_funcionario VARCHAR (20),
cargo VARCHAR (50),
id_usuario  INT,
primary key (id_funcionario),
foreign key (id_usuario)
);

create table cliente
(
id_conta  INT AUTO_INCREMENT not null,
numero_conta VARCHAR (20),
agencia VARCHAR (10),
saldo DECIMAL (15,2),
tipo_conta ENUM ('POUPANCA', 'CORRENTE'),
id_cliente  INT,
primary key (id_conta),
foreign key (id_cliente)
);

create table conta_corrente
(
id_conta_corrente  INT AUTO_INCREMENT not null,
limite DECIMAL (15,2),
data_vencimento DATE,
id_conta INT,
primary key (id_conta_corrente),
foreign key (id_conta)
);

create table conta_poupanca
(
id_conta_poupanca  INT AUTO_INCREMENT not null,
taxa_rendimento DECIMAL (5,2),
id_conta  INT,
primary key (id_conta_poupanca),
foreign key (id_conta)
);

create table transacao(
id_transacao  INT AUTO_INCREMENT not null,
tipo_transacao ENUM ('DEPOSITO', 'SAQUE', 'TRANSFERENCIA'),
valor DECIMAL (15,2),
data_hora TIMESTAMP,
id_conta  INT,
primary key (id_transacao),
foreign key (id_conta)
);

create table relatorio(
id_relatorio  INT, AUTO_INCREMENT not null,
tipo_relatorio VARCHAR (50),
data_geracao TIMESTAMP,
conteudo TEXT,
id_funcionario INT,
primary key (id_relatorio),
foreign key (id_funcionario)
);      
