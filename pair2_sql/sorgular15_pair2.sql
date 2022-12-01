--1 Yurtdışında Hangi şehire kaç sipariş gitti
select cities.name,cities.country_id from countries
inner join cities
on countries.id = cities.country_id
group by cities.name,cities.country_id
having (cities.country_id)>=2

--2 Stok miktarı 50 üzerinde olan ürünle
select p.category_id, p.name, p.stock  from  products p
group by p.stock,p.category_id, p.name
having p.stock>50

--3 Stok miktarı 100 üzerinde olan ürünler
select pr.stock,pr.name, pr.unit_price from products pr
group by pr.name, pr.unit_price, pr.stock
having pr.stock>100

--4 AVG ürünlerin ortalama fiyatı
select avg(pr.unit_price) from products pr

--5 istanbul şehirine yapılan siparişlerin ödeme türleri
select pt.name,addr.city_id from payment_types pt
inner join orders ord
on pt.id = ord.payment_type_id
inner join addresses addr
on ord.address_id = addr.id
group by pt.name,addr.city_id
having addr.city_id=1

--6 Ortalama Stok Miktarı
select avg(pr.stock) "Ortalama Stok Miktarı" from products pr

--7 Toplam Stok Miktarı
select sum(pr.stock) "Toplam Stok Miktarı" from products pr

--8 Kategori id numarası 2 sayısından büyük olanlar
Select pr.category_id, pr.name from products pr
inner join categories c
on pr.category_id = c.id
GROUP BY category_id, pr.name
HAVING category_id >= 2


--9 Hangi ürünü hangi satıcı satıyor
select pr.name, sl.name from products pr
inner join product_seller ps
on pr.id = ps.product_id
inner join sellers sl
on ps.seller_id=sl.id
group by pr.name, sl.name

--10 Hangi tedarikçi kaç defa tercih edilmiş
select sp.company_name, count(sp.company_name) from sellers s
inner join product_seller ps
on s.id=ps.seller_id
inner join products pr
on ps.product_id=pr.id
inner join suppliers sp
on pr.supplier_id = sp.id
group by sp.company_name

--11 hangi kategoride kaç ürün var
select ct.name "Katagori Adı",count(pr.name) "Ürün Sayısı" from products pr
inner join categories ct
on pr.category_id = ct.id
group by ct.name

--12 müşterilerin harcama sıralaması
select bk.price, bk.customer_id from baskets bk
inner join customers cr
on bk.customer_id = cr.id
order by bk.price desc

--13 Hangi müşteri id'sine sahip müşteri hangi kargo firmasını kullanıyor?
select o.customer_id,s.company_name from orders o
inner join shippers s
on o.shipper_id = s.id
group by o.customer_id,s.company_name

--14 Hangi bireysel müşteri hangi ödeme türünü kullanıyor? 
select pt.name,indcust.name from payment_types pt
inner join orders ord
on pt.id = ord.payment_type_id
inner join customers cust
on ord.customer_id = cust.id
inner join individual_customers indcust
on cust.individual_customers_id = indcust.id
group by pt.name,indcust.name


--15 ürünlerin markalara göre gruplandırılıp düşük fiyattan yüksek fiyata göre sıralanması.
select pro.name,br.name,pro.unit_price from products pro
inner join brands br
on pro.id = br.product_id
group by pro.name,br.name,pro.unit_price
order by unit_price 









