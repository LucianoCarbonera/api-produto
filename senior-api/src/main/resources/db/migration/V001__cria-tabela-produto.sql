create table produto (
    id serial primary key,
    nome varchar(50) not null,
    preco decimal not null,
    produto_servico char(1) not null,
    data timestamp DEFAULT current_timestamp
);