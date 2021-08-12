alter table consultor
add column nome varchar(30);

alter table consultor
drop column funcao;

alter table projeto
drop  column idConsultor;

create table participou(
	numProjeto int,
    idConsultor int,
    horasTrabalho time,
    funcao enum('Membro', 'Lider'),
    idContrato int not null auto_increment primary key,
    
	foreign key(numProjeto) references projeto(numeroProjeto),
    foreign key(idConsultor) references consultor(id)
)default charset = utf8;

describe participou;