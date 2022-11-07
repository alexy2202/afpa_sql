lot 2.1
SELECT sta_nom,hot_nom,hot_categorie,hot_ville
FROM station
JOIN hotel on hot_sta_id = sta_id

lot 2.2
SELECT hot_nom,hot_categorie,hot_ville,cha_numero
FROM hotel
JOIN chambre on cha_hot_id = hot_id

lot2.3
SELECT hot_nom,hot_categorie,hot_ville,cha_numero,cha_capacite
FROM hotel
JOIN chambre on cha_hot_id = hot_id 
where cha_capacite >1 and hot_ville like 'Bretou'

lot2.4
SELECT cli_nom,hot_nom,res_date
FROM client
JOIN reservation on res_cli_id = cli_id
join chambre on cha_id = res_cha_id
JOIN hotel on hot_id = cha_hot_id

lot 2.5
SELECT sta_nom,hot_nom,cha_numero,cha_capacite
FROM station 
join hotel on hot_sta_id = sta_id
JOIN chambre on cha_hot_id =hot_id

lot 2.6
SELECT cli_nom,hot_nom,res_date,res_date_debut,DATEDIFF(res_date_fin,res_date_debut) as 'durée du sejour'
from client
JOIN reservation on res_cha_id = cli_id
JOIN chambre on cha_id = res_cha_id 
join hotel on hot_id = cha_hot_id 