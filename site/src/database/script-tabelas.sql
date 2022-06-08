create database projeto_pessoal;
use projeto_pessoal;


create table jogadores (
id_jogador int primary key auto_increment,
nome_jogador varchar (100)
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

create table clubes (
id_clube int primary key auto_increment,
nome_clube varchar (100)
);

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

insert into usuarios values
(null, 'Carlos', 'carlos@gmail.com', '123456', 1, '2'),
(null, 'Mauricio', 'mauricio@gmail.com', '123456', 2, '3'),
(null, 'Jefferson', 'jefferson@gmail.com', '123456', 3, '4'),
(null, 'Paulo', 'paulo@gmail.com', '123456', 4, '5'),
(null, 'Yucatan', 'yucatan@gmail.com', '123456', 5, '1'),
(null, 'Matheus', 'matheus@gmail.com', '123456', 6, '6'),
(null, 'Juninho', 'Junior@gmail.com', '123456', 7, '7'),
(null, 'Pedro', 'pedro@gmail.com', '123456', 8, '8'),
(null, 'Lucas', 'lucas@gmail.com', '123456', 9, '9'),
(null, 'João', 'joao@gmail.com', '123456', 10, '10'),
(null, 'Nicolas', 'nicolas@gmail.com', '123456', 4, '2'),
(null, 'Sandro', 'sandro@gmail.com', '123456', 4, '1'),
(null, 'Giovanna', 'giovanna@gmail.com', '123456', 8, '1'),
(null, 'Julia', 'julia@gmail.com', '123456', 3, '3'),
(null, 'Maria', 'maria@gmail.com', '123456', 1, '5'),
(null, 'Paula', 'paula@gmail.com', '123456', 9, '8'),
(null, 'Karla', 'karla@gmail.com', '123456', 4, '10'),
(null, 'Patrícia', 'patricia@gmail.com', '123456', 10, '9');


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

SELECT usuarios.id_usuario, usuarios.nome_usuario, usuarios.email_usuario, usuarios.senha_usuario, usuarios.fk_jogador, usuarios.fk_clube, jogadores.nome_jogador, clubes.nome_clube
FROM usuarios inner join jogadores
on jogadores.id_jogador = usuarios.fk_jogador
inner join clubes
on clubes.id_clube = usuarios.fk_clube;