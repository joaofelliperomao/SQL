create database db_venda_veiculo;
use db_venda_veiculo;

create cliente
(
	id_cliente int unsigned not null auto_increment,
    nome varchar(45) not null,
	cnh varchar(25) null,
	tipo_clinete varchar(45) not null,
	check ( tipo_cliente in ('Fisica','Juridica')),
	cartao varchar(16),
	primary key(id_cliente)
);

create table funcionario
(
	id int unsigned not null auto_increment,
    nome_funcionario varchar(45) not null,
    salario double not null default '0',
    departamento varchar(45),
    primary key(id_funcionario)
);

create table veiculo_vendas
(
	id_vendas int unsigned not null auto_increment,
    valor_vendas double not null,
    data_vendas date not null,
    cliente_id int unsigned not null,
    funcionario_idint int unsigned not null,
    primary key(id_venda),
    constraint fk_cliente_id foreign key (cliente_id) references cliente(id_cliente),
    constraint fk_funcionario_id foreign key (funcionario_id) references funcionario(id_funciorario)
);

create table veiculo
(
	id_veiculo int unsigned not null auto_increment,
	placa varchar(7) not null,
    marca varchar(45) not null,
    modelo varchar(45) not null,
    ano int unsigned not null,
    venda_id int unsigned null,
    primary key(id_veiculo),
    constraint fk_veiculo_venda_id foreign key (venda_id) references veiculo_veda(id_venda)
);

#inserindo dados na tabela 'cliente'
insert into cliente (nome, cnh,tipo_cliente,cartao)
values
	('João Fellipe', '12345678910', 'Fisica','411111111111111111'),
	('Empresa w', '12345678912345', 'Juridica', '52222222222222222222'),
    ('Carlos', '98765432100', 'Fisica', '63334444444444444'),
    ('Pedro', '98765432100', 'Fisica', '633333333333333335'),
    ('Tome', '98765432100', 'Fisica', '6333333333333333336'),
    (''
	
