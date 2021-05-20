-- remonte les genres, le nombre de tableaux qu'ils contiennent, classés par nombre de tableaux décroissants

select      gre.libGenre, COUNT(tit.idTitre) nbTit
from        titre tit
inner join  titre_genre titgre On titgre.idTitre = tit.idTitre
inner join  genre gre On titgre.idGenre = gre.idGenre
group by    gre.libGenre
order by    nbTit DESC;