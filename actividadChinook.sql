
--act 1
select FirstName as nombre, LastName as apellido from employees 
ORDER by LastName ASC

--act 2
SELECT t.name as nombre, t.Milliseconds as duracion FROM tracks t
INNER JOIN albums a on t.AlbumId = a.AlbumId
WHERE a.Title like "big ones" 
ORDER by t.Milliseconds DESC;

--act 3
SELECT count(t.name) AS cantidad, g.name as genero FROM tracks t
INNER JOIN genres g on g.GenreId = t.GenreId
GROUP by g.GenreId

 --act 4
SELECT count(tracks.AlbumId) AS canciones, albums.Title FROM tracks
INNER JOIN albums on albums.AlbumId = tracks.AlbumId
GROUP by tracks.AlbumId
HAVING canciones > 5

 --act 5
select Title, total from albums a
INNER JOIN tracks t ON a.AlbumId =t.AlbumId
INNER JOIN invoice_items it ON t.TrackId = it.TrackId
INNER JOIN invoices i ON i.InvoiceId = it.InvoiceId
ORDER BY total asc 
LIMIT 10 


--act 6
SELECT t.Name AS Nombre,g.name AS GeneroNombre,a.Title AS "Nombre de Album"
FROM tracks t
INNER JOIN genres g
ON t.GenreId = g.GenreId
INNER JOIN albums a
ON t.AlbumId = a.AlbumId 
WHERE t.UnitPrice = 0.99;

--act 7
SELECT t.Name AS Nombre,t.Milliseconds AS Duracion,t.name AS Titulo,a.Name AS "Nombre del artista"
FROM tracks t
INNER JOIN albums al
ON t.AlbumId = al.AlbumId
INNER JOIN artists a
ON al.ArtistId = a.ArtistId
ORDER BY t.Milliseconds 
LIMIT 20;

--act 8 
SELECT  e.LastName AS Empleado_Apellido,e.Title AS Puesto,ls.LastName AS Jefe_Apellido,COUNT(c.CustomerId) AS Cantidad_Clientes
FROM employees e
LEFT JOIN employees ls
ON e.ReportsTo = ls.EmployeeId
LEFT JOIN customers c 
ON e.EmployeeId = c.SupportRepId
GROUP BY e.EmployeeId, e.LastName, e.Title, ls.LastName
ORDER BY Cantidad_Clientes;