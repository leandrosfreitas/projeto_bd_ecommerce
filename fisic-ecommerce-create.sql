-- Criação de banco de dados para o cenário de ecommerce
create database ecommerce;
use ecommerce;

-- Criar tabela cliente
create table clients(
	idClient int auto_increment primary key,
	Fname varchar(10),
	Minit char(3),
	Lname varchar(20),
	CPF char(11) not null,
	Adress varchar(30),
	constraint unique_cpf_client unique (CPF)
);

alter table clients auto_increment=1;

-- Criar tabela produto
create table product(
	idProduct int auto_increment primary key,
	Nproduct varchar(10),
	classification_kids bool,
	category enum('Eletrônico', 'Vestimenta', 'Brinquedos', 'Alimentos', 'Móveis') not null,
	avaliacao float default 0,
    size varchar(10)
);

-- Criar tabela pedido
create table orders(
	idOrders int auto_increment primary key,
	idOrdersCliente int,
    orderStatus enum('Cancelado', 'Confirmado', 'Em processamento') default 'Em processamento',
    ordersDescription varchar(255),
    sendValue float default 10,
    paymentCash bool default false,
    constraint fk_orders_client foreign key (idOrdersCliente) references clients(idClient)
		on update cascade
);

-- Criar tabela estoque
create table productStorage(
	idProductStorage int auto_increment primary key,
	StorageLocation varchar(255),
	quantity int default 0
);

-- Criar tabela fornecedor
create table supplier(
	idSupplier int auto_increment primary key,
    socialName varchar(255) not null,
    CNPJ char(15) not null,
    contact char(11) not null,
    constraint unique_supplier unique (CNPJ)
);

-- Criar tablela vendedor
create table seller(
	idSeller int auto_increment primary key,
    socialName varchar(255) not null,
    abstName varchar(255),
    CPF char(11),
    CNPJ char(15),
    location varchar(255),
    contact char(11) not null,
    constraint unique_cpf_seller unique (CPF),
    constraint unique_cnpj_seller unique (CNPJ)
);

-- Criar tabela produto/vendedor
create table productSeller(
	idPseller int,
    idPproduct int,
    prodQuantity int default 1,
    primary key (idPseller, idPproduct),
    constraint fk_product_seller foreign key (idPSeller) references seller(idSeller),
    constraint fk_product_product foreign key (idPproduct) references product(idProduct)
);

-- Criar tabela produto/pedido
create table productOrder(
	idPOproduct int,
    idPOorder int,
    poQuantity int default 1,
    poStatus enum('Disponível', 'Sem estoque') default 'Disponível',
    primary key (idPOproduct, idPOorder),
    constraint fk_productorder_seller foreign key (idPOproduct) references product(idProduct),
    constraint fk_productorder_product foreign key (idPOorder) references orders(idOrders)
);

-- Criar tabela local estoque
create table storageLocation(
	idLproduct int,
    idLstorage int,
    location varchar(255) not null,
    primary key (idLproduct, idLstorage),
    constraint fk_storageLocation_product foreign key (idLproduct) references product(idProduct),
    constraint fk_StorageLocation_storage foreign key (idLstorage) references productStorage(idProductStorage)
);

-- Criar tabela produto/fornecedor
create table productSupplier(
	idPSsupplier int,
    idPSproduct int,
    prodsQuantity int not null,
    primary key (idPSsupplier, idPSproduct),
    constraint fk_product_sup_supplier foreign key (idPSsupplier) references supplier(idSupplier),
    constraint fk_product_sup_product foreign key (idPSproduct) references product(idProduct)
);