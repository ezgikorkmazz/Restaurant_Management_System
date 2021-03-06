USE [master]
GO
/****** Object:  Database [RestourantManagementSys]    Script Date: 1/3/2022 22:59:16 ******/
CREATE DATABASE [RestourantManagementSys]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RestourantManagementSys', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\RestourantManagementSys.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'RestourantManagementSys_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\RestourantManagementSys_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [RestourantManagementSys] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RestourantManagementSys].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RestourantManagementSys] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RestourantManagementSys] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RestourantManagementSys] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RestourantManagementSys] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RestourantManagementSys] SET ARITHABORT OFF 
GO
ALTER DATABASE [RestourantManagementSys] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RestourantManagementSys] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RestourantManagementSys] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RestourantManagementSys] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RestourantManagementSys] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RestourantManagementSys] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RestourantManagementSys] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RestourantManagementSys] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RestourantManagementSys] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RestourantManagementSys] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RestourantManagementSys] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RestourantManagementSys] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RestourantManagementSys] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RestourantManagementSys] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RestourantManagementSys] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RestourantManagementSys] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RestourantManagementSys] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RestourantManagementSys] SET RECOVERY FULL 
GO
ALTER DATABASE [RestourantManagementSys] SET  MULTI_USER 
GO
ALTER DATABASE [RestourantManagementSys] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RestourantManagementSys] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RestourantManagementSys] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RestourantManagementSys] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RestourantManagementSys] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [RestourantManagementSys] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'RestourantManagementSys', N'ON'
GO
ALTER DATABASE [RestourantManagementSys] SET QUERY_STORE = OFF
GO
USE [RestourantManagementSys]
GO
/****** Object:  User [admin]    Script Date: 1/3/2022 22:59:16 ******/
CREATE USER [admin] FOR LOGIN [admin] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [admin]
GO
ALTER ROLE [db_datareader] ADD MEMBER [admin]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [admin]
GO
/****** Object:  Table [dbo].[Administrator]    Script Date: 1/3/2022 22:59:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administrator](
	[AdminId] [int] IDENTITY(1,1) NOT NULL,
	[AdminUsername] [varchar](50) NULL,
	[AdminPassword] [varchar](50) NULL,
 CONSTRAINT [PK_Administrator] PRIMARY KEY CLUSTERED 
(
	[AdminId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 1/3/2022 22:59:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[ItemId] [int] NOT NULL,
	[ItemName] [varchar](50) NULL,
	[ItemInfo] [text] NULL,
	[ItemQuantity] [int] NULL,
	[TotalPrice] [int] NULL,
	[ItemPrice] [int] NULL,
	[ItemImage] [varchar](50) NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 1/3/2022 22:59:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[PhoneNo] [varchar](11) NULL,
	[Address] [varchar](50) NULL,
	[PaymentId] [int] NULL,
	[Message] [text] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 1/3/2022 22:59:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[FoodId] [varchar](8) NOT NULL,
	[Price] [int] NULL,
	[FoodName] [varchar](50) NULL,
	[Catagory] [varchar](50) NOT NULL,
	[About] [text] NULL,
	[Image] [varchar](50) NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[FoodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 1/3/2022 22:59:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerInfo] [text] NULL,
	[OrderInfo] [text] NULL,
	[OrderPrice] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 1/3/2022 22:59:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[PaymentId] [int] IDENTITY(1,1) NOT NULL,
	[PaymentDate] [varchar](50) NULL,
	[Amount] [int] NULL,
	[PaymentType] [varchar](50) NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[PaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Administrator] ON 

INSERT [dbo].[Administrator] ([AdminId], [AdminUsername], [AdminPassword]) VALUES (1, N'admin', N'12345678')
SET IDENTITY_INSERT [dbo].[Administrator] OFF
GO
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'12', 30, N'Edamame', N'Appetizer', N'Organic Soy Beans served with Himalayan Salt.', N'https://i.hizliresim.com/lxopg8a.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'13', 30, N'Shirimp Chips', N'Appetizer', N' ', N'https://i.hizliresim.com/qf9b1ys.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'14', 30, N'Kimchi', N'Appetizer', N' ', N'https://i.hizliresim.com/ti03uhq.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'15', 57, N'Corn Tempura', N'Appetizer', N'Corn, Starch, Tempura Flour, Shichimi Seasoning and Truffle Mayo ', N'https://i.hizliresim.com/qmh4o2h.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'16', 71, N'Crispy Shrimp', N'Appetizer', N'Chimchim Shrimp, Starch, Egg, Panko Bread Crumbs. Served with Sriracha and Sweet Chili Sauce.', N'https://i.hizliresim.com/tjy6f0f.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'17', 61, N'Sole Lolipop', N'Appetizer', N' ', N'https://i.hizliresim.com/mgkxd4z.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'18', 35, N'Spring Roll', N'Appetizer', N'Ground Beef, Carrot, White Cabbage, Onion, Soybean Sprouts. It is not served with sauce.', N'https://i.hizliresim.com/a60dj21.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'19', 37, N'Dumpling', N'Appetizer', N'Ground Mince, Carrot, Zucchini, Scallion and Egg. Served with Sriracha and Sweet Sour Sauce.', N'https://i.hizliresim.com/gs57mop.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'20', 37, N'Steamed Dumpling', N'Appetizer', N'Ground Mince, Carrot, Zucchini, Scallion and Egg. Served with Garlic Sauce.', N'https://i.hizliresim.com/qby6r1i.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'21', 45, N'Beef Gyoza', N'Appetizer', N'Ground Mince, Carrot, Zucchini, Scallion and Egg.', N'https://i.hizliresim.com/ertcwck.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'22', 31, N'Sour Chili Soup', N'Soups', N'Carrot, White Cabbage, Starch (Wheat), Oyster Sauce, Grape Vinegar, Soybean Sprouts, Dark Soy Sauce, Chicken (Breast), Egg and Hot Sauce. Served with Soy Sauce.', N'https://i.hizliresim.com/8ycn85p.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'23', 37, N'Miso Soup', N'Soups', N'Soybean Soup, Sliced Seaweed, Green Onion, Tofu and Fish Powder. Served with Soy Sauce.', N'https://i.hizliresim.com/g1al44f.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'24', 57, N'Shirimp Pad Thai Soup', N'Soups', N'Broccoli, Carrot, Spinach, Mushroom, Shrimp (3 Pieces), Coriander, Lettuce, Rice Noodles, Garlic, Scallions and Soy Sprouts. Served with Soy Sauce.', N'https://i.hizliresim.com/i9dgbsl.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'25', 71, N'Sweet Chili Chicken', N'Chickens', N'Chicken, bell pepper, onion, pineapple. Served with Soy Sauce', N'https://i.hizliresim.com/dw69ag5.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'26', 71, N'Manchurian Chicken', N'Chickens', N'Chicken, zucchini, mushrooms, green pepper, soybean sprouts, garlic, peanuts, ginger. Served with Soy Sauce', N'https://i.hizliresim.com/4vn3boh.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'27', 71, N'General Tso''s Chicken', N'Chickens', N'Chicken, sesame on top. Served with Soy Sauce', N'https://i.hizliresim.com/pv19248.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'28', 71, N'Thai Cashew Chicken', N'Chickens', N'Chicken, bell pepper, peanut, mushroom, garlic, onion, spring onion, fresh red pepper, pineapple. Served with Soy Sauce.', N'https://i.hizliresim.com/87bu1ej.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'29', 85, N'Mixed Vegitables Beef', N'Beefs', N'Beef, baby corn, broccoli, bell pepper, carrot, zucchini, white cabbage, mushrooms, soybean sprouts, onion, fresh red pepper. Served with Soy Sauce.', N'https://i.hizliresim.com/eogdd88.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'30', 87, N'Shitake Mushroom Beef', N'Beefs', N'Beef, zucchini, shiitake mushroom, green pepper, peanut, dried red pepper, hot sauce. Served with Soy Sauce.', N'https://i.hizliresim.com/fa08h2g.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'31', 87, N'Thai Basil Beef', N'Beefs', N'Veal bell pepper, garlic, fresh red pepper, basil, red chili flakes. Served with Soy Sauce.', N'https://i.hizliresim.com/knon0x0.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'32', 81, N'Crispy Sea Bass With Ginger', N'Seafood', N'Sea Bass, Broccoli, Black Chinese Mushroom, Scallion, Garlic, Dried Red Pepper. It is served with soy sauce.', N'https://i.hizliresim.com/oeiahd1.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'33', 91, N'Teriyaki Salmon', N'Seafood', N'Salmon, Side Greens, Carrots, Cucumbers. Served with Coriander Sauce, Teriyaki Sauce and Soy Sauce.', N'https://i.hizliresim.com/oukg4kj.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'34', 107, N'Sweet Sour Shirimp', N'Seafood', N'Jumbo Shrimp, Bell Pepper, Onion, Pineapple. Served with Soy Sauce.', N'https://i.hizliresim.com/2livtva.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'35', 91, N'Shirimp Tempura', N'Seafood', N'It is served with Tempura Sauce and Soy Sauce.', N'https://i.hizliresim.com/cp3vuc6.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'36', 111, N'Spicy Vegetable Octopus', N'Seafood', N'Moscow, Onions, Black Chinese Mushrooms, Black Pepper, Dried Hot Pepper, Capia Pepper, Garlic, Ginger.', N'https://i.hizliresim.com/eeobnnz.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'37', 143, N'Fried Beijing Duck', N'Duck', N'Duck, Cucumber and Spring Onions. Served with Hoisin Sauce, Plum Sauce, Pancakes.', N'https://i.hizliresim.com/5fc34qm.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'38', 42, N'Duck Bun', N'Duck', N'Duck, Green Pepper, Tomato, Garlic, Fresh Onion, Dried Onion and Fresh Ginger. It is not served with sauce.', N'https://i.hizliresim.com/9zd2bdq.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'39', 45, N'Veggie Noodle', N'Noodle', N'Noodles, Broccoli, Carrot, Soybean Sprouts, Green Onion, Fresh Red Pepper. Served with Soy Sauce.', N'https://i.hizliresim.com/dqxso84.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'40', 49, N'Chicken Noodle', N'Noodle', N'Noodles, Chicken, Broccoli, Carrot, Soybean Sprouts, Green Onion, Fresh Red Pepper. Served with Soy Sauce.', N'https://i.hizliresim.com/i4ojkcp.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'41', 55, N'Beef Noodle', N'Noodle', N'Noodles, Beef, Broccoli, Carrot, Soybean Sprouts, Green Onion and Fresh Red Pepper. Served with Soy Sauce.', N'https://i.hizliresim.com/44r7n1m.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'42', 65, N'Shirimp Noodle', N'Noodle', N'Noodles, Chimchim Shrimp, Broccoli, Soybean Sprouts, Scallion, Fresh Red Pepper. Served with Soy Sauce.', N'https://i.hizliresim.com/b0rgp17.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'43', 37, N'Rice', N'Rice', N'Steamed Rice. Served with Soy Sauce.', N'https://i.hizliresim.com/440dgvb.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'44', 45, N'Veggie Rice', N'Rice', N'Peas, Carrot, Grain Corn, Green Onion, Red Cabbage. Served with Soy Sauce.', N'https://i.hizliresim.com/7xcejwy.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'45', 48, N'Chicken Rice', N'Rice', N'Chicken Breast, Peas, Carrot, Grain Corn, Green Onion, Egg. Served with Soy Sauce.', N'https://i.hizliresim.com/idtozzn.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'46', 51, N'Beef Rice', N'Rice', N'Beef, Peas, Carrot, Grain Corn, Egg, Green Onion. Served with Soy Sauce.', N'https://i.hizliresim.com/7z8nkrz.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'47', 54, N'Thai Pineapple Rice', N'Rice', N'Curry sauce, Pineapple, Cashews, Peas, Corn Grains, Green Onions, Carrots and Red Cabbage. Served with Soy Sauce.', N'https://i.hizliresim.com/ap1njnr.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'48', 11, N'Tamago', N'Nigiri', N'Omelet is served with Soy Sauce, Wasabi and Ginger Pickles.', N'https://i.hizliresim.com/r5fgklj.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'49', 15, N'Kani', N'Nigiri', N'Served with Surimi, Soy Sauce, Wasabi and Ginger Pickles.', N'https://i.hizliresim.com/fjyq267.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'50', 19, N'Maguro', N'Nigiri', N'Served with Tuna, Soy Sauce, Wasabi and Ginger Pickles.', N'https://i.hizliresim.com/51jy1wx.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'51', 23, N'Toro', N'Nigiri', N'Oily Tone. Served with Soy Sauce, Wasabi and Ginger Pickles.', N'https://i.hizliresim.com/nh2f8u6.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'52', 17, N'Suzuki', N'Nigiri', N'Sea bass. Served with Soy Sauce, Wasabi and Ginger Pickles.', N'https://i.hizliresim.com/i93277l.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'53', 19, N'Sake', N'Nigiri', N'Salmon. Served with Soy Sauce, Wasabi and Ginger Pickles.', N'https://i.hizliresim.com/di1kbzx.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'54', 18, N'Ebi', N'Nigiri', N'Shrimp. Served with Soy Sauce, Wasabi and Ginger Pickles.', N'https://i.hizliresim.com/fqy86hm.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'55', 32, N'Unagi', N'Nigiri', N'The eel. Served with Soy Sauce, Teriyaki Sauce, Wasabi and Ginger Pickles.', N'https://i.hizliresim.com/tkatdwi.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'56', 35, N'Cucumber Kappa Roll(6 pieces)', N'SushiRolls', N'Served with Soy Sauce, Wasabi and Ginger Pickles.', N'https://i.hizliresim.com/s64jpbl.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'57', 39, N'Avocado Takuan Roll(6 pieces)', N'SushiRolls', N'Japanese Radish and Avocado. Served with Soy Sauce, Wasabi and Ginger Pickles.', N'https://i.hizliresim.com/hryid6o.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'58', 50, N'Maguro Roll(6 pieces)', N'SushiRolls', N'Ton. Served with Soy Sauce, Wasabi and Ginger Pickles.', N'https://i.hizliresim.com/2d6q8uy.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'59', 52, N'Toro Roll(6 pieces)', N'SushiRolls', N'Oily Tone. Served with Soy Sauce, Wasabi and Ginger Pickles.', N'https://i.hizliresim.com/kempcwl.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'60', 50, N'Kani Roll(6 pieces)', N'SushiRolls', N'Surimi. Served with Soy Sauce, Wasabi and Ginger Pickles.', N'https://i.hizliresim.com/ohwl4a3.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'61', 52, N'Sake Roll(6 pieces)', N'SushiRolls', N'Salmon. Served with Soy Sauce, Wasabi and Ginger Pickles.', N'https://i.hizliresim.com/6c4f0o5.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'62', 68, N'Unagi Roll(6 pieces)', N'SushiRolls', N'The eel. Served with Soy Sauce, Teriyaki Sauce, Wasabi and Ginger Pickles.', N'https://i.hizliresim.com/h3mx5mv.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'63', 45, N'Saba Roll(6 pieces)', N'SushiRolls', N'Mackerel. Served with Soy Sauce, Wasabi and Ginger Pickles.', N'https://i.hizliresim.com/3fop6iv.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'64', 55, N'Veggie Roll(6 pieces)', N'SushiRolls', N'Avocado, Carrot, Cucumber, Asparagus, Curly, Sesame Outside. Served with Soy Sauce, Wasabi and Ginger Pickles.', N'https://i.hizliresim.com/248kvow.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'65', 11, N'Tamago Sashimi(4 pieces)', N'Sashimi', N'Omelet. Served with Soy Sauce, Wasabi and Ginger Pickles.', N'https://i.hizliresim.com/17x2fn2.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'66', 15, N'Saba Sashimi(4 pieces)', N'Sashimi', N'Mackerel. Served with Soy Sauce, Wasabi and Ginger Pickles.', N'https://i.hizliresim.com/rhf0n5v.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'67', 19, N'Maguro Sashimi(4 pieces)', N'Sashimi', N'Tuna. Served with Soy Sauce, Wasabi and Ginger Pickles.', N'https://i.hizliresim.com/log3mot.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'68', 23, N'Toro Sashimi(4 pieces)', N'Sashimi', N'Oily tuna. Served with Soy Sauce, Wasabi and Ginger Pickles.', N'https://i.hizliresim.com/j4qow7u.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'69', 17, N'Suzuki Sashimi(4 pieces)', N'Sashimi', N'Sea bass. Served with Soy Sauce, Wasabi and Ginger Pickles.', N'https://i.hizliresim.com/my72e2o.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'70', 19, N'Sake Sashimi(4 pieces)', N'Sashimi', N'Salmon. Served with Soy Sauce, Wasabi and Ginger Pickles.', N'https://i.hizliresim.com/oqaqrqe.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'71', 18, N'Ebi Sashimi(4 pieces)', N'Sashimi', N'Shrimp. Served with Soy Sauce, Wasabi and Ginger Pickles.', N'https://i.hizliresim.com/qoy1qix.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'72', 32, N'Unagi Sashimi(4 pieces)', N'Sashimi', N'The eel. Served with Soy Sauce, Teriyaki Sauce, Wasabi and Ginger Pickles.', N'https://i.hizliresim.com/8xdurdd.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'73', 71, N'California Roll(8 pieces)', N'SpecialRoll', N'Surimi Crab, Avocado, Cucumber, Mayonnaise, Curly, Tobiko Outside. Served with Soy Sauce, Wasabi and Ginger Pickles.', N'https://i.hizliresim.com/ss771dn.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'74', 71, N'Philadelphia Roll(8 pieces)', N'SpecialRoll', N'Salmon, Lettuce, Cucumber, Cream Cheese, Sesame Outside. Served with Soy Sauce, Wasabi and Ginger Pickles.', N'https://i.hizliresim.com/rk55yul.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'75', 71, N'Canadian Roll(6 pieces)', N'SpecialRoll', N'Surimi Crab, Cucumber, Salmon Outside. Served with Soy Sauce, Wasabi and Ginger Pickles.', N'https://i.hizliresim.com/xccq5oh.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'76', 67, N'Crunchy Roll(5 pieces)', N'SpecialRoll', N'Crab Salad, Mayonnaise, Outside Tobiko. Served with Soy Sauce, Wasabi and Ginger Pickles.', N'https://i.hizliresim.com/b1hj9z5.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'77', 68, N'Rainbow Roll(6 pieces)', N'SpecialRoll', N'Surimi Crab, Cucumber, Salmon Outside, Avocado, Tuna Fish, Sea Bass. Served with Soy Sauce, Wasabi and Ginger Pickles.', N'https://i.hizliresim.com/758boy8.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'78', 85, N'Boston Roll(6 pieces)', N'CookedRoll', N'Eel, Avocado, Cream Cheese, Avocado Outside. Served with Soy Sauce, Teriyaki Sauce, Wasabi and Ginger Pickles.', N'https://i.hizliresim.com/judrivy.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'79', 93, N'Dragon Roll(6 pieces)', N'CookedRoll', N'Avocado, Cucumber, Eel Outside. Served with Soy Sauce, Teriyaki Sauce, Wasabi and Ginger Pickles.', N'https://i.hizliresim.com/opiejox.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'80', 69, N'Tokyo Drift Roll(8 pieces)', N'CookedRoll', N'Fried Salmon, Mayonnaise, Avocado, Cucumber, Masago, Crispy Potatoes. Served with Soy Sauce, Teriyaki Sauce, Wasabi and Ginger Pickles.', N'https://i.hizliresim.com/ff3yqn4.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'81', 69, N'Chicken Teriyaki Roll(8 pieces)', N'CookedRoll', N'Fried Tempura Chicken, Mayonnaise, White Cabbage, Outside Sesame, Crispy Onion, Teriyaki Sauce.', N'https://i.hizliresim.com/q62krkr.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'82', 35, N'Fried Vanilla Ice Cream', N'Desserts', N'It is served with honey.', N'https://i.hizliresim.com/qtx5zzp.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'83', 37, N'Fried Banana', N'Desserts', N'It is served with honey.', N'https://i.hizliresim.com/145hb7c.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'84', 38, N'Fried Cinnamon Pineapple', N'Desserts', N'It is served with honey.', N'https://i.hizliresim.com/87izmu4.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'85', 36, N'Fried Walnut', N'Desserts', N'It is not served with sauce.', N'https://i.hizliresim.com/3pm5qv0.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'86', 10, N'Coca-Cola', N'Drinks', N' ', N'https://i.hizliresim.com/igwgnvi.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'87', 10, N'Coca-Cola Zero Sugar', N'Drinks', N' ', N'https://i.hizliresim.com/ssgv2je.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'88', 10, N'Fanta', N'Drinks', N' ', N'https://i.hizliresim.com/kivgoei.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'89', 10, N'Sprite', N'Drinks', N' ', N'https://i.hizliresim.com/ovixrhs.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'90', 8, N'Fuse Tea Lemon', N'Drinks', N' ', N'https://i.hizliresim.com/csu3cgu.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'91', 10, N'Fuse Tea Peach', N'Drinks', N' ', N'https://i.hizliresim.com/a4aye1a.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'92', 28, N'Kombucha Vitruvius Ginger', N'Drinks', N' ', N'https://i.hizliresim.com/rmyctc9.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'93', 28, N'Kombucha Vitruvius Hibiskus', N'Drinks', N' ', N'https://i.hizliresim.com/itmv9hy.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'94', 10, N'Schweppes', N'Drinks', N' ', N'https://i.hizliresim.com/amq5iv4.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'95', 8, N'Spring Water', N'Drinks', N' ', N'https://i.hizliresim.com/hks7xf1.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'96', 425, N'60 Pieces Sushi', N'SpecialSets', N'60 Pieces/ Kani Roll 6, Sake Roll 6, Maguro Roll 6, Kappa Roll 6, California Roll 8, Canadian Roll 6, Rainbow Roll 6, Crunchy Roll 5, Spicy Maguro Avocado Roll 6, Manhattan Roll 5 + 2 Edamame. Served with Himalayan Salt, Wasabi, Pickled Ginger, Soy Sauce.', N'https://i.hizliresim.com/fvmyn6p.jpg')
INSERT [dbo].[Menu] ([FoodId], [Price], [FoodName], [Catagory], [About], [Image]) VALUES (N'97', 269, N'39 Pieces Sushi', N'SpecialSets', N'39 Pieces/ California Roll 6 / Sesame Maki Roll 6 / Canadian Roll 6 / Kappa Roll 6 / Sake Roll 6 / Tamago Nigiri 3 / Suzuki Nigiri 3 / Kani Nigiri 3 + 2 Pieces Soft Drink', N'https://i.hizliresim.com/tk4jj1m.jpg')
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderId], [CustomerInfo], [OrderInfo], [OrderPrice]) VALUES (1, N'reha bugrahan ozel', N'bi bucuk adana', 50)
INSERT [dbo].[Order] ([OrderId], [CustomerInfo], [OrderInfo], [OrderPrice]) VALUES (2, N'reha ozel / bugrahanozel1996@gmail.com / 05370278505 / kurucesme mah. izmir/turkey / dfsdfbgdsfhsdfghsdh', N'/Shirimp Pad Thai Soup-1', 57)
INSERT [dbo].[Order] ([OrderId], [CustomerInfo], [OrderInfo], [OrderPrice]) VALUES (3, N'reha ozel / bugrahanozel1996@gmail.com / 05370278505 / kurucesme mah. izmir/turkey / asdgadsfbadfghbasdfhasdh', N'/Kimchi-1', 30)
INSERT [dbo].[Order] ([OrderId], [CustomerInfo], [OrderInfo], [OrderPrice]) VALUES (4, N'reha ozel / bugrahanozel1996@gmail.com / 05370278505 / kurucesme mah. izmir/turkey / sdgasdfghasdfhsdhfsd', N'/Edamame-1', 30)
INSERT [dbo].[Order] ([OrderId], [CustomerInfo], [OrderInfo], [OrderPrice]) VALUES (5, N'reha ozel / bugrahanozel1996@gmail.com / 05370278505 / kurucesme mah. izmir/turkey / Hemen gelirse sevinirim.', N'/Edamame-1/Sweet Chili Chicken-1', 101)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Payment] FOREIGN KEY([PaymentId])
REFERENCES [dbo].[Payment] ([PaymentId])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Payment]
GO
USE [master]
GO
ALTER DATABASE [RestourantManagementSys] SET  READ_WRITE 
GO
