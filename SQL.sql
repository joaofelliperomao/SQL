create database db_malvader;
use db_malvader;

create table clientes(
id_usuario   INT AUTO_INCREMENT,
nome VARCHAR(100),
cpf VARCHAR(11),
data_nascimento
telefone VARCHAR (15),
tipo_usuario (ENUM: 'FUNCIONARIO', 'CLIENTE'),
senha VARCHAR  (50), 
primary key id_usuario
);
	
  create table funcionario(
id_funcionario  INT AUTO_INCREMENT 
codigo_funcionario VARCHAR (20),
cargo VARCHAR (50),
id_usuario  INT,
primary key id_funcionario,
);

create table cliente(
	id_usuario (PK, INT, AUTO_INCREMENT): Identificador único do usuário.
	nome (VARCHAR, 100): Nome completo do usuário.
	cpf (VARCHAR, 11): CPF do usuário.
	data_nascimento (DATE): Data de nascimento.
	telefone (VARCHAR, 15): Telefone de contato.
	tipo_usuario (ENUM: 'FUNCIONARIO', 'CLIENTE'): Define se o usuário é funcionário ou cliente.
	senha (VARCHAR, 50): Senha para acesso ao sistema.
);

create table funcionario(
o	Armazena dados específicos dos funcionários.
o	Colunas:
	id_funcionario (PK, INT, AUTO_INCREMENT): Identificador único do funcionário.
	codigo_funcionario (VARCHAR, 20): Código interno do funcionário.
	cargo (VARCHAR, 50): Cargo do funcionário.
	id_usuario (FK, INT): Relacionamento com a tabela usuario.
3.	Tabela cliente
o	Colunas:
	id_conta (PK, INT, AUTO_INCREMENT): Identificador único da conta.
	numero_conta (VARCHAR, 20): Número da conta.
	agencia (VARCHAR, 10): Agência onde a conta foi criada.
	saldo (DECIMAL, 15,2): Saldo atual da conta.
	tipo_conta (ENUM: 'POUPANCA', 'CORRENTE'): Tipo da conta bancária.
	id_cliente (FK, INT): Relacionamento com a tabela cliente.
6.	create table Tabela conta_corrente
o	Armazena dados específicos de contas correntes.
o	Colunas:
	id_conta_corrente (PK, INT, AUTO_INCREMENT): Identificador da conta corrente.
	limite (DECIMAL, 15,2): Limite de crédito da conta corrente.
	data_vencimento (DATE): Data de vencimento do limite.
	id_conta (FK, INT): Relacionamento com a tabela conta.
7.	create table Tabela conta_poupanca
o	Armazena dados específicos de contas poupança.
o	Colunas:
	id_conta_poupanca (PK, INT, AUTO_INCREMENT): Identificador da conta poupança
	taxa_rendimento (DECIMAL, 5,2): Taxa de rendimento da poupança.
	id_conta (FK, INT): Relacionamento com a tabela conta.
8.	create table Tabela transacao
o	Armazena todas as transações realizadas nas contas, como saques, depósitos e extratos.
o	Colunas:
	id_transacao (PK, INT, AUTO_INCREMENT): Identificador único da transação.
	tipo_transacao (ENUM: 'DEPOSITO', 'SAQUE', 'TRANSFERENCIA'): Tipo de transação realizada.
	valor (DECIMAL, 15,2): Valor da transação.
	data_hora (TIMESTAMP): Data e hora da transação.
	id_conta (FK, INT): Relacionamento com a conta em que a transação foi realizada.
create table relatorio(
o	Armazena relatórios gerados pelos funcionários.
o	Colunas:
	id_relatorio (PK, INT, AUTO_INCREMENT): Identificador único do relatório.
	tipo_relatorio (VARCHAR, 50): Tipo de relatório gerado.
	data_geracao (TIMESTAMP): Data e hora da geração do relatório.
	conteudo (TEXT): Conteúdo do relatório.
	id_funcionario (FK, INT): Relacionamento com a tabela funcionario.
);
