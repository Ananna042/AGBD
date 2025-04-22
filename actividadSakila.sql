/*Actividad 1*/
select f.title, a.address AS direccion, c.city, co.country from film f 
inner join inventory i on f.film_id = i.film_id 
inner join store s on i.store_id = s.store_id 
inner join address a on s.address_id = a.address_id 
inner join city c on a.city_id = c.city_id 
inner join country co on c.country_id = co.country_id --WHERE date = title select from
where f.title = 'ACADEMY DINOSAUR';

/*Actividad 2*/
--faltaarreglar

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

 --ACT 5 despues

/*actividad 6*/
select count(*),rating from film
group by rating

/*Actividad 7*/
select c.name, count(f.film_id) from film f
inner join film_category fc on f.film_id = fc.film_id
inner join category c on fc.category_id = c.category_id
group by c.name


