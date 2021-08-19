create table if not exists cliente(
	nome varchar(30),
    codigo int not null auto_increment primary key,
    RG char(9),
    CPF char(11),
    endereco varchar(40),
    telefone char(11),
    qntd_carros tinyint
)default charset = utf8;

create table if not exists carro(
	cod_seguro int not null auto_increment primary key,
	placa char(7),
    cod_renavam char(11),
    fabricante varchar(20),
    modelo varchar(30),
    ano date,
    cod_dono int,
    foreign key(cod_dono) references cliente(codigo)
    
)default charset = utf8;

create table if not exists ocorrencia(
	numero int not null auto_increment primary key,
    data_ocorrencia date,
    descricao text,
    cod_carro int,
    foreign key(cod_carro) references carro(cod_seguro)
)default charset utf8;