-- Inserindo dados na tabela clients
insert into clients (Fname, Minit, Lname, CPF, Adress) values
	('Ana', 'A', 'Silva', '12345678901', 'Rua das Flores, 123'),
	('Carlos', 'B', 'Pereira', '23456789012', 'Av. Paulista, 456'),
	('Maria', 'C', 'Oliveira', '34567890123', 'Rua Azul, 789'),
	('João', 'D', 'Santos', '45678901234', 'Praça Verde, 10'),
	('Pedro', 'E', 'Costa', '56789012345', 'Rua Rosa, 55'),
	('Paula', 'F', 'Mendes', '67890123456', 'Rua Amarela, 21'),
	('Juliana', 'G', 'Martins', '78901234567', 'Av. Laranja, 99'),
	('Ricardo', 'H', 'Barbosa', '89012345678', 'Rua Roxa, 12'),
	('Fernanda', 'I', 'Almeida', '90123456789', 'Av. Central, 101'),
	('Gustavo', 'J', 'Souza', '01234567890', 'Rua Norte, 222');

-- Inserindo dados na tabela product
insert into product (Nproduct, classification_kids, category, avaliacao, size) values
	('Notebook', false, 'Eletrônico', 4.5, 'Único'),
	('Camisa', true, 'Vestimenta', 4.0, 'M'),
	('Boneca', true, 'Brinquedos', 5.0, 'Único'),
	('Chocolate', false, 'Alimentos', 4.8, '200g'),
	('Cadeira', false, 'Móveis', 4.2, 'P'),
	('Tablet', false, 'Eletrônico', 4.6, 'Único'),
	('Sapato', false, 'Vestimenta', 4.1, '42'),
	('Carrinho', true, 'Brinquedos', 4.9, 'Único'),
	('Biscoito', false, 'Alimentos', 4.7, '500g'),
	('Mesa', false, 'Móveis', 4.3, 'M');

-- Inserindo dados na tabela orders
insert into orders (idOrdersCliente, orderStatus, ordersDescription, sendValue, paymentCash) values
	(1, 'Confirmado', 'Pedido de eletrônicos e alimentos', 20.0, true),
	(2, 'Em processamento', 'Pedido de vestimenta', 10.0, false),
	(3, 'Cancelado', 'Pedido de brinquedos', 10.0, false),
	(4, 'Confirmado', 'Pedido de móveis', 25.0, true),
	(5, 'Confirmado', 'Pedido misto', 30.0, false),
	(6, 'Em processamento', 'Pedido de alimentos', 15.0, true),
	(7, 'Cancelado', 'Pedido de brinquedos e vestimenta', 10.0, false),
	(8, 'Confirmado', 'Pedido de eletrônicos', 20.0, true),
	(9, 'Confirmado', 'Pedido de alimentos e móveis', 25.0, false),
	(10, 'Em processamento', 'Pedido de vestimenta', 10.0, false);

-- Inserindo dados na tabela productStorage
insert into productStorage (StorageLocation, quantity) values
	('Depósito A', 100),
	('Depósito B', 200),
	('Depósito C', 50),
	('Depósito D', 80),
	('Depósito E', 150),
	('Depósito F', 120),
	('Depósito G', 70),
	('Depósito H', 60),
	('Depósito I', 90),
	('Depósito J', 110);

-- Inserindo dados na tabela supplier
insert into supplier (socialName, CNPJ, contact) values
	('Fornecedor A', '12345678000101', '11987654321'),
	('Fornecedor B', '23456789000212', '11876543210'),
	('Fornecedor C', '34567890000323', '11765432109'),
	('Fornecedor D', '45678901000434', '11654321098'),
	('Fornecedor E', '56789012000545', '11543210987'),
	('Fornecedor F', '67890123000656', '11432109876'),
	('Fornecedor G', '78901234000767', '11321098765'),
	('Fornecedor H', '89012345000878', '11210987654'),
	('Fornecedor I', '90123456000989', '11109876543'),
	('Fornecedor J', '01234567001090', '11987654322');

-- Inserindo dados na tabela seller
insert into seller (socialName, abstName, CPF, CNPJ, location, contact) values
	('Vendedor A', 'VA', '12345678900', '12345678000101', 'Centro', '11987654321'),
	('Vendedor B', 'VB', '23456789001', '23456789000212', 'Norte', '11876543210'),
	('Vendedor C', 'VC', '34567890102', '34567890000323', 'Sul', '11765432109'),
	('Vendedor D', 'VD', '45678901203', '45678901000434', 'Leste', '11654321098'),
	('Vendedor E', 'VE', '56789012304', '56789012000545', 'Oeste', '11543210987'),
	('Vendedor F', 'VF', null, '67890123000656', 'Noroeste', '11432109876'),
	('Vendedor G', 'VG', null, '78901234000767', 'Nordeste', '11321098765'),
	('Vendedor H', 'VH', '67890123405', null, 'Centro-Sul', '11210987654'),
	('Vendedor I', 'VI', null, '89012345000878', 'Centro-Oeste', '11109876543'),
	('Vendedor J', 'VJ', '78901234506', null, 'Sudeste', '11987654322');

insert into storageLocation (idLproduct, idLstorage, location) values
	(1, 2, 'BA'),
    (2, 6, 'PE');

insert into productOrder (idPOproduct, idPOorder, poQuantity, poStatus) values
	(1, 6, 80, null),
    (2, 7, 10, null);

insert into productSeller (idPseller, idPproduct, prodQuantity) values
	(1, 3, 20),
    (2, 2, 15);

insert into productSupplier (idPSsupplier, idPSproduct, prodsQuantity) values
	(1, 2, 10),
    (2, 4, 40);