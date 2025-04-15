select f.title, a.address AS direccion, c.city, co.country from film f 
inner join inventory i on f.film_id = i.film_id 
inner join store s on i.store_id = s.store_id 
inner join address a on s.address_id = a.address_id 
inner join city c on a.city_id = c.city_id 
inner join country co on c.country_id = co.country_id --WHERE date = title select from