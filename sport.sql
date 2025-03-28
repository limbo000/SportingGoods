USE [SportingGoodsDB]
GO
/****** Object:  Table [dbo].[Articles]    Script Date: 13.03.2025 16:17:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articles](
	[Articles] [int] IDENTITY(1,1) NOT NULL,
	[ArticlesName] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Articles] PRIMARY KEY CLUSTERED 
(
	[Articles] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 13.03.2025 16:17:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CaategoryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 13.03.2025 16:17:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fitness]    Script Date: 13.03.2025 16:17:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fitness](
	[FitnessId] [int] IDENTITY(1,1) NOT NULL,
	[IdArticles] [int] NOT NULL,
	[IdName] [int] NOT NULL,
	[Price] [decimal](6, 2) NOT NULL,
	[MaxSale] [int] NOT NULL,
	[IdManufacturer] [int] NOT NULL,
	[IdSupplier] [int] NOT NULL,
	[IdCategory] [int] NOT NULL,
	[Sale] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[FitnessName] [nvarchar](100) NOT NULL,
	[PhotoName] [nvarchar](20) NULL,
	[Image] [image] NULL,
 CONSTRAINT [PK_Fitness] PRIMARY KEY CLUSTERED 
(
	[FitnessId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Index]    Script Date: 13.03.2025 16:17:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Index](
	[IndexId] [int] IDENTITY(1,1) NOT NULL,
	[IndexName] [int] NOT NULL,
 CONSTRAINT [PK_Index] PRIMARY KEY CLUSTERED 
(
	[IndexId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 13.03.2025 16:17:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[ManufacturerId] [int] IDENTITY(1,1) NOT NULL,
	[ManufacturerName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Manufacturer] PRIMARY KEY CLUSTERED 
(
	[ManufacturerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Name]    Script Date: 13.03.2025 16:17:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Name](
	[NameId] [int] IDENTITY(1,1) NOT NULL,
	[NameFClub] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Name] PRIMARY KEY CLUSTERED 
(
	[NameId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PickPoint]    Script Date: 13.03.2025 16:17:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PickPoint](
	[PickPointId] [int] IDENTITY(1,1) NOT NULL,
	[IdIndex] [int] NOT NULL,
	[IdCity] [int] NOT NULL,
	[IdStreet] [int] NOT NULL,
	[IdHome] [int] NOT NULL,
 CONSTRAINT [PK_PickPoint] PRIMARY KEY CLUSTERED 
(
	[PickPointId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 13.03.2025 16:17:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Street]    Script Date: 13.03.2025 16:17:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Street](
	[StreetId] [int] IDENTITY(1,1) NOT NULL,
	[StreetName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Street] PRIMARY KEY CLUSTERED 
(
	[StreetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 13.03.2025 16:17:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[SupplierId] [int] IDENTITY(1,1) NOT NULL,
	[SupplierName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[SupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 13.03.2025 16:17:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[IdRole] [int] NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Lname] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Articles] ON 

INSERT [dbo].[Articles] ([Articles], [ArticlesName]) VALUES (1, N'B538G6')
INSERT [dbo].[Articles] ([Articles], [ArticlesName]) VALUES (2, N'C324S5')
INSERT [dbo].[Articles] ([Articles], [ArticlesName]) VALUES (3, N'D038G6')
INSERT [dbo].[Articles] ([Articles], [ArticlesName]) VALUES (4, N'D648N7')
INSERT [dbo].[Articles] ([Articles], [ArticlesName]) VALUES (5, N'D830R5')
INSERT [dbo].[Articles] ([Articles], [ArticlesName]) VALUES (6, N'D893W4')
INSERT [dbo].[Articles] ([Articles], [ArticlesName]) VALUES (7, N'D927K3')
INSERT [dbo].[Articles] ([Articles], [ArticlesName]) VALUES (8, N'E324U7')
INSERT [dbo].[Articles] ([Articles], [ArticlesName]) VALUES (9, N'F047J7')
INSERT [dbo].[Articles] ([Articles], [ArticlesName]) VALUES (10, N'F687G5')
INSERT [dbo].[Articles] ([Articles], [ArticlesName]) VALUES (11, N'F735B6')
INSERT [dbo].[Articles] ([Articles], [ArticlesName]) VALUES (12, N'F746E6')
INSERT [dbo].[Articles] ([Articles], [ArticlesName]) VALUES (13, N'F937G4')
INSERT [dbo].[Articles] ([Articles], [ArticlesName]) VALUES (14, N'G403T5')
INSERT [dbo].[Articles] ([Articles], [ArticlesName]) VALUES (15, N'G480F5')
INSERT [dbo].[Articles] ([Articles], [ArticlesName]) VALUES (16, N'G522B5')
INSERT [dbo].[Articles] ([Articles], [ArticlesName]) VALUES (17, N'G598Y6')
INSERT [dbo].[Articles] ([Articles], [ArticlesName]) VALUES (18, N'G873H4')
INSERT [dbo].[Articles] ([Articles], [ArticlesName]) VALUES (19, N'J4DF5E')
INSERT [dbo].[Articles] ([Articles], [ArticlesName]) VALUES (20, N'J532D4')
INSERT [dbo].[Articles] ([Articles], [ArticlesName]) VALUES (21, N'K432G6')
INSERT [dbo].[Articles] ([Articles], [ArticlesName]) VALUES (22, N'K937A5')
INSERT [dbo].[Articles] ([Articles], [ArticlesName]) VALUES (23, N'N483G5')
INSERT [dbo].[Articles] ([Articles], [ArticlesName]) VALUES (24, N'N836R5')
INSERT [dbo].[Articles] ([Articles], [ArticlesName]) VALUES (25, N'N892G6')
INSERT [dbo].[Articles] ([Articles], [ArticlesName]) VALUES (26, N'S374B5')
INSERT [dbo].[Articles] ([Articles], [ArticlesName]) VALUES (27, N'V312R4')
INSERT [dbo].[Articles] ([Articles], [ArticlesName]) VALUES (28, N'V392H7')
INSERT [dbo].[Articles] ([Articles], [ArticlesName]) VALUES (29, N'V423D4')
INSERT [dbo].[Articles] ([Articles], [ArticlesName]) VALUES (30, N'А112Т4')
SET IDENTITY_INSERT [dbo].[Articles] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryId], [CaategoryName]) VALUES (1, N'Одежда')
INSERT [dbo].[Category] ([CategoryId], [CaategoryName]) VALUES (2, N'Спортивный инвентарь')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([CityId], [CityName]) VALUES (1, N'Дубна')
INSERT [dbo].[City] ([CityId], [CityName]) VALUES (2, N'Москва')
INSERT [dbo].[City] ([CityId], [CityName]) VALUES (3, N'Саратов')
INSERT [dbo].[City] ([CityId], [CityName]) VALUES (4, N'Сургут')
INSERT [dbo].[City] ([CityId], [CityName]) VALUES (5, N'Фрязино')
INSERT [dbo].[City] ([CityId], [CityName]) VALUES (6, N'Чехов')
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Fitness] ON 

INSERT [dbo].[Fitness] ([FitnessId], [IdArticles], [IdName], [Price], [MaxSale], [IdManufacturer], [IdSupplier], [IdCategory], [Sale], [Count], [FitnessName], [PhotoName], [Image]) VALUES (1, 29, 28, CAST(5600.00 AS Decimal(6, 2)), 10, 18, 1, 2, 3, 8, N'Штанга Starfit BB-401 30кг пласт. черный ', N'', NULL)
INSERT [dbo].[Fitness] ([FitnessId], [IdArticles], [IdName], [Price], [MaxSale], [IdManufacturer], [IdSupplier], [IdCategory], [Sale], [Count], [FitnessName], [PhotoName], [Image]) VALUES (2, 2, 27, CAST(4000.00 AS Decimal(6, 2)), 10, 16, 1, 2, 5, 16, N'Шлем г.л./сноуб. Salomon Grom р.:KS черный (L40836800)', N'', NULL)
INSERT [dbo].[Fitness] ([FitnessId], [IdArticles], [IdName], [Price], [MaxSale], [IdManufacturer], [IdSupplier], [IdCategory], [Sale], [Count], [FitnessName], [PhotoName], [Image]) VALUES (3, 12, 26, CAST(9900.00 AS Decimal(6, 2)), 10, 15, 1, 2, 3, 5, N'Шведская стенка ROMANA Next, pastel', N'F746E6.jpg', NULL)
INSERT [dbo].[Fitness] ([FitnessId], [IdArticles], [IdName], [Price], [MaxSale], [IdManufacturer], [IdSupplier], [IdCategory], [Sale], [Count], [FitnessName], [PhotoName], [Image]) VALUES (4, 21, 25, CAST(440.00 AS Decimal(6, 2)), 25, 2, 1, 2, 5, 17, N'Шапочка для плавания Atemi PU 140 ткань с покрытием желтый', N'', NULL)
INSERT [dbo].[Fitness] ([FitnessId], [IdArticles], [IdName], [Price], [MaxSale], [IdManufacturer], [IdSupplier], [IdCategory], [Sale], [Count], [FitnessName], [PhotoName], [Image]) VALUES (5, 14, 24, CAST(1450.00 AS Decimal(6, 2)), 15, 11, 2, 2, 4, 13, N'Тюбинг Nordway, 73 см', N'G403T5.jpg', NULL)
INSERT [dbo].[Fitness] ([FitnessId], [IdArticles], [IdName], [Price], [MaxSale], [IdManufacturer], [IdSupplier], [IdCategory], [Sale], [Count], [FitnessName], [PhotoName], [Image]) VALUES (6, 5, 23, CAST(1120.00 AS Decimal(6, 2)), 15, 9, 2, 2, 4, 8, N'Тренажер для прыжков Moby Kids Moby-Jumper со счетчиком', N'D830R5.jpg', NULL)
INSERT [dbo].[Fitness] ([FitnessId], [IdArticles], [IdName], [Price], [MaxSale], [IdManufacturer], [IdSupplier], [IdCategory], [Sale], [Count], [FitnessName], [PhotoName], [Image]) VALUES (7, 28, 22, CAST(4790.00 AS Decimal(6, 2)), 10, 18, 2, 2, 3, 15, N'Степ-платформа Starfit SP-204 серый/черный', N'', NULL)
INSERT [dbo].[Fitness] ([FitnessId], [IdArticles], [IdName], [Price], [MaxSale], [IdManufacturer], [IdSupplier], [IdCategory], [Sale], [Count], [FitnessName], [PhotoName], [Image]) VALUES (8, 17, 21, CAST(2390.00 AS Decimal(6, 2)), 15, 12, 1, 2, 2, 16, N'Спортивный мат 100x100x10 см Perfetto Sport № 3 бежевый', N'G598Y6.jpg', NULL)
INSERT [dbo].[Fitness] ([FitnessId], [IdArticles], [IdName], [Price], [MaxSale], [IdManufacturer], [IdSupplier], [IdCategory], [Sale], [Count], [FitnessName], [PhotoName], [Image]) VALUES (9, 1, 20, CAST(839.00 AS Decimal(6, 2)), 5, 13, 2, 1, 3, 17, N'Спортивный костюм playToday (футболка + шорты)', N'B538G6.jpg', NULL)
INSERT [dbo].[Fitness] ([FitnessId], [IdArticles], [IdName], [Price], [MaxSale], [IdManufacturer], [IdSupplier], [IdCategory], [Sale], [Count], [FitnessName], [PhotoName], [Image]) VALUES (10, 26, 18, CAST(700.00 AS Decimal(6, 2)), 10, 3, 2, 2, 3, 12, N'Ролик для йоги Bradex Туба d=14см ш.:33см оранжевый', N'', NULL)
INSERT [dbo].[Fitness] ([FitnessId], [IdArticles], [IdName], [Price], [MaxSale], [IdManufacturer], [IdSupplier], [IdCategory], [Sale], [Count], [FitnessName], [PhotoName], [Image]) VALUES (11, 20, 17, CAST(1050.00 AS Decimal(6, 2)), 15, 7, 2, 2, 3, 5, N'Перчатки для каратэ Green Hill KMС-6083 L красный', N'', NULL)
INSERT [dbo].[Fitness] ([FitnessId], [IdArticles], [IdName], [Price], [MaxSale], [IdManufacturer], [IdSupplier], [IdCategory], [Sale], [Count], [FitnessName], [PhotoName], [Image]) VALUES (12, 7, 16, CAST(660.00 AS Decimal(6, 2)), 15, 18, 1, 2, 4, 3, N'Перчатки Starfit SU-125 атлетические S черный', N'', NULL)
INSERT [dbo].[Fitness] ([FitnessId], [IdArticles], [IdName], [Price], [MaxSale], [IdManufacturer], [IdSupplier], [IdCategory], [Sale], [Count], [FitnessName], [PhotoName], [Image]) VALUES (13, 25, 15, CAST(500.00 AS Decimal(6, 2)), 5, 2, 1, 2, 5, 14, N'Очки для плавания Atemi N8401 синий', N'', NULL)
INSERT [dbo].[Fitness] ([FitnessId], [IdArticles], [IdName], [Price], [MaxSale], [IdManufacturer], [IdSupplier], [IdCategory], [Sale], [Count], [FitnessName], [PhotoName], [Image]) VALUES (14, 19, 14, CAST(300.00 AS Decimal(6, 2)), 5, 10, 2, 2, 4, 12, N'Насос Molten HP-18-B для мячей мультиколор', N'', NULL)
INSERT [dbo].[Fitness] ([FitnessId], [IdArticles], [IdName], [Price], [MaxSale], [IdManufacturer], [IdSupplier], [IdCategory], [Sale], [Count], [FitnessName], [PhotoName], [Image]) VALUES (15, 4, 13, CAST(350.00 AS Decimal(6, 2)), 10, 20, 1, 2, 4, 7, N'Набор для хоккея Совтехстром', N'D648N7.jpg', NULL)
INSERT [dbo].[Fitness] ([FitnessId], [IdArticles], [IdName], [Price], [MaxSale], [IdManufacturer], [IdSupplier], [IdCategory], [Sale], [Count], [FitnessName], [PhotoName], [Image]) VALUES (16, 13, 6, CAST(480.00 AS Decimal(6, 2)), 10, 1, 2, 2, 4, 12, N'Набор Abtoys Бадминтон и теннис ', N'F937G4.jpg', NULL)
INSERT [dbo].[Fitness] ([FitnessId], [IdArticles], [IdName], [Price], [MaxSale], [IdManufacturer], [IdSupplier], [IdCategory], [Sale], [Count], [FitnessName], [PhotoName], [Image]) VALUES (17, 6, 12, CAST(900.00 AS Decimal(6, 2)), 5, 5, 2, 2, 2, 5, N'Мяч футбольный DEMIX 1STLS1JWWW, универсальный, 4-й размер, белый/зеленый', N'', NULL)
INSERT [dbo].[Fitness] ([FitnessId], [IdArticles], [IdName], [Price], [MaxSale], [IdManufacturer], [IdSupplier], [IdCategory], [Sale], [Count], [FitnessName], [PhotoName], [Image]) VALUES (18, 27, 12, CAST(4150.00 AS Decimal(6, 2)), 20, 8, 1, 2, 2, 5, N'Мяч волейбольный MIKASA VT370W, для зала, 5-й размер, желтый/синий', N'', NULL)
INSERT [dbo].[Fitness] ([FitnessId], [IdArticles], [IdName], [Price], [MaxSale], [IdManufacturer], [IdSupplier], [IdCategory], [Sale], [Count], [FitnessName], [PhotoName], [Image]) VALUES (19, 3, 11, CAST(3000.00 AS Decimal(6, 2)), 30, 11, 1, 2, 4, 23, N'Лыжный комплект беговые NORDWAY XC Classic, 45-45-45мм, 160см', N'', NULL)
INSERT [dbo].[Fitness] ([FitnessId], [IdArticles], [IdName], [Price], [MaxSale], [IdManufacturer], [IdSupplier], [IdCategory], [Sale], [Count], [FitnessName], [PhotoName], [Image]) VALUES (20, 16, 10, CAST(1980.00 AS Decimal(6, 2)), 15, 4, 1, 2, 3, 6, N'Ласты Colton CF-02 для плавания р.:33-34 серый/голубой', N'', NULL)
INSERT [dbo].[Fitness] ([FitnessId], [IdArticles], [IdName], [Price], [MaxSale], [IdManufacturer], [IdSupplier], [IdCategory], [Sale], [Count], [FitnessName], [PhotoName], [Image]) VALUES (21, 15, 19, CAST(1600.00 AS Decimal(6, 2)), 15, 14, 2, 2, 4, 7, N'Коньки роликовые Ridex Cricket жен. ABEC 3 кол.:72мм р.:39-42 синий', N'', NULL)
INSERT [dbo].[Fitness] ([FitnessId], [IdArticles], [IdName], [Price], [MaxSale], [IdManufacturer], [IdSupplier], [IdCategory], [Sale], [Count], [FitnessName], [PhotoName], [Image]) VALUES (22, 24, 9, CAST(2000.00 AS Decimal(6, 2)), 10, 2, 1, 2, 3, 16, N'Коньки ATEMI AKSK01DXS, раздвижные, прогулочные, унисекс, 27-30, черный/зеленый', N'', NULL)
INSERT [dbo].[Fitness] ([FitnessId], [IdArticles], [IdName], [Price], [MaxSale], [IdManufacturer], [IdSupplier], [IdCategory], [Sale], [Count], [FitnessName], [PhotoName], [Image]) VALUES (23, 9, 8, CAST(720.00 AS Decimal(6, 2)), 15, 3, 2, 2, 5, 11, N'Коврик Bradex для мягкой йоги дл.:1730мм ш.:610мм т.:3мм серый', N'', NULL)
INSERT [dbo].[Fitness] ([FitnessId], [IdArticles], [IdName], [Price], [MaxSale], [IdManufacturer], [IdSupplier], [IdCategory], [Sale], [Count], [FitnessName], [PhotoName], [Image]) VALUES (24, 23, 7, CAST(1299.00 AS Decimal(6, 2)), 10, 11, 1, 2, 3, 4, N'Клюшка Nordway NDW300 (2019/2020) SR лев. 19 150см', N'', NULL)
INSERT [dbo].[Fitness] ([FitnessId], [IdArticles], [IdName], [Price], [MaxSale], [IdManufacturer], [IdSupplier], [IdCategory], [Sale], [Count], [FitnessName], [PhotoName], [Image]) VALUES (25, 11, 6, CAST(320.00 AS Decimal(6, 2)), 15, 20, 1, 2, 2, 9, N'Игровой набор Совтехстром Кегли и шары', N'F735B6.jpg', NULL)
INSERT [dbo].[Fitness] ([FitnessId], [IdArticles], [IdName], [Price], [MaxSale], [IdManufacturer], [IdSupplier], [IdCategory], [Sale], [Count], [FitnessName], [PhotoName], [Image]) VALUES (26, 10, 5, CAST(1900.00 AS Decimal(6, 2)), 15, 7, 2, 2, 4, 6, N'Защита голени GREEN HILL Panther, L, синий/черный', N'', NULL)
INSERT [dbo].[Fitness] ([FitnessId], [IdArticles], [IdName], [Price], [MaxSale], [IdManufacturer], [IdSupplier], [IdCategory], [Sale], [Count], [FitnessName], [PhotoName], [Image]) VALUES (27, 22, 4, CAST(890.00 AS Decimal(6, 2)), 5, 18, 1, 2, 4, 10, N'Гиря Starfit ГМБ4 мягкое 4кг синий/оранжевый', N'', NULL)
INSERT [dbo].[Fitness] ([FitnessId], [IdArticles], [IdName], [Price], [MaxSale], [IdManufacturer], [IdSupplier], [IdCategory], [Sale], [Count], [FitnessName], [PhotoName], [Image]) VALUES (28, 8, 3, CAST(6480.00 AS Decimal(6, 2)), 25, 6, 2, 2, 5, 5, N'Велотренажер двойной DFC B804 dual bike', N'E324U7.jpg', NULL)
INSERT [dbo].[Fitness] ([FitnessId], [IdArticles], [IdName], [Price], [MaxSale], [IdManufacturer], [IdSupplier], [IdCategory], [Sale], [Count], [FitnessName], [PhotoName], [Image]) VALUES (30, 30, 1, CAST(778.00 AS Decimal(6, 2)), 30, 19, 2, 2, 5, 6, N'Боксерская груша X-Match черная', N'А112Т4.jpg', NULL)
SET IDENTITY_INSERT [dbo].[Fitness] OFF
GO
SET IDENTITY_INSERT [dbo].[Index] ON 

INSERT [dbo].[Index] ([IndexId], [IndexName]) VALUES (1, 125061)
INSERT [dbo].[Index] ([IndexId], [IndexName]) VALUES (2, 125703)
INSERT [dbo].[Index] ([IndexId], [IndexName]) VALUES (3, 125837)
INSERT [dbo].[Index] ([IndexId], [IndexName]) VALUES (4, 190949)
INSERT [dbo].[Index] ([IndexId], [IndexName]) VALUES (5, 344288)
INSERT [dbo].[Index] ([IndexId], [IndexName]) VALUES (6, 394060)
INSERT [dbo].[Index] ([IndexId], [IndexName]) VALUES (7, 394242)
INSERT [dbo].[Index] ([IndexId], [IndexName]) VALUES (8, 394782)
INSERT [dbo].[Index] ([IndexId], [IndexName]) VALUES (9, 400562)
INSERT [dbo].[Index] ([IndexId], [IndexName]) VALUES (10, 410172)
INSERT [dbo].[Index] ([IndexId], [IndexName]) VALUES (11, 410542)
INSERT [dbo].[Index] ([IndexId], [IndexName]) VALUES (12, 410661)
INSERT [dbo].[Index] ([IndexId], [IndexName]) VALUES (13, 420151)
INSERT [dbo].[Index] ([IndexId], [IndexName]) VALUES (14, 426030)
INSERT [dbo].[Index] ([IndexId], [IndexName]) VALUES (15, 443890)
INSERT [dbo].[Index] ([IndexId], [IndexName]) VALUES (16, 450375)
INSERT [dbo].[Index] ([IndexId], [IndexName]) VALUES (17, 450558)
INSERT [dbo].[Index] ([IndexId], [IndexName]) VALUES (18, 450983)
INSERT [dbo].[Index] ([IndexId], [IndexName]) VALUES (19, 454311)
INSERT [dbo].[Index] ([IndexId], [IndexName]) VALUES (20, 603002)
INSERT [dbo].[Index] ([IndexId], [IndexName]) VALUES (21, 603036)
INSERT [dbo].[Index] ([IndexId], [IndexName]) VALUES (22, 603379)
INSERT [dbo].[Index] ([IndexId], [IndexName]) VALUES (23, 603721)
INSERT [dbo].[Index] ([IndexId], [IndexName]) VALUES (24, 614164)
INSERT [dbo].[Index] ([IndexId], [IndexName]) VALUES (25, 614510)
INSERT [dbo].[Index] ([IndexId], [IndexName]) VALUES (26, 614611)
INSERT [dbo].[Index] ([IndexId], [IndexName]) VALUES (27, 614753)
INSERT [dbo].[Index] ([IndexId], [IndexName]) VALUES (28, 620839)
INSERT [dbo].[Index] ([IndexId], [IndexName]) VALUES (29, 625283)
INSERT [dbo].[Index] ([IndexId], [IndexName]) VALUES (30, 625560)
INSERT [dbo].[Index] ([IndexId], [IndexName]) VALUES (31, 625590)
INSERT [dbo].[Index] ([IndexId], [IndexName]) VALUES (32, 625683)
INSERT [dbo].[Index] ([IndexId], [IndexName]) VALUES (33, 630201)
INSERT [dbo].[Index] ([IndexId], [IndexName]) VALUES (34, 630370)
INSERT [dbo].[Index] ([IndexId], [IndexName]) VALUES (35, 660007)
INSERT [dbo].[Index] ([IndexId], [IndexName]) VALUES (36, 660540)
SET IDENTITY_INSERT [dbo].[Index] OFF
GO
SET IDENTITY_INSERT [dbo].[Manufacturer] ON 

INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName]) VALUES (1, N'Abtoys')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName]) VALUES (2, N'Atemi')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName]) VALUES (3, N'Bradex')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName]) VALUES (4, N'Colton')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName]) VALUES (5, N'Demix')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName]) VALUES (6, N'DFC')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName]) VALUES (7, N'Green Hill')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName]) VALUES (8, N'Mikasa')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName]) VALUES (9, N'Moby Kids')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName]) VALUES (10, N'Molten')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName]) VALUES (11, N'Nordway')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName]) VALUES (12, N'Perfetto Sport')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName]) VALUES (13, N'playToday')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName]) VALUES (14, N'Ridex')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName]) VALUES (15, N'ROMANA Next')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName]) VALUES (16, N'Salomon')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName]) VALUES (17, N'SKIF')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName]) VALUES (18, N'Starfit')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName]) VALUES (19, N'X-Match')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName]) VALUES (20, N'Совтехстром')
SET IDENTITY_INSERT [dbo].[Manufacturer] OFF
GO
SET IDENTITY_INSERT [dbo].[Name] ON 

INSERT [dbo].[Name] ([NameId], [NameFClub]) VALUES (1, N'Боксерская груша')
INSERT [dbo].[Name] ([NameId], [NameFClub]) VALUES (2, N'Велосипед')
INSERT [dbo].[Name] ([NameId], [NameFClub]) VALUES (3, N'Велотренажер')
INSERT [dbo].[Name] ([NameId], [NameFClub]) VALUES (4, N'Гиря')
INSERT [dbo].[Name] ([NameId], [NameFClub]) VALUES (5, N'Защита голени')
INSERT [dbo].[Name] ([NameId], [NameFClub]) VALUES (6, N'Игровой набор')
INSERT [dbo].[Name] ([NameId], [NameFClub]) VALUES (7, N'Клюшка')
INSERT [dbo].[Name] ([NameId], [NameFClub]) VALUES (8, N'Коврик')
INSERT [dbo].[Name] ([NameId], [NameFClub]) VALUES (9, N'Коньки')
INSERT [dbo].[Name] ([NameId], [NameFClub]) VALUES (10, N'Ласты')
INSERT [dbo].[Name] ([NameId], [NameFClub]) VALUES (11, N'Лыжный комплект')
INSERT [dbo].[Name] ([NameId], [NameFClub]) VALUES (12, N'Мяч')
INSERT [dbo].[Name] ([NameId], [NameFClub]) VALUES (13, N'Набор для хоккея')
INSERT [dbo].[Name] ([NameId], [NameFClub]) VALUES (14, N'Насос')
INSERT [dbo].[Name] ([NameId], [NameFClub]) VALUES (15, N'Очки для плавания')
INSERT [dbo].[Name] ([NameId], [NameFClub]) VALUES (16, N'Перчатки ')
INSERT [dbo].[Name] ([NameId], [NameFClub]) VALUES (17, N'Перчатки для карате')
INSERT [dbo].[Name] ([NameId], [NameFClub]) VALUES (18, N'Ролик для йоги')
INSERT [dbo].[Name] ([NameId], [NameFClub]) VALUES (19, N'Ролики')
INSERT [dbo].[Name] ([NameId], [NameFClub]) VALUES (20, N'Спортивный костюм')
INSERT [dbo].[Name] ([NameId], [NameFClub]) VALUES (21, N'Спортивный мат')
INSERT [dbo].[Name] ([NameId], [NameFClub]) VALUES (22, N'Степ-платформа')
INSERT [dbo].[Name] ([NameId], [NameFClub]) VALUES (23, N'Тренажер прыжков')
INSERT [dbo].[Name] ([NameId], [NameFClub]) VALUES (24, N'Тюбинг')
INSERT [dbo].[Name] ([NameId], [NameFClub]) VALUES (25, N'Шапочка для плавания')
INSERT [dbo].[Name] ([NameId], [NameFClub]) VALUES (26, N'Шведская стенка')
INSERT [dbo].[Name] ([NameId], [NameFClub]) VALUES (27, N'Шлем')
INSERT [dbo].[Name] ([NameId], [NameFClub]) VALUES (28, N'Штанга')
SET IDENTITY_INSERT [dbo].[Name] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (1, N'Администратор')
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (2, N'Клиент')
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (3, N'Менеджер')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Street] ON 

INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (1, N'Вишневая')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (2, N'Гоголя')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (3, N'Дзержинского')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (4, N'Зеленая')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (5, N'Коммунистическая')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (6, N'Комсомольская')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (7, N'Маяковского')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (8, N'Мичурина')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (9, N'Молодежная')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (10, N'Набережная')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (11, N'Некрасова')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (12, N'Новая')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (13, N'Октябрьская')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (14, N'Партизанская')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (15, N'Победы')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (16, N'Подгорная')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (17, N'Полевая')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (18, N'Садовая')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (19, N'Светлая')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (20, N'Северная')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (21, N'Солнечная')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (22, N'Спортивная')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (23, N'Фрунзе')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (24, N'Цветочная')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (25, N'Чехова')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (26, N'Школьная')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (27, N'Шоссейная')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (28, N' Степная')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (29, N'ул.Клубная')
SET IDENTITY_INSERT [dbo].[Street] OFF
GO
SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([SupplierId], [SupplierName]) VALUES (1, N'Декатлон')
INSERT [dbo].[Supplier] ([SupplierId], [SupplierName]) VALUES (2, N'Спортмастер')
SET IDENTITY_INSERT [dbo].[Supplier] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserId], [IdRole], [Surname], [Lname], [Patronymic], [Login], [Password]) VALUES (1, 3, N'Смирнов', N'Петр', N'Игоревич', N'smirnov.petr@example.com', N'P3tEg7')
INSERT [dbo].[User] ([UserId], [IdRole], [Surname], [Lname], [Patronymic], [Login], [Password]) VALUES (2, 3, N'Сидорова', N'Анна', N'Викторовна', N'sid.an.viktor@mail.com', N'S1d0r9')
INSERT [dbo].[User] ([UserId], [IdRole], [Surname], [Lname], [Patronymic], [Login], [Password]) VALUES (3, 2, N'Николаев', N'Семен', N'Ильич', N'nikolaev.semen@mail.ru', N'0N1k0L')
INSERT [dbo].[User] ([UserId], [IdRole], [Surname], [Lname], [Patronymic], [Login], [Password]) VALUES (4, 2, N'Федорова', N'Ольга', N'Сергеевна', N'fed.gov.ola@mail.com', N'F3d0l5')
INSERT [dbo].[User] ([UserId], [IdRole], [Surname], [Lname], [Patronymic], [Login], [Password]) VALUES (5, 1, N'Алексеева', N'Полина', N'Васильевна', N'aleks.polina@gmail.com', N'P0linA')
INSERT [dbo].[User] ([UserId], [IdRole], [Surname], [Lname], [Patronymic], [Login], [Password]) VALUES (6, 2, N'Чапаева', N'Виктория', N'Ивановна', N'chap.vika@mail.com', N'C5h4p3')
INSERT [dbo].[User] ([UserId], [IdRole], [Surname], [Lname], [Patronymic], [Login], [Password]) VALUES (7, 3, N'Романов', N'Антон', N'Алексеевич', N'romanov.a@mail.ru', N'R0Man0v')
INSERT [dbo].[User] ([UserId], [IdRole], [Surname], [Lname], [Patronymic], [Login], [Password]) VALUES (8, 2, N'Сергеева', N'Лидия', N'Валентиновна', N'serg.lidia@mail.ru', N'Ser1g1')
INSERT [dbo].[User] ([UserId], [IdRole], [Surname], [Lname], [Patronymic], [Login], [Password]) VALUES (9, 3, N'Подольская', N'Ксения', N'Викторовна', N'pod.kse@mail.com', N'PoD0L2')
INSERT [dbo].[User] ([UserId], [IdRole], [Surname], [Lname], [Patronymic], [Login], [Password]) VALUES (10, 2, N'Громов', N'Максим', N'Викторович', N'gromov.maxim@gmail.com', N'Gr0M0V')
INSERT [dbo].[User] ([UserId], [IdRole], [Surname], [Lname], [Patronymic], [Login], [Password]) VALUES (11, 1, N'Ермакова', N'Мария', N'Анатольевна', N'erma.maria@example.com', N'E5rMak0')
INSERT [dbo].[User] ([UserId], [IdRole], [Surname], [Lname], [Patronymic], [Login], [Password]) VALUES (12, 3, N'Владимирова', N'Татьяна', N'Артемовна', N'vlad.tat@mail.com', N'Vl4D2r')
INSERT [dbo].[User] ([UserId], [IdRole], [Surname], [Lname], [Patronymic], [Login], [Password]) VALUES (13, 2, N'Лисовский', N'Игорь', N'Николаевич', N'lis.igor@mail.ru', N'L1s0v20')
INSERT [dbo].[User] ([UserId], [IdRole], [Surname], [Lname], [Patronymic], [Login], [Password]) VALUES (14, 1, N'Зиновьева', N'Анна', N'Игоревна', N'zinovyeva.anna@mail.com', N'ZynUSA')
INSERT [dbo].[User] ([UserId], [IdRole], [Surname], [Lname], [Patronymic], [Login], [Password]) VALUES (15, 3, N'Белов', N'Михаил', N'Романович', N'bel.mikha@gmail.com', N'B3LoV12')
INSERT [dbo].[User] ([UserId], [IdRole], [Surname], [Lname], [Patronymic], [Login], [Password]) VALUES (16, 3, N'Кузнецова', N'Анастасия', N'Владимировна', N'kuzn.anast@example.com', N'Ku5nets')
INSERT [dbo].[User] ([UserId], [IdRole], [Surname], [Lname], [Patronymic], [Login], [Password]) VALUES (17, 2, N'Трофимова', N'Дарья', N'Александровна', N'trof.darya@mail.com', N'3TroF8')
INSERT [dbo].[User] ([UserId], [IdRole], [Surname], [Lname], [Patronymic], [Login], [Password]) VALUES (18, 2, N'Ершова', N'Екатерина', N'Сергеевна', N'ershova.kater@mail.ru', N'Er7Sh0v')
INSERT [dbo].[User] ([UserId], [IdRole], [Surname], [Lname], [Patronymic], [Login], [Password]) VALUES (19, 1, N'Панина', N'Анастасия', N'Данииловна', N'panina.dan@mail.com', N'PaniN1')
INSERT [dbo].[User] ([UserId], [IdRole], [Surname], [Lname], [Patronymic], [Login], [Password]) VALUES (20, 2, N'Соловьев', N'Владимир', N'Петрович', N'solov.vladimir@mail.ru', N'5SoL0v')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Fitness]  WITH CHECK ADD  CONSTRAINT [FK_Fitness_Articles] FOREIGN KEY([IdArticles])
REFERENCES [dbo].[Articles] ([Articles])
GO
ALTER TABLE [dbo].[Fitness] CHECK CONSTRAINT [FK_Fitness_Articles]
GO
ALTER TABLE [dbo].[Fitness]  WITH CHECK ADD  CONSTRAINT [FK_Fitness_Category] FOREIGN KEY([IdCategory])
REFERENCES [dbo].[Category] ([CategoryId])
GO
ALTER TABLE [dbo].[Fitness] CHECK CONSTRAINT [FK_Fitness_Category]
GO
ALTER TABLE [dbo].[Fitness]  WITH CHECK ADD  CONSTRAINT [FK_Fitness_Manufacturer] FOREIGN KEY([IdManufacturer])
REFERENCES [dbo].[Manufacturer] ([ManufacturerId])
GO
ALTER TABLE [dbo].[Fitness] CHECK CONSTRAINT [FK_Fitness_Manufacturer]
GO
ALTER TABLE [dbo].[Fitness]  WITH CHECK ADD  CONSTRAINT [FK_Fitness_Name] FOREIGN KEY([IdName])
REFERENCES [dbo].[Name] ([NameId])
GO
ALTER TABLE [dbo].[Fitness] CHECK CONSTRAINT [FK_Fitness_Name]
GO
ALTER TABLE [dbo].[Fitness]  WITH CHECK ADD  CONSTRAINT [FK_Fitness_Supplier] FOREIGN KEY([IdSupplier])
REFERENCES [dbo].[Supplier] ([SupplierId])
GO
ALTER TABLE [dbo].[Fitness] CHECK CONSTRAINT [FK_Fitness_Supplier]
GO
ALTER TABLE [dbo].[PickPoint]  WITH CHECK ADD  CONSTRAINT [FK_PickPoint_City] FOREIGN KEY([IdCity])
REFERENCES [dbo].[City] ([CityId])
GO
ALTER TABLE [dbo].[PickPoint] CHECK CONSTRAINT [FK_PickPoint_City]
GO
ALTER TABLE [dbo].[PickPoint]  WITH CHECK ADD  CONSTRAINT [FK_PickPoint_Index] FOREIGN KEY([IdIndex])
REFERENCES [dbo].[Index] ([IndexId])
GO
ALTER TABLE [dbo].[PickPoint] CHECK CONSTRAINT [FK_PickPoint_Index]
GO
ALTER TABLE [dbo].[PickPoint]  WITH CHECK ADD  CONSTRAINT [FK_PickPoint_Street] FOREIGN KEY([IdStreet])
REFERENCES [dbo].[Street] ([StreetId])
GO
ALTER TABLE [dbo].[PickPoint] CHECK CONSTRAINT [FK_PickPoint_Street]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([IdRole])
REFERENCES [dbo].[Role] ([RoleId])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
