 UPDATE vente
 SET prix1 = prix1 *1.04,prix2 = prix2 *1.02
 WHERE numfou = 9180

  UPDATE vente
 SET prix2 = prix1 
 WHERE prix2 = 0

  UPDATE entcom
 JOIN fournis ON fournis.numfou = entcom.numfou 
 SET entcom.obscom = '*****' 
 WHERE fournis.satisf <5

DELETE FROM vente 
WHERE codart = 'i110';
DELETE FROM ligcom 
WHERE codart = 'i110';
DELETE FROM produit 
WHERE codart = 'i110';

