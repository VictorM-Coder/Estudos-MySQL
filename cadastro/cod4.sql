alter table disciplina
add column codigoDepartamento int,
add foreign key(codigoDepartamento) references departamento(codigo);

describe disciplina;

alter table disciplina
add column CPFProfessor char(11),
add foreign key(CPFProfessor) references professor(cpf);

describe professor;
describe aluno;

create table matricular(
	idMatricular int not null auto_increment primary key,
    matriculaAluno int,
    cursoMatriculado varchar(30),
    
    foreign key(matriculaAluno) references aluno(matricula),
    foreign key(cursoMatriculado) references curso(nome)
    
)default charset = utf8;
describe matricular;
describe curso;