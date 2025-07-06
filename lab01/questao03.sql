-- QUESTAO 3 --

-- ----------------------------
-- LETRA A
-- ----------------------------
SELECT S.SSN, S.PNOME, S.UNOME FROM EMPREGADO S JOIN EMPREGADO E ON S.SUPERSSN = E.SSN WHERE S.DNO <> E.DNO;

-- ----------------------------
-- LETRA B
-- ----------------------------
SELECT E.SSN, D.NOMEDEP, D.PARENTESCO FROM EMPREGADO E JOIN DEPENDENTE D ON E.SSN = D.ESSN ORDER BY E.SSN ASC, D.PARENTESCO DESC

-- ----------------------------
-- LETRA C
-- ----------------------------
SELECT E.PNOME FROM EMPREGADO E JOIN EMPREGADO S ON E.SUPERSSN = S.SSN WHERE S.PNOME = 'Joaquim' AND S.INICIALM = 'E' AND S.UNOME = 'Brito'

-- ----------------------------
-- LETRA D
-- ----------------------------
SELECT P.PNUMERO, P.PJNOME FROM TRABALHA T JOIN PROJETO P ON T.PNO = P.PNUMERO JOIN EMPREGADO E ON T.ESSN = E.SSN WHERE E.UNOME = 'Will'

-- ----------------------------
-- LETRA E
-- ----------------------------
SELECT DISTINCT E.PNOME FROM EMPREGADO E JOIN TRABALHA T ON E.SSN = T.ESSN JOIN PROJETO P ON T.PNO = P.PNUMERO WHERE P.DNUM = '5'

-- ----------------------------
-- LETRA F
-- ----------------------------
SELECT DISTINCT E.PNOME, E.DATANASC FROM TRABALHA T JOIN PROJETO P ON T.PNO = P.PNUMERO JOIN EMPREGADO E ON T.ESSN = E.SSN JOIN LOCALIZACAO L ON P.DNUM = L.DNUM WHERE L.DLOCALIZACAO <> 'Curitiba'

--=============================================================================================================================================--