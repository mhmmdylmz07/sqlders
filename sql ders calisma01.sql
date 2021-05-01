
     -- TABLO OLUSTURMA SEKLI  
     
 CREATE TABLE student 
    ( std_id CHAR(5),
      std_name VARCHAR2(20),
      std_age NUMBER
    
  );
   
   -- TABLOYA ELEMAN EKLEMEK ICIN ISE 
   
INSERT INTO student VALUES ('101','muhammed yilmaz',23);
INSERT INTO student VALUES ('102','ayse gul',25);
 INSERT INTO student VALUES ('103','salim kurek',26);
 INSERT INTO student VALUES ('104','aysenur sokek',65);
 
 
-- EGER PARCALI VERI GIRISI YAPMAK ISTERSEK

INSERT INTO student(std_id,std_name) VALUES('105','muhammedcan son');
 
 -- TABLONUN ICINI OKUMAK ICIN 
 
 SELECT *FROM student;
 
 

  
  --VE OLUSAN TABLOYU BU YOL ILE SILEBILIRIZ
DROP TABLE student;



CREATE TABLE urunler
( 
    urun_id NUMBER(4),
    urun_adi VARCHAR2(50),
    fiyat NUMBER(5,2),
     stok_adedi NUMBER(10)

);

INSERT INTO urunler VALUES (100,'cips',5.50,500);
INSERT INTO urunler VALUES (101,'cola',4.75,220);
INSERT INTO urunler VALUES (102,'ayran',1.50,360);
INSERT INTO urunler VALUES (103,'bistuvi',1.25,500);
SELECT * FROM urunler;

DROP TABLE urunler;














  