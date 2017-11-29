--deleta toda as tabelas
DROP SCHEMA public CASCADE;
--restaura o schema 
CREATE SCHEMA public;

create table Funcionario(
	idFunc serial not null,
	cpf bigint,
	nome varchar(100),
    funcao varchar(50),
	cargo integer,
	salario float,
    constraint Funcionario_pk primary key (idFunc)
);

insert into Funcionario values(1, 04949082388, 'Danillo Lima', 'Gerente', 1, 9.999);
select * from funcionario;

create table Cliente(
	 idCli serial not null,
	 cpf bigint,
     nome varchar,
     idade integer,
     endereco varchar,
     cidade varchar,
     estado varchar,
     constraint Cliente_pk primary key (idCli)
);

insert into Cliente values (1, 12345678988, 'Tônico Pereira', 29, 'Rua Mato Grosso nº 312', 'Cornélio Procópio', 'Paraná');
select * from cliente;

create table Veiculo(
	idVeic serial not null,
    tipo varchar(100),
	nome varchar,
	marca varchar(50),
    constraint Veiculo_pk primary key (idVeic)
);

insert into Veiculo values (1, 'Carro', 'Passat 2P 1980', 'Volkswagem');

create table ClienteVeiculo(
	id serial not null primary key,
	FK_Cliente integer references Cliente(idCli),
	FK_Veiculo integer references Veiculo(idVeic),
	placa varchar(30),
	cor varchar(100)
);

insert into ClienteVeiculo values (1,1,1,'ABC123', 'Vermelho');

create table Pedido(
	 idPed serial not null,
	 FK_Cliente integer references Cliente(idCli), -- Solicitante
	 dataPedido timestamp,
	 FK_Func integer references Funcionario(idFunc), -- Vendendor que atendeu ao pedido
    constraint Pedido_pk primary key (idPed)
);

insert into Pedido values (1, 1, '2004-10-19 10:23:54', 1);

create table Produto(
	idPro serial not null,
    nome varchar(100),
    fornecedor varchar(100),
    qtdEstoque integer,
    precoUnit float,    
    constraint Produto_pk primary key (idPro)
);

insert into produto(1, 'Lavagem a Seco Prot-Dry - 1 Litro', 'Protelim', 100, 36.10);

create table PedidoProduto(
	id serial not null,
	qtd integer,
	FK_Pedido integer references Pedido(idPed),
	FK_Produto integer references Produto(idPro)
);

insert into pedidoproduto(1, 2, 1, 1);

-- select P.nome, PP.qtd, P.PrecoUnit, from Pedido PE, Produto P, Cliente C, PedidoProduto PP where PE.idPed = PP.id AND C.idCli = PE.FK_Cliente AND C.cpf = 1234567899;

create table Servico(
	idSer serial not null,    
    nomeServico varchar(100),
    valor integer,
    descricao varchar(100),    
    constraint Serviço_pk primary key (idSer)
);

create table PedidoServico(
	id serial not null,
	FK_Pedido integer references Pedido(idPed),
	FK_Servico integer references Servico(idSer),
	dataIni timestamp,
	dataTer timestamp
);



