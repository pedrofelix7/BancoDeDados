create database biblioteca;
use biblioteca;

create table livros(
   id int not null primary key auto_increment,
   titulo varchar(60) not null,
   autor varchar(30) not null,
   editora varchar(30) not null,
   ano_publicacao int,
   preco decimal(8, 2) 
   );
   

   create table clientes(
   id int not null primary key auto_increment,
   nome varchar(50) not null,
   email varchar(60) not null,
   endereco varchar(65) null
   );
   
  
   create table pedidos(
   id int not null primary key auto_increment,
   id_cliente int not null,
   data_pedido date,
   total decimal(8, 2),
   foreign key (id_cliente) references clientes(id)
   
   );
   