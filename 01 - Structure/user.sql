CREATE USER 'biblio'@'localhost' IDENTIFIED BY 'motdepasse';

GRANT All PRIVILEGES
ON Tableau
TO 'biblio'@'localhost';