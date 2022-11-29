-- onur hangi üründen kaç adet satın aldı
select	cs.name,op.product_id, op.quantity, pr.name from orders as o
inner join order_products as op
on op.order_id = o.id
inner join customers as cs
on o.customer_id = cs.id
inner join products as pr
on op.product_id = pr.id
where cs.name ='Onur'

--Kim kaç tane ürün satın aldı
select distinct(cs.name), sum(op.quantity) from orders as o
inner join order_products as op
on op.order_id = o.id
inner join customers as cs
on o.customer_id = cs.id
group by cs.name

--Hangi müşteriş ürün iade etti
select cs.name, rfp.quantity as iade_urun_sayisi, rf.refund_reason from refunds as rf
inner join refund_products as rfp
on rf.id = rfp.refund_id
inner join orders as o
on o.id = rf.order_id
inner join customers as cs
on o.customer_id = cs.id

--Ankaraya kaç ürün gitmiş
select ct.city_name,sum(op.quantity),o.order_status from orders as o
inner join addresses as ad
on o.shipment_address_id = ad.id
inner join districts as ds
on ad.district_id = ds.id
inner join cities as ct
on ds.city_id=ct.id
inner join order_products as op
on o.id=op.order_id
where ct.city_name='Ankara'
group by o.order_status, ct.city_name,op.quantity

-- Satıcılar Kaç Ürün Satmış
select sl.name Satıcı, count(op.quantity)as Satılan_ürün_sayisi,count(distinct(op.quantity)) as Satilan_farkli_urun_sayisi from order_products as op
inner join products as pr
on op.product_id=pr.id
inner join product_sellers as prs
on pr.id=prs.product_id
inner join sellers as sl
on prs.seller_id=sl.id
group by sl.name

--Son hafta siparişi verilen ürünler
select o.order_date,o.total_cost,pr.name,pr.unit_price,op.quantity from orders as o 
inner join order_products as op
on o.id=op.order_id
inner join products as pr 
on op.product_id=pr.id
where o.order_date between current_date - 7 and now()

--Son haftanın ortalama sipariş tutarı
select (sum(o.total_cost)/count(o.id)) as Son_hafta_Ortalama_siparis_tutari from orders as o
where o.order_date between current_date - 7 and now()

--Stok sayısı 100'den az ürünler
select name , stock,category_id from products
where stock <= 100


--Hangi renkten kaç adet sipariş verilmiş
select co.color_name, sum(op.quantity) from order_products as op
inner join products as pr
on op.product_id=pr.id
inner join product_colors as pc
on pr.id=pc.product_id
inner join colors as co
on pc.color_id = co.id
group by co.color_name

--Kredi kartı ile ödenenler
select pa.payment_type as ödeme_tipi, o.order_date as sipariş_tarihi, pr.name as ürün_adı,op.quantity as adet from orders as o 
inner join payments as pa
on o.payment_id = pa.id
inner join order_products as op
on o.id = op.order_id
inner join products as pr
on op.product_id=pr.id
where pa.payment_type = 'Kredi Kartı'

--Hangi markalar satıldı
select br.brand_name,sum(op.quantity) from order_products as op
inner join products as pr
on op.product_id=pr.id
inner join product_sellers as prs
on pr.id=prs.product_id
inner join sellers as sl
on prs.seller_id=sl.id
inner join brand_sellers as bs
on sl.id = bs.seller_id
inner join brands as br
on bs.brand_id=br.id
group by br.brand_name
order by sum(op.quantity) DESC

--hangi kategoriden kaç sipariş verildi
select ct.name, sum(op.quantity) from order_products as op
inner join products as pr
on op.product_id = pr.id
inner join categories as ct
on pr.category_id = ct.id
group by ct.name

--LIKE
select * from products
where lower(name) like '&a_%'


--IN örnek
select*from products
where stock IN(30,40,50)


--Left Join Colour (Ürün olmayan renkler)
select co.color_name, co.color_code, pr.name,pr.unit_price from colors as co
left join product_colors pc
on co.id = pc.color_id
left join products pr
on pc.product_id = pr.id

-- left right (rengi olmayan ürünler)
select co.color_name, co.color_code, pr.name,pr.unit_price from colors as co
left join product_colors pc
on co.id = pc.color_id
right join products pr
on pc.product_id = pr.id
	

--Right Join Sipariş gitmeyen Adres
select o.id as "Sipariş Numarası", o.customer_id , o.total_cost, o.shipment_address_id, ad.id as"Adres Numarası", ad.title,ad.street,ad.building_name  from orders o
right join addresses ad
on o.shipment_address_id = ad.id

--Right Join Brand (markanın Ürününü satmayan satıcılar)
select sl.*, br.brand_name from brands br
full outer join brand_sellers bs
on br.id = bs.brand_id
right join sellers sl
on bs.seller_id = sl.id

-- Outer join (ürün satmayan satıcılar ve satılmayan markalar)
select * from brands br
full outer join brand_sellers bs
on br.id = bs.brand_id
full outer join sellers sl
on bs.seller_id = sl.id
where bs.id is null

--left join (türkiyede satıcı olmayan markalar)
select * from brands br
full outer join brand_sellers bs
on br.id = bs.brand_id
left join sellers sl
on bs.seller_id = sl.id
where br.service_region_id = 1

-- Right join Product (hiç satılmamış ürünler)
select * from order_products op
right join products pr
on op.product_id = pr.id
where op.order_id is null

