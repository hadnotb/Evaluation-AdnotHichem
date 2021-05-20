INSERT INTO titre (libTitre, idAuteur)
VALUES ('La cinquième plaie d\'Egyptre',5);

UPDATE titre
SET libTitre = 'Tavola Doria', idAuteur = 4
WHERE idTit = 18;

SELECT * 
FROM titre
WHERE idTit = 4;

-- delete avec les FK
DELETE 
FROM titre_genre
WHERE idTitre = 44;

DELETE 
FROM titre
WHERE idTitre = 44 ;