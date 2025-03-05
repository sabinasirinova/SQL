CREATE TABLE Istehsalcilar (
  IstehsalçıID INT PRIMARY KEY,
  IstehsalçıAdı VARCHAR(100),
  Ölkə VARCHAR(100)
);
CREATE TABLE Dermanlar (
  DermanID INT PRIMARY KEY,
  Ad VARCHAR(100),
  Qiymət DECIMAL(10, 2),
  IstehsalçıID INT,
  FOREIGN KEY (IstehsalçıID) REFERENCES Istehsalcilar(IstehsalçıID)
  );
CREATE TABLE Isciler (
  IsciID INT PRIMARY KEY,
  Ad VARCHAR(100),
  Soyad VARCHAR(100),
  Vəzifə VARCHAR(100),
  MaşınNömrəsi VARCHAR(20)
  );
CREATE TABLE Isler (
 IsID INT PRIMARY KEY,
 IsAdi VARCHAR(100),
 BaslamaTarixi DATE,
 BitmeTarixi DATE,
 DermanID INT,
 IsciID INT,
 FOREIGN KEY (DermanID) REFERENCES Dermanlar(DermanID),
 FOREIGN KEY (IsciID) REFERENCES Isciler(IsciID)
 );
 CREATE TABLE Musteriler (
  MüştəriID INT PRIMARY KEY,
  Ad VARCHAR(100),
  Ünvan VARCHAR(200),
  Telefon VARCHAR(20),
  );
 CREATE TABLE Sifarisler (
  SifarisID INT PRIMARY KEY,
  SifarisTarixi Date,
  Miqdar INT,
  DermanID INT,
  MüştəriID INT,
  FOREIGN KEY (DermanID) REFERENCES Dermanlar(DermanID),
  FOREIGN KEY (MüştəriID) REFERENCES Musteriler(MüştəriID),
  );
  CREATE TABLE Catdirilmalar (
   CatdirilmaID INT PRIMARY KEY,
   SifarisID INT,
   CatdirilmaTarixi DATE,
   TeslimatUnvani VARCHAR(200),
   FOREIGN KEY (SifarisID) REFERENCES Sifarisler(SifarisID)
  );
  CREATE TABLE DermanKategoriyalari (
   KategoriID INT PRIMARY KEY,
   DermanID INT,
   KategoriyaAdi VARCHAR(100),
   FOREIGN KEY (DermanID) REFERENCES Dermanlar(DermanID)
  );
  
  

  

 