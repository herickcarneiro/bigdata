-- QUESTAO 2 --

-- ----------------------------
-- LETRA A
-- ----------------------------
SELECT AVG(e.salario) as mediaSalarial 
FROM Empregado e 
where e.sexo = 'F'

-- ----------------------------
-- LETRA B
-- ----------------------------
SELECT s.ssn as supervisores, COUNT(s.ssn) as numEmp 
FROM Empregado e 
JOIN Empregado s 
on e.superssn = s.ssn 
GROUP BY s.ssn

-- ----------------------------
-- LETRA C
-- ----------------------------
SELECT t.essn, SUM(t.horas) AS total_horas
FROM Trabalha t
WHERE t.horas IS NOT NULL
GROUP BY t.essn
ORDER BY total_horas DESC
LIMIT 1;

-- ----------------------------
-- LETRA D
-- ----------------------------
SELECT p.pjnome, SUM(t.horas) as total_horas 
FROM Projeto p 
JOIN Trabalha t 
ON p.pnumero = t.pno 
GROUP BY p.pnumero

-- ----------------------------
-- LETRA E
-- ----------------------------
SELECT d.dnome, AVG(e.salario) 
FROM Departamento d 
OIN Empregado e 
ON d.dnumero = e.dno 
GROUP BY d.dnome

-- ----------------------------
-- LETRA F
-- ----------------------------
SELECT e.pnome 
FROM Empregado e 
JOIN Dependente d 
ON e.ssn = d.essn 
GROUP BY e.ssn, e.pnome 
HAVING COUNT(d.essn) > 2

-- ----------------------------
-- LETRA G
-- ----------------------------
SELECT d.dnome, COUNT(p.dnum) as qtd 
FROM Departamento d 
LEFT JOIN Projeto p 
ON d.dnumero = p.dnum  
GROUP BY d.dnome
ORDER BY qtd ASC 
LIMIT 1

-- ----------------------------
-- LETRA H
-- ----------------------------
SELECT pnome, SUBSTRING(endereco FROM 10 FOR 13) as endereco 
FROM Empregado

-- ----------------------------
-- LETRA I
-- ----------------------------
SELECT pnome, EXTRACT(MONTH FROM datanasc) AS mes 
FROM Empregado

-- ----------------------------
-- LETRA J
-- ----------------------------
SELECT e.pnome, d.nomedep, AGE(d.datanascdep, e.datanasc) as idade 
FROM Empregado e 
JOIN Dependente d 
ON e.ssn = d.essn 
WHERE d.parentesco = 'FILHA'

-- ----------------------------
-- LETRA K
-- ----------------------------
SELECT COUNT(d.essn) as numeroDep, EXTRACT(YEAR FROM datanascdep) AS ano 
FROM Dependente d 
GROUP BY ano

-- ----------------------------
-- LETRA L
-- ----------------------------
SELECT s.pnome
FROM Empregado s
JOIN (
    SELECT superssn
    FROM Empregado
    WHERE superssn IS NOT NULL
    GROUP BY superssn
    HAVING COUNT(*) > 2
) AS supervisores ON s.ssn = supervisores.superssn;

-- ----------------------------
-- LETRA M
-- ----------------------------
SELECT p.pjnome, SUM(e.salario) as total 
FROM Empregado e 
JOIN Trabalha t 
ON e.ssn = t.essn 
JOIN Projeto p 
ON t.pno = p.pnumero 
GROUP BY p.pjnome, p.pnumero




