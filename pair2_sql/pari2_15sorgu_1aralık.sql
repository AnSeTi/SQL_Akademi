--yurtdışında Hangi şehire kaç sipariş gitti
select cities.name,cities.country_id from countries
inner join cities
on countries.id = cities.country_id
group by cities.name,cities.country_id
having (cities.country_id)>=2

-- Stok miktarı 50 üzerinde olan ürünle
select p.category_id, p.name, p.stock  from  products p
group by p.stock,p.category_id, p.name
having p.stock>50

-- stok miktarı 100 üzerinde olan ürünler
select pr.stock,pr.name, pr.unit_price from products pr
group by pr.name, pr.unit_price, pr.stock
having pr.stock>100

--AVG ürünlerin ortalama fiyatı
select avg(pr.unit_price) from products pr

-- istanbul şehirine yapılan siparişlerin ödeme türleri
select pt.name,addr.city_id from payment_types pt
inner join orders ord
on pt.id = ord.payment_type_id
inner join addresses addr
on ord.address_id = addr.id
group by pt.name,addr.city_id
having addr.city_id=1

--Ortalama Stok Miktarı
select avg(pr.stock) "Ortalama Stok Miktarı" from products pr

--toplam Stok Miktarı
select sum(pr.stock) "Toplam Stok Miktarı" from products pr

-- kategori id numarası 2 sayısından büyük olanlar
Select pr.category_id, pr.name from products pr
inner join categories c
on pr.category_id = c.id
GROUP BY category_id, pr.name
HAVING category_id >= 2

--
Select stock,category_id,COUNT(*) from products
Where stock>10
GROUP BY category_id,stock
HAVING COUNT(*)>2

--hangi ürünü hangi satıcı satıyor
select pr.name, sl.name from products pr
inner join product_seller ps
on pr.id = ps.product_id
inner join sellers sl
on ps.seller_id=sl.id
group by pr.name, sl.name

--Hangi tedarikçi kaç defa tercih edilmiş
select sp.company_name, count(sp.company_name) from sellers s
inner join product_seller ps
on s.id=ps.seller_id
inner join products pr
on ps.product_id=pr.id
inner join suppliers sp
on pr.supplier_id = sp.id
group by sp.company_name

--hangi kategoride kaç ürün var
select ct.name "Katagori Adı",count(pr.name) "Ürün Sayısı" from products pr
inner join categories ct
on pr.category_id = ct.id
group by ct.name

-- müşterilerin harcama sıralaması
select bk.price, bk.customer_id from baskets bk
inner join customers cr
on bk.customer_id = cr.id
order by bk.price desc

--13 Müşterilerin


