CREATE TABLE calisanlar2(
	id VARCHAR(50) PRIMARY KEY,
	isim VARCHAR(50) UNIQUE,
	maas INT NOT NULL,
	ise_baslama DATE
); 

CREATE TABLE adresler2(
	address_id CHAR(5),
	sokak VARCHAR(50),
	cadde VARCHAR(30),
	sehir VARCHAR(20),

FOREIGN KEY (address_id) REFERENCES calisanlar2(id)
); 

INSERT INTO calisanlar2 VALUES('10002', 'Donatello' ,12000, '2018-04-14'); 
INSERT INTO calisanlar2 VALUES('10003', null, 5000, '2018-04-14');
INSERT INTO calisanlar2 VALUES('10004', 'Donatello', 5000, '2018-04-14');
INSERT INTO calisanlar2 VALUES('10005', 'Michelangelo', 5000, '2018-04-14');
INSERT INTO calisanlar2 VALUES('10006', 'Leonardo', null, '2019-04-12');
INSERT INTO calisanlar2 VALUES('10007', 'Raphael', '', '2018-04-14');
INSERT INTO calisanlar2 VALUES('', 'April', 2000, '2018-04-14');
INSERT INTO calisanlar2 VALUES('', 'Ms.April', 2000, '2018-04-14');
INSERT INTO calisanlar2 VALUES('10002', 'Splinter' ,12000, '2018-04-14');
INSERT INTO calisanlar2 VALUES( null, 'Fred' ,12000, '2018-04-14');

INSERT INTO calisanlar2 VALUES('10008', 'Barnie' ,10000, '2018-04-14');
INSERT INTO calisanlar2 VALUES('10009', 'Wilma' ,11000, '2018-04-14');
INSERT INTO calisanlar2 VALUES('10010', 'Betty' ,12000, '2018-04-14');

INSERT INTO adresler2 VALUES('10003','Ninja Sok', '40.Cad.','IST');
INSERT INTO adresler2 VALUES('10003','Kaya Sok', '50.Cad.','Ankara');
INSERT INTO adresler2 VALUES('10002','Taş Sok', '30.Cad.','Konya');


INSERT INTO adresler2 VALUES('10012','Taş Sok', '30.Cad.','Konya');


INSERT INTO adresler2 VALUES(NULL,'Taş Sok', '23.Cad.','Konya');
INSERT INTO adresler2 VALUES(NULL,'Taş Sok', '33.Cad.','Bursa')

SELECT * FROM adresler2
SELECT * FROM calisanlar2

-- WHERE KOMUTU
-- ÇALIŞANLAR LİSTESİNDE İSMİ DONATELLO OLANLARI LİSTELE

SELECT * FROM calisanlar2 WHERE isim= 'Donatello' 
SELECT * FROM calisanlar2 where maas>5000

-- ÇALIŞANLAR TABLOSUNDA MAAŞI 5000DEN FAZLA OLANLARIN SADECE İSİM VE MAAŞLARINI LİSTELE

SELECT isim,maas from calisanlar2 WHERE maas>5000

SELECT * FROM adresler2 WHERE sehir='Konya' AND address_id='10002'

--SEHRİ KONYA VEYA BURSA OLAN ADRESLERİN CADDE VE SEHİR BİLGİLERİNİ GETİR

SELECT * FROM adresler2 WHERE sehir='Bursa'or sehir='Konya'

-- DELETE FROM ..... WHERE ....

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

DELETE FROM ogrenciler1 WHERE id=123

-- İSMİ KEMAL TAN OLANLARI SİLİN

DELETE FROM ogrenciler1 WHERE isim='Kemal Tan'

SELECT * FROM ogrenciler1

DELETE FROM ogrenciler1 WHERE isim='Ahmet Han' OR isim='Veli Han'
DELETE FROM ogrenciler1 WHERE isim='Mustafa Bak' AND id='128'

--IDSİ 122 , 125 VEYA 126 OLANLARI SİL

DELETE FROM ogrenciler1 WHERE id= 122 OR id=125 OR id=12677

-- TABLODAKİ TÜM VERİLERİ SİLME
-- DELETE FROM TABLE NAME
-- TRUNCATE TABLE TABLE NAME

DELETE FROM ogrenciler1

SELECT * FROM ogrenciler1