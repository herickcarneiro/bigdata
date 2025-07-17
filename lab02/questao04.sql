-- QUESTAO 3 --

-- ----------------------------
-- LETRA A
-- ----------------------------
CREATE OR REPLACE VIEW TRABALHA_EM AS
SELECT 
    e.pnome,
    e.unome,
    p.pjnome,
    t.horas
FROM Empregado e
JOIN Trabalha t ON e.ssn = t.essn
JOIN Projeto p ON t.pno = p.pnumero;

-- ----------------------------
-- LETRA B
-- ----------------------------
SELECT pnome AS nome, unome AS sobrenome 
FROM TRABALHA_EM 
WHERE pjnome = 'ProdutoX'
-- Ao alterar a atabela Empregado, a View foi atuomaticamente alterada.

-- ----------------------------
-- LETRA C
-- ----------------------------
DROP VIEW TRABALHA_EM

-- ----------------------------
-- LETRA D
-- ----------------------------
CREATE MATERIALIZED VIEW depto_info AS
SELECT 
    d.dnome AS nome_departamento,
    COUNT(e.ssn) AS total_empregados,
    SUM(e.salario) AS total_salarios
FROM Departamento d
JOIN  Empregado e ON d.dnumero = e.dno
GROUP BY d.dnumero, d.dnome;

-- ----------------------------
-- LETRA E
-- ----------------------------
SELECT *
FROM depto_info
ORDER BY total_salarios

-- Exemplo para atualziar a view: REFRESH MATERIALIZED VIEW

-- ----------------------------
-- LETRA F
-- ----------------------------
-- Exemplo com comando DELETE: Se eu remover um empregado que está na view, ele será automaticamente removido, pois a view reflete os dados atuais.
-- Se eu remover um departamente da materialized view, ele só será removido dela se eu executar o comando "REFRESH MATERIALIZED VIEW".

-- ----------------------------
-- LETRA G
-- ----------------------------
DROP MATERIALIZED VIEW depto_info
