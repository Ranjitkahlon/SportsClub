SET IDENTITY_INSERT [dbo].[Member] ON 
INSERT [dbo].[Member] ([id], [Name], [Email], [Contact], [plan]) VALUES (1, N'Gur', N'gur@gmail.com', N'6198951989', N'Jogging')
INSERT [dbo].[Member] ([id], [Name], [Email], [Contact], [plan]) VALUES (2, N'happy', N'happy@gmail.com', N'6468416589', N'Playing')
SET IDENTITY_INSERT [dbo].[Member] OFF
SET IDENTITY_INSERT [dbo].[Payment] ON 
INSERT [dbo].[Payment] ([id], [Name], [payment], [paymentDate]) VALUES (1, N'Happy', N'52', N'23/02/2020')
INSERT [dbo].[Payment] ([id], [Name], [payment], [paymentDate]) VALUES (2, N'Gur', N'656', N'22/02/2020')
SET IDENTITY_INSERT [dbo].[Payment] OFF
SET IDENTITY_INSERT [dbo].[Plan] ON 
INSERT [dbo].[Plan] ([id], [planType], [Duration], [Price]) VALUES (1, N'Playing', N'2 months', N'230')
INSERT [dbo].[Plan] ([id], [planType], [Duration], [Price]) VALUES (2, N'Jogging', N'6 months', N'560')
SET IDENTITY_INSERT [dbo].[Plan] OFF
