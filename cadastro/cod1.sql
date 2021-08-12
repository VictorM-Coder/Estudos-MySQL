use universidade;

create table if not exists professor(
	nome varchar(30),
    cpf char(11),
    telefone varchar(13),
    
    primary key(cpf)
) default charset = utf8;

describe professor;
describe disciplina;
describe oferta;

create table if not exists disciplina(
	nome varchar(30),
    descricao text,
    codigo int not null auto_increment primary key,
    creditos tinyint

)default charset = utf8;

create table if not exists oferta(
	horario time,
    idOferta int not null auto_increment primary key

)default charset = utf8;

