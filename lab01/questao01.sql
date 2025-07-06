-- QUESTAO 1 --

-- ----------------------------
-- LETRA A
-- ----------------------------
INSERT INTO EMPREGADO VALUES ('943775543', 'Roberto', 'F', 'Silva', 'M', 'Rua X, 22 – Araucária – PR', '1952-06-21', '888665555', '1', '58000')

-- ----------------------------
-- LETRA B
-- ----------------------------
INSERT INTO PROJETO VALUES ('4', 'ProdutoA', 'Araucaria', '2')
-- Erro: dnum = 2 nao existe na tabela departamento (chave estrangeira nesta tabela).

-- ----------------------------
-- LETRA C
-- ----------------------------
INSERT INTO DEPARTAMENTO VALUES ('4', 'Produção', '943775543', '1998-10-01')
-- Erro: dnumero eh cahve primeira desta tabela e dnumero =4 ja existe.

-- ----------------------------
-- LETRA D
-- ----------------------------
INSERT INTO TRABALHA VALUES ('677678989', null, '40')
-- Erro: pno = null viola a condicao de not-null definida nao criacao da tabela.

-- ----------------------------
-- LETRA E
-- ----------------------------
INSERT INTO DEPENDENTE VALUES ('453453453', 'Joao', 'M', '1970-12-12', 'CONJUGE')

-- ----------------------------
-- LETRA F
-- ----------------------------
DELETE FROM TRABALHA WHERE ESSN = '333445555'

-- ----------------------------
-- LETRA G
-- ----------------------------
DELETE FROM EMPREGADO WHERE SSN = '987654321'
-- Errro: a chave ssn eh refernciada na tabela empregado.

-- ----------------------------
-- LETRA H
-- ----------------------------
DELETE FROM PROJETO WHERE pjnome = 'ProdutoX'
-- Erro: a chave pjnome eh referenciada na tabela trabalha.

-- ----------------------------
-- LETRA I
-- ----------------------------
UPDATE DEPARTAMENTO SET GERSSN = '123456789', GERDATAINICIO = '1999-01-10' WHERE DNUMERO = '5'

-- ----------------------------
-- LETRA J
-- ----------------------------
UPDATE EMPREGADO SET SUPERSSN = '943775543' WHERE SSN = '999887777'

-- ----------------------------
-- LETRA K
-- ----------------------------
UPDATE TRABALHA SET HORAS = '5.0' WHERE ESSN = '999887777' AND PNO = '10'

--=============================================================================================================================================--