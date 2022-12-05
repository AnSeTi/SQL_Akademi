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
select * from products 
UPDATE products 
SET product_rating = 3.7 --13 id numaralı ürüne puan atadık
WHERE id=13
returning id, name, product_rating

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

--13--Kullanıcı sepetteki ürün adetini artırdığında oluşacak komutu geliştiriniz.
update baskets set quantity = 5
where id = 1

--14--En az bir sipariş vermiş ancak hiç "MNG Kargo" kullanmamış müşterileri listeleyiniz.
select c.name as "Müşteriler" ,shippers.company_name as "Kargo Firması"  from baskets b
inner join customers c
on b.customer_id= c.id
inner join orders as o
on c.order_id = o.id
inner join shippers 
on o.shipper_id= shippers.id 
where not shippers.company_name = 'MNG Kargo'
--15--En az bir adet aynı üründen 10+ sipariş vermiş kullanıcıları ve ürünü listeleyiniz.
select  c.name "Müşteri adı",p.name " Ürün adı" , b.quantity "Miktar" from baskets b
inner join customers c
on b.customer_id= c.id
inner join orders as o
on c.order_id = o.id
inner join products p
on o.products_id= p.id
group by c.name,p.name ,b.quantity
having  b.quantity >= 10

--16--Onaylanmamış ödemeleri listeleyiniz.
select orders.status, payment_types.description from customers c
inner join orders 
on c.order_id= orders.id
inner join payment_types
on orders.payment_type_id=payment_types.id
where description =  'ödeme onaylanmadı'

--17--En az 2 farklı ülkede adresi olan kullanıcıları listeleyiniz.
select c1.name, count(c4.name) from customers c1 
inner join addresses c2
on c1.id = c2.customer_id 
inner join cities c3
on c2.city_id = c3.id
inner join countries c4
on c3.country_id = c4.id
group by c1.name
having count(c4.name) >= 2



--18--EN az 2 farklı şehirde adresi olan ve bu adreslere en az 1 adet sipariş vermiş kullanıcıları listeleyiniz.
select c3.name"Müşteriler", count(c3.name)"Şehir Sayısı" from cities c1
inner join addresses c2
on c1.id=c2.city_id
inner join customers c3
on c3.id=c2.customer_id
inner join orders c4
on c3.id=c4.customer_id
where c4.id is not null
group by c3.name
having count(c3.name) >=2



--19--Eklenmiş ancak hiç bir siparişte kullanılmamış adresleri listeleyiniz
select c1.title, c1.street, c3.name, c4.name from addresses c1
left join orders c2
on c1.id = c2.address_id
inner join cities c3
on c3.id = c1.city_id
inner join countries c4
on c3.country_id = c4.id
where c2.id is null
group by c1.title, c1.street, c3.name, c4.name