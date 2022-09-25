1-)test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.

CREATE TABLE employee(
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	birthday DATE,
	email VARCHAR(100)
);


2-)Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
  'Mockaroo' dan 50 tane veri çektim. Aşağıya 3 tane örnek sorgu ekledim.
  
insert into employee (id, name, email, birthday) values (1, 'Mirelle Buckland', 'mbuckland0@shutterfly.com', null);
insert into employee (id, name, email, birthday) values (2, 'Henrietta Eads', 'heads1@de.vu', '2022-09-03');
insert into employee (id, name, email, birthday) values (3, 'Angela Imesson', 'aimesson2@soundcloud.com', '2022-09-22');

3-)
--id si 2 olan çalışanın adını 'Tester' olarak güncelleme
UPDATE employee 
SET name='Tester'
WHERE id=2;

--adı 'M' ile başlayıp  'e' ile biten çalışanların emaili güncelle
UPDATE employee
SET email='test@hotmail.com'
WHERE name LIKE 'M%e'

--doğumgünü olmayanların doğum tarihini 01-01-2000 olarak değiştir
UPDATE employee
SET birthday ='2000-01-01'
WHERE birthday IS NULL

--Adı olmayanları 'Anonim ' olarak değiştir
UPDATE employee
SET name ='Anonim'
WHERE name IS NULL

--emali boş olan ve id si 35 olan kişinin emalini 'test2@test.com' olarak değiştr
UPDATE employee
SET email='test2@test.com'
WHERE email IS NULL AND id=35;

--------------------------------------------------
--doğum tarihi '01-01-2000' olan verileri sil
DELETE FROM employee 
WHERE birthday='2000-01-01';

--emali 'test2@test.com' olan veriyi sil
DELETE FROM employee 
WHERE email='test2@test.com';

--Adı'Anonim ' olan veriyi sil
DELETE FROM employee 
WHERE name='Anonim';

--id si 10 olan çalışanı sil
DELETE FROM employee 
WHERE id=10;
