INSERT INTO auteur (libAuteur)
VALUES ('Stefan lochner');

UPDATE auteur
SET nomAut = 'llia Répine'
WHERE idAut = "Léonard de Vinci";

SELECT * 
FROM auteur
WHERE idAuteur = 4;

-- delete avec les FK
DELETE 
FROM Titre
WHERE idAuteur = 4;

DELETE 
FROM auteur
WHERE idAuteur = 4;