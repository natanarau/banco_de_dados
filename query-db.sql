INSERT INTO users (name, cel, status, createdAt) VALUES ('Natã Aruajo', '84 99999-9999' 'ATIVO', CURRENT_TIMESTAMP);

SELECT * FROM users;

-----

INSERT INTO clients (name, cel, createdAt, lastUpdatedBy, status) VALUES ('Isa Maria', '85 99999-9999', CURRENT_TIMESTAMP, 1, 'ATIVO');

SELECT * FROM clients;

UPDATE clients SET status = 'ATIVO' WHERE id = 1;

-----

INSERT INTO teachers (name, cel, createdAt, lastUpdatedBy, status) VALUES ('Lucas', '84 99999-9999', CURRENT_TIMESTAMP, 1, 'ATIVO');

SELECT * FROM teachers;

UPDATE teachers SET status = 'ATIVO' WHERE id = 1;

-----

INSERT INTO package (name, numberOfClass, price, createdAt, lastUpdatedBy, status) VALUES ('PACOTE 5', 30, 640, CURRENT_TIMESTAMP, 1, 'ATIVO');

SELECT * FROM package;

UPDATE package  SET status = 'INATIVO' WHERE id = 1;

-----

INSERT INTO packageClient (clientId, packageId, remaining, createdAt, lastUpdatedBy)
SELECT c.id, p.id, p.numberOfClass, CURRENT_TIMESTAMP, 1
FROM clients c
JOIN package p ON p.status = 'ATIVO' AND p.id = 3
LEFT JOIN packageClient pc ON pc.clientId = c.id AND pc.packageId = p.id
WHERE c.status = 'ATIVO'
AND c.id = 3
AND (pc.remaining IS NULL OR pc.remaining > 0); 

SELECT * FROM packageClient;

-----

INSERT INTO classe (name, `dateTime`, createdAt, lastUpdatedBy, teacherId, status) VALUES ('TURMA DAS 7', '2024-09-18 07:00:00', CURRENT_TIMESTAMP, 1, 1, 'ATIVA');

SELECT * FROM classe;

UPDATE classe  SET status = 'INATIVO' WHERE id = 1;

-----

INSERT INTO clientsClass (clientId, createdAt, lastUpdatedBy, classeId)
SELECT pc.clientId, CURRENT_TIMESTAMP, 1, 5
FROM packageClient pc
JOIN clients c ON pc.clientId = c.id
WHERE pc.remaining > 0
AND c.status = 'ATIVO'
AND pc.clientId = 3;

UPDATE packageClient
SET remaining = remaining - 1
WHERE remaining > 0
AND clientId = 3;

SELECT * FROM clientsClass;








