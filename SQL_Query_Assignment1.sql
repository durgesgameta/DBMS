1.Find out the PG-13 rated comedy movies. DO NOT use the film_list table.
SELECT * FROM film WHERE rating='PG-13';

2. Find out the top 3 rented horror movies.
select title 
from inventory I, rental R, film_category C, film F 
where I.inventory_id= R.inventory_id and I.film_id=C.film_id and C.category_id='11' and F.film_id=C.film_id
group by I.film_id order by count(R.inventory_id) desc limit 3;

3.Find out the list of customers from India who have rented sports movies.
select distinct name 
from customer_list C, rental R, inventory I, film_category F 
where C.country='India' and C.ID=R.customer_id and R.inventory_id=I.inventory_id and F.film_id=I.film_id and F.category_id='15';

4. Find out the list of customers from Canada who have rented “NICK WAHLBERG” movies.
select distinct name 
from customer_list C, rental R, inventory I, film_list F 
where C.country='Canada' and C.ID=R.customer_id and R.inventory_id=I.inventory_id and F.FID=I.film_id and F.actors like '%NICK WAHLBERG%';

5. Find out the number of movies in which “SEAN WILLIAMS” acted.
select count(title)
from film_list 
where actors like '%SEAN WILLIAMS%';






