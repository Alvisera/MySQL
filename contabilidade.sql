create database contabilidade;

use contabilidade;

create table funcionarios (
    idfuncionarios int primary key auto_increment,
    nome varchar(30) not null,
    sexo enum('m','f') not null,
    email varchar(50) unique,
    idade char(2) not null,
    cpf varchar(15) unique
);

create table telefone (
    idtelefone int primary key auto_increment,
    ddd char(4),
    numero varchar(15) unique,
    tipo enum('res','com','cel'),
    id_funcionarios int,
    foreign key (id_funcionarios)
    references funcionarios (idfuncionarios)
);

create table endereco (
    idendereco int primary key auto_increment,
    rua varchar(50) not null,
    bairro varchar(50) not null,
    cidade varchar(50) not null,
    estado varchar(30) not null,
    cep varchar(15) not null,
    id_funcionarios int unique,
    foreign key (id_funcionarios)
    references funcionarios (idfuncionarios)
);

create table setores (
    idsetores int primary key auto_increment,
    areas varchar(50)
);

insert into setores values (null,'Auditoria');
insert into setores values (null,'Contabilidade Fiscal');
insert into setores values (null,'Contabilidade Gerencial');
insert into setores values (null,'Consultoria Financeira');
insert into setores values (null,'Gestão de Riscos');
insert into setores values (null,'Contabilidade de Custos');
insert into setores values (null,'Serviços de Payroll');
insert into setores values (null,'Serviços de Compliance');
insert into setores values (null,'Serviços de Planejamento Tributário');
insert into setores values (null,'Contabilidade de Gestão');
insert into setores values (null,'Analista de dados');
insert into setores values (null,'Contabilidade Forense');
insert into setores values (null,'Tecnologia da Informação');
insert into setores values (null,'Recursos Humanos');
insert into setores values (null,'Marketing e Desenvolvimento de Negócios');

create table setores_nomes (
    idsetores int primary key auto_increment,
    auditoria varchar(50),
    contab_fiscal varchar(50),
    contab_gerencial varchar(50),
    consul_financeira varchar(50),
    gestao_de_riscos varchar(50),
    contab_de_custos varchar(50),
    serv_de_payroll varchar(50),
    serv_de_compliance varchar(50),
    serv_de_planej_tribu varchar(50),
    contab_forense varchar(50),
    ti varchar(50),
    rh varchar(50),
    marketing varchar(50)
);

insert into setores_nomes (auditoria) values ('Srta. Beatriz Barros');

Insert Into funcionarios (idfuncionarios, nome, sexo, email, idade, cpf) Values (1, 'Srta. Beatriz Barros', 'F', 'PedroHenrique_Barros15@gmail.com', 63, '95618829240');  
Insert Into funcionarios (idfuncionarios, nome, sexo, email, idade, cpf) Values (2, 'Henrique Macedo', 'M', 'Elisio75@yahoo.com', 54, '05360284197');  
Insert Into funcionarios (idfuncionarios, nome, sexo, email, idade, cpf) Values (3, 'Washington Carvalho', 'M', 'Joaquim89@gmail.com', 18, '15346615458');  
Insert Into funcionarios (idfuncionarios, nome, sexo, email, idade, cpf) Values (4, 'Víctor Xavier', 'M', 'Celia_Oliveira50@yahoo.com', 48, '05676427516');  
Insert Into funcionarios (idfuncionarios, nome, sexo, email, idade, cpf) Values (5, 'Maria Júlia Barros', 'F', 'Felix.Silva@bol.com.br', 54, '90683442120');  
Insert Into funcionarios (idfuncionarios, nome, sexo, email, idade, cpf) Values (6, 'Maria Júlia Santos', 'F', 'AnaClara_Martins@bol.com.br', 26, '40732005868');  
Insert Into funcionarios (idfuncionarios, nome, sexo, email, idade, cpf) Values (7, 'Maria Cecília Xavier', 'F', 'Felicia.Silva71@bol.com.br', 40, '42812010413');  
Insert Into funcionarios (idfuncionarios, nome, sexo, email, idade, cpf) Values (8, 'Maitê Souza', 'F', 'Maria_Carvalho@yahoo.com', 38, '46501761707');  
Insert Into funcionarios (idfuncionarios, nome, sexo, email, idade, cpf) Values (9, 'Alícia Moraes', 'F', 'Marli_Xavier77@hotmail.com', 64, '70326092854');  
Insert Into funcionarios (idfuncionarios, nome, sexo, email, idade, cpf) Values (10, 'Sra. Ana Luiza Oliveira', 'F', 'Marli.Moreira43@hotmail.com', 25, '06726928812');  
Insert Into funcionarios (idfuncionarios, nome, sexo, email, idade, cpf) Values (11, 'Silas Costa', 'F', 'Manuela.Albuquerque14@gmail.com', 41, '60580787108');  
Insert Into funcionarios (idfuncionarios, nome, sexo, email, idade, cpf) Values (12, 'Fábio Batista Filho', 'M', 'MariaHelena.Carvalho@live.com', 21, '63332922488');  
Insert Into funcionarios (idfuncionarios, nome, sexo, email, idade, cpf) Values (13, 'Emanuelly Batista', 'F', 'Manuela_Moreira88@gmail.com', 23, '66882058244');  
Insert Into funcionarios (idfuncionarios, nome, sexo, email, idade, cpf) Values (14, 'Henrique Batista', 'M', 'Maite.Moreira@gmail.com', 40, '57145146159');  
Insert Into funcionarios (idfuncionarios, nome, sexo, email, idade, cpf) Values (15, 'João Miguel Franco', 'M', 'Paulo79@hotmail.com', 38, '02707197743');  
Insert Into funcionarios (idfuncionarios, nome, sexo, email, idade, cpf) Values (16, 'Kléber Moraes', 'M', 'Felix_Moreira@hotmail.com', 31, '53618564432');  
Insert Into funcionarios (idfuncionarios, nome, sexo, email, idade, cpf) Values (17, 'Maria Silva', 'F', 'Sara78@hotmail.com', 28, '45319295047');  
Insert Into funcionarios (idfuncionarios, nome, sexo, email, idade, cpf) Values (18, 'Maria Cecília Batista', 'F', 'Suelen.Costa@gmail.com', 14, '94123389117');  
Insert Into funcionarios (idfuncionarios, nome, sexo, email, idade, cpf) Values (19, 'Joana Nogueira', 'F', 'Warley.Carvalho56@bol.com.br', 44, '90250022685');  
Insert Into funcionarios (idfuncionarios, nome, sexo, email, idade, cpf) Values (20, 'Liz Braga', 'F', 'Heitor_Macedo@gmail.com', 43, '25565514869');  
Insert Into funcionarios (idfuncionarios, nome, sexo, email, idade, cpf) Values (21, 'Vitória Batista', 'F', 'Lorena_Braga@gmail.com', 48, '20467956027');  
Insert Into funcionarios (idfuncionarios, nome, sexo, email, idade, cpf) Values (22, 'Felipe Oliveira', 'M', 'Leonardo61@live.com', 42, '29065423199');  
Insert Into funcionarios (idfuncionarios, nome, sexo, email, idade, cpf) Values (23, 'Mariana Santos', 'F', 'Tertuliano.Saraiva@bol.com.br', 35, '00875711446');  
Insert Into funcionarios (idfuncionarios, nome, sexo, email, idade, cpf) Values (24, 'Meire Martins Jr.', 'F', 'Alice.Silva@live.com', 38, '59848264627');  
Insert Into funcionarios (idfuncionarios, nome, sexo, email, idade, cpf) Values (25, 'Félix Oliveira', 'M', 'EnzoGabriel_Costa@hotmail.com', 65, '26937081278');  
Insert Into funcionarios (idfuncionarios, nome, sexo, email, idade, cpf) Values (26, 'Eduarda Melo', 'F', 'Joaquim94@bol.com.br', 24, '59808312659');  
Insert Into funcionarios (idfuncionarios, nome, sexo, email, idade, cpf) Values (27, 'João Lucas Xavier', 'M', 'Maria84@bol.com.br', 28, '52777895836');  
Insert Into funcionarios (idfuncionarios, nome, sexo, email, idade, cpf) Values (28, 'Ladislau Silva', 'F', 'Benicio97@yahoo.com', 47, '60956580822');  
Insert Into funcionarios (idfuncionarios, nome, sexo, email, idade, cpf) Values (29, 'Heitor Martins', 'M', 'Igor_Costa45@hotmail.com', 42, '32247164747');  
Insert Into funcionarios (idfuncionarios, nome, sexo, email, idade, cpf) Values (30, 'Félix Moraes', 'M', 'Pablo.Martins@gmail.com', 26, '37870647677'); 

drop table funcionarios;
drop table endereco;
drop table telefone;

Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (1, '55', ' 91026-1964', 'cel', '1');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (2, '02', ' 94174-3254', 'cel', '2');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (3, '71', ' 97048-2870', 'cel', '3');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (4, '51', ' 92825-3675', 'cel', '4');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (5, '70', ' 97016-1587', 'cel', '5');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (6, '89', ' 94382-4209', 'cel', '6');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (7, '49', ' 95035-1107', 'cel', '7');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (8, '34', ' 91274-0629', 'cel', '8');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (9, '72', ' 93982-4044', 'cel', '9');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (10, '51', ' 99967-0609', 'cel', '10');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (11, '44', ' 90024-9669', 'cel', '11');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (12, '47', ' 95977-3892', 'cel', '12');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (13, '02', ' 91862-3619', 'cel', '13');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (14, '57', ' 91686-2426', 'cel', '14');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (15, '76', ' 91884-5149', 'cel', '15');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (16, '95', ' 96554-8526', 'cel', '16');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (17, '45', ' 90027-0134', 'cel', '17');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (18, '07', ' 96201-1709', 'cel', '18');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (19, '99', ' 92131-0920', 'cel', '19');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (20, '65', ' 93441-7128', 'cel', '20');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (21, '17', ' 95418-7849', 'cel', '21');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (22, '57', ' 95156-8894', 'cel', '22');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (23, '81', ' 95539-5032', 'cel', '23');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (24, '04', ' 90066-4471', 'cel', '24');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (25, '33', ' 91026-4174', 'cel', '25');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (26, '70', ' 97403-9126', 'cel', '26');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (27, '84', ' 91965-1186', 'cel', '27');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (28, '57', ' 93717-8955', 'cel', '28');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (29, '97', ' 90927-8888', 'cel', '29');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (30, '32', ' 95834-6968', 'cel', '30');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (31, '53', ' 97324-8372', 'cel', '5');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (32, '38', ' 92155-4257', 'cel', '10');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (33, '34', ' 93592-6524', 'cel', '16');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (34, '97', ' 99128-7424', 'cel', '21');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (35, '44', ' 93788-9568', 'cel', '25');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (36, '20', ' 95349-7602', 'cel', '17');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (37, '98', ' 97554-5003', 'cel', '30');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (38, '88', ' 96670-3481', 'cel', '19');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (39, '03', ' 91149-1217', 'cel', '3');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (40, '28', ' 97109-9417', 'cel', '5');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (41, '67', ' 99519-7960', 'cel', '8');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (42, '52', ' 97868-1074', 'cel', '2');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (43, '25', ' 91452-5520', 'cel', '11');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (44, '73', ' 95342-7358', 'cel', '13');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (45, '55', ' 97175-8409', 'cel', '28');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (46, '09', ' 91894-0962', 'cel', '22');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (47, '11', ' 99234-5048', 'cel', '14');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (48, '44', ' 92336-7013', 'cel', '19');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (49, '57', ' 90063-8021', 'cel', '23');  
Insert Into telefone (idtelefone, ddd, numero, tipo, id_funcionarios) Values (50, '20', ' 99294-6602', 'cel', '25');  

update telefone
set tipo ='res'
where idtelefone='12';

update telefone
set tipo ='res'
where idtelefone='19';

update telefone
set tipo ='res'
where idtelefone='34';

update telefone
set tipo ='res'
where idtelefone='46';

update telefone
set tipo ='res'
where idtelefone='1';

update telefone
set tipo ='com'
where idtelefone='5';

update telefone
set tipo ='com'
where idtelefone='14';

update telefone
set tipo ='com'
where idtelefone='27';

update telefone
set tipo ='com'
where idtelefone='32';

update telefone
set tipo ='com'
where idtelefone='49';
 

Insert Into endereco (idendereco, rua, bairro, cidade, estado, cep, id_funcionarios) Values (1, '6877 Danilo Alameda', 'São Cristóvão', 'Murilo do Sul', 'Amapá', '87996-016', 4);  
Insert Into endereco (idendereco, rua, bairro, cidade, estado, cep, id_funcionarios) Values (2, '30211 Ígor Alameda', 'Centro', 'Saraiva do Sul', 'Paraíba', '04327-390', 30);  
Insert Into endereco (idendereco, rua, bairro, cidade, estado, cep, id_funcionarios) Values (3, '778 Carvalho Travessa', 'Cancelli', 'Aline do Descoberto', 'Paraná', '72908-458', 9);  
Insert Into endereco (idendereco, rua, bairro, cidade, estado, cep, id_funcionarios) Values (4, '4927 Santos Rua', 'Maria Luiza', 'Emanuel do Norte', 'Rio de Janeiro', '72586-978', 8);  
Insert Into endereco (idendereco, rua, bairro, cidade, estado, cep, id_funcionarios) Values (5, '5539 Heloísa Rua', 'Country', 'Braga do Descoberto', 'Roraima', '51800-660', 18);  
Insert Into endereco (idendereco, rua, bairro, cidade, estado, cep, id_funcionarios) Values (6, '36259 Isis Marginal', 'Região do Lago', 'Giovanna de Nossa Senhora', 'São Paulo', '81975-795', 13);  
Insert Into endereco (idendereco, rua, bairro, cidade, estado, cep, id_funcionarios) Values (7, '7239 Célia Rodovia', 'Cancelli', 'Souza do Norte', 'Paraíba', '34907-266', 20);  
Insert Into endereco (idendereco, rua, bairro, cidade, estado, cep, id_funcionarios) Values (8, '74674 Oliveira Travessa', 'Canadá', 'Macedo do Sul', 'Santa Catarina', '10791-257', 14);  
Insert Into endereco (idendereco, rua, bairro, cidade, estado, cep, id_funcionarios) Values (9, '4209 Martins Rodovia', 'Parque São Paulo', 'Antônio do Norte', 'Amapá', '01749-756', 16);  
Insert Into endereco (idendereco, rua, bairro, cidade, estado, cep, id_funcionarios) Values (10, '37767 Costa Rua', 'Região do Lago', 'Bruna do Descoberto', 'Mato Grosso', '83972-580', 15);  
Insert Into endereco (idendereco, rua, bairro, cidade, estado, cep, id_funcionarios) Values (11, '68681 Benjamin Avenida', 'Country', 'Bryan do Descoberto', 'Rondônia', '03157-657', 17);  
Insert Into endereco (idendereco, rua, bairro, cidade, estado, cep, id_funcionarios) Values (12, '69279 Santos Travessa', 'São Cristóvão', 'Enzo Gabriel do Sul', 'Sergipe', '48821-249', 22);  
Insert Into endereco (idendereco, rua, bairro, cidade, estado, cep, id_funcionarios) Values (13, '8069 Barros Travessa', 'Maria Luiza', 'Fabrício do Norte', 'Amapá', '65230-369', 11);  
Insert Into endereco (idendereco, rua, bairro, cidade, estado, cep, id_funcionarios) Values (14, '40240 Silva Rodovia', 'Centro', 'Kléber do Descoberto', 'Rondônia', '26846-224', 25);  
Insert Into endereco (idendereco, rua, bairro, cidade, estado, cep, id_funcionarios) Values (15, '859 Lucca Travessa', 'Cascavel Velho', 'Hélio de Nossa Senhora', 'Pará', '95873-488', 12);  
Insert Into endereco (idendereco, rua, bairro, cidade, estado, cep, id_funcionarios) Values (16, '92914 Danilo Rua', 'Maria Luiza', 'Santos do Norte', 'Rondônia', '49743-716', 23);  
Insert Into endereco (idendereco, rua, bairro, cidade, estado, cep, id_funcionarios) Values (17, '1057 Isaac Travessa', 'Parque Verde', 'Oliveira de Nossa Senhora', 'Rio Grande do Norte', '06617-127', 6);  
Insert Into endereco (idendereco, rua, bairro, cidade, estado, cep, id_funcionarios) Values (18, '64293 Marli Marginal', 'Alto Alegre', 'Hugo do Descoberto', 'Bahia', '23260-530', 24);  
Insert Into endereco (idendereco, rua, bairro, cidade, estado, cep, id_funcionarios) Values (19, '6836 Enzo Avenida', 'Maria Luiza', 'Pablo do Sul', 'Roraima', '94216-999', 21);  
Insert Into endereco (idendereco, rua, bairro, cidade, estado, cep, id_funcionarios) Values (20, '618 Fabrícia Travessa', 'Country', 'Carlos de Nossa Senhora', 'Rio Grande do Sul', '89137-516', 3);  
Insert Into endereco (idendereco, rua, bairro, cidade, estado, cep, id_funcionarios) Values (21, '11436 Pereira Travessa', 'Neva', 'Benício do Sul', 'Amazonas', '15854-181', 7);  
Insert Into endereco (idendereco, rua, bairro, cidade, estado, cep, id_funcionarios) Values (22, '62269 Reis Rua', 'Pioneiros Catarinenses', 'Santos do Norte', 'Pará', '40021-721', 29);  
Insert Into endereco (idendereco, rua, bairro, cidade, estado, cep, id_funcionarios) Values (23, '526 Moreira Marginal', 'Parque Verde', 'Carvalho do Sul', 'Minas Gerais', '92575-199', 10);  
Insert Into endereco (idendereco, rua, bairro, cidade, estado, cep, id_funcionarios) Values (24, '4880 Pereira Rua', 'Universitário', 'Janaína do Norte', 'Rio Grande do Norte', '70231-436', 1);  
Insert Into endereco (idendereco, rua, bairro, cidade, estado, cep, id_funcionarios) Values (25, '735 Bryan Alameda', 'Coqueiral', 'Moraes de Nossa Senhora', 'Amapá', '52914-258', 2);  
Insert Into endereco (idendereco, rua, bairro, cidade, estado, cep, id_funcionarios) Values (26, '7143 Emanuel Alameda', 'Centro', 'Franco do Norte', 'Tocantins', '69615-808', 26);  
Insert Into endereco (idendereco, rua, bairro, cidade, estado, cep, id_funcionarios) Values (27, '620 Meire Avenida', 'Neva', 'Bernardo do Descoberto', 'Piauí', '94412-581', 5);  
Insert Into endereco (idendereco, rua, bairro, cidade, estado, cep, id_funcionarios) Values (28, '85388 Janaína Avenida', 'Parque São Paulo', 'Pedro Henrique do Descoberto', 'Rondônia', '25701-718', 27);  
Insert Into endereco (idendereco, rua, bairro, cidade, estado, cep, id_funcionarios) Values (29, '78640 Benício Rua', 'Pacaembu', 'Vicente do Norte', 'Acre', '95486-415', 28);  
Insert Into endereco (idendereco, rua, bairro, cidade, estado, cep, id_funcionarios) Values (30, '7593 Oliveira Travessa', 'Centro', 'Maria Helena do Descoberto', 'Sergipe', '46379-730', 19);

select nome, idfuncionarios from funcionarios;

select nome as Funcionario, rua as Rua, bairro as Bairro, cidade as Cidade
from funcionarios
    inner join endereco
    on idfuncionarios = id_funcionarios
where id_funcionarios='15';

select nome, cidade
from funcionarios
    inner join endereco
    on funcionarios.idfuncionarios = endereco.id_funcionarios
where cidade like '%norte';

select nome, cidade, ddd, numero
from funcionarios
    inner join endereco
    on funcionarios.idfuncionarios = endereco.id_funcionarios
    inner join telefone
    on funcionarios.idfuncionarios = telefone.id_funcionarios;

select ddd
from telefone;

select nome, ddd, numero, estado
from funcionarios
    inner join telefone
    on funcionarios.idfuncionarios = telefone.id_funcionarios
    inner join endereco
    on funcionarios.idfuncionarios = endereco.id_funcionarios;

select nome, numero
from funcionarios
    inner join telefone
    on funcionarios.idfuncionarios = telefone.id_funcionarios;


select idfuncionarios, nome, sexo, cidade, ddd, numero
from funcionarios f
    inner join endereco e
    on f.idfuncionarios = e.id_funcionarios
    inner join telefone t 
    on f.idfuncionarios = t.id_funcionarios
where sexo = 'f'
or idfuncionarios = '12' 
or idfuncionarios = '16';

select count(*), sexo
from funcionarios
group by sexo;

select ddd, numero 
from telefone
where ddd like '%04%' 
or ddd like '%70%';

alter table funcionarios
add nacionalidade varchar(20);

alter table funcionarios
drop column nacionalidade;

alter table endereco
change estado uf varchar(30) not null;

alter table endereco
change uf estado varchar(30) not null;

alter table endereco
modify estado varchar(25) not null;

select nome, sexo, bairro
from funcionarios
    inner join endereco
    on funcionarios.idfuncionarios = endereco.id_funcionarios
where (bairro = 'maria luiza' and sexo = 'f')
or (bairro = 'centro' and sexo ='f');

select nome, sexo, bairro
from funcionarios
    inner join endereco
    on funcionarios.idfuncionarios = endereco.id_funcionarios
where bairro = 'maria luiza'
or bairro ='centro';

select nome, cidade, ddd, numero
from funcionarios f
    inner join endereco e
    on f.idfuncionarios = e.id_funcionarios
    inner join telefone t
    on f.idfuncionarios = t.id_funcionarios
where sexo = 'f';

