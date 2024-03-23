-- 1. Obtenga todos los datos de las tablas actory film y customer
SELECT
	*
FROM sakila.actor a
LEFT JOIN sakila.film_actor fa 
	ON a.actor_id = fa.actor_id
LEFT JOIN sakila.film f
	ON f.film_id = fa. film_id
LEFT JOIN sakila.inventory i
	ON 	i.film_id = f.film_id
LEFT JOIN sakila.rental r
	ON r.inventory_id = i.inventory_id
LEFT JOIN sakila.customer c
	ON c.customer_id = r.customer_id;
    
-- 2. Consigue títulos de películas.

SELECT
	title
FROM sakila.film;

-- 4.Obtenga una lista única de idiomas cinematográficos bajo el alias language. Tenga en cuenta que no le pedimos que obtenga el idioma de cada película, pero este es un buen momento para pensar en cómo podría obtener esa información en el futuro.

SELECT distinct name as unique_language
from LANGUAGE;

-- 5.1 ¿Averigüe cuántas tiendas tiene la empresa?

SELECT
	store_id
FROM sakila.store;

-- 5.2 ¿Averigüe cuántos empleados tiene la empresa?

SELECT
	staff_id
FROM sakila.staff;

-- 5.3 ¿Devolver solo una lista de los nombres de los empleados?

SELECT
	first_name
FROM sakila.staff;
