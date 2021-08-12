alter table curso
add column codigoDepartamento int,
add foreign key(codigoDepartamento)
references departamento(codigo);

alter table curso
add foreign key(CPFCoordenador)
references professor(cpf);

alter table curso
add column CPFCoordenador char(11);

alter table curso
add column CPFViceCoordenador char(11),
add foreign key(CPFViceCoordenador)references professor(cpf);
describe curso;

alter table professor
add column codigoDepartamento int,
add foreign key(codigoDepartamento) references departamento(codigo);

describe departamento;
describe professor;