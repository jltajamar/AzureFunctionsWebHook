CREATE TABLE [dbo].[ClientesMonedas](
	[Cliente_Id] [int] NOT NULL PRIMARY KEY,
	[Nombre] [nvarchar](50) NULL,
	[Apellidos] [nvarchar](50) NULL,
	[Fecha_Nacimiento] [datetime] NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
)
GO
CREATE TABLE [dbo].[Monedas](
	[Id] [int] NOT NULL PRIMARY KEY,
	[Pais] [nvarchar](50) NULL,
	[Anyo] [int] NULL,
	[Descripcion] [nvarchar](25) NULL,
	[Precio] [int] NULL,
	[Foto] [nvarchar](550) NULL,
	[Direccion] [nvarchar](50) NULL,
	[Telefono] [int] NULL)
GO
CREATE TABLE [dbo].[Pedidos](
	[Id] [int] NOT NULL PRIMARY KEY,
	[Cliente_Id] [int] NULL,
	[Moneda_Id] [int] NULL,
	[Unidades] [int] NULL,
	[Fecha] [datetime] NULL)
GO
INSERT [dbo].[ClientesMonedas] ([Cliente_Id], [Nombre], [Apellidos], [Fecha_Nacimiento], [UserName], [Password]) VALUES (1, N'Luis', N'Alcazar Robledo', '04/05/1976', N'luis123', N'123')
INSERT [dbo].[ClientesMonedas] ([Cliente_Id], [Nombre], [Apellidos], [Fecha_Nacimiento], [UserName], [Password]) VALUES (2, N'Sergio', N'Torres López', '10/10/1985', N'sergio123', N'123')
INSERT [dbo].[ClientesMonedas] ([Cliente_Id], [Nombre], [Apellidos], [Fecha_Nacimiento], [UserName], [Password]) VALUES (3, N'Diana', N'Paola Pardo', '10/08/1983', N'diana123', N'123')
INSERT [dbo].[ClientesMonedas] ([Cliente_Id], [Nombre], [Apellidos], [Fecha_Nacimiento], [UserName], [Password]) VALUES (4, N'Lucia', N'Ramos García', '07/04/1949', N'lucia123', N'123')
INSERT [dbo].[ClientesMonedas] ([Cliente_Id], [Nombre], [Apellidos], [Fecha_Nacimiento], [UserName], [Password]) VALUES (5, N'Adrian', N'Serrano Ramos', '11/05/1956', N'adrian123', N'123')
INSERT [dbo].[ClientesMonedas] ([Cliente_Id], [Nombre], [Apellidos], [Fecha_Nacimiento], [UserName], [Password]) VALUES (6, N'Antonio', N'Bellón Agudo', '12/07/1993', N'antonio123', N'123')
INSERT [dbo].[ClientesMonedas] ([Cliente_Id], [Nombre], [Apellidos], [Fecha_Nacimiento], [UserName], [Password]) VALUES (7, N'Oscar', N'Ford Fairlane', '04/04/1976', N'oscar123', N'123')
INSERT [dbo].[ClientesMonedas] ([Cliente_Id], [Nombre], [Apellidos], [Fecha_Nacimiento], [UserName], [Password]) VALUES (8, N'Pedro', N'Casales', '02/11/1979', N'pedro123', N'123')
INSERT [dbo].[Monedas] ([Id], [Pais], [Anyo], [Descripcion], [Precio], [Foto], [Direccion], [Telefono]) VALUES (1, N'España', 1868, N'20 Céntimos Isabel II', 1500, N'http://i.ebayimg.com/00/s/MTA2NlgxNjAw/z/gMoAAOSw241Yhgcq/$_35.JPG', N'Colegiata', 914293471)
INSERT [dbo].[Monedas] ([Id], [Pais], [Anyo], [Descripcion], [Precio], [Foto], [Direccion], [Telefono]) VALUES (2, N'España', 1858, N'20 Reales Isabel II', 5000, N'http://1.bp.blogspot.com/-2ZuE00QwK9A/UulWiDsHtcI/AAAAAAAABhk/iMWhscJYt-I/s1600/20+reales.jpg', N'Colegiata', 914293471)
INSERT [dbo].[Monedas] ([Id], [Pais], [Anyo], [Descripcion], [Precio], [Foto], [Direccion], [Telefono]) VALUES (3, N'España', 1934, N'25 Céntimos Republica', 350, N'http://farm9.staticflickr.com/8042/8036044442_638fa3d640.jpg', N'Colegiata', 914293471)
INSERT [dbo].[Monedas] ([Id], [Pais], [Anyo], [Descripcion], [Precio], [Foto], [Direccion], [Telefono]) VALUES (4, N'España', 1937, N'2 Pesetas Euzkadi', 400, N'http://i.ebayimg.com/00/s/MTYwMFgxNTIy/z/wzIAAOSwYIxX~oSH/$_35.JPG', N'Serrano', 676852852)
INSERT [dbo].[Monedas] ([Id], [Pais], [Anyo], [Descripcion], [Precio], [Foto], [Direccion], [Telefono]) VALUES (5, N'España', 1871, N'Duro Amadeo Saboya', 1500, N'http://i44.tinypic.com/mm3cyf.jpg', N'Reina Victoria', 616545454)
INSERT [dbo].[Monedas] ([Id], [Pais], [Anyo], [Descripcion], [Precio], [Foto], [Direccion], [Telefono]) VALUES (6, N'España', 1776, N'8 Escudos Carlos III', 10000, N'https://en.numista.com/catalogue/photos/espagne/g1355.jpg', N'Serrano', 676852852)
INSERT [dbo].[Monedas] ([Id], [Pais], [Anyo], [Descripcion], [Precio], [Foto], [Direccion], [Telefono]) VALUES (7, N'España', 1779, N'8 Maravedies Carlos III', 1750, N'http://www.vtraquevnum.com/24-large_default/8-maravedis-carlos-iii-1775-segovia.jpg', N'Reina Victoria', 616545454)
INSERT [dbo].[Monedas] ([Id], [Pais], [Anyo], [Descripcion], [Precio], [Foto], [Direccion], [Telefono]) VALUES (8, N'España', 1898, N'Duro Alfonso XIII', 1500, N'http://www.keecua.com/ofertas/images/auctions/20100714/4c3e1527b8f6f1.22105231.JPG', N'Colegiata', 914293471)
INSERT [dbo].[Monedas] ([Id], [Pais], [Anyo], [Descripcion], [Precio], [Foto], [Direccion], [Telefono]) VALUES (9, N'EEUU', 1951, N'Medio Dollar', 450, N'http://i.ebayimg.com/00/s/NzIxWDY3Mw==/z/dG4AAOSwFdtX0e-w/$_1.JPG', N'Serrano', 676852852)
INSERT [dbo].[Monedas] ([Id], [Pais], [Anyo], [Descripcion], [Precio], [Foto], [Direccion], [Telefono]) VALUES (10, N'Italia', 1949, N'1 Lira Republica', 375, N'https://http2.mlstatic.com/D_Q_NP_486405-MLA20865544843_082016-H.jpg', N'Colegiata', 914293471)
INSERT [dbo].[Monedas] ([Id], [Pais], [Anyo], [Descripcion], [Precio], [Foto], [Direccion], [Telefono]) VALUES (11, N'EEUU', 1914, N'Cuarto Dollar', 600, N'http://i.ebayimg.com/images/g/VCEAAOxyOlhSxIa-/s-l300.jpg', N'Reina Victoria', 616545454)
INSERT [dbo].[Monedas] ([Id], [Pais], [Anyo], [Descripcion], [Precio], [Foto], [Direccion], [Telefono]) VALUES (12, N'Italia', 1942, N'2 Liras Republica', 325, N'http://i.ucoin.net/coin/9/885/9885414-2/italy-2-lire-1914.jpg', N'Serrano', 676852852)
INSERT [dbo].[Monedas] ([Id], [Pais], [Anyo], [Descripcion], [Precio], [Foto], [Direccion], [Telefono]) VALUES (13, N'España', 1693, N'Felipe III', 2100, N'http://i47.servimg.com/u/f47/12/37/77/52/p1013610.jpg', N'Serrano', 676852852)
INSERT [dbo].[Monedas] ([Id], [Pais], [Anyo], [Descripcion], [Precio], [Foto], [Direccion], [Telefono]) VALUES (14, N'España', 1740, N'Felipe V', 3500, N'http://cloud10.todocoleccion.online/monedas-espana/tc/2014/04/13/02/42809286.jpg', N'Colegiata', 914293471)
INSERT [dbo].[Monedas] ([Id], [Pais], [Anyo], [Descripcion], [Precio], [Foto], [Direccion], [Telefono]) VALUES (15, N'España', 1821, N'8 Reales Fernando VII', 12000, N'http://www.numismaticasaetabis.com/upload/8R_1813_MADRID_IJ_CARA_LOCO.JPG', N'Colegiata', 914293471)
INSERT [dbo].[Monedas] ([Id], [Pais], [Anyo], [Descripcion], [Precio], [Foto], [Direccion], [Telefono]) VALUES (16, N'España', 1824, N'2 Maravedies Fernando VII', 800, N'http://www.monedalia.es/img/articulos/32696993_15344f92da993d.gif', N'Serrano', 676852852)
INSERT [dbo].[Monedas] ([Id], [Pais], [Anyo], [Descripcion], [Precio], [Foto], [Direccion], [Telefono]) VALUES (17, N'España', 1820, N'4 Escudos Fernando VII', 16000, N'http://www.fuenterrebollo.com/faqs-numismatica/ima103/1814-4escudos-fernando7.jpg', N'Colegiata', 914293471)
INSERT [dbo].[Monedas] ([Id], [Pais], [Anyo], [Descripcion], [Precio], [Foto], [Direccion], [Telefono]) VALUES (18, N'España', 1836, N'Cuarto Real Isabel II', 1600, N'http://www.monedalia.es/img/articulos/61073240.jpg', N'Reina Victoria', 616545454)
INSERT [dbo].[Monedas] ([Id], [Pais], [Anyo], [Descripcion], [Precio], [Foto], [Direccion], [Telefono]) VALUES (19, N'España', 1857, N'Real Isabel II', 1400, N'http://cloud10.todocoleccion.online/monedas-espana/tc/2015/03/23/21/48504161.jpg', N'Reina Victoria', 616545454)
INSERT [dbo].[Monedas] ([Id], [Pais], [Anyo], [Descripcion], [Precio], [Foto], [Direccion], [Telefono]) VALUES (20, N'España', 1836, N'8 Maravedies Isabel II', 2000, N'http://blognumismatico.com/wp-content/uploads/2013/09/0085-1024x512.jpg',  N'Serrano', 676852852)
INSERT [dbo].[Monedas] ([Id], [Pais], [Anyo], [Descripcion], [Precio], [Foto], [Direccion], [Telefono]) VALUES (21, N'Italia', 1900, N'5 Liras', 1000, N'https://www.kuenker.de/img/00079/02381q00.jpg', N'Reina Victoria', 616545454)
INSERT [dbo].[Monedas] ([Id], [Pais], [Anyo], [Descripcion], [Precio], [Foto], [Direccion], [Telefono]) VALUES (22, N'España', 1868, N'4 Reales Vellón Isabel II', 1100, N'http://www.reocities.com/aberraman/Isab2/R4a.JPG', N'Colegiata', 914293471)
INSERT [dbo].[Monedas] ([Id], [Pais], [Anyo], [Descripcion], [Precio], [Foto], [Direccion], [Telefono]) VALUES (23, N'España', 1853, N'Real Isabel II', 1250, N'https://www.bidtobid.com/uploads/monedas_MES347a.jpg', N'Serrano', 676852852)
INSERT [dbo].[Monedas] ([Id], [Pais], [Anyo], [Descripcion], [Precio], [Foto], [Direccion], [Telefono]) VALUES (24, N'España', 1975, N'Medalla', 2000, N'http://cloud10.todocoleccion.online/medallas-tematicas/tc/2014/01/21/16/41114047.jpg', N'Colegiata', 914293471)
INSERT [dbo].[Monedas] ([Id], [Pais], [Anyo], [Descripcion], [Precio], [Foto], [Direccion], [Telefono]) VALUES (25, N'España', 1980, N'Duro Juan Carlos I', 750, N'http://i41.tinypic.com/2mrfwc3.jpg', N'Reina Victoria', 616545454)
INSERT [dbo].[Monedas] ([Id], [Pais], [Anyo], [Descripcion], [Precio], [Foto], [Direccion], [Telefono]) VALUES (26, N'España', 1850, N'1 Pesetal Isabel II', 1900, N'http://i.ebayimg.com/thumbs/images/g/yN8AAOSwnONZDvZq/s-l225.jpg', N'Reina Victoria', 616545454)
INSERT [dbo].[Monedas] ([Id], [Pais], [Anyo], [Descripcion], [Precio], [Foto], [Direccion], [Telefono]) VALUES (27, N'EEUU', 1891, N'1 Dólar de Plata', 1000, N'http://blob.todoexpertos.com/uploads/md/4725f51e4296b7d4780230a6d16de65d.jpg', N'Serrano', 616545454)
INSERT [dbo].[Monedas] ([Id], [Pais], [Anyo], [Descripcion], [Precio], [Foto], [Direccion], [Telefono]) VALUES (28, N'EEUU', 1994, N'1 Dólar del Mundial Futbo', 75, N'http://www.numismaticapeiro.net/images/1%20dolar%20Mundial%20Futbol%201994.jpg', N'Serrano', 616545454)
INSERT [dbo].[Pedidos] ([Id], [Cliente_Id], [Moneda_Id], [Unidades], [Fecha]) VALUES (1, 1, 1, 5, CAST(N'2008-03-19T00:00:00.000' AS DateTime))
INSERT [dbo].[Pedidos] ([Id], [Cliente_Id], [Moneda_Id], [Unidades], [Fecha]) VALUES (2, 1, 2, 2, CAST(N'2008-03-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Pedidos] ([Id], [Cliente_Id], [Moneda_Id], [Unidades], [Fecha]) VALUES (3, 1, 3, 7, CAST(N'2007-03-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Pedidos] ([Id], [Cliente_Id], [Moneda_Id], [Unidades], [Fecha]) VALUES (4, 1, 7, 1, CAST(N'2007-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Pedidos] ([Id], [Cliente_Id], [Moneda_Id], [Unidades], [Fecha]) VALUES (5, 4, 20, 4, CAST(N'2005-07-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Pedidos] ([Id], [Cliente_Id], [Moneda_Id], [Unidades], [Fecha]) VALUES (6, 4, 19, 6, CAST(N'2005-09-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Pedidos] ([Id], [Cliente_Id], [Moneda_Id], [Unidades], [Fecha]) VALUES (7, 5, 5, 5, CAST(N'2003-09-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Pedidos] ([Id], [Cliente_Id], [Moneda_Id], [Unidades], [Fecha]) VALUES (8, 6, 22, 3, CAST(N'2009-08-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Pedidos] ([Id], [Cliente_Id], [Moneda_Id], [Unidades], [Fecha]) VALUES (9, 3, 5, 1, CAST(N'2006-06-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Pedidos] ([Id], [Cliente_Id], [Moneda_Id], [Unidades], [Fecha]) VALUES (10, 2, 14, 3, CAST(N'2003-12-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Pedidos] ([Id], [Cliente_Id], [Moneda_Id], [Unidades], [Fecha]) VALUES (11, 2, 12, 4, CAST(N'2006-12-19T00:00:00.000' AS DateTime))
INSERT [dbo].[Pedidos] ([Id], [Cliente_Id], [Moneda_Id], [Unidades], [Fecha]) VALUES (12, 5, 16, 10, CAST(N'2006-08-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Pedidos] ([Id], [Cliente_Id], [Moneda_Id], [Unidades], [Fecha]) VALUES (13, 7, 18, 6, CAST(N'2004-04-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Pedidos] ([Id], [Cliente_Id], [Moneda_Id], [Unidades], [Fecha]) VALUES (14, 7, 25, 5, CAST(N'2006-04-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Pedidos] ([Id], [Cliente_Id], [Moneda_Id], [Unidades], [Fecha]) VALUES (15, 7, 27, 15, CAST(N'2007-04-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Pedidos] ([Id], [Cliente_Id], [Moneda_Id], [Unidades], [Fecha]) VALUES (16, 3, 13, 2, CAST(N'2002-12-30T00:00:00.000' AS DateTime))
INSERT [dbo].[Pedidos] ([Id], [Cliente_Id], [Moneda_Id], [Unidades], [Fecha]) VALUES (17, 3, 25, 8, CAST(N'2001-07-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Pedidos] ([Id], [Cliente_Id], [Moneda_Id], [Unidades], [Fecha]) VALUES (18, 5, 9, 3, CAST(N'2001-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Pedidos] ([Id], [Cliente_Id], [Moneda_Id], [Unidades], [Fecha]) VALUES (19, 5, 7, 7, CAST(N'2008-05-07T00:00:00.000' AS DateTime))

