/*Actividad 1*/
select f.title, a.address AS direccion, c.city, co.country from film f 
inner join inventory i on f.film_id = i.film_id 
inner join store s on i.store_id = s.store_id 
inner join address a on s.address_id = a.address_id 
inner join city c on a.city_id = c.city_id 
inner join country co on c.country_id = co.country_id --WHERE date = title select from
where f.title = 'ACADEMY DINOSAUR';

/*Actividad 2*/
SELECT
    f.title,
    c.name,
    l.name,
    f.rating,
    f.length
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
JOIN language l ON f.language_id = l.language_id
WHERE f.length BETWEEN 60 AND 120;

/*Actividad 3*/
select st.first_name as nombre, st.last_name as apellido,a.address_id as direccion,c.city as ciudad, co.country as pais 
from staff st
INNER join store s on s.store_id =s.store_id
inner join address a on a.address_id = st.address_id 
inner join city c on c.city_id = a.city_id
inner join country co on c.country_id = co.country_id

/*actividad 4*/
select f.title as Titulo ,min(return_date),max(return_date)
from film f
inner join inventory i on f.film_id = i.film_id
inner join rental r on i.inventory_id = r.inventory_id 

 --ACT 5 
SELECT
    f.title AS pelicula,
    ft.description AS descripcion,
    l.name AS idioma,
    cat.name AS categoria,
    a.first_name , a.last_name AS actor,
    c.first_name, c.last_name AS cliente,
    ad.address, ci.city , co.country AS direccion_cliente,
    r.rental_date AS fecha_alquiler,
    r.return_date AS fecha_devolucion,
    p.amount AS monto_pago,
    st.store_id AS tienda,
    sf.first_name , sf.last_name AS empleado
FROM film f
LEFT JOIN language l ON f.language_id = l.language_id
LEFT JOIN film_text ft ON f.film_id = ft.film_id
LEFT JOIN film_actor fa ON f.film_id = fa.film_id
LEFT JOIN actor a ON fa.actor_id = a.actor_id
LEFT JOIN film_category fc ON f.film_id = fc.film_id
LEFT JOIN category cat ON fc.category_id = cat.category_id
LEFT JOIN inventory i ON f.film_id = i.film_id
LEFT JOIN rental r ON i.inventory_id = r.inventory_id
LEFT JOIN customer c ON r.customer_id = c.customer_id
LEFT JOIN address ad ON c.address_id = ad.address_id
LEFT JOIN city ci ON ad.city_id = ci.city_id
LEFT JOIN country co ON ci.country_id = co.country_id
LEFT JOIN payment p ON r.rental_id = p.rental_id
LEFT JOIN staff sf ON r.staff_id = sf.staff_id
LEFT JOIN store st ON c.store_id = st.store_id

-- left join: devuelve devuelve todas las filas de la tabla de la izquierda (1ra tabla)
--las filas coincidentes de la tabla de la derecha (2da tabla).


/*actividad 6*/
select count(*),rating from film
group by rating

/*Actividad 7*/
select c.name, count(f.film_id) from film f
inner join film_category fc on f.film_id = fc.film_id
inner join category c on fc.category_id = c.category_id
group by c.name

--actividad 8
SELECT
  a.actor_id,
  a.first_name || ' ' || a.last_name AS nombre_completo,
  COUNT(fa.film_id) AS film_count
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
GROUP BY a.actor_id, a.first_name, a.last_name
ORDER BY film_count DESC
LIMIT 10;

--ACT 9
SELECT
   ad.address || ', '|| ci.city || ', '|| co.country AS localidad,
   count(i.inventory_id) as inventario_total


from inventory i
join store s on i.store_id = s.store_id
join address ad on s.address_id = ad.address_id
join city ci on ad.city_id = ci.city_id
join country co on ci.country_id = co.country_id
group by ad.address, ci.city, co.country
order by inventario_total DESC;


--ACT 10
SELECT
 ad.address ||', '|| ci.city ||', '|| co.country as localidad,
 count(DISTINCT i.film_id) as film_distinta
 from inventory i
 join store s on i.store_id = s.store_id
 join address ad on s.address_id = ad.address_id
 join city ci on ad.city_id = ci.city_id
 join country co on ci.country_id = co.country_id
 group by ad.address, ci.city, co.country
 order by film_distinta DESC;


--ACT 11
SELECT
 c.name AS category,
 round(AVG(f.rental_rate), 2) as costo_promedio
 from film f
 join film_category fc on f.film_id = fc.film_id
 join category c on fc.category_id = c.category_id
 group by c.name
 order by costo_promedio DESC;

--act 12 arreglar

 --act 13 SELECT
    f.title AS nombre,
    f.length AS duracion,
    c.name AS categoria
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
ORDER BY f.length DESC;


--act 14
SELECT f.title AS nombre
FROM film f
JOIN film_actor fa ON f.film_id = fa.film_id
WHERE f.title LIKE 'W%'
GROUP BY f.film_id
HAVING COUNT(fa.actor_id) >= 5;


--act 15
SELECT
    c.first_name AS nombre,
    c.last_name AS apellido,
    SUM(p.amount) AS total_pagado
FROM customer c
JOIN payment p ON c.customer_id = p.customer_id
GROUP BY c.customer_id
ORDER BY total_pagado DESC;

--act 16
select 
 f.title, 
 f.length, 
 a.first_name a.last_name AS  nombre_actor
 MIN(f.length) AS pelis_cortas--terminarr
 

 
 


