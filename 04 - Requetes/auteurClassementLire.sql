-- qui remonte les auteurs, le nombre de tableaux qu'ils ont peint, classés par nombre de tableaux décroissants

Select aut.libAuteur, Count(tit.idTitre) as nbTit
From auteur aut
Inner join titre tit on tit.idAuteur = aut.idAuteur
Group by aut.libAuteur
order by nbTit Desc ;

