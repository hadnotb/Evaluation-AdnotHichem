INSERT INTO auteur (libAuteur)
VALUES ('Stefan lochner');

UPDATE auteur
SET nomAut = 'llia Répine'
WHERE idAut = "Léonard de Vinci";

SELECT * 
FROM auteur
WHERE idAuteur = 4;

-- delete avec les FK

UPDATE titre
SET idAuteur = NULL
WHERE idAuteur = 4;

DELETE 
FROM auteur
WHERE idAuteur = 4;