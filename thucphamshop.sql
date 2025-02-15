USE [ShopThucPham]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 12/4/2022 8:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 12/4/2022 8:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FromUserID] [int] NULL,
	[ToUserID] [int] NULL,
	[Content] [nvarchar](500) NULL,
	[CreatedDate] [datetime] NULL,
	[Send] [bit] NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 12/4/2022 8:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[ProductName] [nvarchar](50) NULL,
	[ProductPrice] [int] NULL,
	[Quantity] [int] NULL,
	[OrderID] [int] NULL,
	[ProductImage] [nvarchar](500) NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 12/4/2022 8:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[Status] [nvarchar](50) NULL,
	[DateOrder] [datetime] NULL,
	[DateShip] [datetime] NULL,
	[IsPaid] [bit] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 12/4/2022 8:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Price] [int] NULL,
	[CreatedBy] [int] NULL,
	[ViewCount] [int] NULL,
	[Image1] [nvarchar](500) NULL,
	[Image2] [nvarchar](500) NULL,
	[Image3] [nvarchar](500) NULL,
	[Quantity] [int] NULL,
	[PurchasedCount] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[CategoryID] [int] NULL,
	[Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 12/4/2022 8:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nchar](12) NULL,
	[UserTypeID] [int] NULL,
	[Password] [nvarchar](50) NULL,
	[Avatar] [nvarchar](50) NULL,
	[Address] [nvarchar](500) NULL,
	[IsConfirm] [bit] NULL,
	[Captcha] [nvarchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 12/4/2022 8:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([ID], [Name], [IsActive]) VALUES (1006, N'Trứng Gia Cầm', 1)
INSERT [dbo].[Categories] ([ID], [Name], [IsActive]) VALUES (1007, N'Rau Củ Quả', 1)
INSERT [dbo].[Categories] ([ID], [Name], [IsActive]) VALUES (1008, N'Thịt Tươi Sống', 1)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Message] ON 

INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Send]) VALUES (29, 2, 1, N'hi shop', CAST(N'2022-07-26T15:08:39.133' AS DateTime), 1)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Send]) VALUES (30, 2, 1, N'ấd', CAST(N'2022-07-26T15:08:49.193' AS DateTime), 1)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Send]) VALUES (31, 4, 1, N'hi shop', CAST(N'2022-07-28T20:57:06.260' AS DateTime), 1)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Send]) VALUES (32, 1, 4, N'chào bạn', CAST(N'2022-07-28T20:57:21.300' AS DateTime), 1)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Send]) VALUES (33, 4, 1, N'aaaaaaaaaaa', CAST(N'2022-07-28T20:57:27.650' AS DateTime), 1)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Send]) VALUES (34, 3, 1, N'ryut', CAST(N'2022-08-16T21:06:29.320' AS DateTime), 1)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Send]) VALUES (35, 3, 1, N'fgedfg', CAST(N'2022-08-16T21:06:35.967' AS DateTime), 1)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Send]) VALUES (36, 3, 1, N'asdasd', CAST(N'2022-08-16T21:06:38.037' AS DateTime), 1)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Send]) VALUES (37, 3, 1, N'dd', CAST(N'2022-08-16T21:07:04.450' AS DateTime), 1)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Send]) VALUES (38, 3, 1, N'oo', CAST(N'2022-08-16T21:09:04.690' AS DateTime), 1)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Send]) VALUES (39, 2, 1, N'dsa', CAST(N'2022-08-26T09:52:39.307' AS DateTime), 1)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Send]) VALUES (40, 2, 1, N'fdbdbf', CAST(N'2022-08-26T09:52:43.117' AS DateTime), 1)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Send]) VALUES (41, 2, 1, N'ewr', CAST(N'2022-08-26T09:52:46.790' AS DateTime), 1)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Send]) VALUES (42, 3, 1, N'htrh', CAST(N'2022-09-17T19:00:29.157' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Message] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([ID], [ProductID], [ProductName], [ProductPrice], [Quantity], [OrderID], [ProductImage]) VALUES (9, 1, N'Face Jack Black Double-Duty Face', 28, 1, 9, N'71bJ8sbepzL._SX522_.jpg')
INSERT [dbo].[OrderDetails] ([ID], [ProductID], [ProductName], [ProductPrice], [Quantity], [OrderID], [ProductImage]) VALUES (10, 2, N'PCA SKIN Purifying Skin Care Face Mask', 50, 1, 10, N'61-cF2l6m2L._SY679_.jpg')
INSERT [dbo].[OrderDetails] ([ID], [ProductID], [ProductName], [ProductPrice], [Quantity], [OrderID], [ProductImage]) VALUES (12, 1, N'Face Jack Black Double-Duty Face', 28, 1, 12, N'71bJ8sbepzL._SX522_.jpg')
INSERT [dbo].[OrderDetails] ([ID], [ProductID], [ProductName], [ProductPrice], [Quantity], [OrderID], [ProductImage]) VALUES (13, 1, N'Face Jack Black Double-Duty Face', 28, 1, 13, N'71bJ8sbepzL._SX522_.jpg')
INSERT [dbo].[OrderDetails] ([ID], [ProductID], [ProductName], [ProductPrice], [Quantity], [OrderID], [ProductImage]) VALUES (14, 4, N'Cam sành (1Kg)', 28000, 2, 14, N'cam-sanh-loai-1kg.jpg')
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([ID], [UserID], [Status], [DateOrder], [DateShip], [IsPaid]) VALUES (7, 3, N'Complete', CAST(N'2022-09-18T17:59:08.713' AS DateTime), CAST(N'2022-09-22T16:40:15.837' AS DateTime), 0)
INSERT [dbo].[Orders] ([ID], [UserID], [Status], [DateOrder], [DateShip], [IsPaid]) VALUES (8, 3, N'Complete', CAST(N'2022-09-18T17:59:12.723' AS DateTime), CAST(N'2022-09-22T16:40:17.763' AS DateTime), 0)
INSERT [dbo].[Orders] ([ID], [UserID], [Status], [DateOrder], [DateShip], [IsPaid]) VALUES (9, 3, N'Complete', CAST(N'2022-09-18T18:01:04.527' AS DateTime), CAST(N'2022-09-22T16:40:18.913' AS DateTime), 0)
INSERT [dbo].[Orders] ([ID], [UserID], [Status], [DateOrder], [DateShip], [IsPaid]) VALUES (10, 3, N'Complete', CAST(N'2022-09-18T18:05:00.083' AS DateTime), CAST(N'2022-09-22T16:40:20.010' AS DateTime), 0)
INSERT [dbo].[Orders] ([ID], [UserID], [Status], [DateOrder], [DateShip], [IsPaid]) VALUES (11, 3, N'Complete', CAST(N'2022-09-18T18:06:48.697' AS DateTime), CAST(N'2022-09-22T16:40:21.067' AS DateTime), 0)
INSERT [dbo].[Orders] ([ID], [UserID], [Status], [DateOrder], [DateShip], [IsPaid]) VALUES (12, 3, N'Complete', CAST(N'2022-09-18T18:10:25.793' AS DateTime), CAST(N'2022-09-22T16:40:22.113' AS DateTime), 0)
INSERT [dbo].[Orders] ([ID], [UserID], [Status], [DateOrder], [DateShip], [IsPaid]) VALUES (13, 3, N'Complete', CAST(N'2022-09-18T18:11:39.153' AS DateTime), CAST(N'2022-09-22T16:40:23.257' AS DateTime), 1)
INSERT [dbo].[Orders] ([ID], [UserID], [Status], [DateOrder], [DateShip], [IsPaid]) VALUES (14, 3, N'Processing', CAST(N'2022-12-04T20:43:06.443' AS DateTime), CAST(N'2022-12-07T20:43:06.443' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (1, N'Trứng gà CP loại 2', 36000, 1, 0, N'trung-ga-cp-loai-2-hop-10-trung.jpg', N'trung-ga-cp-loai-2-khay-10-trung-1099x800.jpg', N'trung-ga-cp-loai-2-khay-10-trung-an-toan-1099x800.jpg', 100, 10, N'Sỉ lẻ trứng gà CP loại 2 khay 10 trứng cam kết chất lượng trứng gà tươi 100%, an toàn kiểm định GMP
– Trứng gà CP loại 2 khay 10 trứng do Thực Phẩm Nhanh phân phối được lựa chọn từ những quả trứng gà tươi ngon, từ cơ sở trứng gia cầm sạch. Sản phẩm có nguồn gốc rõ ràng nên người tiêu dùng có thể hoàn toàn yên tâm khi sử dụng. Thực Phẩm Nhanh chuyên cung cấp các mặt hàng rau củ quả, trái cây tươi, thực phẩm tươi sống cùng các loại gia vị phụ gia cho các hộ gia đình, nhà hàng, khách sạn, bếp ăn công nghiệp trong TP. Hồ Chí Minh và các Tỉnh lân cận.', 1, 1006, N'Oliy')
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (2, N'Bắp cải trắng - 1kg', 24000, 1, 0, N'bap-cai-trang.jpg', N'bap-cai-trang-loai-1kg-chat-luong.jpg', N'bap-cai-trang-loai-1kg.jpg', 50, 3, N'Lợi ích cho sức khỏe của Bắp cải trắng
+ Giảm các dấu hiệu lão hóa
+ Chống lại các gốc tự do
+ Chữa lành vết thương
+ Tốt cho làn da
+ Chống viêm, giảm dị ứng
+ Ngăn ngừa ung thư
+ Tốt cho hệ tiêu hóa
+ Hỗ trợ giảm cân
+ Bảo vệ mắt
+ Tốt cho tóc
+ Cải thiện sức khỏe tim mạch
+ Tốt cho não
+ Giúp xương chắc khỏe
+ Điều hòa huyết áp
+ Tốt cho người bị đái tháo đường
+ Tốt cho người bị đái tháo đường
+ Tăng cường miễn dịch
+ Điều trị viêm loét dạ dày', 1, 1007, N'Combination')
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (3, N'Thịt heo xay CP – 300g', 34000, 1, 0, N'thit-heo-xay-cp-khay-300g.jpg', N'thit-heo-xay-cp-khay-300g-2.jpg', N'thit-heo-xay-cp-khay-300g (1).jpg', 200, 3, N'Lợi ích cho sức khỏe của Thịt heo xay CP
+ Tăng cường hệ miễn dịch
+ Cải thiện trí tuệ
+ Chống trầm cảm
+ Chống ung thư
+ Giảm ho và việc chữa trị táo bón
+ Duy trì cơ bắp', 1, 1008, N'Combination')
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (4, N'Cam sành (1Kg)', 28000, 1, 0, N'cam-sanh-loai-1kg.jpg', N'cam-sanh.jpg', N'cam-sanh-tuoi.jpg', 100, 5, N' Lợi ích cho sức khỏe của Cam sành
+ Tăng sức đề kháng cho cơ thể
+ Giúp cân bằng huyết áp
+ Điều hòa mức cholesterol và đường huyết cho cơ thể
+ Phòng chống ung thư
+ Trị chứng táo bón
+ Chữa lành các vết thương', 1, 1007, N'Combination')
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (5, N'Cải ngọt – Loại 1kg', 21000, 1, 0, N'cai-ngot.jpg', N'cai-ngot-loai-1kg-gia-tot.jpg', N'cai-ngot-loai-1kg.jpg', 10, 1, N'Lợi ích cho sức khỏe của Cải ngọt
+ Hỗ trợ điều trị bệnh Gout
+ Cung cấp khoáng chất cho người bị loãng xương
+ Ngăn ngừa ung thư hiệu quả', 1, 1007, N'Combination')
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (17, N'Rau nhút – Loại 1kg', 84000, 1, 0, N'rau-nhut-loai-1kg.jpg', N'rau-nhut-loai-1kg-gia-tot.jpg', N'rau-nhut-200g.jpg', 200, 1, N'Lợi ích cho sức khỏe của Rau nhút
+ Giàu chất chống oxy hóa
+ Ngăn ngừa tổn thương gan
+ Làm lành da
+ Kháng khuẩn và tiêu diệt các loại nấm có hại', 1, 1007, NULL)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [Name], [Email], [Phone], [UserTypeID], [Password], [Avatar], [Address], [IsConfirm], [Captcha]) VALUES (1, N'Admin', N'admin@gmail.com', N'1234567890  ', 1, N'123456', N'admin.jfif', N'Can Tho', NULL, NULL)
INSERT [dbo].[Users] ([ID], [Name], [Email], [Phone], [UserTypeID], [Password], [Avatar], [Address], [IsConfirm], [Captcha]) VALUES (2, N'Nguyễn Văn B', N'nvb@gmail.com', N'0907892198  ', 2, N'123456', N'user.jpg', N'Can Tho', NULL, NULL)
INSERT [dbo].[Users] ([ID], [Name], [Email], [Phone], [UserTypeID], [Password], [Avatar], [Address], [IsConfirm], [Captcha]) VALUES (3, N'Nguyen Van A', N'nva@gmail.com', N'1234567890  ', 2, N'123456', NULL, N'eeeeefdsf', NULL, NULL)
INSERT [dbo].[Users] ([ID], [Name], [Email], [Phone], [UserTypeID], [Password], [Avatar], [Address], [IsConfirm], [Captcha]) VALUES (4, N'Nguyen Nguyen', N'nguyen@gmail.com', N'1234567890  ', 2, N'123456', NULL, N'user.jpg', NULL, NULL)
INSERT [dbo].[Users] ([ID], [Name], [Email], [Phone], [UserTypeID], [Password], [Avatar], [Address], [IsConfirm], [Captcha]) VALUES (10, N'dsfsf', N'nlkhuong1800120@student.ctuet.edu.vn', N'123         ', 2, N'123', NULL, N'pr.jpg', 1, N'360551')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[UserType] ON 

INSERT [dbo].[UserType] ([ID], [Name]) VALUES (1, N'Admin')
INSERT [dbo].[UserType] ([ID], [Name]) VALUES (2, N'Client')
SET IDENTITY_INSERT [dbo].[UserType] OFF
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK__Message__FromUse__36B12243] FOREIGN KEY([FromUserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK__Message__FromUse__36B12243]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK__Message__ToUserI__37A5467C] FOREIGN KEY([ToUserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK__Message__ToUserI__37A5467C]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__Order__25869641] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([ID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK__OrderDeta__Order__25869641]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__Produ__24927208] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK__OrderDeta__Produ__24927208]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK__Products__Catego__239E4DCF] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK__Products__Catego__239E4DCF]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK__Products__Create__276EDEB3] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK__Products__Create__276EDEB3]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([UserTypeID])
REFERENCES [dbo].[UserType] ([ID])
GO
