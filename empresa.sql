create database empresa;

use empresa;

create table cliente (
    idcliente int primary key auto_increment,
    nome varchar(30) not null,
    sexo enum('M','F') not null,
    email varchar(50) unique,
    cpf varchar(15) unique
);

create table endereco (
    idendereco int primary key auto_increment,
    rua varchar(40) not null,
    bairro varchar(20) not null,
    cidade varchar(15) not null,
    estado char(2) not null,
    id_cliente int unique,
    foreign key (id_cliente)
    references cliente (idcliente)
);

create table telefone (
    idtelefone int primary key auto_increment,
    tipo enum('res','com','cel'),
    numero varchar(20) unique,
    id_cliente int,
    foreign key (id_cliente)
    references cliente (idcliente)
);

INSERT INTO CLIENTE VALUES(NULL,'JOAO','M','JOAOA@IG.COM','76567587887');
INSERT INTO CLIENTE VALUES(NULL,'CARLOS','M','CARLOSA@IG.COM','5464553466');
INSERT INTO CLIENTE VALUES(NULL,'ANA','F','ANA@IG.COM','456545678');
INSERT INTO CLIENTE VALUES(NULL,'CLARA','F',NULL,'5687766856');
INSERT INTO CLIENTE VALUES(NULL,'JORGE','M','JORGE@IG.COM','8756547688');
INSERT INTO CLIENTE VALUES(NULL,'CELIA','M','JCELIA@IG.COM','5767876889');
INSERT INTO CLIENTE VALUES(NULL,'FLAVIO','M','FLAVIO@IG.COM','4657765');
INSERT INTO CLIENTE VALUES(NULL,'ANDRE','M','ANDRE@GLOBO.COM','7687567');
INSERT INTO CLIENTE VALUES(NULL,'GIOVANA','F',NULL,'0876655');
INSERT INTO CLIENTE VALUES(NULL,'KARLA','M','KARLA@GMAIL.COM','545676778');
INSERT INTO CLIENTE VALUES(NULL,'DANIELE','M','DANIELE@GMAIL.COM','43536789');
INSERT INTO CLIENTE VALUES(NULL,'LORENA','M',NULL,'774557887');
INSERT INTO CLIENTE VALUES(NULL,'EDUARDO','M',NULL,'54376457');
INSERT INTO CLIENTE VALUES(NULL,'ANTONIO','F','ANTONIO@IG.COM','12436767');
INSERT INTO CLIENTE VALUES(NULL,'ANTONIO','M','ANTONIO@UOL.COM','3423565');
INSERT INTO CLIENTE VALUES(NULL,'ELAINE','M','ELAINE@GLOBO.COM','32567763');
INSERT INTO CLIENTE VALUES(NULL,'CARMEM','M','CARMEM@IG.COM','787832213');
INSERT INTO CLIENTE VALUES(NULL,'ADRIANA','F','ADRIANA@GMAIL.COM','88556942');
INSERT INTO CLIENTE VALUES(NULL,'JOICE','F','JOICE@GMAIL.COM','55412256');

INSERT INTO ENDERECO VALUES(NULL,'RUA ANTONIO SA','CENTRO','B. HORIZONTE','MG',4);
INSERT INTO ENDERECO VALUES(NULL,'RUA CAPITAO HERMES','CENTRO','RIO DE JANEIRO','RJ',1);
INSERT INTO ENDERECO VALUES(NULL,'RUA PRES VARGAS','JARDINS','SAO PAULO','SP',3);
INSERT INTO ENDERECO VALUES(NULL,'RUA ALFANDEGA','ESTACIO','RIO DE JANEIRO','RJ',2);
INSERT INTO ENDERECO VALUES(NULL,'RUA DO OUVIDOR','FLAMENGO','RIO DE JANEIRO','RJ',6);
INSERT INTO ENDERECO VALUES(NULL,'RUA URUGUAIANA','CENTRO','VITORIA','ES',5);
INSERT INTO ENDERECO VALUES(NULL,'RUA GUEDES','CASCADURA','B. HORIZONTE','MG',9);
INSERT INTO ENDERECO VALUES(NULL,'RUA MAIA LACERDA','ESTACIO','RIO DE JANEIRO','RJ',10);
INSERT INTO ENDERECO VALUES(NULL,'RUA VISCONDESSA','CENTRO','RIO DE JANEIRO','RJ',11);
INSERT INTO ENDERECO VALUES(NULL,'RUA NELSON MANDELA','COPACABANA','RIO DE JANEIRO','RJ',12);
INSERT INTO ENDERECO VALUES(NULL,'RUA ARAUJO LIMA','CENTRO','VITORIA','ES',13);
INSERT INTO ENDERECO VALUES(NULL,'RUA CASTRO ALVES','LEBLON','RIO DE JANEIRO','RJ',14);
INSERT INTO ENDERECO VALUES(NULL,'AV CAPITAO ANTUNES','CENTRO','CURITIBA','PR',15);
INSERT INTO ENDERECO VALUES(NULL,'AV CARLOS BARROSO','JARDINS','SAO PAULO','SP',16);
INSERT INTO ENDERECO VALUES(NULL,'ALAMEDA SAMPAIO','BOM RETIRO','CURITIBA','PR',17);
INSERT INTO ENDERECO VALUES(NULL,'RUA DA LAPA','LAPA','SAO PAULO','SP',18);
INSERT INTO ENDERECO VALUES(NULL,'RUA GERONIMO','CENTRO','RIO DE JANEIRO','RJ',19);
INSERT INTO ENDERECO VALUES(NULL,'RUA GOMES FREIR','CENTRO','RIO DE JANEIRO','RJ',20);
INSERT INTO ENDERECO VALUES(NULL,'RUA GOMES FREIRE','CENTRO','RIO DE JANEIRO','RJ',21);
INSERT INTO ENDERECO VALUES(NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO ENDERECO VALUES(NULL, NULL, NULL, NULL, NULL, 8);


INSERT INTO TELEFONE VALUES(NULL,'CEL','78458743',5);
INSERT INTO TELEFONE VALUES(NULL,'RES','56576876',5);
INSERT INTO TELEFONE VALUES(NULL,'CEL','87866896',1);
INSERT INTO TELEFONE VALUES(NULL,'COM','54768899',2);
INSERT INTO TELEFONE VALUES(NULL,'RES','99667587',1);
INSERT INTO TELEFONE VALUES(NULL,'CEL','78989765',3);
INSERT INTO TELEFONE VALUES(NULL,'CEL','99766676',3);
INSERT INTO TELEFONE VALUES(NULL,'COM','66687899',1);
INSERT INTO TELEFONE VALUES(NULL,'RES','89986668',5);
INSERT INTO TELEFONE VALUES(NULL,'CEL','88687909',2);
INSERT INTO TELEFONE VALUES(NULL,'RES','68976565',9);
INSERT INTO TELEFONE VALUES(NULL,'CEL','99656675',9);
INSERT INTO TELEFONE VALUES(NULL,'CEL','33567765',11);
INSERT INTO TELEFONE VALUES(NULL,'CEL','88668786',11);
INSERT INTO TELEFONE VALUES(NULL,'COM','55689654',11);
INSERT INTO TELEFONE VALUES(NULL,'COM','88687979',12);
INSERT INTO TELEFONE VALUES(NULL,'COM','88965676',13);
INSERT INTO TELEFONE VALUES(NULL,'CEL','89966809',15);
INSERT INTO TELEFONE VALUES(NULL,'COM','88679978',16);
INSERT INTO TELEFONE VALUES(NULL,'CEL','99655768',17);
INSERT INTO TELEFONE VALUES(NULL,'RES','89955665',18);
INSERT INTO TELEFONE VALUES(NULL,'RES','77455786',19);
INSERT INTO TELEFONE VALUES(NULL,'RES','89766554',19);
INSERT INTO TELEFONE VALUES(NULL,'RES','77755785',20);
INSERT INTO TELEFONE VALUES(NULL,'COM','44522578',20);

select numero 
    from telefone
where id_cliente='5';

select count(*) from telefone;
select count(*) from endereco;
select count(*) from cliente;

select nome, email, cidade, numero
    from cliente, endereco, telefone
where idcliente = id_cliente
    and sexo ='m';

select count(*) as registros, sexo
from cliente
where sexo='f'
group by sexo;

select nome, email, cidade
from cliente
inner join endereco
on idcliente = id_cliente
where sexo ='f';

select idcliente, nome
from cliente
where nome='jorge';

select id_cliente, count(*)
from telefone
group by id_cliente;

select id_cliente, numero, tipo, count(*)
from telefone
where id_cliente = 5
group by tipo;

select nome, numero, tipo
from cliente
    inner join telefone
    on idcliente = id_cliente
where idcliente = 5;

select * from telefone;

select nome, sexo, bairro, cidade, tipo, numero
from cliente
    inner join endereco
    on cliente.idcliente = endereco.id_cliente
    inner join telefone
    on cliente.idcliente = telefone.id_cliente;

select nome, sexo, bairro, cidade, tipo, numero
from cliente
    inner join endereco
    on cliente.idcliente = endereco.id_cliente
    inner join telefone 
    on cliente.idcliente = telefone.id_cliente;

desc cliente;
desc endereco;
desc telefone;

select c.idcliente, c.nome, c.sexo, c.email, c.cpf,
       e.rua, e.bairro, e.cidade, e.estado,
       t.tipo, t.numero
from cliente c
    inner join endereco e
    on c.idcliente = e.id_cliente
    inner join telefone t
    on c.idcliente = t.id_cliente;

select c.idcliente, c.nome, c.sexo, c.email, c.cpf,
       e.rua, e.bairro, e.cidade, e.estado,
       t.tipo, t.numero
from cliente c
    inner join endereco e
    on c.idcliente = e.id_cliente
    inner join telefone t
    on c.idcliente = t.id_cliente
where sexo ='m';

UPDATE CLIENTE
SET SEXO = 'F'
WHERE IDCLIENTE IN (11,12,16,17);

select c.idcliente, c.nome, c.sexo, c.email, c.cpf,
       e.rua, e.bairro, e.cidade, e.estado,
       t.tipo, t.numero
from cliente c
    inner join endereco e
    on c.idcliente = e.id_cliente
    inner join telefone t
    on c.idcliente = t.id_cliente
where sexo ='f';

select count(*), sexo 
from cliente
group by sexo;

select idcliente, email, bairro, cidade, tipo
from cliente c
    inner join endereco e
    on c.idcliente = e.id_cliente
    inner join telefone t
    on c.idcliente = t.id_cliente
where (bairro = 'centro' and sexo ='f' and cidade = 'rio de janeiro')
or 

select c.idcliente, c.nome, c.sexo, 
       e.bairro, e.cidade, 
       t.tipo
from cliente c
    inner join endereco e
    on c.idcliente = e.id_cliente
    inner join telefone t
    on c.idcliente = t.id_cliente
where sexo = 'F'
and bairro = 'centro'
and cidade = 'rio de janeiro'
and (tipo ='res' or tipo ='com' and sexo = 'f');

select c.idcliente, c.nome, c.sexo, c.email
       e.bairro, e.cidade, e.estado,
       t.tipo, t.numero
from cliente c
    inner join endereco e
    on c.idcliente = e.id_cliente
    inner join telefone t
    on c.idcliente = t.id_cliente
where sexo = 'F'
and bairro = 'centro'
and cidade = 'rio de janeiro';

select c.nome, c.sexo, t.tipo
from cliente c
    inner join telefone t
    on c.idcliente = t.id_cliente
where sexo ='f';

select nome, email, numero as celular, estado
from cliente c
    inner join telefone t
    on c.idcliente = t.id_cliente
    inner join endereco e
    on c.idcliente = e.id_cliente
where estado = 'RJ'
and tipo = 'cel';

select nome, email, numero as celular
from cliente c
    inner join telefone t
    on c.idcliente = t.id_cliente
    inner join endereco e
    on c.idcliente = e.id_cliente
where tipo = 'cel' 
and sexo ='f'
and estado ='sp';

select c.idcliente, c.nome, c.sexo, c.email
       e.bairro, e.cidade, e.estado,
       t.tipo, t.numero
from cliente c
    inner join endereco e
    on c.idcliente = e.id_cliente
    inner join telefone t
    on c.idcliente = t.id_cliente;

/* VIEWS */

SELECT * FROM V_RELATORIO;

        create view v_relatorio as 
            select c.idcliente,
                c.nome,
                c.sexo,
                ifnull(c.email, 'NÃO TEM EMAIL') as 'email',
                c.cpf,
                ifnull(e.bairro, 'NENHUM CADASTRO') as 'bairro',
                ifnull(e.cidade, 'NENHUM CADASTRO') as 'cidade',
                ifnull(e.estado, 'NENHUM CADASTRO') as 'estado',
                t.tipo,
                t.numero
            from cliente c
                inner join endereco e
                    on c.idcliente = e.id_cliente
                inner join telefone t
                    on c.idcliente = t.id_cliente;

--------------------------------------------------
SELECT * FROM V_NOME_TELEFONE;

    create or replace view v_nome_telefone as 
        select c.nome,
            t.numero,
            t.tipo
        from cliente c
            inner join telefone t
                on c.idcliente = t.id_cliente;

--------------------------------------------------
SELECT * FROM V_NOME_ENDERECO;

create or replace view v_nome_endereco as 
    select c.nome,
        e.rua,
        e.bairro,
        e.cidade,
        e.estado
    from cliente c 
        inner join endereco e
            on c.idcliente = e.id_cliente;


/* STORED PROCEDURES */

DELIMITER $

CALL RELATORIO_CLIENTES() --- RELATORIO COM APENAS INFORMAÇÕES ESSENCIAIS DO CLIENTE

create procedure RELATORIO_CLIENTES()
begin
    select c.idcliente,
                c.nome,
                c.sexo,
                ifnull(c.email, 'NÃO TEM EMAIL') as 'email',
                c.cpf,
                e.bairro,
                e.cidade,
                e.estado,
                t.tipo,
                t.numero
            from cliente c
                inner join endereco e
                    on c.idcliente = e.id_cliente
                inner join telefone t
                    on c.idcliente = t.id_cliente;
end
$

DELIMITER ;


select  c.nome,
        e.rua
    from cliente c
        inner join endereco e
            on idcliente = id_cliente;
            