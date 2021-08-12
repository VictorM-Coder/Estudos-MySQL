alter table aluno 
add column curso varchar(30),
add foreign key(curso)
references curso(nome);

describe curso;
describe aluno;

alter table aluno 
add column codigoDepartamento int,
add foreign key(codigoDepartamento)
references departamento(codigo);

describe departamento;