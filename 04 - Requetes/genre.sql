INSERT INTO genre (libGenre)
VALUES ('Gothique');

UPDATE genre
SET libGenre = 'Impressionisme'
WHERE idGenre = 'Baroque';

SELECT * 
FROM genre
WHERE idGenre = 4 ;

-- delete avec les FK
UPDATE genre
SET idGenre = NULL
WHERE idGenre = 3;

DELETE 
FROM titre_genre
WHERE idGenre = 3 ;

