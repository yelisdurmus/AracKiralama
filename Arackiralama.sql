USE [AracKiralama]
GO
/****** Object:  Table [dbo].[Adminler]    Script Date: 9.04.2019 21:55:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Adminler](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[AdminAd] [varchar](20) NULL,
	[AdminSoyad] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
	[KullaniciAdi] [varchar](20) NULL,
	[AdminSifre] [varchar](20) NULL,
	[AdminTipi] [varchar](20) NULL,
 CONSTRAINT [PK_Adminler] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Araclar]    Script Date: 9.04.2019 21:55:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Araclar](
	[AracID] [int] IDENTITY(1,1) NOT NULL,
	[AracTipi] [varchar](20) NULL,
	[VitesTipi] [varchar](20) NULL,
	[YakitTipi] [varchar](20) NULL,
	[Marka] [varchar](20) NULL,
	[Model] [varchar](20) NULL,
	[AracYas] [int] NULL,
	[EhliyetTipi] [varchar](20) NULL,
	[EhliyetYas] [int] NULL,
	[OfisID] [int] NULL,
	[AracRenk] [varchar](20) NULL,
	[Fiyat] [money] NULL,
	[durum] [varchar](50) NULL,
 CONSTRAINT [PK_Araclar] PRIMARY KEY CLUSTERED 
(
	[AracID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Kiralama]    Script Date: 9.04.2019 21:55:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kiralama](
	[KiraID] [int] IDENTITY(1,1) NOT NULL,
	[KiralamaBaslangıc] [datetime] NULL,
	[KiralamaBitis] [datetime] NULL,
	[MusteriID] [int] NULL,
	[OdemeID] [int] NULL,
 CONSTRAINT [PK_Kiralama] PRIMARY KEY CLUSTERED 
(
	[KiraID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Musteriler]    Script Date: 9.04.2019 21:55:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Musteriler](
	[MusteriID] [int] IDENTITY(1,1) NOT NULL,
	[TcKimlik] [varchar](20) NULL,
	[MusteriAd] [varchar](20) NULL,
	[MusteriSoyad] [varchar](20) NULL,
	[Meslek] [varchar](20) NULL,
	[DogumTarihi] [datetime] NULL,
	[EMail] [varchar](50) NULL,
	[EhliyetNo] [varchar](20) NULL,
	[EhliyetTipi] [varchar](20) NULL,
	[Telefon] [varchar](20) NULL,
	[Adres] [varchar](50) NULL,
	[Notlar] [varchar](50) NULL,
	[AracID] [int] NULL,
	[MusteriSifre] [varchar](20) NULL,
 CONSTRAINT [PK_Musteriler] PRIMARY KEY CLUSTERED 
(
	[MusteriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Odemeler]    Script Date: 9.04.2019 21:55:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Odemeler](
	[OdemeID] [int] IDENTITY(1,1) NOT NULL,
	[MusteriID] [int] NULL,
	[Ad] [varchar](20) NULL,
	[Soyad] [varchar](20) NULL,
	[OdemeSekli] [varchar](20) NULL,
	[OdemeTutar] [money] NULL,
 CONSTRAINT [PK_Odemeler] PRIMARY KEY CLUSTERED 
(
	[OdemeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ofisler]    Script Date: 9.04.2019 21:55:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ofisler](
	[OfisID] [int] IDENTITY(1,1) NOT NULL,
	[Ofisİl] [varchar](20) NULL,
	[Ofisİlce] [varchar](20) NULL,
	[Adres] [varchar](50) NULL,
	[Telefon] [varchar](20) NULL,
	[CalısmaSaatiBaslangıc] [time](3) NULL,
	[CalısmaSaatiBitis] [time](3) NULL,
 CONSTRAINT [PK_Ofisler] PRIMARY KEY CLUSTERED 
(
	[OfisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Adminler] ON 

INSERT [dbo].[Adminler] ([AdminID], [AdminAd], [AdminSoyad], [Email], [KullaniciAdi], [AdminSifre], [AdminTipi]) VALUES (1, N'Yeliz', N'Durmus', N'yeliz@gmail.com', N'yelisdurmus', N'1234', N'Admin')
INSERT [dbo].[Adminler] ([AdminID], [AdminAd], [AdminSoyad], [Email], [KullaniciAdi], [AdminSifre], [AdminTipi]) VALUES (2, N'Yasemin', N'Sekmen', N'yasa@gmail.com', N'yaso', N'1234', N'Müşteri')
INSERT [dbo].[Adminler] ([AdminID], [AdminAd], [AdminSoyad], [Email], [KullaniciAdi], [AdminSifre], [AdminTipi]) VALUES (3, N'hande', N'polat', N'hande@gmail.com', N'hande', N'1234', N'Müşteri')
INSERT [dbo].[Adminler] ([AdminID], [AdminAd], [AdminSoyad], [Email], [KullaniciAdi], [AdminSifre], [AdminTipi]) VALUES (5, N'nihal', N'öz', N'nihal@hotmail.com', N'nihal', N'1234', N'Müşteri')
INSERT [dbo].[Adminler] ([AdminID], [AdminAd], [AdminSoyad], [Email], [KullaniciAdi], [AdminSifre], [AdminTipi]) VALUES (6, N'Ali', N'Şahin', N'ali@hotmail.com', N'alisahin', N'1234', N'Müşteri')
INSERT [dbo].[Adminler] ([AdminID], [AdminAd], [AdminSoyad], [Email], [KullaniciAdi], [AdminSifre], [AdminTipi]) VALUES (7, N'Esma', N'Durmuş', N'esma@hotmail.com', N'esma', N'1234', N'Müşteri')
INSERT [dbo].[Adminler] ([AdminID], [AdminAd], [AdminSoyad], [Email], [KullaniciAdi], [AdminSifre], [AdminTipi]) VALUES (8, N'sezer', N'kırıcı', N'sezer@gmail.com', N'sezer', N'1234', N'Müşteri')
INSERT [dbo].[Adminler] ([AdminID], [AdminAd], [AdminSoyad], [Email], [KullaniciAdi], [AdminSifre], [AdminTipi]) VALUES (9, N'yeliz', N'durmuş', N'asdlşakd@hotmail.com', N'ziley', N'123', N'Müşteri')
SET IDENTITY_INSERT [dbo].[Adminler] OFF
SET IDENTITY_INSERT [dbo].[Araclar] ON 

INSERT [dbo].[Araclar] ([AracID], [AracTipi], [VitesTipi], [YakitTipi], [Marka], [Model], [AracYas], [EhliyetTipi], [EhliyetYas], [OfisID], [AracRenk], [Fiyat], [durum]) VALUES (2, N'Economic', N'Manuel', N'Dizel', N'FİAT', N'EGEA', 21, N'B', 1, 1, N'Gri', 2698300.0000, N'kiralanmadı')
INSERT [dbo].[Araclar] ([AracID], [AracTipi], [VitesTipi], [YakitTipi], [Marka], [Model], [AracYas], [EhliyetTipi], [EhliyetYas], [OfisID], [AracRenk], [Fiyat], [durum]) VALUES (3, N'Comfort', N'Manuel', N'Dizel', N'FORD', N'FOCUS', 25, N'B', 2, 2, N'Beyaz', 3085340.0000, N'kiralanmadı')
INSERT [dbo].[Araclar] ([AracID], [AracTipi], [VitesTipi], [YakitTipi], [Marka], [Model], [AracYas], [EhliyetTipi], [EhliyetYas], [OfisID], [AracRenk], [Fiyat], [durum]) VALUES (4, N'Luxury', N'Otomatik', N'Benzin', N'Mercedes', N'E Series', 27, N'B', 3, 3, N'Gri', 6644940.0000, N'kiralanmadı')
INSERT [dbo].[Araclar] ([AracID], [AracTipi], [VitesTipi], [YakitTipi], [Marka], [Model], [AracYas], [EhliyetTipi], [EhliyetYas], [OfisID], [AracRenk], [Fiyat], [durum]) VALUES (5, N'Comfort', N'Otomatik', N'Dizel', N'Nissan', N'Qashqai', 25, N'B', 2, 4, N'Siyah', 4181220.0000, N'kiralanmadı')
INSERT [dbo].[Araclar] ([AracID], [AracTipi], [VitesTipi], [YakitTipi], [Marka], [Model], [AracYas], [EhliyetTipi], [EhliyetYas], [OfisID], [AracRenk], [Fiyat], [durum]) VALUES (6, N'Economic', N'Otomatik', N'Benzin', N'Renault', N'Clio', 21, N'B', 1, 5, N'Siyah', 1771680.0000, N'kiralanmadı')
INSERT [dbo].[Araclar] ([AracID], [AracTipi], [VitesTipi], [YakitTipi], [Marka], [Model], [AracYas], [EhliyetTipi], [EhliyetYas], [OfisID], [AracRenk], [Fiyat], [durum]) VALUES (8, N'Luxury', N'Otomatik', N'Dizel', N'BMW', N'Cabria', 22, N'B', 2, 3, N'turuncu', 7650000.0000, N'kiralanmadı')
INSERT [dbo].[Araclar] ([AracID], [AracTipi], [VitesTipi], [YakitTipi], [Marka], [Model], [AracYas], [EhliyetTipi], [EhliyetYas], [OfisID], [AracRenk], [Fiyat], [durum]) VALUES (9, N'Luxury', N'Otomatik', N'Dizel', N'BMW', N'Sedan', 20, N'B', 2, 3, N'turuncu', 7400000.0000, N'kiralanmadı')
INSERT [dbo].[Araclar] ([AracID], [AracTipi], [VitesTipi], [YakitTipi], [Marka], [Model], [AracYas], [EhliyetTipi], [EhliyetYas], [OfisID], [AracRenk], [Fiyat], [durum]) VALUES (10, N'Economic', N'Manuel', N'Benzin', N'FORD', N'Fiesta', 22, N'B', 2, 3, N'turuncu', 3200000.0000, N'kiralanmadı')
INSERT [dbo].[Araclar] ([AracID], [AracTipi], [VitesTipi], [YakitTipi], [Marka], [Model], [AracYas], [EhliyetTipi], [EhliyetYas], [OfisID], [AracRenk], [Fiyat], [durum]) VALUES (11, N'Economic', N'Manuel', N'Benzin', N'Dizel', N'Cabria', 22, N'B', 2, 3, N'turuncu', 7650000.0000, N'kiralanmadı')
INSERT [dbo].[Araclar] ([AracID], [AracTipi], [VitesTipi], [YakitTipi], [Marka], [Model], [AracYas], [EhliyetTipi], [EhliyetYas], [OfisID], [AracRenk], [Fiyat], [durum]) VALUES (12, N'Economic', N'Manuel', N'Dizel', N'Fiat', N'DOBLO', 25, N'B', 1, 6, N'gri', 1750000.0000, N'kiralanmadı')
INSERT [dbo].[Araclar] ([AracID], [AracTipi], [VitesTipi], [YakitTipi], [Marka], [Model], [AracYas], [EhliyetTipi], [EhliyetYas], [OfisID], [AracRenk], [Fiyat], [durum]) VALUES (13, N'jfaj', N'ghjk', N'jklklşl', N'jklklşl', N'ga', 8, N'B', 4, 2, N'dsakjlk', 5880000.0000, N'kiralanmadı')
SET IDENTITY_INSERT [dbo].[Araclar] OFF
SET IDENTITY_INSERT [dbo].[Musteriler] ON 

INSERT [dbo].[Musteriler] ([MusteriID], [TcKimlik], [MusteriAd], [MusteriSoyad], [Meslek], [DogumTarihi], [EMail], [EhliyetNo], [EhliyetTipi], [Telefon], [Adres], [Notlar], [AracID], [MusteriSifre]) VALUES (1, N'4578961', N'yusuf', N'durmus', N'mühendis', CAST(N'1995-06-13 00:13:04.000' AS DateTime), N'yusuf@gmail.com', N'AL-2589', N'B', N'78542001', N'Pendik', N'Peşin Ödeme', 6, NULL)
INSERT [dbo].[Musteriler] ([MusteriID], [TcKimlik], [MusteriAd], [MusteriSoyad], [Meslek], [DogumTarihi], [EMail], [EhliyetNo], [EhliyetTipi], [Telefon], [Adres], [Notlar], [AracID], [MusteriSifre]) VALUES (2, N'78945', N'hüseyin', N'aksak', N'doktor', CAST(N'1995-01-07 19:23:35.000' AS DateTime), N'hüseyin@gmail.com', N'A78899', N'B', N'0544865425', N'sarıgazi', N'Peşin Ödeme', 6, NULL)
INSERT [dbo].[Musteriler] ([MusteriID], [TcKimlik], [MusteriAd], [MusteriSoyad], [Meslek], [DogumTarihi], [EMail], [EhliyetNo], [EhliyetTipi], [Telefon], [Adres], [Notlar], [AracID], [MusteriSifre]) VALUES (3, N'7894562', N'mwtin', N'ali', N'ressam', CAST(N'1994-01-07 13:14:24.000' AS DateTime), N'metin@gmail.com', N'A8885', N'B', N'054628996', N'Sarıyer', N'Peşin Ödeme', 6, NULL)
INSERT [dbo].[Musteriler] ([MusteriID], [TcKimlik], [MusteriAd], [MusteriSoyad], [Meslek], [DogumTarihi], [EMail], [EhliyetNo], [EhliyetTipi], [Telefon], [Adres], [Notlar], [AracID], [MusteriSifre]) VALUES (4, N'789456', N'yusra', N'samet', N'diyetisyen', CAST(N'1997-06-01 19:38:25.000' AS DateTime), N'ysamat@hotmail.com', N'A7856', N'B', N'215889633', N'Samandıra', N'Peşin Ödeme', 6, NULL)
INSERT [dbo].[Musteriler] ([MusteriID], [TcKimlik], [MusteriAd], [MusteriSoyad], [Meslek], [DogumTarihi], [EMail], [EhliyetNo], [EhliyetTipi], [Telefon], [Adres], [Notlar], [AracID], [MusteriSifre]) VALUES (5, N'82223233', N'emir', N'alim', N'sunucu', CAST(N'1991-01-09 17:12:43.000' AS DateTime), N'emir@hotmail.com', N'A-895', N'B', N'45612333', N'Ümraniye', N'Peşin Ödeme', 11, NULL)
INSERT [dbo].[Musteriler] ([MusteriID], [TcKimlik], [MusteriAd], [MusteriSoyad], [Meslek], [DogumTarihi], [EMail], [EhliyetNo], [EhliyetTipi], [Telefon], [Adres], [Notlar], [AracID], [MusteriSifre]) VALUES (6, N'74456688', N'Narin', N'Selçuk', N'Savcı', CAST(N'1992-01-09 17:37:38.000' AS DateTime), N'narin@gmail.com', N'B-8552', N'B', N'5564866', N'Büyükçekmece', N'Peşin Ödeme', 9, NULL)
INSERT [dbo].[Musteriler] ([MusteriID], [TcKimlik], [MusteriAd], [MusteriSoyad], [Meslek], [DogumTarihi], [EMail], [EhliyetNo], [EhliyetTipi], [Telefon], [Adres], [Notlar], [AracID], [MusteriSifre]) VALUES (7, N'9856556', N'Avni', N'Cem', N'Avukat', CAST(N'1994-04-09 17:44:17.000' AS DateTime), N'avni@hotmail.com', N'B-852', N'B', N'7985232323', N'Kadıköy', N'Peşin Ödeme', 12, NULL)
INSERT [dbo].[Musteriler] ([MusteriID], [TcKimlik], [MusteriAd], [MusteriSoyad], [Meslek], [DogumTarihi], [EMail], [EhliyetNo], [EhliyetTipi], [Telefon], [Adres], [Notlar], [AracID], [MusteriSifre]) VALUES (8, N'75662111', N'hale', N'demir', N'doktor', CAST(N'1985-04-09 21:46:23.000' AS DateTime), N'hale@hotmail.com', N'h-8552', N'B', N'525255', N'Kadıköy', N'Peşin Ödeme', 5, NULL)
SET IDENTITY_INSERT [dbo].[Musteriler] OFF
SET IDENTITY_INSERT [dbo].[Ofisler] ON 

INSERT [dbo].[Ofisler] ([OfisID], [Ofisİl], [Ofisİlce], [Adres], [Telefon], [CalısmaSaatiBaslangıc], [CalısmaSaatiBitis]) VALUES (1, N'İstanbul', N'Kadıköy', N'Acıbadem Mah. Fatih ', N'565656566', CAST(N'10:00:00' AS Time), CAST(N'21:45:00' AS Time))
INSERT [dbo].[Ofisler] ([OfisID], [Ofisİl], [Ofisİlce], [Adres], [Telefon], [CalısmaSaatiBaslangıc], [CalısmaSaatiBitis]) VALUES (2, N'İstanbul', N'Maltepe', N'Cevizli Mah. Fil Yokuşu Sok.', N'02162275122', CAST(N'09:00:00' AS Time), CAST(N'18:45:00' AS Time))
INSERT [dbo].[Ofisler] ([OfisID], [Ofisİl], [Ofisİlce], [Adres], [Telefon], [CalısmaSaatiBaslangıc], [CalısmaSaatiBitis]) VALUES (3, N'İstanbul', N'Taksim', N'Harbiye Mah. Cumhuriyet Cad.', N'02122449354', CAST(N'07:00:00' AS Time), CAST(N'17:45:00' AS Time))
INSERT [dbo].[Ofisler] ([OfisID], [Ofisİl], [Ofisİlce], [Adres], [Telefon], [CalısmaSaatiBaslangıc], [CalısmaSaatiBitis]) VALUES (4, N'İstanbul', N'Levent', N'Esentepe Mah. Büyükdere Cad.', N'02129422245', CAST(N'07:30:00' AS Time), CAST(N'21:45:00' AS Time))
INSERT [dbo].[Ofisler] ([OfisID], [Ofisİl], [Ofisİlce], [Adres], [Telefon], [CalısmaSaatiBaslangıc], [CalısmaSaatiBitis]) VALUES (5, N'Ankara', N'Çankaya', N'Söğütözü Mah. Söğütözü Cad.', N'03124660336', CAST(N'08:00:00' AS Time), CAST(N'19:45:00' AS Time))
INSERT [dbo].[Ofisler] ([OfisID], [Ofisİl], [Ofisİlce], [Adres], [Telefon], [CalısmaSaatiBaslangıc], [CalısmaSaatiBitis]) VALUES (6, N'İzmir', N'Alsancak', N'Şair Eşref Bulvarı', N'02324843441', CAST(N'09:00:00' AS Time), CAST(N'18:45:00' AS Time))
INSERT [dbo].[Ofisler] ([OfisID], [Ofisİl], [Ofisİlce], [Adres], [Telefon], [CalısmaSaatiBaslangıc], [CalısmaSaatiBitis]) VALUES (7, N'İzmir', N'Karşıyaka', N'Nergis Mah. Girne Bulvarı', N'02322420894', CAST(N'09:00:00' AS Time), CAST(N'18:45:00' AS Time))
SET IDENTITY_INSERT [dbo].[Ofisler] OFF
ALTER TABLE [dbo].[Araclar]  WITH CHECK ADD  CONSTRAINT [FK_Araclar_Ofisler] FOREIGN KEY([OfisID])
REFERENCES [dbo].[Ofisler] ([OfisID])
GO
ALTER TABLE [dbo].[Araclar] CHECK CONSTRAINT [FK_Araclar_Ofisler]
GO
ALTER TABLE [dbo].[Kiralama]  WITH CHECK ADD  CONSTRAINT [FK_Kiralama_Musteriler] FOREIGN KEY([MusteriID])
REFERENCES [dbo].[Musteriler] ([MusteriID])
GO
ALTER TABLE [dbo].[Kiralama] CHECK CONSTRAINT [FK_Kiralama_Musteriler]
GO
ALTER TABLE [dbo].[Kiralama]  WITH CHECK ADD  CONSTRAINT [FK_Kiralama_Odemeler] FOREIGN KEY([OdemeID])
REFERENCES [dbo].[Odemeler] ([OdemeID])
GO
ALTER TABLE [dbo].[Kiralama] CHECK CONSTRAINT [FK_Kiralama_Odemeler]
GO
ALTER TABLE [dbo].[Musteriler]  WITH CHECK ADD  CONSTRAINT [FK_Musteriler_Araclar] FOREIGN KEY([AracID])
REFERENCES [dbo].[Araclar] ([AracID])
GO
ALTER TABLE [dbo].[Musteriler] CHECK CONSTRAINT [FK_Musteriler_Araclar]
GO
ALTER TABLE [dbo].[Odemeler]  WITH CHECK ADD  CONSTRAINT [FK_Odemeler_Musteriler] FOREIGN KEY([MusteriID])
REFERENCES [dbo].[Musteriler] ([MusteriID])
GO
ALTER TABLE [dbo].[Odemeler] CHECK CONSTRAINT [FK_Odemeler_Musteriler]
GO
/****** Object:  StoredProcedure [dbo].[AdminEkle]    Script Date: 9.04.2019 21:55:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[AdminEkle]
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
GO
/****** Object:  StoredProcedure [dbo].[AracAra]    Script Date: 9.04.2019 21:55:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[AracAra]
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

GO
/****** Object:  StoredProcedure [dbo].[AracEkle]    Script Date: 9.04.2019 21:55:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[AracEkle]
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
GO
/****** Object:  StoredProcedure [dbo].[AracGuncelle]    Script Date: 9.04.2019 21:55:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[AracGuncelle]
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
GO
/****** Object:  StoredProcedure [dbo].[AracGüncelleDurum]    Script Date: 9.04.2019 21:55:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[AracGüncelleDurum]
@AracID int,
@durum varchar(50)
as
update Araclar set durum=@durum where AracID=@AracID
GO
/****** Object:  StoredProcedure [dbo].[AracListele]    Script Date: 9.04.2019 21:55:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[AracListele]
@AracTipi varchar(50),
@VitesTipi varchar(50),
@YakitTipi varchar(50)
as
begin
select *from Araclar where AracTipi=@AracTipi or VitesTipi=@VitesTipi or YakitTipi=@YakitTipi
set nocount on
end
GO
/****** Object:  StoredProcedure [dbo].[AracSil]    Script Date: 9.04.2019 21:55:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[AracSil]
@AracID int
as begin
delete from Araclar where @AracID like @AracID
end
GO
/****** Object:  StoredProcedure [dbo].[Getir]    Script Date: 9.04.2019 21:55:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Kullanıcı Giriş--
CREATE proc [dbo].[Getir]
@KullaniciAdi varchar(20),
@KullaniciSifre varchar(20),
@AdminTipi varchar(20)
as begin
select *from Adminler where KullaniciAdi=@KullaniciAdi and AdminSifre=@KullaniciSifre and AdminTipi=@AdminTipi
end
GO
/****** Object:  StoredProcedure [dbo].[MusteriAra]    Script Date: 9.04.2019 21:55:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[MusteriAra]
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

GO
/****** Object:  StoredProcedure [dbo].[MusteriEkle]    Script Date: 9.04.2019 21:55:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[MusteriEkle]
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
GO
/****** Object:  StoredProcedure [dbo].[MusteriSil]    Script Date: 9.04.2019 21:55:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[MusteriSil]
@MusteriID int
as begin
delete from Musteriler where MusteriID=@MusteriID
end

GO
/****** Object:  StoredProcedure [dbo].[OdemeEkle]    Script Date: 9.04.2019 21:55:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[OdemeEkle]
@MusteriID int,
@Ad varchar(20),
@Soyad varchar(20),
@OdemeSekli varchar(20),
@OdemeTutar money
as begin
insert into Odemeler(MusteriID,Ad,Soyad,OdemeSekli,OdemeTutar)
values(@MusteriID,@Ad,@Soyad,@OdemeSekli,@OdemeTutar)
end
GO
/****** Object:  StoredProcedure [dbo].[OfisAra]    Script Date: 9.04.2019 21:55:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[OfisAra]
@OfisID int
as
select* from Ofisler where OfisID = @OfisID
GO
/****** Object:  StoredProcedure [dbo].[OfisEkle]    Script Date: 9.04.2019 21:55:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[OfisEkle]
@Ofisİl varchar(20),
@Ofisİlce varchar(20),
@Adres varchar(20),
@Telefon varchar(20)

as begin
insert into Ofisler(Ofisİl,Ofisİlce,Adres,Telefon)
values(@Ofisİl,@Ofisİlce,@Adres,@Telefon)
end
GO
/****** Object:  StoredProcedure [dbo].[OfisGüncelleme]    Script Date: 9.04.2019 21:55:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[OfisGüncelleme]
@OfisID int,
@Ofisİl varchar(20),
@Ofisİlce varchar(20),
@Adres varchar(20),
@Telefon varchar(20)
as begin
update Ofisler set Ofisİl=@Ofisİl, Ofisİlce=@Ofisİlce,Adres=@Adres,Telefon=@Telefon where OfisID like @OfisID
end
GO
/****** Object:  StoredProcedure [dbo].[OfisListele]    Script Date: 9.04.2019 21:55:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[OfisListele]
as begin
select *from Ofisler
end

GO
/****** Object:  StoredProcedure [dbo].[OfisListeleİlce]    Script Date: 9.04.2019 21:55:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[OfisListeleİlce]
@OfisID int
as begin
select *from Ofisler where OfisID = @OfisID
end
GO
/****** Object:  StoredProcedure [dbo].[OfisSil]    Script Date: 9.04.2019 21:55:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[OfisSil]
@OfisID int
as
delete from Ofisler where OfisID=@OfisID
GO
