
--INSERT
select * from cities
insert into cities  (name, country_id, plaka_id)
values ('Eskişehir',1,26)

-- Sepetinde o an en az 5 ürün olan customerları listeleyiniz.
select customer_id,quantity from Baskets
group by customer_id, quantity
having quantity>=5

-- Bugüne kadar verdiği sipariş toplamı 2000₺'yi geçen customerları listeleyiniz.
select price*quantity "Toplam Sipariş tutarı" from baskets
where price*quantity > 2000

-- Bugüne kadar en az 10.000₺ satış yapmış satıcıları listeleyiniz.
select s.name,po.total_price from sellers s
inner join product_seller ps
on s.id=ps.seller_id
inner join products pr
on ps.product_id = pr.id
inner join  product_order po
on pr.id = po.product_id
inner join orders ord
on po.order_id = ord.id
group by po.total_price, s.name
having po.total_price>10000

-- Her kategoride en çok kazandıran ürünü (price * quantity değeri ele alınmalıdır) listeleyiniz.
select ct.name, max(po.quantity*pr.unit_price)"Satılan Ürün Toplam fiyatı" from categories ct
inner join products pr
on ct.id=pr.category_id
inner join product_order po
on pr.id = po.product_id
group by ct.name

-- Satıcıları sattığı ürün adedine göre büyükten küçüğe sıralayınız.
select s.name"Satıcı Adı",pr.name"Ürün Adı",po.quantity"Satılan Ürün Sayısı" from sellers s
inner join product_seller ps
on s.id=ps.seller_id
inner join products pr
on ps.product_id = pr.id
inner join  product_order po
on pr.id = po.product_id
inner join orders ord
on po.order_id = ord.id
order by po.quantity desc

-- Siparişleri içerdiği ürün adedine göre listeleyiniz.
select o.id"Sipariş Numarası",po.quantity"Sipariş Adedi"  from orders o
inner join product_order po
on o.id = po.order_id

-- En çok kullanılan kargo şirketlerini kullanıldığı sipariş veya sipariş ürünü adedi ile birlikte listeleyiniz.
select sh.company_name, po.quantity,ord.id,ord.shipper_id, pr.name from shippers sh
inner join orders ord
on sh.id = ord.shipper_id
inner join product_order po
on ord.id = po.order_id
inner join products pr
on po.product_id = pr.id
group by sh.company_name, po.quantity, ord.id, pr.name
order by po.quantity desc

-- Girilen Ülke için kaç adet şehir olduğunu
select ct.name"Ülke",count(c.name)"Şehir sayısı" from countries ct
inner join cities c
on ct.id = c.country_id
group by ct.name

--** Ürün bilgilerini içerisinde kategori,renk,beden,satıcı,kaç adet satıldı, kaç para kazandırdı bilgileri ile listeleyiniz.
select pro.name"Ürün İsim",pro.category_id"Kategori ID",pro.product_colour_id"Renk ID",pro.product_size_id"Beden",s.name"Satıcı Adı",proorder.quantity"Adet",proorder.total_price"Toplam Kazanç" from sellers s
inner join product_seller ps
on s.id = ps.seller_id
inner join products pro
on ps.product_id = pro.id
inner join product_order proorder
on pro.id = proorder.product_id
 
--** Girilen şehir için kaç adet ilçe olduğunu, 
select ci.name,count(ci.name)"İlçe sayısı" from cities ci
inner join town
on ci.id = town.city_id
group by ci.name

--** Girilen ilçe için kaç adet mahalle olduğunu listeleyiniz.
select town.name, count(town.name)"Mahalle Sayısı" from town
inner join public." neigh" 
on town.id = public." neigh".town_id
group by town.name



--1--Kargo şirketlerine toplam kaç para ödendiğini hesaplayınız.
select company_name,unit_price,quantity,unit_price*quantity as "toplam kargo ücretleri" from shippers
--Tüm toplamı görmek için
select sum(unit_price*quantity) as "tüm kargo ücretleri" from shippers

--2--Halihazırda indirimli ve isminde 'b' geçen tüm ürünleri listeleyiniz.
select p.name, p.unit_price From products p
where p.name like '%b%'

--3--üçüncü harfi c olan tüm ürünleri listeleyiniz.
select p.name , p.id from products p
where p.name like '__g%'

--4--Bir kişinin sipariş oluştururken kullanacağı insert komutlarını yazınız (alt tablolar dahil ve siparişte en az 3 ürün olacak şekilde)
insert into baskets (price,customer_id,quantity) values(191,4,3),(171,2,2),(151,3,3);
select*from baskets

--5--Sipariş oluşturduktan sonra sepeti boşaltacak update komutlarını oluşturunuz.
DELETE FROM baskets
WHERE id=11; --id=11 numaralı ürünün siparişinin oluşturulduğu varsayıldı
select * from baskets

--6--İndirim halindeki ürünlerin indirim uygulanmış fiyatlarıyla listelenmesini sağlayınız.
select * from products
select p.name, p.unit_price, ((p.unit_price*p.discount_rate)+p.unit_price)"İndirimli Fiyat" from products p
where discount_rate is not null

--7--Kullanıcı bir ürünü review ettiğinde (puanladığında) oluşacak insert komutunu geliştiriniz.
select * from products p
insert into products  (p.product_rating)
values ('Eskişehir',1,26)

--8--Kullanıcı bir ürün iade etmek istediğinde oluşacak insert komutunu geliştiriniz.
select * from refunds ref
insert into refunds  (product_order_id,return_date,return_description)
values ('6','04-12-2022','ürün boyutu istediğim gibi gelmedi') --İade edilecek ürün bilgileri buraya girilmelidir.

--9--İade durumları değiştiğinde oluşabilecek update komutları

select * from refunds

update refunds set product_order_id=5 where id=1;
update refunds set return_date='2022-12-01' where id=1;
update refunds set return_description='Eksik' where id=1;

--10-- Satıcı ürünü güncellemek istediğinde oluşacak örnek bir update komutu geliştiriniz.

select * from product_seller
select * from products

update product_seller set product_id=6 where seller_id=5

--11-- Sipariş durumu (kargoda,taşımada vs) değiştiğinde tabloda değişikliği yapacak update komutunu geliştiriniz.

select * from orders

update orders set status='sipariş yolda' where id=1;
update orders set status='sipariş beklemede' where id=2;
update orders set status='teslim edildi' where id=3;


--12-- Kullanıcı sepete ürün eklediğinde oluşacak insert komutunu geliştiriniz

select * from baskets

insert into baskets (price,customer_id,quantity) values (55,2,6) --id otomatik olarak arttığı için kolon kısmına eklenmemiştir.


