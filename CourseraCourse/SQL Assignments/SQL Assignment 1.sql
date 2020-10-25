use sakila;
select * from actor;
select * from film;
select * from category;

-- 1. Find out the PG-13 rated comedy movies. DO NOT use the film_list table.

select film.film_id, film.title
from film, film_category, category
where film.film_id = film_category.film_id
and film_category.category_id = category.category_id 
and rating = "PG-13"
and category.name = "Comedy";

-- 2. Find out the top 3 rented horror movies.

select film.title from film 
join film_category on film.film_id = film_category.film_id
join category on film_category.category_id = category.category_id 
join inventory on film.film_id = inventory.film_id 
join rental on inventory.inventory_id = rental.inventory_id 
where category.name = "Horror"
group by film.title 
order by count(film.title) desc limit 3;


-- 3. Find out the list of customers from India who have rented sports movies.

select customer_list.name from customer_list
join rental on customer_list.ID = rental.customer_id 
join inventory on rental.inventory_id = inventory.inventory_id 
join film on inventory.film_id = film.film_id 
join film_category on film.film_id = film_category.film_id 
join category on film_category.category_id = category.category_id 
where customer_list.country = "India"
and category.name = "Sports";

-- 4. Find out the list of customers from Canada who have rented “NICK WAHLBERG” movies.

select customer_list.name from customer_list
join rental on customer_list.ID = rental.customer_id 
join inventory on rental.inventory_id = inventory.inventory_id 
join film on inventory.film_id = film.film_id 
join film_actor on film.film_id = film_actor.film_id
join actor on film_actor.actor_id = actor.actor_id 
where customer_list.country = "Canada" 
and actor.first_name = "NICK"
and actor.last_name = "WAHLBERG";

-- 5. Find out the number of movies in which “SEAN WILLIAMS” acted.

select count(actor.actor_id) from film 
join film_actor on film.film_id=film_actor.film_id 
join actor on actor.actor_id=film_actor.actor_id 
where actor.first_name='SEAN' and actor.last_name='WILLIAMS';

