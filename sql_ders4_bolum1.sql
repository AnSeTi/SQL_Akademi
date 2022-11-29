select * from products
--Join
--Inner Join ! iki tablonun verilerinin kesiştiği alandır
--Alias => Takma ad
--tablo adından sonra boşluk hard yaparsak takma ad olur ve uzun uzun yazmaya gerek kalmaz
select p.name as "Ürün Adı", c.name as "Kategori Adı" from products p
inner join categories c
on p.category_id=c.id

select * from products p --Sol tablo
inner join categories c -- Sağ tablo
on p.category_id=c.id
