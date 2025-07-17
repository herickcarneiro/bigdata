-- QUESTAO 3 --

-- ----------------------------
-- LETRA A
-- ----------------------------
SELECT e.pnome, e.unome 
FROM Empregado e 
JOIN Dependente d 
ON e.ssn = d.essn 
WHERE e.pnome = d.nomedep 
AND e.sexo = d.sexodep

-- ----------------------------
-- LETRA B
-- ----------------------------
SELECT e.pnome, e.unome 
FROM Empregado e 
WHERE e.salario > (
    SELECT AVG(e.salario) from Empregado e WHERE e.dno = '5'
)

-- ----------------------------
-- LETRA C
-- ----------------------------
SELECT e.ssn 
FROM Empregado e 
JOIN Trabalha t 
ON e.ssn = t.essn 
WHERE (t.pno, t.horas) IN (
    SELECT t.pno, t.horas 
    FROM Trabalha t 
    WHERE t.essn = '333445555'
) 
AND e.ssn <> '333445555'

-- ----------------------------
-- LETRA D
-- ----------------------------
SELECT e.ssn, e.pnome
FROM Empregado e
LEFT JOIN Trabalha t ON e.ssn = t.essn
WHERE t.essn IS NULL;

-- ----------------------------
-- LETRA E
-- ----------------------------
SELECT e.ssn, e.pnome 
FROM Empregado e 
LEFT JOIN Dependente d 
ON e.ssn = d.essn 
WHERE d.essn is NULL

-- ----------------------------
-- LETRA F
-- ----------------------------
SELECT e.unome
FROM Empregado e
JOIN Departamento d ON e.ssn = d.gerssn
LEFT JOIN Dependente dep ON e.ssn = dep.essn
WHERE dep.essn IS NULL;