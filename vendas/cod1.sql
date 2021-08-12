create database vendasSonicCorp character set utf8;
use vendassoniccorp;

create table if not exists produto(
	codigo int not null auto_increment primary key,
    nome varchar(30),
    descricao text
)default charset = utf8;

create table if not exists cliente(
	codigo int not null auto_increment primary key,
    nome varchar(30),
    endereco varchar(40)
    
)default charset = utf8;

create table if not exists fornecedor(
	codigo int not null auto_increment primary key,
    nome varchar(30),
    endereco varchar(40),
    cnpj char(14)
    

)default charset = utf8;

create table if not exists loja(
 codigo int not null auto_increment primary key,
 nome varchar(30),
 cnpj char(14)

)default charset = utf8;