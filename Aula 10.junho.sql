SELECT * from mysql.user;


-- CREATE (USER) E PERMITIR (GRANTS)
CREATE USER 'professor'@'localhost' IDENTIFIED BY '123';
GRANT SELECT ON *.* TO 'professor'@'localhost';

CREATE USER 'diretor'@'localhost' IDENTIFIED BY '1234';
GRANT SELECT ON *.* TO 'professor'@'localhost';

CREATE USER 'presidente'@'localhost' IDENTIFIED BY '0201';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE ON *.* TO 'presidente'@'localhost';

-- VERIFICAR GRANTS DE UM (USER ESPECÌFICO)
SHOW GRANTS FOR 'estagiario'@'localhost';

-- GRANT (PERMISSÔES)
-- REVOKE (RETIRAR PERMISSÔES)

-- DELETE USER
DROP USER 'professor'@'localhost';

CREATE USER 'estagiario'@'localhost' IDENTIFIED BY '1235';

CREATE USER 'aluno'@'localhost' IDENTIFIED BY '2222';
GRANT SELECT ON *.* TO 'aluno'@'localhost';

-- PERMITIR ACESSO A TODAS AS TABELAS DO (BC) 'teste'
GRANT SELECT ON teste.* TO 'aluno'@'localhost';
REVOKE SELECT, INSERT ON cadastro_estudantes.* FROM 'presidente'@'localhost';

CREATE USER 'guilherme'@'localhost' IDENTIFIED BY 'gui0201';
-- permitir que o usuario 'guilherme' acesse apenas a tabela 'alunos' no (BC) 'escola'
GRANT SELECT ON escola.alunos TO 'guilherme'@'localhost';
GRANT INSERT ON escola.alunos TO 'guilherme'@'localhost';
GRANT CREATE ON escola.* TO 'guilherme'@'localhost';
GRANT ALTER ON escola.alunos TO 'guilherme'@'localhost';
GRANT DROP ON escola.alunos TO 'guilherme'@'localhost';
