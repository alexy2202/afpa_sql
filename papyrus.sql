papyrus 1
SELECT numcom,fournis.numfou 
FROM entcom
JOIN fournis ON fournis.numfou = entcom.numfou 
WHERE fournis.numfou = 9120

2
SELECT fournis.nomfou 
FROM entcom
JOIN fournis ON fournis.numfou = entcom.numfou 
GROUP BY nomfou 

3
SELECT COUNT(numcom),COUNT(distinct numfou)
FROM entcom 

4
SELECT codart,libart,stkphy,stkale,qteann
FROM produit
WHERE stkphy <= stkale and qteann <1000

5
SELECT posfou,nomfou
FROM fournis 
WHERE posfou LIKE '75%' or posfou LIKE '78%' OR posfou LIKE '92%' or posfou LIKE '77%'
ORDER BY posfou DESC,nomfou asc

6
SELECT numcom,datcom
FROM entcom 
WHERE MONTH(datcom) = 03 OR MONTH(datcom) = 04

7
SELECT numcom,datcom
FROM entcom

8
SELECT ligcom.priuni*qtecde AS total,numcom
FROM ligcom
GROUP BY numcom
ORDER BY total desc
