CREATE TABLE tedarikciler_id (

	tedarikci_id CHAR(4),
	tedarikci_name VARCHAR(50),
	tedarikci_adres VARCHAR(70),
	ulasim_tarihi DATE
);

CREATE TABLE tedarikci_info as SELECT tedarikci_name, ulasim_tarihi FROM tedarikciler_id;

CREATE TABLE ogretmenler (
	
	kimlik_no CHAR(11),
    isim VARCHAR(50),
	brans VARCHAR(10),
	cinsiyet VARCHAR(5)
		
);

INSERT INTO ogretmenler VALUES ('234431223','Nana Techworld','DevOps','kadin');
INSERT INTO ogretmenler VALUES ('234431224','Mehmet Ince','Security','erkek');
INSERT INTO ogretmenler(kimlik_no,isim) VALUES ('567597624','Syephane Maarek');
INSERT INTO ogretmenler VALUES ('567597624','Syephane Maarek');
INSERT INTO ogretmenler(brans,cinsiyet) VALUES ('IT','Kadın');

SELECT * FROM ogretmenler;

SELECT * FROM tedarikciler_id;
