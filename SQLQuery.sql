-- Selezionare tutti gli insegnanti
SELECT * FROM dbo.teachers;

-- Selezionare tutti i capi di ogni dipartimento
SELECT head_of_department FROM dbo.departments;

-- Selezionare tutti i corsi di laurea magistrale
SELECT * FROM dbo.degrees WHERE level = 'magistrale';

-- Selezionare tutti gli studenti che hanno come nome Marco
SELECT * FROM dbo.students WHERE name = 'marco';

-- Selezionare tutti i corsi(insegnamenti) che valgono più o uguale a 12 crediti
SELECT * FROM dbo.courses WHERE cfu >= 12;

-- Selezionare tutti i corsi(insegnamenti) che valgono più di 10 crediti oppure meno di 5
SELECT * FROM dbo.courses WHERE cfu > 10 OR cfu < 5;

-- Selezionare tutti i corsi(insegnamenti) del primo semestre del primo anno di un qualsiasi corso di laurea
SELECT * FROM dbo.courses WHERE period = 'I semestre' AND year = 1;

-- Selezionare tutti i corsi(insegnamenti) che non hanno un sito web
SELECT * FROM dbo.courses WHERE website IS NULL;

-- Selezionare tutti gli insegnanti che hanno un numero di telefono
SELECT * from dbo.teachers WHERE phone IS NOT NULL;

-- Selezionare tutti gli studenti il cui nome inizia per "E".
SELECT * FROM dbo.students WHERE name LIKE 'E%';

-- Contare tutti gli insegnanti che iniziano con “E” (suggerimento: guardate l’operatore COUNT).
SELECT COUNT(*) FROM dbo.teachers WHERE name LIKE 'E%';

-- Contare tutti gli insegnanti che non hanno un numero di telefono.
SELECT COUNT(*) FROM dbo.teachers WHERE phone IS NULL;