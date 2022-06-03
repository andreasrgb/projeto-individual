create database projeto_pessoal;
use projeto_pessoal;

create table usuarios (
id_usuario int primary key auto_increment,
nome_usuario varchar (100),
email_usuario varchar (100),
senha_usuario varchar (25)
);

create table jogadores (
id_jogador int primary key auto_increment,
nome_jogador varchar (100),
fk_usuario int,
foreign key (fk_usuario)
references usuarios (id_usuario)
);

create table clubes (
id_clube int primary key auto_increment,
nome_clube varchar (100),
fk_usuarios int,
foreign key (fk_usuarios)
references usuarios (id_usuario)
);

select * from usuarios;
select * from jogadores;
select * from clubes;