create database restaurante;
use restaurante;

create table mesas(
id int not null primary key auto_increment,
disponivel boolean
);
create table cliente(
id int not null primary key auto_increment,
nome varchar(50),
id_mesas int,
foreign key (id_mesas) references mesas(id),
telefone varchar(20)
);
create table cardapio(
id int not null primary key auto_increment,
prato varchar(70)
);
create table pedido(
id int not null primary key auto_increment,
id_mesas int,
id_cardapio int,
id_cliente int,
foreign key (id_mesas) references mesas(id),
foreign key (id_cardapio) references cardapio(id),
foreign key (id_cliente) references cliente(id)
);
create table garcom(
id int not null primary key auto_increment,
nome varchar(50)
);
create table garcom_pedido(
id_pedido int,
id_garcom int,
foreign key (id_pedido) references pedido(id),
foreign key (id_garcom) references garcom(id)
);
create table veiculos(
id int not null primary key auto_increment,
modelo varchar(50)
);
create table estacionamento(
id int not null primary key auto_increment,
id_veiculos int,
id_cliente int,
foreign key (id_veiculos) references veiculos(id),
foreign key (id_cliente) references cliente(id)
);

select * from estacionamento;

