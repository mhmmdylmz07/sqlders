--CREATE TABLE calisanlar (
-- id char(5) PRIMARY KEY, -- TEKRARLI OLMAZ VE NULL OLMAZ ANLAMINDADIR....
--  isim VARCHAR(50) NOT NULL UNIQUE, -- BUDA AYNI PRIMARY KEY GIBI OLDU
--  maas NUMBER(5) NOT NULL,   -- BOS GIRMEK VE NULL YAZARAK DEGER GIRILMEZ
--  ise_baslama DATE
--
--);
--
--INSERT INTO calisanlar VALUES ('1001','muhammed yilmaz',7000,'19/may/2018');
--INSERT INTO calisanlar VALUES ('1002','fatma yilmaz',68542,'19/sep/2018');
--INSERT INTO calisanlar VALUES ('1003','sangul yilmaz',2569,'19/may/2015');
--INSERT INTO calisanlar VALUES ('1004','kadir yilmaz',69512,'19/apr/2021');
--INSERT INTO calisanlar VALUES ('1004','Seher bos',69512,'25/apr/2069');       -- BUNU YAZDIRMAZ CUNKU ID KODUNU PRIMARY KEY YAPTIK AYNI ID EKLENMAZ
-- INSERT INTO calisanlar VALUES ('1005','Seher bos',65862,'25/apr/2036'); 
--
--
--SELECT * FROM calisanlar;
--
--
--DROP TABLE calisanlar;
-- 
--   -- SATIR SILMEK ICIN ID NIN 1001 OLDUGU YERI SILMEK ICIN
--   
--DELETE FROM calisalar WHERE     id='1001';
--
--



--==================================================================

--   ALTERNATIF PRIMARY KEY TANIMLAMA YONTEMI

CREATE TABLE calisanlar (
       id char(5),
  isim VARCHAR(50)UNIQUE, 
  maas NUMBER(5) NOT NULL, 
  ise_baslama DATE,
       
   CONSTRAINT id_degisim PRIMARY KEY(id)  -- BURADA ISIM VERDIK DAHAKOLAY BULMAK ICIN  VE AYRICA PRIMARY KEY YAPMIS OLURUZ  id char(5), YANINA YAZMADAN
  
  
  -- EGER PRIIMARY KEY OZELLIGINI KAPATMAK ISTERSEK "DISABLE" EKLEMELIYIZ EN SONA BUNUN: {CONSTRAINT id_pk PRIMARY KEY(id)}

);
INSERT INTO calisanlar VALUES ('1001','muhammed yilmaz',7000,'19/may/2018');
INSERT INTO calisanlar VALUES ('1002','fatma yilmaz',68542,'19/sep/2018'); -- NORMALDE BUNU YAZAMAMASI LAZIM AMA DISABLE YAPARSAK YAZAR
INSERT INTO calisanlar VALUES ('1003','sangul yilmaz',2569,'19/may/2015');

SELECT * FROM calisanlar;

DROP TABLE calisanlar;

CREATE TABLE adresler (
      adres_id char(5) REFERENCES calisanlar (id), -- BIZ BOLE YAPARAK YUKARDAKI CALISANLAR CREATE INI PARENT YAPTIK 
      sokak VARCHAR2(56),                           -- VE ADRESLERI ISE CHILD YAPTIK      
      cadde VARCHAR(30),
      sehir VARCHAR(20)
--CONSTRAINT id_fk FOREIGN KEY  (adres_id) REFERENCES calisanlar(id)   --EGER BUNU YAPARSAK YUKARIDAKI REFERENCE METHODUNU DEVRE DISI BIRAKMAMIZ LAZIM

);
INSERT INTO adresler VALUES ('1001','mutlu sok','40.cadde','kayser');
INSERT INTO adresler VALUES ('1001','can sok','65.cadde','antep');
INSERT INTO adresler VALUES ('1002','cuma sok','65.cadde','newland');
--INSERT INTO adresler VALUES ('1004','cumartesei sok','98.cadde','samsun'); -- PARENTTTE OLMAYAN BIR ID YE CHILD DA EKLEME YAPMAZ
                                                                               -- YANI BU OLMAZ 
 -- CHILD TA NULL DEGERLER EKLENEBILIR ONUN ICIN DENEYELIM                                                                              
INSERT INTO adresler VALUES ('','cuma sok','65.cadde','newland');             

-- PARENTE SILMEK ISTERSEK OLMAZ CUNKU ILK ONCE CHILD DI SILMEMIZ LAZIM
-- AMA PARENT YERINDE KESINLIKLE NULL DEGERLER OLMAZ


SELECT * FROM adresler;
SELECT * FROM calisanlar;

SELECT * FROM calisanlar,adresler  WHERE id = '1001';

DROP TABLE adresler;
DROP TABLE calisanlar;

