USE [master]
GO
/****** Object:  Database [KamarShopSpringBoot]    Script Date: 02/01/2023 3:58:49 CH ******/
CREATE DATABASE [KamarShopSpringBoot]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KamarShopSpringBoot', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\KamarShopSpringBoot.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KamarShopSpringBoot_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\KamarShopSpringBoot_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [KamarShopSpringBoot] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KamarShopSpringBoot].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KamarShopSpringBoot] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KamarShopSpringBoot] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KamarShopSpringBoot] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KamarShopSpringBoot] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KamarShopSpringBoot] SET ARITHABORT OFF 
GO
ALTER DATABASE [KamarShopSpringBoot] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KamarShopSpringBoot] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KamarShopSpringBoot] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KamarShopSpringBoot] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KamarShopSpringBoot] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KamarShopSpringBoot] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KamarShopSpringBoot] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KamarShopSpringBoot] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KamarShopSpringBoot] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KamarShopSpringBoot] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KamarShopSpringBoot] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KamarShopSpringBoot] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KamarShopSpringBoot] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KamarShopSpringBoot] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KamarShopSpringBoot] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KamarShopSpringBoot] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KamarShopSpringBoot] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KamarShopSpringBoot] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KamarShopSpringBoot] SET  MULTI_USER 
GO
ALTER DATABASE [KamarShopSpringBoot] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KamarShopSpringBoot] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KamarShopSpringBoot] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KamarShopSpringBoot] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KamarShopSpringBoot] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [KamarShopSpringBoot] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [KamarShopSpringBoot] SET QUERY_STORE = OFF
GO
USE [KamarShopSpringBoot]
GO
/****** Object:  Table [dbo].[brands]    Script Date: 02/01/2023 3:58:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[brands](
	[id] [varchar](255) NOT NULL,
	[created_date] [datetime2](7) NULL,
	[last_modified_date] [datetime2](7) NULL,
	[name] [varchar](255) NULL,
	[created_by] [varchar](255) NULL,
	[last_modified_by] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category_blog]    Script Date: 02/01/2023 3:58:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category_blog](
	[id] [varchar](255) NOT NULL,
	[created_date] [datetime2](7) NULL,
	[last_modified_date] [datetime2](7) NULL,
	[name] [varchar](255) NULL,
	[created_by] [varchar](255) NULL,
	[last_modified_by] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category_product]    Script Date: 02/01/2023 3:58:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category_product](
	[id] [varchar](255) NOT NULL,
	[created_date] [datetime2](7) NULL,
	[last_modified_date] [datetime2](7) NULL,
	[name] [varchar](255) NULL,
	[created_by] [varchar](255) NULL,
	[last_modified_by] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[colors]    Script Date: 02/01/2023 3:58:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[colors](
	[id] [varchar](255) NOT NULL,
	[created_date] [datetime2](7) NULL,
	[last_modified_date] [datetime2](7) NULL,
	[name] [varchar](255) NULL,
	[created_by] [varchar](255) NULL,
	[last_modified_by] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contacts]    Script Date: 02/01/2023 3:58:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contacts](
	[id] [varchar](255) NOT NULL,
	[confirm] [bit] NULL,
	[created_date] [datetime2](7) NOT NULL,
	[email] [varchar](255) NULL,
	[full_name] [varchar](255) NULL,
	[last_modified_date] [datetime2](7) NULL,
	[message] [varchar](max) NULL,
	[subject] [varchar](255) NULL,
 CONSTRAINT [PK__contacts__3213E83F8F822B24] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[image_product]    Script Date: 02/01/2023 3:58:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[image_product](
	[id] [varchar](255) NOT NULL,
	[name] [varchar](255) NULL,
	[id_product] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[likes]    Script Date: 02/01/2023 3:58:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[likes](
	[id] [varchar](255) NOT NULL,
	[created_date] [datetime2](7) NOT NULL,
	[id_product] [varchar](255) NULL,
	[id_user] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_details]    Script Date: 02/01/2023 3:58:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_details](
	[id] [varchar](255) NOT NULL,
	[discount] [float] NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[id_order] [varchar](255) NULL,
	[id_product] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 02/01/2023 3:58:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[id] [varchar](255) NOT NULL,
	[address_order] [varchar](255) NULL,
	[birth_day] [datetime2](7) NULL,
	[created_date] [datetime2](7) NOT NULL,
	[email] [varchar](255) NULL,
	[full_name] [varchar](255) NULL,
	[last_modified_date] [datetime2](7) NULL,
	[note] [varchar](max) NULL,
	[pay] [varchar](255) NULL,
	[phone] [varchar](255) NULL,
	[status] [varchar](255) NULL,
	[zip] [varchar](255) NULL,
 CONSTRAINT [PK__orders__3213E83F9D4C2848] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 02/01/2023 3:58:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[id] [varchar](255) NOT NULL,
	[created_date] [datetime2](7) NULL,
	[last_modified_date] [datetime2](7) NULL,
	[active] [bit] NULL,
	[depth] [float] NULL,
	[description] [varchar](max) NULL,
	[discount] [float] NULL,
	[end_day_discount] [datetime2](7) NULL,
	[height] [float] NULL,
	[name] [varchar](255) NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[start_day_discount] [datetime2](7) NULL,
	[views] [int] NULL,
	[weight] [float] NULL,
	[width] [float] NULL,
	[created_by] [varchar](255) NULL,
	[last_modified_by] [varchar](255) NULL,
	[id_brand] [varchar](255) NULL,
	[id_category_product] [varchar](255) NULL,
	[id_color] [varchar](255) NULL,
	[banner] [varchar](255) NULL,
 CONSTRAINT [PK__products__3213E83FEBC53224] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reviews]    Script Date: 02/01/2023 3:58:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reviews](
	[id] [varchar](255) NOT NULL,
	[avatar] [varchar](255) NULL,
	[created_date] [datetime2](7) NOT NULL,
	[email] [varchar](255) NULL,
	[full_name] [varchar](255) NULL,
	[last_modified_date] [datetime2](7) NULL,
	[review] [varchar](max) NULL,
	[star] [int] NULL,
	[id_product] [varchar](255) NULL,
 CONSTRAINT [PK__reviews__3213E83FD77E8E79] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[send_mail]    Script Date: 02/01/2023 3:58:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[send_mail](
	[id] [varchar](255) NOT NULL,
	[body] [varchar](max) NULL,
	[created_date] [datetime2](7) NOT NULL,
	[email_to] [varchar](255) NULL,
	[subject] [varchar](255) NULL,
	[type] [varchar](255) NULL,
	[confirm] [bit] NULL,
	[last_modified_date] [datetime2](7) NULL,
 CONSTRAINT [PK__send_mai__3213E83F211928DD] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 02/01/2023 3:58:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [varchar](255) NOT NULL,
	[address] [varchar](255) NULL,
	[avatar] [varchar](255) NULL,
	[birth_day] [datetime2](7) NULL,
	[created_date] [datetime2](7) NOT NULL,
	[email] [varchar](255) NULL,
	[full_name] [varchar](255) NULL,
	[gender] [bit] NULL,
	[last_login_date] [datetime2](7) NULL,
	[last_modified_date] [datetime2](7) NULL,
	[login] [bit] NULL,
	[password] [varchar](max) NULL,
	[role] [bit] NULL,
	[address_order] [varchar](255) NULL,
 CONSTRAINT [PK__users__3213E83F398F75DB] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[brands]  WITH CHECK ADD  CONSTRAINT [FK6osclwf271vehfepcym3k1839] FOREIGN KEY([created_by])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[brands] CHECK CONSTRAINT [FK6osclwf271vehfepcym3k1839]
GO
ALTER TABLE [dbo].[brands]  WITH CHECK ADD  CONSTRAINT [FKay0m7w96fwty65q4eb39y0yff] FOREIGN KEY([last_modified_by])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[brands] CHECK CONSTRAINT [FKay0m7w96fwty65q4eb39y0yff]
GO
ALTER TABLE [dbo].[category_blog]  WITH CHECK ADD  CONSTRAINT [FK7ejoq7p34rq1tu2242yjek5gr] FOREIGN KEY([last_modified_by])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[category_blog] CHECK CONSTRAINT [FK7ejoq7p34rq1tu2242yjek5gr]
GO
ALTER TABLE [dbo].[category_blog]  WITH CHECK ADD  CONSTRAINT [FKayjbdljn2f4ndifrf2to1k18o] FOREIGN KEY([created_by])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[category_blog] CHECK CONSTRAINT [FKayjbdljn2f4ndifrf2to1k18o]
GO
ALTER TABLE [dbo].[category_product]  WITH CHECK ADD  CONSTRAINT [FKauq3h5ihqth6o2ouiwkd3wou4] FOREIGN KEY([created_by])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[category_product] CHECK CONSTRAINT [FKauq3h5ihqth6o2ouiwkd3wou4]
GO
ALTER TABLE [dbo].[category_product]  WITH CHECK ADD  CONSTRAINT [FKqo9hdfq069lnjwjptys8uqe53] FOREIGN KEY([last_modified_by])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[category_product] CHECK CONSTRAINT [FKqo9hdfq069lnjwjptys8uqe53]
GO
ALTER TABLE [dbo].[colors]  WITH CHECK ADD  CONSTRAINT [FK9h2319ux6kkpgaly3imdqcxgj] FOREIGN KEY([last_modified_by])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[colors] CHECK CONSTRAINT [FK9h2319ux6kkpgaly3imdqcxgj]
GO
ALTER TABLE [dbo].[colors]  WITH CHECK ADD  CONSTRAINT [FKkp157r1ebwc4e5aedkeddnttw] FOREIGN KEY([created_by])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[colors] CHECK CONSTRAINT [FKkp157r1ebwc4e5aedkeddnttw]
GO
ALTER TABLE [dbo].[image_product]  WITH CHECK ADD  CONSTRAINT [FK3vpc5r2wy37k9spvws87cjb2m] FOREIGN KEY([id_product])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[image_product] CHECK CONSTRAINT [FK3vpc5r2wy37k9spvws87cjb2m]
GO
ALTER TABLE [dbo].[likes]  WITH CHECK ADD  CONSTRAINT [FK6d842bi7bjxbeexq33hxcd8ge] FOREIGN KEY([id_product])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[likes] CHECK CONSTRAINT [FK6d842bi7bjxbeexq33hxcd8ge]
GO
ALTER TABLE [dbo].[likes]  WITH CHECK ADD  CONSTRAINT [FKogxqufbmgi1r85cee7g3xr7or] FOREIGN KEY([id_user])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[likes] CHECK CONSTRAINT [FKogxqufbmgi1r85cee7g3xr7or]
GO
ALTER TABLE [dbo].[order_details]  WITH CHECK ADD  CONSTRAINT [FK41ypdnsfa4cd6poqkbthg94nc] FOREIGN KEY([id_product])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[order_details] CHECK CONSTRAINT [FK41ypdnsfa4cd6poqkbthg94nc]
GO
ALTER TABLE [dbo].[order_details]  WITH CHECK ADD  CONSTRAINT [FK6h10g6el6eyicu33ddse0gm3v] FOREIGN KEY([id_order])
REFERENCES [dbo].[orders] ([id])
GO
ALTER TABLE [dbo].[order_details] CHECK CONSTRAINT [FK6h10g6el6eyicu33ddse0gm3v]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK2bhwoop8hfnjmvqv8qa0dpbn0] FOREIGN KEY([id_brand])
REFERENCES [dbo].[brands] ([id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK2bhwoop8hfnjmvqv8qa0dpbn0]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FKl0lce8i162ldn9n01t2a6lcix] FOREIGN KEY([created_by])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FKl0lce8i162ldn9n01t2a6lcix]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FKok8u3uk9sijkms93m88f03pdw] FOREIGN KEY([id_color])
REFERENCES [dbo].[colors] ([id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FKok8u3uk9sijkms93m88f03pdw]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FKphdjq4m1no04qpogrwpaivhsm] FOREIGN KEY([last_modified_by])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FKphdjq4m1no04qpogrwpaivhsm]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FKsuu2owfuq6y6lnjm5mysgbip] FOREIGN KEY([id_category_product])
REFERENCES [dbo].[category_product] ([id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FKsuu2owfuq6y6lnjm5mysgbip]
GO
ALTER TABLE [dbo].[reviews]  WITH CHECK ADD  CONSTRAINT [FK9ii9xm0ccev9f7wjv0kw13w4p] FOREIGN KEY([id_product])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[reviews] CHECK CONSTRAINT [FK9ii9xm0ccev9f7wjv0kw13w4p]
GO
USE [master]
GO
ALTER DATABASE [KamarShopSpringBoot] SET  READ_WRITE 
GO
