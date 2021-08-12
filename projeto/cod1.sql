create database if not exists projetos default character set utf8;
use projetos;

create table if not exists empresa(
	codigo int not null auto_increment primary key,
    nome varchar(30),
    endereco varchar(40)
)default charset = utf8;

describe empresa;

create table if not exists projeto(
	numeroProjeto int not null auto_increment primary key,
    dataInicio date,
    dataTermino date,
    valor float,
    nome varchar(30)
)default charset = utf8;

describe projeto;

create table if not exists consultor(
	id int not null auto_increment primary key,
    horasTrabalho time,
    funcao enum('Líder', 'Membro')
    
)default charset = utf8;

describe consultor;

/**
A relação entre projetos e consultores é muito para um, pois um único consultor pode ter vários projetos*/