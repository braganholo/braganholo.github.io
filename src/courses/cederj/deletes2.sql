use emp;

DROP TABLE EQUIPAMENTO;

DELETE FROM DEPENDENTE;

DELETE FROM TRABALHA_EM;

DELETE FROM PROJETO;

DELETE FROM DEPT_LOCALIZACOES;

--
-- EMPREGADO
-- Primeiro setar todos os gerentes para NULL,
-- para não dar problemas de integridade referencial
-- ao excluir algum empregado que seja gerente de algum outro ainda não excluído
--

UPDATE EMPREGADO
SET SUPERSSN=null;

-- apaga tuplas de empregado

DELETE FROM EMPREGADO;

DELETE FROM DEPARTAMENTO;












