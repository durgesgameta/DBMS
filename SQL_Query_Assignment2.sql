1.Find out the number of documentaries with deleted scenes.
select count(*) 
from ((film inner join film_category on film.film_id=film_category.film_id) 
inner join category on film_category.category_id =category.category_id)
 where category.name='Documentary' and film.special_features='Deleted Scenes';

2.Find out the number of sci-fi movies rented by the store managed by Jon Stephens.
select count(*)
from film_category fc inner join inventory i on fc.film_id=i.film_id inner join store s on i.store_id=s.store_id inner join staff_list sl on 
sl.ID=s.manager_staff_id
where fc.category_id=14 and sl.name like '%Jon Stephens%';

3.Find out the total sales from Animation movies.
select * from sales_by_film_category;

4.Find out the top 3 rented category of movies  by “PATRICIA JOHNSON”.
select distinct(C.name )
from category C inner join film_category FC on FC.category_id=C.category_id inner join inventory I on  I.film_id=FC.film_id inner join rental R on R.inventory_id=I.inventory_id inner join customer_list CL on CL.ID=R.customer_id
where CL.name like '%PATRICIA JOHNSON%' limit 3;

5.Find out the number of R rated movies rented by “SUSAN WILSON”.
select count(*)
from (film_list fl inner join inventory I on fl.FID=I.film_id)
	inner join rental R on I.inventory_id=R.inventory_id inner join customer_list C on R.customer_id=C.ID
where fl.rating='R' and C.name like '%SUSAN WILSON%';

