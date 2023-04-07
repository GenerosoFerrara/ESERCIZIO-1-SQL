DROP DATABASE IF EXISTS esercizi_1;
CREATE DATABASE esercizi_1;
USE esercizi_1;
DROP TABLE IF EXISTS automobile;
CREATE TABLE automobile (
marca varchar(50),
modello varchar(35),
targa varchar(7),
cilindrata int,
colore varchar(50));

INSERT INTO automobile VALUES (
"Ferrari",
488,
"AA123BB",
3902,
"Rosso");
INSERT INTO automobile VALUES (
"Mercedes",
"Classe C",
"CC456DD",
2998,
"Grigio");
INSERT INTO automobile VALUES (
"Bmw",
"i8",
"EE789FF",
1498,
"Blu scuro");
INSERT INTO automobile VALUES (
"Fiat",
null,
null,
1233,
null);
INSERT INTO automobile VALUES (
"Fiat",
null,
null,
1233,
null);

DROP TABLE IF EXISTS lavoratore;
CREATE TABLE lavoratore (
nome varchar(25),
cognome varchar(40),
matricola varchar(16),
stipendio int);

INSERT INTO lavoratore VALUES (
"Paolo",
"Verde",
"A01234",
1865);
INSERT INTO lavoratore VALUES (
"Stefano",
"Neri",
"C09012",
2500);
INSERT INTO lavoratore VALUES (
"Francesco",
"Azzurra",
"C09012",
2500);
INSERT INTO lavoratore VALUES (
"Luca",
"Rosso",
"B091234",
2100);

SELECT * FROM lavoratore WHERE cognome = "Verde";
SELECT * FROM lavoratore WHERE cognome LIKE "%e%";
SELECT nome,cognome,stipendio FROM lavoratore WHERE cognome LIKE "a%";
SELECT * FROM lavoratore WHERE nome LIKE "%o" AND cognome LIKE "%a%";
SELECT * FROM lavoratore WHERE stipendio BETWEEN 1800 AND 2000;
SELECT * FROM lavoratore WHERE (stipendio BETWEEN 2000 AND 2500) AND (cognome LIKE "%i");
SELECT nome,cognome FROM lavoratore WHERE stipendio BETWEEN 1900 AND 2400 ORDER BY stipendio DESC;
SELECT nome,cognome FROM lavoratore WHERE stipendio BETWEEN 2000 AND 2500 ORDER BY stipendio DESC, nome ASC;

UPDATE automobile SET modello ="500L", targa= "XX123YY", colore = "Bianco" WHERE marca = "Fiat";
DELETE FROM automobile WHERE marca LIKE "F%";