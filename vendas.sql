CREATE DATABASE TESTE;

CREATE TABLE VENDEDORES(
    PRIMARY KEY (IDVENDEDORES),
    NOME VARCHAR(30),
    JANEIRO FLOAT (10,2),
    FEVEREIRO FLOAT (10,2),
    MARCO FLOAT (10,2)
);



---------------------------------INSERIR VENDEDORES E VALORES(JAN, FEV, MAR)--------------------------------------------------------------------
DELIMITER ;

CREATE PROCEDURE VENDAS_MES (P_NOME VARCHAR (30),
                             P_JAN FLOAT (10,2),
                             P_FEV FLOAT (10,2),
                             P_MAR FLOAT (10,2))
    BEGIN
        INSERT INTO VENDEDORES VALUES (NULL, P_NOME, P_JAN, P_FEV, P_MAR);
    END 
    #                       

CALL VENDAS_MES('(NOME)',(JAN) ,(FEV), (MAR))

CALL VENDAS_MES('GABRIEL',40000.00 ,20000.00, 30000.00);
CALL VENDAS_MES('BRUNO',25000.00 ,27000.00, 32000.00);
CALL VENDAS_MES('JOAO',37000.00 ,22000.00, 21000.00);
CALL VENDAS_MES('ANA',18000.00 ,34000.00, 14000.00);
CALL VENDAS_MES('MARIA',29000.00 ,12000.00, 39000.00);
CALL VENDAS_MES('CLEBER',21000.00 ,19000.00, 22000.00);
CALL VENDAS_MES('JULIA',32000.00 ,44000.00, 28000.00);
CALL VENDAS_MES('DANIEL',45000.00 ,49000.00, 43000.00);
CALL VENDAS_MES('LUAN',50000.00 ,32000.00, 41000.00);
CALL VENDAS_MES('ELOISA',10000.00 ,46000.00, 38000.00);

------------------------------------------------------------------------------------------------------------------------------------------------

SELECT  MAX(JANEIRO) AS MAX_JAN,
        MIN(JANEIRO) AS MIN_JAN,
        AVG(JANEIRO) AS MEDIA_JAN
    FROM VENDEDORES;

-----------------------------------------------------------------------------------------------

SELECT * FROM V_RELATORIO_JAN_FEV_MAR_VENDAS;

CREATE OR REPLACE VIEW V_RELATORIO_JAN_FEV_MAR_VENDAS AS
    SELECT  NOME,
            JANEIRO,
            FEVEREIRO,
            MARCO
        FROM VENDEDORES;
            


CREATE PROCEDURE VERIFICAR_VENDAS(P_NOME VARCHAR(30))
BEGIN
    SELECT  JANEIRO,
            FEVEREIRO,
            MARCO,
            JANEIRO + FEVEREIRO + MARCO AS TOTAL_TRI
        FROM VENDEDORES
        WHERE NOME = P_NOME;
END 
#

CALL VERIFICAR_VENDAS('NOME');
CALL VERIFICAR_VENDAS('GABRIEL');

--------------------------------------------------------------------------------------------------------------------------------


----------------------VERIFICAR TOTAL DE CADA MES------------------------------

CALL VERIFICAR_TOTAL_JAN()
CALL VERIFICAR_TOTAL_FEV()
CALL VERIFICAR_TOTAL_MAR()


------------------------------------------
CREATE PROCEDURE VERIFICAR_TOTAL_JAN()
BEGIN

        SELECT SUM(JANEIRO) AS TOTAL_JAN
                FROM VENDEDORES;

END
#
-------------------------------------------

-------------------------------------------
CREATE PROCEDURE VERIFICAR_TOTAL_FEV()
BEGIN

        SELECT SUM(FEVEREIRO) AS TOTAL_FEV
                FROM VENDEDORES;

END
#
-------------------------------------------

-------------------------------------------
CREATE PROCEDURE VERIFICAR_TOTAL_MAR()
BEGIN

        SELECT SUM(MARCO) AS TOTAL_MAR
                FROM VENDEDORES;

END
#
-------------------------------------------

SELECT  NOME,
        MARCO
    FROM VENDEDORES
    WHERE MARCO = (SELECT MAX(MARCO) FROM VENDEDORES);


SELECT  NOME,
        FEVEREIRO
    FROM VENDEDORES
    WHERE FEVEREIRO < (SELECT TRUNCATE(AVG(FEVEREIRO), 2) FROM VENDEDORES);
 
SELECT AVG(FEVEREIRO) AS MEDIA FROM VENDEDORES;

    SELECT  NOME,
            JANEIRO,
            FEVEREIRO,
            MARCO,
            JANEIRO + FEVEREIRO + MARCO AS TOTAL_TRI
        FROM VENDEDORES;
