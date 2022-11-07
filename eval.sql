1
SELECT CompanyName AS 'Société', ContactName AS 'Contact',ContactTitle AS 'Fonction',Phone AS 'Téléphone' 
FROM customers
WHERE Country LIKE 'France%'

2
SELECT ProductName AS 'Produit',UnitPrice AS 'Prix'
FROM products
JOIN suppliers ON suppliers.SupplierID = products.SupplierID
WHERE suppliers.SupplierID = 1

3
SELECT CompanyName AS 'Fournisseur', count(ProductName) AS 'Nbre produits'
FROM products
JOIN suppliers ON suppliers.SupplierID = products.SupplierID
WHERE Country LIKE 'France%'
GROUP BY CompanyName
ORDER BY count(ProductName) DESC

4
SELECT CompanyName AS 'Client', count(OrderID) AS 'Nbre commandes'
FROM customers
JOIN orders ON orders.CustomerID = customers.CustomerID
WHERE Country LIKE 'France%'
GROUP BY CompanyName
HAVING count(OrderID) > 10

5
SELECT CompanyName AS 'Client', SUM(UnitPrice*Quantity) AS 'CA', Country AS 'Pays'
FROM customers
JOIN orders ON orders.CustomerID = customers.CustomerID
JOIN 'order details' ON 'order details'.OrderID = orders.OrderID
GROUP BY CompanyName
HAVING SUM(UnitPrice*Quantity) > 30000    /*pour mettre une condition sur une agrégation(calcul) il faut utiliser Having*/
ORDER BY CA desc                          /*la clause HAVING est TOUJOURS utilisée en conjonction avec la clause GROUP BY*/

6
SELECT ShipCountry AS 'Pays'
FROM suppliers
JOIN products ON products.SupplierID = suppliers.SupplierID
JOIN order details ON order details.ProductID = products.ProductID
JOIN orders ON orders.OrderID = order details.OrderID
WHERE CompanyName LIKE 'Exotic Liquids%'
GROUP BY ShipCountry

7
SELECT SUM(UnitPrice*Quantity) AS 'Montant Ventes 97'
FROM orders 
JOIN order details ON order details.OrderID = orders.OrderID
WHERE YEAR(OrderDate) = 1997

8
SELECT month(OrderDate) AS 'Mois 97', sum(UnitPrice*Quantity) AS 'Montant Ventes'
FROM orders 
JOIN order details ON order details.OrderID = orders.OrderID
WHERE YEAR(OrderDate) = 1997 
GROUP BY Mois 97

9
SELECT CompanyName AS 'Client' ,OrderID ,OrderDate AS 'Date de denière commande'
FROM orders
JOIN customers ON customers.CustomerID = orders.CustomerID
WHERE CompanyName LIKE 'Du%'
ORDER by OrderDate DESC 
LIMIT 1

10
SELECT round(avg(DATEDIFF(ShippedDate, OrderDate))) AS 'Délai moyen de livraison en jours'
FROM orders