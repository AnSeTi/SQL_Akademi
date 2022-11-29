select * from countries c
inner join cities ci
on c.id=ci.country_id
inner join towns t
on ci.id = t.city_id
inner join districts d
on t.id = d.town_id

select * from countries c
inner join cities ci
on c.id =country_id

select*from cities ci
left join countries c
on ci.country_id = c.id

select*from cities ci
right join countries c
on ci.country_id = c.id

select*from products p
left join product_categories pc
on p.id =pc.product_id
full outer join categories c 
on pc.category_id =c.id

select * from products p
left join product_categories pc
on p.id=pc.product_id
full outer join categories c
on pc.category_id