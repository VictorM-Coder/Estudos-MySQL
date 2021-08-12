use projetos;

alter table projeto
add column idConsultor int;

alter table projeto
add foreign key(idConsultor)
references consultor(id);

alter table projeto
add column Codcliente int;

alter table projeto
change column codClient codCliente int;

alter table projeto
add foreign key (codCliente) references empresa(codigo);
describe projeto;