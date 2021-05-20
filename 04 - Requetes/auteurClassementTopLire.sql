Select aut.libAuteur, Count(tit.idTitre) as nbTit
From auteur aut
Inner join titre tit on tit.idAuteur = aut.idAuteur
Group by aut.libAuteur
order by nbTit Desc 
limit 1;