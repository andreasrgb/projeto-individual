create database projeto_pessoal;
use projeto_pessoal;


create table jogadores (
id_jogador int primary key auto_increment,
nome_jogador varchar (100)
);

create table clubes (
id_clube int primary key auto_increment,
nome_clube varchar (100)
);

create table usuarios (
id_usuario int primary key auto_increment,
nome_usuario varchar (100),
email_usuario varchar (100),
senha_usuario varchar (25),
fk_jogador int,
foreign key (fk_jogador)
references jogadores (id_jogador),
fk_clube int,
foreign key (fk_clube)
references clubes (id_clube)
);

insert into jogadores values 
(null, 'Neymar JR'),
(null, 'Kylian Mbappe'),
(null, 'Lionel Messi'),
(null, 'Cristiano Ronaldo'),
(null, 'Vini JR'),
(null, 'Karim Benzema'),
(null, 'Robert Lewandowski'),
(null, 'Mohamed Salah'),
(null, 'Sadio Mané'),
(null, 'Erling Haaland');

insert into clubes values
(null, 'Real Madrid'),
(null, 'Manchester City'),
(null, 'Manchester United'),
(null, 'Chelsea'),
(null, 'Bayern de Munique'),
(null, 'Liverpool'),
(null, 'Barcelona'),
(null, 'Paris Saint-Germain'),
(null, 'Atlético de Madrid'),
(null, 'Juventus');

select * from usuarios;
select * from jogadores;
select * from clubes;

select jogadores.nome_jogador as nome, count(fk_jogador) as voto
from usuarios inner join jogadores
on jogadores.id_jogador = usuarios.fk_jogador
group by nome_jogador;

select clubes.nome_clube as nome, count(fk_clube) as voto
from usuarios inner join clubes
on clubes.id_clube = usuarios.fk_clube
group by nome_clube;