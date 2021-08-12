create table if not exists fornecer(
	codigo int not null auto_increment primary key,
    codFornecedor int,
    codProdFornecido int,
	foreign key(codFornecedor) references fornecedor(codigo),
    foreign key(codProdFornecido) references produto(codigo)

)default charset = utf8;

create table if not exists venda(
	numFiscal int not null auto_increment primary key,
	codCliente int,
    codLoja int,
    
    dataVenda date,
    valorTotal float,
    
    foreign key(codCliente) references cliente(codigo),
    foreign key(codLoja) references loja(codigo)
)default charset = utf8;

create table if not exists venderProduto(
	codigo int not null auto_increment primary key,
    codVenda int,
    codProduto int,
    qntProd int,
    precoProduto int,
    
    
    foreign key(codVenda) references venda(numFiscal),
    foreign key(codProduto) references produto(codigo)
)default charset = utf8;
