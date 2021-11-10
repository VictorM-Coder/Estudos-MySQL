create database if not exists rpg default charset = utf16;

use rpg;
create table if not exists jogador(
	nome varchar(30) not null,
    classe enum('mago', 'cavaleiro', 'guerreiro', 'clerico', 'assassino', 'necromante') not null,
    nivel tinyint unsigned not null,
    id int not null auto_increment primary key
)default charset utf16;

describe jogador;

create table if not exists party(
	nome varchar(30) not null,
    qnt_missoes_concluidas int unsigned not null,
    id int not null auto_increment primary key
)default charset utf16;

describe party;

create table if not exists guilda(
	nome varchar(30),
    id int not null auto_increment primary key
)default charset utf16;

describe guilda;

create table if not exists missao(
	recompensa double unsigned not null,
    nivel tinyint unsigned not null,
    id int not null auto_increment primary key
)default charset utf16;

alter table missao
modify  column recompensa double not null;
describe missao;

create table if not exists missao_coletada(
	id_missao int not null,
    id_party int not null,
    
    foreign key(id_party) references party(id),
    foreign key(id_missao) references missao(id),
    primary key(id_missao, id_party)
)default charset utf16;


