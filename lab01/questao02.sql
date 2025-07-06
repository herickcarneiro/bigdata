-- QUESTAO 2 --

-- ----------------------------
-- LETRA A
-- ----------------------------
SELECT E.SSN, D.NOMEDEP, D.PARENTESCO FROM EMPREGADO E JOIN DEPENDENTE D ON E.SSN = D.ESSN ORDER BY E.SSN ASC, D.PARENTESCO DESC

-- ----------------------------
-- LETRA B
-- ----------------------------
SELECT E.PNOME, E.ENDERECO FROM EMPREGADO E JOIN DEPARTAMENTO D ON E.DNO = D.DNUMERO WHERE D.DNOME = 'Pesquisa'

-- ----------------------------
-- LETRA C
-- ----------------------------
SELECT P.PJNOME, D.DNOME, E.UNOME, E.ENDERECO, E.DATANASC FROM DEPARTAMENTO D JOIN PROJETO P ON D.DNUMERO = P.DNUM JOIN EMPREGADO E ON D.GERSSN = E.SSN WHERE P.PLOCAL = 'Araucaria'

-- ----------------------------
-- LETRA D
-- ----------------------------
SELECT E.PNOME FROM TRABALHA T JOIN EMPREGADO E ON T.ESSN = E.SSN JOIN PROJETO P ON T.PNO = P.PNUMERO WHERE P.PJNOME = 'Automatizacao' AND T.HORAS > '10'

-- ----------------------------
-- LETRA E
-- ----------------------------
SELECT SALARIO, PNOME FROM EMPREGADO ORDER BY SALARIO DESC LIMIT 3

-- ----------------------------
-- LETRA F
-- ----------------------------
SELECT DISTINCT S.PNOME AS NomeSupervisor, S.SALARIO * 1.2 AS SalarioComAumento FROM EMPREGADO E JOIN EMPREGADO S ON E.SUPERSSN = S.SSN;

-- ----------------------------
-- LETRA G
-- ----------------------------
SELECT D.DNOME, L.DLOCALIZACAO FROM LOCALIZACAO L JOIN DEPARTAMENTO D ON L.DNUM = D.DNUMERO

-- ----------------------------
-- LETRA H
-- ----------------------------
SELECT D.DNOME, P.PJNOME FROM DEPARTAMENTO D JOIN PROJETO P ON D.DNUMERO = P.DNUM

-- ----------------------------
-- LETRA I
-- ----------------------------
SELECT PNOME, DATANASC FROM EMPREGADO WHERE SEXO = 'F' AND SALARIO > '30.000'

-- ----------------------------
-- LETRA J
-- ----------------------------
SELECT E.PNOME, P.PJNOME FROM TRABALHA T JOIN EMPREGADO E ON T.ESSN = E.SSN JOIN PROJETO P ON T.PNO = P.PNUMERO WHERE E.PNOME= 'Fabio'

--=============================================================================================================================================--