lot 3.1
SELECT hot_nom,sta_nom,COUNT(*)
FROM hotel
JOIN station ON hot_sta_id = sta_id
GROUP BY sta_nom

lot 3.2
SELECT sta_nom,COUNT(*) AS 'nombredechambre'
FROM chambre
JOIN hotel ON hot_id = cha_hot_id
JOIN station ON sta_id = hot_sta_id
GROUP BY sta_nom

lot 3.3
SELECT sta_nom,COUNT(*) AS 'nombredechambre'
FROM chambre
JOIN hotel ON hot_id = cha_hot_id
JOIN station ON sta_id = hot_sta_id
WHERE cha_capacite >1
GROUP BY sta_nom

lot 3.4
SELECT distinct cli_nom,hot_nom
FROM reservation
JOIN chambre ON res_cha_id = cha_id
JOIN hotel ON hot_id = cha_hot_id
JOIN client ON cli_id = res_cli_id
WHERE cli_nom LIKE 'squire'

lot3.5
SELECT sta_nom,floor(avg(DATEDIFF(res_date_fin,res_date_debut))) as 'durée moyenne des reservation' 
from client
JOIN reservation on res_cha_id = cli_id
JOIN chambre on cha_id = res_cha_id 
join hotel on hot_id = cha_hot_id 
JOIN station on sta_id = hot_sta_id
