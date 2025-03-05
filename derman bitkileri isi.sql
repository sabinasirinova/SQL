CREATE DATABASE dərmanbitkiləri
use dərmanbitkiləri

CREATE TABLE Bitkilar (
BitkiID INT PRIMARY KEY,
Ad NVARCHAR(255),
LatinAdi NVARCHAR(255),
Magsad NVARCHAR(255)
);

CREATE TABLE KimyaviTarkib (
KimyaviTarkibID INT PRIMARY KEY, BItkiID INT,
AktivTarkib NVARCHAR (255) ,
FOREIGN KEY (BitKiID) REFERENCES Bitkilar (BitkiID)
);

CREATE TABLE TasirMexanizmi (
TasirMexanizmiID INT PRIMARY KEY, BitkiID INT,
Mexanizm NVARCHAR (MAX) ,
FOREIGN KEY (BitkiID)
REFERENCES Bitkilar (BitkiID)
);

CREATE TABLE istifadeÜsullari (
istifadaÜsuluID INT PRIMARY KEY, BitkiID INT,
Üsul NVARCHAR (MAX) ,
FOREIGN KEY (BitkiID) REFERENCES Bitkilar (BitkiID)
);

CREATE TABLE QarsiGöstaricilar (
QarsiGöstariciID INT PRIMARY KEY, BitkiID INT,
Gosterici NVARCHAR(MAX) ,
FOREIGN KEY (BitkiID) REFERENCES Bitkilar (BitkiID)
);

CREATE TABLE ElagaliBitkilar (
ElageliBitkiID INT PRIMARY KEY, BitkilID INT, Bitki2ID INT,
FOREIGN KEY (BitkilID) REFERENCES Bitkilar (BitkiID),
FOREIGN KEY (Bitki2ID) REFERENCES Bitkilar (BitkiID)
);

CREATE TABLE BitkiKimyeviTerkibi(
BitkiKimyaviTerkibiID INT PRIMARY KEY, BitkiID INT,
KimyaviTarkibID INT,
FOREIGN KEY (BitkiID)
REFERENCES Bitkilar (BitkiID),
FOREIGN KEY (KimyaviTarkibID) REFERENCES KimyaviTarkib(KimyaviTarkibID)
);

CREATE TABLE BitkiTasirMexanizmi (
BitkiTesirMexanizmiID INT PRIMARY KEY, BitkiID INT,
TasirMexanizmiID INT,
FOREIGN KEY
(BitkiID) REFERENCES Bitkilar(BitkiID),
FOREIGN KEY
(TasirMexanizmiID) REFERENCES TasirMexanizmi (TasirMexanizmiID)
);

CREATE TABLE istifadaçilar ( istifadaçiID INT PRIMARY KEY,
Ad NVARCHAR ( 255) ,
Email NVARCHAR (255), Sifra NVARCHAR (255)
);

CREATE TABLE istifadaçiBitkilar ( istifadaçiBitkiID INT PRIMARY KEY, istifadaçiID INT,
BitkiID INT, FOREIGN KEY
(IstifadaçiID) REFERENCES istifadaçilar(istifadaçiID),
FOREIGN KEY (BitkiID) REFERENCES Bitkilar(BitkiID)
);
INSERT INTO Bitkilar (BitkiID, Ad, LatinAdi, Magsad) VALUES
(1, N'Aloe vera', N'Aloe vera', N'Dərman məqsədilə istifadə olunur'),
(2, N'Ginkgo Biloba', N'Ginkgo biloba', N'Yaddaşın gücləndirilməsi üçün'),
(3, N'Echinacea', N'Echinacea purpurea', N'İmmun sistemini gücləndirmək üçün'),
(4, N'Lavanda', N'Lavandula angustifolia', N'Stress və qarışıq duyğular üçün'),
(5, N'Qara Çay', N'Camellia sinensis', N'Metabolizmi sürətləndirmək üçün'),
(6, N'Çobanyastığı', N'Matricaria chamomilla', N'Sakitləşdirici'),
(7, N'Yarpaqlı xiyar', N'Cucumis sativus', N'Kosmetikada istifadə olunur'),
(8, N'Nane', N'Mentha', N'Mədə xəstəlikləri üçün'),
(9, N'İtburnu', N'Rosa canina', N'Vitamin C mənbəyi'),
(10, N'Adaçayı', N'Salvia officinalis', N'Təbii antiseptik'),
(11, N'Zəncəfil', N'Zingiber officinale', N'Antioksidant'),
(12, N'Qaragilə', N'Vaccinium myrtillus', N'Göz sağlamlığı üçün'),
(13, N'Xanımotu', N'Humulus lupulus', N'Yuxu problemləri üçün'),
(14, N'Dəvətikanı', N'Silybum marianum', N'Qaraciyər sağlığı'),
(15, N'Məkkəgülü', N'Hibiscus', N'Təzəlik və gənclik');

INSERT INTO KimyaviTarkib (KimyaviTarkibID, BitkiID, AktivTarkib) VALUES
(1, 1, N'Aloin, Emodin'),
(2, 2, N'Flavonoidlər, Terpenlər'),
(3, 3, N'Flavonoidlər, Polisakkaridlər'),
(4, 4, N'Linalool, Linalyl acetate'),
(5, 5, N'Kafein, Teofillin'),
(6, 6, N'Azulen, Bisabolol'),
(7, 7, N'Kukurbitacin, Steroidlər'),
(8, 8, N'Menthol, Menthone'),
(9, 9, N'Askorbin turşusu, Karotenoidlər'),
(10, 10, N'Tanənlər, Flavonoidlər'),
(11, 11, N'Gingerol, Shogaol'),
(12, 12, N'Anthocyanins, Vitamin C'),
(13, 13, N'Humulone, Lupulone'),
(14, 14, N'Silibinin, Silymarin'),
(15, 15, N'Hibiscin, Vitamin C');

INSERT INTO TasirMexanizmi (TasirMexanizmiID, BitkiID, Mexanizm) VALUES
(1, 1, N'Dərini nəmləndirir və sağaldır'),
(2, 2, N'Antioksidant və iltihab əleyhinə təsir göstərir'),
(3, 3, N'İmmunitet sistemini gücləndirir'),
(4, 4, N'Sakitləşdirici və yuxu keyfiyyətini yaxşılaşdırır'),
(5, 5, N'Antioksidant təsiri ilə metabolizmi sürətləndirir'),
(6, 6, N'Sakitləşdirici və iltihab əleyhinə təsir göstərir'),
(7, 7, N'Dəriyə təmizləyici təsir göstərir'),
(8, 8, N'Həzmi asanlaşdırır və mədəyə sakitləşdirici təsir göstərir'),
(9, 9, N'İmmunitet sistemini gücləndirir və C vitamini təmin edir'),
(10, 10, N'Antibakterial və antiviral təsir göstərir'),
(11, 11, N'Antiinflamatuar və antioksidant təsir göstərir'),
(12, 12, N'Göz sağlamlığını qoruyur və antioksidant təsir göstərir'),
(13, 13, N'Sakitləşdirici və yuxu gətirici təsir göstərir'),
(14, 14, N'Qaraciyər hüceyrələrini qoruyur və yeniləyir'),
(15, 15, N'İmmunitet sistemini gücləndirir və antioksidant təsir göstərir');

INSERT INTO istifadeÜsullari (istifadaÜsuluID, BitkiID, Üsul) VALUES
(1, 1, N'Gündəlik dəri baxımında krem və gel formasında'),
(2, 2, N'Çay və ya kapsul şəklində qəbul edilir'),
(3, 3, N'Tincture və ya çay kimi istifadə olunur'),
(4, 4, N'Aroma terapiyasında və ya çay kimi istifadə olunur'),
(5, 5, N'Çay və ya ekstrakt olaraq qəbul edilir'),
(6, 6, N'Çay və ya kompres şəklində istifadə olunur'),
(7, 7, N'Maska və ya krem formasında tətbiq olunur'),
(8, 8, N'Çay və ya efir yağı olaraq istifadə olunur'),
(9, 9, N'Mürəbbə və ya çay şəklində qəbul edilir'),
(10, 10, N'Çay və ya gargarası kimi istifadə olunur'),
(11, 11, N'Təzə, quru və ya çay olaraq istifadə olunur'),
(12, 12, N'Meyvə şirəsi və ya kapsul şəklində qəbul edilir'),
(13, 13, N'Çay və ya kompres olaraq istifadə olunur'),
(14, 14, N'Kapsul və ya çay şəklində qəbul edilir'),
(15, 15, N'Çay və ya şərbət şəklində istifadə olunur');

INSERT INTO QarsiGöstaricilar (QarsiGöstariciID, BitkiID, Gosterici) VALUES
(1, 1, N'Hamiləlik və laktasiya dövründə istifadə etməyin'),
(2, 2, N'Uşaqlar və hamilə qadınlar üçün tövsiyə edilmir'),
(3, 3, N'Alerjik reaksiyalar mümkündür'),
(4, 4, N'Astma xəstələrində ehtiyatla istifadə edilməlidir'),
(5, 5, N'Yüksək təzyiq zamanı istifadəsi məsləhət görülmür'),
(6, 6, N'Qaraciyər xəstəlikləri olanlara tövsiyə edilmir'),
(7, 7, N'Hamiləlik dövründə istifadəsi məsləhət görülmür'),
(8, 8, N'Yüksək dozada istifadə etməyin'),
(9, 9, N'Mədə xorası olanlar üçün tövsiyə edilmir'),
(10, 10, N'Hamilə qadınlar üçün məsləhət görülmür'),
(11, 11, N'Ürək xəstəlikləri olanlar üçün məsləhət görülmür'),
(12, 12, N'Uşaqlar üçün tövsiyə edilmir'),
(13, 13, N'Böyrək xəstəlikləri olanlar üçün tövsiyə edilmir'),
(14, 14, N'Ağır xəstəliklər zamanı istifadəsi məsləhət görülmür'),
(15, 15, N'Yüksək təzyiq və ürək xəstəlikləri olanlar üçün tövsiyə edilmir');
select * from QarsiGöstaricilar
select * from  KimyaviTarkib
INSERT INTO ElagaliBitkilar (ElageliBitkiID, BitkilID, Bitki2ID) VALUES
(1, 1, 2),
(2, 3, 4),
(3, 5, 6),
(4, 7, 8),
(5, 9, 10),
(6, 11, 12),
(7, 13, 14),
(8, 15, 1),
(9, 2, 3),
(10, 4, 5),
(11, 6, 7),
(12, 8, 9),
(13, 10, 11),
(14, 12, 13),
(15, 14, 15);

INSERT INTO BitkiKimyeviTerkibi (BitkiKimyaviTerkibiID, BitkiID, KimyaviTarkibID) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15);

INSERT INTO BitkiTasirMexanizmi (BitkiTesirMexanizmiID, BitkiID, TasirMexanizmiID) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15);

INSERT INTO istifadaçilar (istifadaçiID, Ad, Email, Sifra) VALUES
(1, N'John Doe', N'john.doe@example.com', N'password1'),
(2, N'Jane Smith', N'jane.smith@example.com', N'password2'),
(3, N'Ahmet Yılmaz', N'ahmet.yilmaz@example.com', N'password3'),
(4, N'Ayşe Kaya', N'ayse.kaya@example.com', N'password4'),
(5, N'Mehmet Öz', N'mehmet.oz@example.com', N'password5'),
(6, N'Fatma Demir', N'fatma.demir@example.com', N'password6'),
(7, N'Ali Çelik', N'ali.celik@example.com', N'password7'),
(8, N'Zeynep Yıldız', N'zeynep.yildiz@example.com', N'password8'),
(9, N'Aysel Ak', N'aysel.ak@example.com', N'password9'),
(10, N'Emre Can', N'emre.can@example.com', N'password10'),
(11, N'Elif Şahin', N'elif.sahin@example.com', N'password11'),
(12, N'Burak Yılmaz', N'burak.yilmaz@example.com', N'password12'),
(13, N'Merve Kaya', N'merve.kaya@example.com', N'password13'),
(14, N'Cem Çetin', N'cem.cetin@example.com', N'password14'),
(15, N'Nazlı Kara', N'nazli.kara@example.com', N'password15');

INSERT INTO ElagaliBitkilar (ElageliBitkiID, BitkilID, Bitki2ID) VALUES
(1, 1, 2),
(2, 3, 4),
(3, 5, 6),
(4, 7, 8),
(5, 9, 10),
(6, 11, 12),
(7, 13, 14),
(8, 15, 1),
(9, 2, 3),
(10, 4, 5),
(11, 6, 7),
(12, 8, 9),
(13, 10, 11),
(14, 12, 13),
(15, 14, 15);

INSERT INTO BitkiKimyeviTerkibi (BitkiKimyaviTerkibiID, BitkiID, KimyaviTarkibID) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15);

INSERT INTO BitkiTasirMexanizmi (BitkiTesirMexanizmiID, BitkiID, TasirMexanizmiID) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15);

INSERT INTO istifadaçilar (istifadaçiID, Ad, Email, Sifra) VALUES
(1, N'John Doe', N'john.doe@example.com', N'password1'),
(2, N'Jane Smith', N'jane.smith@example.com', N'password2'),
(3, N'Ahmet Yılmaz', N'ahmet.yilmaz@example.com', N'password3'),
(4, N'Ayşe Kaya', N'ayse.kaya@example.com', N'password4'),
(5, N'Mehmet Öz', N'mehmet.oz@example.com', N'password5'),
(6, N'Fatma Demir', N'fatma.demir@example.com', N'password6'),
(7, N'Ali Çelik', N'ali.celik@example.com', N'password7'),
(8, N'Zeynep Yıldız', N'zeynep.yildiz@example.com', N'password8'),
(9, N'Aysel Ak', N'aysel.ak@example.com', N'password9'),
(10, N'Emre Can', N'emre.can@example.com', N'password10'),
(11, N'Elif Şahin', N'elif.sahin@example.com', N'password11'),
(12, N'Burak Yılmaz', N'burak.yilmaz@example.com', N'password12'),
(13, N'Merve Kaya', N'merve.kaya@example.com', N'password13'),
(14, N'Cem Çetin', N'cem.cetin@example.com', N'password14'),
(15, N'Nazlı Kara', N'nazli.kara@example.com', N'password15');

INSERT INTO istifadaçiBitkilar (istifadaçiBitkiID, istifadaçiID, BitkiID) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8);

INSERT INTO BitkiKimyeviTerkibi (BitkiKimyaviTerkibiID, BitkiID, KimyaviTarkibID) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8);

INSERT INTO BitkiTasirMexanizmi (BitkiTesirMexanizmiID, BitkiID, TasirMexanizmiID) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8);

INSERT INTO istifadaçilar (istifadaçiID, Ad, Email, Sifra) VALUES
(1, N'John Doe', N'john.doe@example.com', N'password1'),
(2, N'Jane Smith', N'jane.smith@example.com', N'password2'),
(3, N'Ahmet Yılmaz', N'ahmet.yilmaz@example.com', N'password3'),
(4, N'Ayşe Kaya', N'ayse.kaya@example.com', N'password4'),
(5, N'Mehmet Öz', N'mehmet.oz@example.com', N'password5'),
(6, N'Fatma Demir', N'fatma.demir@example.com', N'password6'),
(7, N'Ali Çelik', N'ali.celik@example.com', N'password7'),
(8, N'Zeynep Yıldız', N'zeynep.yildiz@example.com', N'password8');

INSERT INTO istifadaçiBitkilar (istifadaçiBitkiID, istifadaçiID, BitkiID) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8);

ALTER TABLE istifadaçilar ADD yaş INT;
UPDATE istifadaçilar
SET yaş = 25
WHERE istifadaçiID = 1;

UPDATE istifadaçilar
SET yaş = 32
WHERE istifadaçiID = 2;

UPDATE istifadaçilar
SET yaş = 27
WHERE istifadaçiID = 3;

UPDATE istifadaçilar
SET yaş = 19
WHERE istifadaçiID = 4;

UPDATE istifadaçilar
SET yaş = 45
WHERE istifadaçiID = 5;

UPDATE istifadaçilar
SET yaş = 33
WHERE istifadaçiID = 6;

UPDATE istifadaçilar
SET yaş = 33
WHERE istifadaçiID = 7;

UPDATE istifadaçilar
SET yaş =26
WHERE istifadaçiID = 8;
select * from istifadaçilar

SELECT CONCAT( 'istifadaçi ID:',istifadaçiID, ',Ad',Ad,',Email:',Email,',Şifrə:',Sifra)AS istifadaçiMelumatlari 
FROM istifadaçilar

SELECT DISTINCT istifadaçiID ,Ad,Email
FROM istifadaçilar

SELECT* FROM istifadaçilar
WHERE istifadaçiID IN (1,3,5);

SELECT* FROM istifadaçilar
where yaş BETWEEN 20 AND 30;

SELECT* FROM KimyaviTarkib
WHERE AktivTarkib LIKE '% FLAVONOID%';

SELECT* FROM istifadaçilar
ORDER BY Ad ASC;

SELECT* FROM istifadaçilar
ORDER BY Ad DESC;

SELECT
Istifadaçilar. istifadaçiID,
Istifadaçilar.Ad AS IstifadaçiAd,
Istifadaçilar.Email AS IstifadaçiEmail,
istifadaçiBitkilar.BitkiID,
ElagaliBitkilar.BitkilID,
ElagaliBitkilar.Bitki2ID
FROM Istifadaçilar
LEFT JOIN istifadaçiBitkilar ON istifadaçilar. istifadaçiID = istifadaçiBitkilar. IstifadaçiID
LEFT JOIN ElagaliBitkilar ON istifadaçiBitkilar.BitkiID = ElagaliBitkilar.BitkilID;

ALTER TABLE istifadeÜsullari
DROP COLUMN Üsul;

SELECT COUNT(YAŞ) AS Say FROM istifadaçilar;

SELECT istifadaçilar.Ad, COUNT(*) AS İstifadəçiSayı
FROM istifadaçilar
LEFT JOIN istifadaçiBitkilar ON istifadaçilar.istifadaçiID= istifadaçiBitkilar.istifadaçiID
GROUP BY istifadaçilar.Ad;

SELECT COUNT(*) AS BitkiSayisi, Ad
FROM Bitkilar
WHERE Ad LIKE 'A%'
GROUP BY Ad
HAVING COUNT (*) > 0;

SELECT Ad FROM Bitkilar
UNION 
SELECT aktivTarkib FROM KimyaviTarkib;

SELECT * FROM istifadaçilar
UPDATE istifadaçilar
SET Ad ='Lia Shine',yaş='24'
WHERE istifadaçiID = 3;

SELECT * FROM istifadaçilar
DELETE FROM istifadaçilar
WHERE Ad='Fatma Demir';

SELECT MAX(Email) AS MaxEmail
FROM istifadaçilar;

SELECT AVG(YAŞ) FROM istifadaçilar;

/*CREATE PROCEDURE GetUsersByAgeRange
  @MinAge INT,
  @MaxAge INT
AS
BEGIN
  SELECT * FROM istifadaçilar
  WHERE yaş BETWEEN @MinAge AND @MaxAge;
END;

EXEC GetUsersByAgeRange @MinAge = 21, @MaxAge = 40;


CREATE FUNCTION kimyaviTarkibEldeEt
(@BitkiAdi NVARCHAR(255))
RETURNS NVARCHAR(MAX)
AS
BEGIN
  DECLARE @KimyaviTarkib NVARCHAR(MAX);


  SELECT @KimyaviTarkib = AktivTarkib FROM KimyaviTarkib
  WHERE BitkiID = (SELECT BitkiID FROM Bitkilar WHERE Ad = @BitkiAdi);

  RETURN @KimyaviTarkib;
END;

DECLARE @BitkiAdi NVARCHAR(255) = N'Aloe vera';
DECLARE @KimyaviTarkib NVARCHAR(MAX);

SELECT @KimyaviTarkib = dbo.kimyaviTarkibEldeEt(@BitkiAdi);

SELECT @KimyaviTarkib AS 'Aloe vera Kimyevi terkibi';*/


 