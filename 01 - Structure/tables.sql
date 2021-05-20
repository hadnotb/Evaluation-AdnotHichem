USE tableau;


ALTER TABLE titre DROP CONSTRAINT fk_auteur;
ALTER TABLE titreGenre DROP CONSTRAINT fk_genre;
ALTER TABLE titreGenre DROP CONSTRAINT fk_titre;


DROP TABLE IF EXISTS auteur;
CREATE TABLE auteur 
(
	idAuteur INT UNSIGNED NOT NULL AUTO_INCREMENT,
    libAuteur VARCHAR(128) NOT NULL,
    PRIMARY KEY (idAuteur)
) ENGINE = InnoDB;

DROP TABLE IF EXISTS titre;
CREATE TABLE titre
(
	idTitre INT UNSIGNED NOT NULL AUTO_INCREMENT,
    libTitre VARCHAR(128) NOT NULL,
    idAuteur INT UNSIGNED NULL,
    PRIMARY KEY (idTitre),
    CONSTRAINT fk_auteur
    FOREIGN KEY (idAuteur)
	REFERENCES auteur(idAuteur)
) ENGINE = InnoDB;

DROP TABLE IF EXISTS genre;
CREATE TABLE genre
(
	idGenre INT UNSIGNED NOT NULL AUTO_INCREMENT,
    libGenre VARCHAR(128) NOT NULL,
    PRIMARY KEY (idGenre)
) ENGINE = InnoDB;

DROP TABLE IF EXISTS titreGenre;
CREATE TABLE titreGenre
(
  idTitre int(10) unsigned NOT NULL,
  idGenre int(10) unsigned NOT NULL,
  UNIQUE KEY (idTitre,idGenre),
  CONSTRAINT fk_Titre      
	FOREIGN KEY (idTitre)        
	REFERENCES titre(idTitre),
  CONSTRAINT fk_Genre      
	FOREIGN KEY (idGenre)        
	REFERENCES genre(idGenre) 
) ENGINE = InnoDB;

