create database if not exists cadastroTelecomunicacoes default collate utf8_general_ci;

drop database clientes;
use cadastroTelecomunicacoes;

create table if not exists cliente(
	cpf char(11) not null primary key,
    nome varchar(30),
    nascimento date,
    UF enum('AC', 'AL', 'AP', 'AM', 'BA', 'CE', 'DF', 'ES', 'GO', 'MA', 'MT', 'MS', 'MG', 'PA', 'PB', 'PR', 'PE', 'PI', 'RJ', 'RN', 'RS', 'RO', 'RR', 'SC', 'SP', 'SE', 'TO'),
    cidade varchar(30),
    bairro varchar(30),
    endereco varchar(30),
    cep char(8)
    
)default charset = utf8;

alter table cliente
add column ultimaCompra date;

describe cliente;

insert into cliente values
('00496332780', 'João da Silva', '1969/11/25', 'PR', 'Londrina', 'Palmeiras', 'Rua Antonio Nunes', '88045963', null ),
('05485031490', 'Ana Regina Fagundes', '1986/09/21', 'RJ', 'Rio de Janeiro', 'Leblon', 'Rua Palmeias Novas', '88078923', null),
('03350314905', 'Fernando Soares', '1990/03/05', 'RJ', 'Rio de Janeiro', 'Copacabana', 'Rua Palmeias Novas', '88048917', null);

select *  from cliente;

select * from cliente
where cidade = 'Rio de Janeiro';

delete from cliente
where cidade  = 'Londrina'
limit 1;



