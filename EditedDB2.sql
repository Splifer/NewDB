CREATE DATABASE DBProject
USE [DBProject]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 7/25/2023 4:36:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[user_id] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[gender_name] [nvarchar](100) NOT NULL,
	[role_name] [nvarchar](100) NOT NULL,
	[user_name] [varchar](max) NOT NULL,
	[login_id] [varchar](max) NOT NULL,
	[password] [varchar](max) NOT NULL,
	[birth_date] [date] NULL,
	[mail_address] [nvarchar](30) NOT NULL,
	[tel_no] [int] NOT NULL,
	[address] [nvarchar](max) NOT NULL,
	[Filter] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 7/25/2023 4:36:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[brand_id] [nvarchar](100) NOT NULL,
	[brand_name] [nvarchar](100) NOT NULL,
	[Filter] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[brand_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Gender]    Script Date: 7/25/2023 4:36:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Gender](
	[gender_id] [nvarchar](100) NOT NULL,
	[gender_name] [nvarchar](100) NOT NULL,
	[Filter] [varchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[gender_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Order]    Script Date: 7/25/2023 4:36:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[order_id] [uniqueidentifier] NOT NULL,
	[user_id] [uniqueidentifier] NULL,
	[product_id] [uniqueidentifier] NULL,
	[product_count] [int] NULL,
	[order_price] [decimal](18, 3) NULL,
	[shipping_id] [nvarchar](100) NULL,
	[payment_id] [nvarchar](100) NULL,
	[Filter] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK__Order__4659622934014D54] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Payment]    Script Date: 7/25/2023 4:36:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[payment_id] [nvarchar](100) NOT NULL,
	[payment_name] [nvarchar](max) NOT NULL,
	[Filter] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[payment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/25/2023 4:36:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[product_id] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[product_name] [nvarchar](max) NOT NULL,
	[brand_name] [nvarchar](100) NULL,
	[price] [decimal](18, 3) NOT NULL,
	[stock] [int] NOT NULL,
	[shipping_id] [nvarchar](100) NOT NULL,
	[payment_id] [nvarchar](100) NOT NULL,
	[manufacturing_date] [date] NOT NULL,
	[expiry_date] [date] NOT NULL,
	[icon] [nvarchar](max) NULL,
	[icon1] [nvarchar](max) NULL,
	[icon2] [nvarchar](max) NULL,
	[icon3] [nvarchar](max) NULL,
	[icon4] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[Filter] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 7/25/2023 4:36:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[role_id] [nvarchar](100) NOT NULL,
	[role_name] [nvarchar](100) NOT NULL,
	[Filter] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[role_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shipping]    Script Date: 7/25/2023 4:36:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping](
	[shipping_id] [nvarchar](100) NOT NULL,
	[shipping_name] [nvarchar](max) NOT NULL,
	[Filter] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Shipping] PRIMARY KEY CLUSTERED 
(
	[shipping_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[Account] ([user_id], [gender_name], [role_name], [user_name], [login_id], [password], [birth_date], [mail_address], [tel_no], [address], [Filter], [IsActive]) VALUES (N'7df11e83-064c-4567-8cf4-199c2a01be39', N'Nam', N'Customer', N'a', N'a', N'a', CAST(N'1998-05-23' AS Date), N'a.@gmail.com', 675856481, N'America', NULL, 1)
INSERT [dbo].[Account] ([user_id], [gender_name], [role_name], [user_name], [login_id], [password], [birth_date], [mail_address], [tel_no], [address], [Filter], [IsActive]) VALUES (N'f627b6de-1d29-4ccd-9bd8-5381804fc338', N'Nữ ', N'Customer', N'b', N'b', N'b', CAST(N'1997-06-30' AS Date), N'b.@gmail.com', 238148177, N'Japan', NULL, 1)
INSERT [dbo].[Account] ([user_id], [gender_name], [role_name], [user_name], [login_id], [password], [birth_date], [mail_address], [tel_no], [address], [Filter], [IsActive]) VALUES (N'891591ad-ae8e-441d-9586-5c52f18070c2', N'Nam', N'Customer', N'd', N'd', N'd', CAST(N'1995-07-25' AS Date), N'd@gmail.com', 286384682, N'France', NULL, 1)
INSERT [dbo].[Account] ([user_id], [gender_name], [role_name], [user_name], [login_id], [password], [birth_date], [mail_address], [tel_no], [address], [Filter], [IsActive]) VALUES (N'4d0f8ade-b46f-496d-b171-80ef2a2985da', N'Nữ ', N'Customer', N'c', N'c', N'c', CAST(N'1996-08-17' AS Date), N'c@gmail.com', 327492649, N'Spain', NULL, 1)
INSERT [dbo].[Account] ([user_id], [gender_name], [role_name], [user_name], [login_id], [password], [birth_date], [mail_address], [tel_no], [address], [Filter], [IsActive]) VALUES (N'64cc9ab1-8e4c-46ae-93e3-cdbb480c7745', N'Nam', N'Staff', N'huy', N'huy', N'huy', CAST(N'1999-03-15' AS Date), N'huy.@gmail.com', 764506315, N'Vietnam', NULL, 1)
INSERT [dbo].[Brand] ([brand_id], [brand_name], [Filter], [IsActive]) VALUES (N'4    ', N'BioTech', NULL, 1)
INSERT [dbo].[Brand] ([brand_id], [brand_name], [Filter], [IsActive]) VALUES (N'3    ', N'BPI Sport', NULL, 1)
INSERT [dbo].[Brand] ([brand_id], [brand_name], [Filter], [IsActive]) VALUES (N'5    ', N'Mutant', NULL, 1)
INSERT [dbo].[Brand] ([brand_id], [brand_name], [Filter], [IsActive]) VALUES (N'2    ', N'OstroVit', NULL, 1)
INSERT [dbo].[Brand] ([brand_id], [brand_name], [Filter], [IsActive]) VALUES (N'1    ', N'Rule 1', NULL, 1)
INSERT [dbo].[Gender] ([gender_id], [gender_name], [Filter], [IsActive]) VALUES (N'3    ', N'Khác', NULL, 1)
INSERT [dbo].[Gender] ([gender_id], [gender_name], [Filter], [IsActive]) VALUES (N'1    ', N'Nam', NULL, 1)
INSERT [dbo].[Gender] ([gender_id], [gender_name], [Filter], [IsActive]) VALUES (N'2    ', N'Nữ', NULL, 1)
INSERT [dbo].[Payment] ([payment_id], [payment_name], [Filter], [IsActive]) VALUES (N'1         ', N'Transfer', NULL, 1)
INSERT [dbo].[Payment] ([payment_id], [payment_name], [Filter], [IsActive]) VALUES (N'2         ', N'Cash', NULL, 1)
INSERT [dbo].[Product] ([product_id], [product_name], [brand_name], [price], [stock], [shipping_id], [payment_id], [manufacturing_date], [expiry_date], [icon], [icon1], [icon2], [icon3], [icon4], [description], [Filter], [IsActive]) VALUES (N'68627536-4b58-45a8-b003-223434037048', N'Hydro Whey Zero', N'BioTech', CAST(1950000.000 AS Decimal(18, 3)), 10, N'1', N'1', CAST(N'2023-02-02' AS Date), CAST(N'2025-02-02' AS Date), N'/img/hydro-whey-zero.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Product] ([product_id], [product_name], [brand_name], [price], [stock], [shipping_id], [payment_id], [manufacturing_date], [expiry_date], [icon], [icon1], [icon2], [icon3], [icon4], [description], [Filter], [IsActive]) VALUES (N'6c3e5d49-3617-455e-8d02-3a82c98fe279', N'Rule 1 Proteins', N'Rule 1', CAST(1600000.000 AS Decimal(18, 3)), 10, N'2', N'2', CAST(N'2023-03-03' AS Date), CAST(N'2025-03-03' AS Date), N'/img/Rule-1.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Product] ([product_id], [product_name], [brand_name], [price], [stock], [shipping_id], [payment_id], [manufacturing_date], [expiry_date], [icon], [icon1], [icon2], [icon3], [icon4], [description], [Filter], [IsActive]) VALUES (N'69429a06-4f2e-4367-8bc2-50fa3b6cadfa', N'BPI ISO HD', N'BPI Sport', CAST(1450000.000 AS Decimal(18, 3)), 10, N'1', N'1', CAST(N'2023-01-01' AS Date), CAST(N'2025-01-01' AS Date), N'/img/iso-hd.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Product] ([product_id], [product_name], [brand_name], [price], [stock], [shipping_id], [payment_id], [manufacturing_date], [expiry_date], [icon], [icon1], [icon2], [icon3], [icon4], [description], [Filter], [IsActive]) VALUES (N'f376b9c9-21a8-4782-b3c7-931641a1d8fc', N'Creatine Monohydrate', N'OstroVit', CAST(500000.000 AS Decimal(18, 3)), 10, N'2', N'2', CAST(N'2023-05-05' AS Date), CAST(N'2025-05-05' AS Date), N'/img/Creatine Monohydrate.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Product] ([product_id], [product_name], [brand_name], [price], [stock], [shipping_id], [payment_id], [manufacturing_date], [expiry_date], [icon], [icon1], [icon2], [icon3], [icon4], [description], [Filter], [IsActive]) VALUES (N'4dd8420e-a598-42a5-bda1-9bd69d688d5f', N'Mutant Mass', N'Mutant', CAST(2490000.000 AS Decimal(18, 3)), 10, N'1', N'1', CAST(N'2023-04-04' AS Date), CAST(N'2025-04-04' AS Date), N'/img/Mutant Mass.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Role] ([role_id], [role_name], [Filter], [IsActive]) VALUES (N'2', N'Customer', NULL, 1)
INSERT [dbo].[Role] ([role_id], [role_name], [Filter], [IsActive]) VALUES (N'1', N'Staff', NULL, 1)
INSERT [dbo].[Shipping] ([shipping_id], [shipping_name], [Filter], [IsActive]) VALUES (N'1         ', N'Yamato', NULL, 1)
INSERT [dbo].[Shipping] ([shipping_id], [shipping_name], [Filter], [IsActive]) VALUES (N'2         ', N'Grab', NULL, 1)
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF__Order__order_id__1B0907CE]  DEFAULT (newid()) FOR [order_id]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Gender] FOREIGN KEY([gender_name])
REFERENCES [dbo].[Gender] ([gender_name])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Gender]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Role] FOREIGN KEY([role_name])
REFERENCES [dbo].[Role] ([role_name])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Role]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK__Order__product_i__1CF15040] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK__Order__product_i__1CF15040]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK__Order__user_id__1BFD2C07] FOREIGN KEY([user_id])
REFERENCES [dbo].[Account] ([user_id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK__Order__user_id__1BFD2C07]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Payment] FOREIGN KEY([payment_id])
REFERENCES [dbo].[Payment] ([payment_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Payment]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Shipping] FOREIGN KEY([shipping_id])
REFERENCES [dbo].[Shipping] ([shipping_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Shipping]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Brand] FOREIGN KEY([brand_name])
REFERENCES [dbo].[Brand] ([brand_name])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Brand]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Payment] FOREIGN KEY([payment_id])
REFERENCES [dbo].[Payment] ([payment_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Payment]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Shipping] FOREIGN KEY([shipping_id])
REFERENCES [dbo].[Shipping] ([shipping_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Shipping]
GO
