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
    areas varchar(50),
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
    marketing varchar(50),
    id_funcionarios int,
    foreign key (id_funcionarios)
    references funcionarios (idfuncionarios)
);



-----------------------------------VIEWS-----------------------------------

SELECT * FROM V_NOME_TELEFONE;


CREATE OR REPLACE VIEW V_NOME_TELEFONE AS
    SELECT  F.NOME,
            T.DDD,
            T.NUMERO,
            T.TIPO
        FROM FUNCIONARIOS F
            INNER JOIN TELEFONE T
                ON IDFUNCIONARIOS = ID_FUNCIONARIOS;
---------------------------------------------------------------------------

SELECT * FROM V_NOME_ENDERECO;

CREATE OR REPLACE VIEW V_NOME_ENDERECO AS
    SELECT  F.NOME,
            E.RUA,
            E.BAIRRO,
            E.CIDADE,
            E.ESTADO,
            E.CEP 
        FROM FUNCIONARIOS F
            INNER JOIN ENDERECO E
                ON IDFUNCIONARIOS = ID_FUNCIONARIOS;
---------------------------------------------------------------------------

SELECT * FROM V_NOME_SETORES_1;
SELECT * FROM V_NOME_SETORES_2;

CREATE OR REPLACE VIEW V_NOME_SETORES_1 AS
    SELECT  IDSETORES AS ID,
            COALESCE(S.auditoria, '') AS AUDITORIA,
            COALESCE(S.contab_fiscal, '') AS CONTAB_FISCAL,
            COALESCE(S.contab_gerencial, '') AS CONTAB_GERENCIAL,
            COALESCE(S.consul_financeira, '') AS CONSUL_FINANCEIRA,
            COALESCE(S.gestao_de_riscos, '') AS GESTAO_DE_RISCOS,
            COALESCE(S.contab_de_custos, '') AS CONTAB_DE_CUSTOS,
            COALESCE(S.serv_de_payroll, '') AS SERV_DE_PAYROLL
        FROM SETORES S;

CREATE OR REPLACE VIEW V_NOME_SETORES_2 AS          
    SELECT  IDSETORES AS ID,
            COALESCE(S.serv_de_compliance, '') AS SERV_DE_COMPLIANCE,
            COALESCE(S.serv_de_planej_tribu, '') AS SERV_DE_PLANEJ_TRIBU,
            COALESCE(S.contab_forense, '') AS CONTAB_FORENSE,
            COALESCE(S.ti, '') AS TI,
            COALESCE(S.rh, '') AS RH,
            COALESCE(S.marketing, '') AS MARKETING
        FROM SETORES S;


update telefone
set tipo ='res'
where idtelefone='12';

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



