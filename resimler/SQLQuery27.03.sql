--3 tablo olsun 
--her tabloda crud iþlemi(ekleme,silme),arama ,herhangi bir filtreleme olsun
--tablolarýnýz tarih içersin
---------------------------------------------------------------------------------------------------------------------------
----------Arac Ekleme-------------------------------
alter proc AracEkle
@AracTipi varchar(20),
@VitesTipi varchar(20),
@YakitTipi varchar(20),
@Marka varchar(20),
@Model varchar(20),
@AracYas int,
@EhliyetTipi varchar(20),
@EhliyetYas int,
@OfisID int,
@AracRenk varchar(20),
@Fiyat money,
@durum varchar(50)
as
insert into Araclar(AracTipi,VitesTipi,YakitTipi,Marka,Model,AracYas,EhliyetTipi,EhliyetYas,OfisID,AracRenk,Fiyat,durum)
values(@AracTipi,@VitesTipi,@YakitTipi,@Marka,@Model,@AracYas,@EhliyetTipi,@EhliyetYas,@OfisID,@AracRenk,@Fiyat,@durum)
----------------------------------------------------------------------------------------------------------------------------
-------Arac Silme---------------------------
alter proc AracSil
@AracID int
as begin
delete from Araclar where @AracID like @AracID
end
exec AracSil 14
----------------------------------------------------------------------------------------------------------------------------
---------Arac Arama------------
alter proc AracAra
@AracID int,
@AracTipi varchar(20),
@VitesTipi varchar(20),
@YakitTipi varchar(20),
@Marka varchar(20),
@Model varchar(20),
@AracYas int,
@AracRenk varchar(20),
@EhliyetTipi varchar(20),
@EhliyetYas int,
@OfisID int
as
begin
select *from Araclar where AracID like  @AracID or AracTipi like @AracTipi or VitesTipi like @VitesTipi or 
YakitTipi like @YakitTipi or Marka like @Marka or Model like @Model or AracYas like @AracYas or
 AracRenk like @AracRenk or EhliyetTipi like @EhliyetTipi or EhliyetYas like @EhliyetYas or OfisID like @OfisID
end
select *from Araclar
----------------------------------------------------------------------------------------------------------------------------
---------Arac Listele------------
alter proc AracListele
@AracTipi varchar(50),
@VitesTipi varchar(50),
@YakitTipi varchar(50)
as
begin
select *from Araclar where AracTipi=@AracTipi or VitesTipi=@VitesTipi or YakitTipi=@YakitTipi
set nocount on
end
select *from Araclar
exec AracListele 'Economic','Manuel','Benzin'
-----------------------------------------------------------------------------------------------------------------------
-----Arac Durumu Güncelleme--------------------
create proc AracGüncelleDurum
@AracID int,
@durum varchar(50)
as
update Araclar set durum=@durum where AracID=@AracID
-----------------------------------------------------------------------------------------------------------------------
---Musteri Ekle----
alter proc MusteriEkle
@TcKimlik varchar(20),
@MusteriAd varchar(20),
@MusteriSoyad varchar(20),
@Meslek varchar(20),
@DogumTarihi datetime,
@Email varchar(50),
@EhliyetNo varchar(20),
@EhliyetTipi varchar(20),
@Telefon varchar(20),
@Adres varchar(50),
@AracID int,
@Notlar varchar(50)
as
insert into Musteriler(TcKimlik,MusteriAd,MusteriSoyad,Meslek,DogumTarihi,EMail,EhliyetNo,EhliyetTipi,Telefon,Adres,AracID,Notlar)
values(@TcKimlik,@MusteriAd,@MusteriSoyad,@Meslek,@DogumTarihi,@Email,@EhliyetNo,@EhliyetTipi,@Telefon,@Adres,@AracID,@Notlar)
------------------------------------------------------------------------------------------------------------------------------------
--------Müþteri Sil------------
create procedure MusteriSil
@MusteriID int
as begin
delete from Musteriler where MusteriID=@MusteriID
end
--------------------------------------------------------------------------------------------------------------------------------------
------Müþteri Ara--------------
create proc MusteriAra
@TcKimlik varchar(20),
@MusteriAd varchar(20),
@MusteriSoyad varchar(20),
@Meslek varchar(20),
@DogumTarihi datetime,
@Email varchar(50),
@EhliyetNo varchar(20),
@EhliyetTipi varchar(20),
@Telefon varchar(20),
@Adres varchar(50),
@Notlar varchar(50)
as
select *from Musteriler where TcKimlik like @TcKimlik or MusteriAd like @MusteriAd or MusteriSoyad like @MusteriSoyad or Meslek like @Meslek or 
DogumTarihi like @DogumTarihi or EMail like @Email or EhliyetNo like @EhliyetNo or EhliyetTipi like @EhliyetTipi or 
Telefon like @Telefon or Adres like @Adres or Notlar like @Notlar
---------------------------------------------------------------------------------------------------------------------------------------
--Kullanýcý Giriþ--
alter proc Getir
@KullaniciAdi varchar(20),
@KullaniciSifre varchar(20),
@AdminTipi varchar(20)
as begin
select *from Adminler where KullaniciAdi=@KullaniciAdi and AdminSifre=@KullaniciSifre and AdminTipi=@AdminTipi
end
------------------------------------------------------------------------------------------------------------------------------------
--Admin Ekle---
alter proc AdminEkle
@Ad varchar(20),
@Soyad varchar(20),
@Email varchar(50),
@KullaniciAdi varchar(20),
@KullaniciSifre varchar(20),
@AdminTipi varchar(20)
as begin
insert into Adminler(AdminAd,AdminSoyad,Email,KullaniciAdi,AdminSifre,AdminTipi)
values(@Ad,@Soyad,@Email,@KullaniciAdi,@KullaniciSifre,@AdminTipi)
end
 exec AdminEkle 'hande','polat','hande@gmail.com','hande','1234'
 select * from Adminler
-----------------------------------------------------------------------------------------------------------------------------------
---Admin ara---
alter proc AdminAra
@KullaniciAdi varchar(20),
as
select *from Adminler where KullaniciAdi like @KullaniciAdi
-----------------------------------------------------------------------------------------------------------------------------------
-----Ofis Listele-----------
create proc OfisListele
as begin
select *from Ofisler
end
-----------------------------------------------------------------------------------------------------------------------------------
-----Ofis Listele ÝL-----------
alter proc OfisListeleÝlce
@OfisID int
as begin
select *from Ofisler where OfisID = @OfisID
end
-----------------------------------------------------------------------------------------------------------------------------------
-------Ofis Ekle---------
alter proc OfisEkle
@OfisÝl varchar(20),
@OfisÝlce varchar(20),
@Adres varchar(20),
@Telefon varchar(20)

as begin
insert into Ofisler(OfisÝl,OfisÝlce,Adres,Telefon)
values(@OfisÝl,@OfisÝlce,@Adres,@Telefon)
end
-----------------------------------------------------------------------------------------------------------------------------------
-------Ofis Sil---------
create proc OfisSil
@OfisID int
as
delete from Ofisler where OfisID=@OfisID
-----------------------------------------------------------------------------------------------------------------------------------
-------Ofis Ara---------
alter proc OfisAra
@OfisID int
as
select* from Ofisler where OfisID = @OfisID

exec OfisAra 5
-----------------------------------------------------------------------------------------------------------------------------------
-------Ofis Güncelle---------
create proc OfisGüncelleme
@OfisID int,
@OfisÝl varchar(20),
@OfisÝlce varchar(20),
@Adres varchar(20),
@Telefon varchar(20)
as begin
update Ofisler set OfisÝl=@OfisÝl, OfisÝlce=@OfisÝlce,Adres=@Adres,Telefon=@Telefon where OfisID like @OfisID
end
-----------------------------------------------------------------------------------------------------------------------------------
-------Ödeme Ekle---------
create proc OdemeEkle
@MusteriID int,
@Ad varchar(20),
@Soyad varchar(20),
@OdemeSekli varchar(20),
@OdemeTutar money
as begin
insert into Odemeler(MusteriID,Ad,Soyad,OdemeSekli,OdemeTutar)
values(@MusteriID,@Ad,@Soyad,@OdemeSekli,@OdemeTutar)
end
-----------------------------------------------------------------------------------------------------------------------------------
-------Arac Güncelle---------
alter proc AracGuncelle
@AracID int,
@AracTipi varchar(20),
@VitesTipi varchar(20),
@YakitTipi varchar(20),
@Marka varchar(20),
@Model varchar(20),
@AracYas int,
@EhliyetYas int,
@EhliyetTipi varchar(20),
@OfisID int,
@AracRenk varchar(20),
@Fiyat money,
@durum varchar(50)
as
update Araclar set Marka=@Marka,Model=@Model,AracTipi=@AracTipi,VitesTipi=@VitesTipi,YakitTipi=@YakitTipi,AracYas=@AracYas,EhliyetYas=@EhliyetYas,EhliyetTipi=@EhliyetTipi,AracRenk=@AracRenk,Fiyat=@Fiyat,OfisID=@OfisID,durum=@durum
where AracID like @AracID
