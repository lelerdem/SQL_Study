CREATE TABLE calisanlar(
	id char(5) PRIMARY KEY,
	isim VARCHAR(50) UNIQUE,
	maas INT NOT NULL,
	ise_baslama DATE
	
);

SELECT * FROM calisanlar;

CREATE TABLE adresler(
	adres_id char(5),
	sokak VARCHAR(50),
	cadde VARCHAR(30),
	sehir VARCHAR(20),
	FOREIGN KEY(adres_id) REFERENCES calisanlar(id)

);


INSERT INTO calisanlar VALUES('10002', 'Donatello' ,12000, '2018-04-14'); 
INSERT INTO calisanlar VALUES('10003', null, 5000, '2018-04-14');
--INSERT INTO calisanlar VALUES('10004', 'Donatello', 5000, '2018-04-14');
INSERT INTO calisanlar VALUES('10005', 'Michelangelo', 5000, '2018-04-14');
--INSERT INTO calisanlar VALUES('10006', 'Leonardo', null, '2019-04-12');
--INSERT INTO calisanlar VALUES('10007', 'Raphael', '', '2018-04-14');
INSERT INTO calisanlar VALUES('', 'April', 2000, '2018-04-14');
--INSERT INTO calisanlar VALUES('', 'Ms.April', 2000, '2018-04-14');
--INSERT INTO calisanlar VALUES('10002', 'Splinter' ,12000, '2018-04-14');
--INSERT INTO calisanlar VALUES( null, 'Fred' ,12000, '2018-04-14');

INSERT INTO calisanlar VALUES('10008', 'Barnie' ,10000, '2018-04-14');
INSERT INTO calisanlar VALUES('10009', 'Wilma' ,11000, '2018-04-14');
INSERT INTO calisanlar VALUES('10010', 'Betty' ,12000, '2018-04-14');

INSERT INTO adresler VALUES('10003','Ninja Sok', '40.Cad.','IST');
INSERT INTO adresler VALUES('10003','Kaya Sok', '50.Cad.','Ankara');
INSERT INTO adresler VALUES('10002','Taş Sok', '30.Cad.','Konya');


--INSERT INTO adresler VALUES('10012','Taş Sok', '30.Cad.','Konya');


INSERT INTO adresler VALUES(NULL,'Taş Sok', '23.Cad.','Konya');
INSERT INTO adresler VALUES(NULL,'Taş Sok', '33.Cad.','Bursa');

SELECT * FROM calisanlar;
SELECT *FROM adresler;

SELECT isim FROM calisanlar;
SELECT maas FROM calisanlar;

SELECT cadde FROM adresler;

SELECT * FROM calisanlar;
SELECT * FROM calisanlar WHERE isim='Donatello';

SELECT * FROM calisanlar WHERE maas>5000;

SELECT  isim,maas FROM calisanlar WHERE maas>5000;

SELECT * FROM adresler WHERE sehir='Konya' AND adres_id='10002';

SELECT cadde,sehir FROM adresler WHERE sehir='Konya' OR sehir='Bursa'

CREATE TABLE ogrenciler1
(
	id int,
	isim VARCHAR(50),
	veli_isim VARCHAR(50),
	yazili_notu int       
);

INSERT INTO ogrenciler1 VALUES(122, 'Kerem Can', 'Fatma',75);
INSERT INTO ogrenciler1 VALUES(123, 'Ali Can', 'Hasan',75);
INSERT INTO ogrenciler1 VALUES(124, 'Veli Han', 'Ayse',85);
INSERT INTO ogrenciler1 VALUES(125, 'Kemal Tan', 'Hasan',85);
INSERT INTO ogrenciler1 VALUES(126, 'Ahmet Ran', 'Ayse',95);
INSERT INTO ogrenciler1 VALUES(127, 'Mustafa Bak', 'Can',99);
INSERT INTO ogrenciler1 VALUES(128, 'Mustafa Bak', 'Ali', 99);
INSERT INTO ogrenciler1 VALUES(129, 'Mehmet Bak', 'Alihan', 89);

SELECT * FROM ogrenciler1;

DELETE FROM ogrenciler1 WHERE id=123;

DELETE FROM ogrenciler1 WHERE isim='Kemal Tan'

DELETE FROM ogrenciler1 WHERE isim='Ahmet Ran' OR isim='Veli Han';

DELETE FROM ogrenciler1 WHERE isim='Mustafa Bak' AND id=128;

DELETE FROM ogrenciler1 WHERE id=122 OR id=125 OR id=126;

DELETE FROM ogrenciler1 WHERE id>126;

SELECT * FROM address3;

DELETE FROM address3;

SELECT * FROM doctors;
TRUNCATE TABLE doctors;

SELECT * FROM calisanlar;
SELECT * FROM adresler ;

DELETE FROM calisanlar;

DELETE FROM adresler WHERE adres_id ='10002';
DELETE FROM calisanlar WHERE id = '10002';

DELETE FROM adresler;
DELETE FROM calisanlar;

CREATE TABLE talebeler
(
	id int primary key,  
	isim VARCHAR(50),
	veli_isim VARCHAR(50),
	yazili_notu int
);--parent

CREATE TABLE notlar( 
	talebe_id int,
	ders_adi varchar(30),
	yazili_notu int,
	CONSTRAINT notlar_fk FOREIGN KEY (talebe_id) REFERENCES talebeler(id)
	ON DELETE CASCADE	
);--child

INSERT INTO talebeler VALUES(122, 'Kerem Can', 'Fatma',75);
INSERT INTO talebeler VALUES(123, 'Ali Can', 'Hasan',75);
INSERT INTO talebeler VALUES(124, 'Veli Han', 'Ayse',85);
INSERT INTO talebeler VALUES(125, 'Kemal Tan', 'Hasan',85);
INSERT INTO talebeler VALUES(126, 'Ahmet Ran', 'Ayse',95);
INSERT INTO talebeler VALUES(127, 'Mustafa Bak', 'Can',99);
INSERT INTO talebeler VALUES(128, 'Mustafa Bak', 'Ali', 99);
INSERT INTO talebeler VALUES(129, 'Mehmet Bak', 'Alihan', 89);

INSERT INTO notlar VALUES (123,'kimya',75);
INSERT INTO notlar VALUES (124, 'fizik',65);
INSERT INTO notlar VALUES (125, 'tarih',90);
INSERT INTO notlar VALUES (126, 'Matematik',90);
INSERT INTO notlar VALUES (127, 'Matematik',90);
INSERT INTO notlar VALUES (null, 'tarih',90);

SELECT * FROM talebeler;
SELECT * FROM notlar;

DELETE FROM notlar WHERE talebe_id = 123;   


DELETE FROM talebeler WHERE id=126;

DELETE FROM notlar;

DROP TABLE talebeler CASCADE;

DROP TABLE IF EXISTS talebeler1;

CREATE TABLE musteriler  (
	urun_id int,  
	musteri_isim varchar(50),
	urun_isim varchar(50)
);

INSERT INTO musteriler VALUES (10, 'Mark', 'Orange');
INSERT INTO musteriler VALUES (10, 'Mark', 'Orange');
INSERT INTO musteriler VALUES (20, 'John', 'Apple');
INSERT INTO musteriler VALUES (30, 'Amy', 'Palm');
INSERT INTO musteriler VALUES (20, 'Mark', 'Apple');
INSERT INTO musteriler VALUES (10, 'Adem', 'Orange');
INSERT INTO musteriler VALUES (40, 'John', 'Apricot');
INSERT INTO musteriler VALUES (20, 'Eddie', 'Apple');

SELECT * FROM musteriler;

SELECT * FROM musteriler WHERE urun_isim='Orange' OR urun_isim='Apple' OR urun_isim='Apricot' 

SELECT * FROM musteriler WHERE musteri_isim IN ('John','Mark','Eddie')


SELECT * FROM musteriler WHERE musteri_isim NOT IN ('John','Mark','Eddie')

SELECT * FROM musteriler WHERE urun_id>=20 AND urun_id<=40

SELECT * FROM musteriler WHERE urun_id BETWEEN 20 AND 40;

SELECT * FROM musteriler WHERE urun_id < 20 OR urun_id > 30

SELECT *
FROM musteriler
WHERE urun_id NOT BETWEEN 20 AND 30;
