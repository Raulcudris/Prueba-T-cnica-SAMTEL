USE [BdAcademia]
GO
/****** Object:  Table [dbo].[Estudiante]    Script Date: 24/09/2022 10:48:02 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estudiante](
	[Estudiante_Id] [int] IDENTITY(1,1) NOT NULL,
	[Tipo_Identificacion] [varchar](20) NOT NULL,
	[Numero_Identificacion] [varchar](100) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[Apellido] [varchar](200) NOT NULL,
	[Sexo] [varchar](10) NOT NULL,
	[Fecha_Nacimiento] [date] NOT NULL,
	[Direccion] [varchar](250) NULL,
	[Correo_Electronico] [varchar](200) NULL,
	[Telefono] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Estudiante] PRIMARY KEY CLUSTERED 
(
	[Estudiante_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materias]    Script Date: 24/09/2022 10:48:02 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materias](
	[Materia_Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](100) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[Descripcion] [varchar](250) NOT NULL,
 CONSTRAINT [PK_Materias] PRIMARY KEY CLUSTERED 
(
	[Materia_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notas]    Script Date: 24/09/2022 10:48:02 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notas](
	[Nota_Id] [int] IDENTITY(1,1) NOT NULL,
	[Profesor_Id] [int] NOT NULL,
	[Estudiante_Id] [int] NOT NULL,
	[Materia_Id] [int] NOT NULL,
	[Calificacion] [float] NOT NULL,
	[Descripcion] [varchar](100) NULL,
 CONSTRAINT [PK_Notas] PRIMARY KEY CLUSTERED 
(
	[Nota_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profesor]    Script Date: 24/09/2022 10:48:02 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profesor](
	[Profesor_Id] [int] IDENTITY(1,1) NOT NULL,
	[Tipo_Identificacion] [varchar](50) NOT NULL,
	[Numero_Identificacion] [varchar](100) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[Apellido] [varchar](200) NOT NULL,
	[Sexo] [varchar](10) NOT NULL,
	[Fecha_Nacimiento] [date] NOT NULL,
	[Direccion] [varchar](250) NOT NULL,
	[Correo_Electronico] [varchar](200) NOT NULL,
	[Telefono] [varchar](100) NULL,
 CONSTRAINT [PK_Profesor] PRIMARY KEY CLUSTERED 
(
	[Profesor_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Estudiante] ON 

INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (2, N'TI', N'49790257
', N'DENIS 
', N'SEPULVEDA 
', N'F', CAST(N'1993-09-18' AS Date), N'Calle16a 25-77
', N'denis@gmail.com
', N'3105533662
')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (41, N'TI', N'1065808524', N'RAUL', N'CUDRIS', N'M', CAST(N'1994-06-21' AS Date), N'Diag 18b 25 a 55', N'raulcudriz@hotmail.com', N'3006338759')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (92, N'TI', N'9406258415', N'JOSE ', N'SUAREZ', N'M', CAST(N'1995-12-30' AS Date), N'Calle 18c 36-66', N'jose@gmail.com', N'3126398789')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (93, N'TI', N'1063951509', N'VALENTINA', N'ACUÑA', N'M', CAST(N'2008-06-17' AS Date), N'Calle16a 25-77', N'valentina@gmail.com', N'3105533662')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (94, N'TI ', N'1067599189', N'NATHALIA', N'ROMERO', N'M', CAST(N'2007-01-01' AS Date), N'calle 17a 55-85', N'nathalia@gmail.com', N'3116357869')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (95, N'TI', N'1063953898', N'RONALD', N'BOHORQUEZ', N'M', CAST(N'2007-11-16' AS Date), N'calle 15a 66-33', N'ronald@gmail.com', N'3124547888')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (96, N'TI ', N'1063952096', N'ANDRES', N'GAMARRA', N'M', CAST(N'2005-05-20' AS Date), N'calle 12a 35-66', N'andres@gmail.com', N'3134494032')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (97, N'TI', N'1065591452', N'DANA', N'BIVANCO', N'M', CAST(N'2007-12-18' AS Date), N'Calle16a 25-78', N'dana@gmail.com', N'3144001145')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (98, N'TI ', N'1063948551', N'SEBASTIAN', N'GONZALEZ', N'M', CAST(N'2008-06-09' AS Date), N'calle 17a 55-86', N'sebastian@gmail.com', N'3153508258')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (99, N'TI', N'1067599928', N'MARIA', N'VILLALBA', N'M', CAST(N'2008-10-15' AS Date), N'calle 15a 66-34', N'maria@gmail.com', N'3163015371')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (100, N'TI ', N'1062354674', N'LUISA ', N'CHANCHILA', N'M', CAST(N'2007-01-16' AS Date), N'calle 12a 35-67', N'luisa@gmail.com', N'3172522484')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (101, N'TI', N'1067599376', N'JORGE', N'GARCIA', N'M', CAST(N'2006-09-14' AS Date), N'Calle16a 25-79', N'jorge@gmail.com', N'3182029597')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (102, N'TI ', N'1063954953', N'BLANCA ', N'MIER', N'M', CAST(N'2007-09-28' AS Date), N'calle 17a 55-87', N'blanca@gmail.com', N'3191536710')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (103, N'TI', N'1065610397', N'MARTHA', N'ACOSTA', N'M', CAST(N'2007-08-07' AS Date), N'calle 15a 66-35', N'martha@gmail.com', N'3201043823')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (104, N'TI ', N'32035240', N'SARAY', N'BARROS', N'F', CAST(N'2007-05-14' AS Date), N'calle 12a 35-68', N'saray@gfail.cof', N'3210550936')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (105, N'TI', N'1064556116', N'MILUSKA', N'MANCERA', N'F', CAST(N'2008-02-15' AS Date), N'Calle16a 25-80', N'miluska@gfail.cof', N'3220058049')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (106, N'TI ', N'1063953029', N'KANDRYS', N'SALGADO ', N'F', CAST(N'2007-09-05' AS Date), N'calle 17a 55-88', N'kandrys@gfail.cof', N'3229565162')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (107, N'TI', N'1063953960', N'YAIRA', N'OROZCO', N'F', CAST(N'2008-01-16' AS Date), N'calle 15a 66-36', N'yaira@gfail.cof', N'3239072275')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (108, N'TI ', N'1062354643', N'LUNA ', N'MARQUEZ', N'F', CAST(N'2008-10-20' AS Date), N'Calle16a 25-80', N'luna@gfail.cof', N'3248579388')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (109, N'TI', N'1081000650', N'DANNA', N'AVILES', N'F', CAST(N'2008-01-20' AS Date), N'calle 17a 55-88', N'danna@gfail.cof', N'3258086501')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (110, N'TI ', N'1062396380', N'VICTOR', N'BERRIO', N'M', CAST(N'2005-12-11' AS Date), N'calle 15a 66-36', N'victor@gmail.com', N'3267593614')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (111, N'TI', N'1063950807', N'LUISA ', N'URBINA ', N'F', CAST(N'2007-01-29' AS Date), N'calle 12a 35-69', N'luisa@gfail.cof', N'3277100727')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (112, N'TI ', N'1014665411', N'DILIADIS ', N'SAAVEDRA ', N'F', CAST(N'2008-03-29' AS Date), N'Calle16a 25-81', N'diliadis@gfail.cof', N'3286607840')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (113, N'TI', N'1063954479', N'JUAN', N'PEÑA', N'M', CAST(N'2006-02-09' AS Date), N'Dig 18b 25 a59', N'juan@gmail.com', N'3451587941')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (114, N'TI ', N'1064556144', N'EMILY', N'ARANA', N'F', CAST(N'2006-12-28' AS Date), N'Carrera 4 g 25-97', N'emily@gfail.cof', N'3466477286')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (115, N'TI', N'1063958254', N'MELISSA', N'GARCIA', N'F', CAST(N'2007-04-13' AS Date), N'Carrera 7 g 25-97', N'melissa@gfail.cof', N'3481366631')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (116, N'TI ', N'1066242162', N'ESTIBETH', N'MOVILLA', N'M', CAST(N'2007-01-21' AS Date), N'Diag 15b 23-70', N'estibeth@gmail.com', N'3496255976')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (117, N'TI', N'1063950227', N'JHOSUA', N'GOMEZ', N'M', CAST(N'2007-03-29' AS Date), N'calle 15c 24-70', N'jhosua@gmail.com', N'3511145321')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (118, N'TI ', N'1067595612', N'VANESSA', N'MONTAÑO', N'F', CAST(N'2004-09-14' AS Date), N'Dig 18b 25 a60', N'vanessa@gfail.cof', N'3526034666')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (119, N'TI', N'1066280117', N'KAROL', N'SAUMETH', N'F', CAST(N'2007-04-30' AS Date), N'Carrera 4 g 25-98', N'karol@gfail.cof', N'3540924011')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (120, N'TI ', N'1065985082', N'DANNA', N'GARCIA', N'F', CAST(N'2006-05-15' AS Date), N'Carrera 7 g 25-98', N'danna@gfail.cof', N'3555813356')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (121, N'TI', N'1064556126', N'IVAN', N'PEÑA', N'M', CAST(N'2007-07-25' AS Date), N'Diag 15b 23-71', N'ivan@gmail.com', N'3570702701')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (122, N'TI ', N'1063953716', N'JORGE', N'ACOSTA', N'M', CAST(N'2006-01-26' AS Date), N'calle 15c 24-71', N'jorge@gmail.com', N'3585592046')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (123, N'TI', N'1063950079', N'JESUS', N'OSPINO', N'M', CAST(N'2006-09-02' AS Date), N'Dig 18b 25 a61', N'jesus@gmail.com', N'3600481391')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (124, N'TI ', N'1063946776', N'DILAN', N'OROZCO', N'M', CAST(N'2006-08-09' AS Date), N'Carrera 4 g 25-99', N'dilan@gmail.com', N'3615370736')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (125, N'TI', N'1063955975', N'ANDREA', N'CARO', N'F', CAST(N'2006-04-18' AS Date), N'Carrera 7 g 25-99', N'andrea@gfail.cof', N'3630260081')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (126, N'TI ', N'1063965876', N'ANDRES', N'TEJADA', N'M', CAST(N'2006-01-07' AS Date), N'Diag 15b 23-72', N'andres@gmail.com', N'3645149426')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (127, N'TI', N'1003114696', N'MARIA', N'RADA', N'F', CAST(N'2004-12-09' AS Date), N'calle 15c 24-72', N'maria@gfail.cof', N'3660038771')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (128, N'TI ', N'1063949437', N'JUAN', N'MERIÑO', N'M', CAST(N'2006-10-23' AS Date), N'Dig 18b 25 a62', N'juan@gmail.com', N'3674928116')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (129, N'TI', N'1193302527', N'JHON', N'VILORIA', N'M', CAST(N'2005-07-16' AS Date), N'Carrera 4 g 25-100', N'jhon@gmail.com', N'3689817461')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (130, N'TI ', N'1133963344', N'ANDREA', N'GOMEZ', N'F', CAST(N'2006-09-15' AS Date), N'Carrera 7 g 25-100', N'andrea@gfail.cof', N'3704706806')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (131, N'TI', N'1150703571', N'LINDA ', N'BARRIOS', N'F', CAST(N'2007-07-06' AS Date), N'Diag 15b 23-73', N'linda@gfail.cof', N'3719596151')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (132, N'TI ', N'1167443799', N'JOAQUIN', N'CRESPO', N'M', CAST(N'2007-09-07' AS Date), N'calle 15c 24-73', N'joaquin@gmail.com', N'3734485496')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (133, N'TI', N'1184184026', N'MARIFEL', N'PAEZ', N'F', CAST(N'2006-01-09' AS Date), N'Dig 18b 25 a63', N'marifel@gfail.cof', N'3749374841')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (134, N'TI ', N'1200924254', N'VALERY', N'ARRIETA', N'F', CAST(N'2006-06-07' AS Date), N'Carrera 4 g 25-101', N'valery@gfail.cof', N'3764264186')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (135, N'TI', N'1217664481', N'MAYROBIS', N'GONZALEZ', N'F', CAST(N'2006-09-06' AS Date), N'Carrera 7 g 25-101', N'mayrobis@gfail.cof', N'3779153531')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (136, N'TI ', N'1234404709', N'SHAROL', N'BERMUDEZ', N'F', CAST(N'2006-12-21' AS Date), N'Diag 15b 23-74', N'sharol@gfail.cof', N'3794042876')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (137, N'TI', N'1251144936', N'ISELA', N'CARO', N'F', CAST(N'2006-04-27' AS Date), N'calle 15c 24-74', N'isela@gfail.cof', N'3808932221')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (138, N'TI ', N'1267885164', N'CARMEN', N'CORTINA', N'F', CAST(N'2005-09-19' AS Date), N'Dig 18b 25 a64', N'carmen@gfail.cof', N'3823821566')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (139, N'TI', N'1284625391', N'KEYLIN', N'MONTENGRO', N'F', CAST(N'2006-05-20' AS Date), N'Carrera 4 g 25-102', N'keylin@gfail.cof', N'3838710911')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (140, N'TI ', N'1301365619', N'MILEIDYS', N'GUETE', N'F', CAST(N'2005-07-11' AS Date), N'Carrera 7 g 25-102', N'mileidys@gfail.cof', N'3853600256')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (141, N'TI', N'1318105846', N'SARA', N'PARRA', N'F', CAST(N'2006-11-14' AS Date), N'Diag 15b 23-75', N'sara@gfail.cof', N'3868489601')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (142, N'TI ', N'1334846073', N'DARIETH', N'DE LEON', N'F', CAST(N'2007-02-28' AS Date), N'calle 15c 24-75', N'darieth@gfail.cof', N'3883378946')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (144, N'CC', N'49790257', N'xxx ', N'xxxxxx ', N'F', CAST(N'1993-09-18' AS Date), NULL, N'denis@gmail.com', N'3105533662')
INSERT [dbo].[Estudiante] ([Estudiante_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (145, N'CC', N'49790257', N'xxx ', N'xxxxxx ', N'F', CAST(N'1993-09-18' AS Date), NULL, N'denis@gmail.com', N'3105533662')
SET IDENTITY_INSERT [dbo].[Estudiante] OFF
GO
SET IDENTITY_INSERT [dbo].[Materias] ON 

INSERT [dbo].[Materias] ([Materia_Id], [Codigo], [Nombre], [Descripcion]) VALUES (1, N'Ma001', N'Matematicas', N'Ciencias Matematicas')
INSERT [dbo].[Materias] ([Materia_Id], [Codigo], [Nombre], [Descripcion]) VALUES (2, N'Ma002', N'Naturales', N'Ciencias Naturales')
INSERT [dbo].[Materias] ([Materia_Id], [Codigo], [Nombre], [Descripcion]) VALUES (3, N'Ma003', N'Español', N'Literatura')
INSERT [dbo].[Materias] ([Materia_Id], [Codigo], [Nombre], [Descripcion]) VALUES (4, N'Ma004', N'Etica y Valores', N'Comportamiento personal')
INSERT [dbo].[Materias] ([Materia_Id], [Codigo], [Nombre], [Descripcion]) VALUES (5, N'Ma005', N'Geometria', N'Ciencias Matematicas')
INSERT [dbo].[Materias] ([Materia_Id], [Codigo], [Nombre], [Descripcion]) VALUES (6, N'Ma006', N'Estadistica', N'Ciencias Matematicas')
INSERT [dbo].[Materias] ([Materia_Id], [Codigo], [Nombre], [Descripcion]) VALUES (7, N'Ma007', N'Deporte', N'Educacion Fisica')
SET IDENTITY_INSERT [dbo].[Materias] OFF
GO
SET IDENTITY_INSERT [dbo].[Notas] ON 

INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (1, 1, 2, 1, 5, N'Gano')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (2, 2, 41, 2, 3, N'Gano')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (3, 3, 92, 3, 5, N'Gano')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (4, 4, 93, 4, 4, N'Gano')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (5, 5, 94, 5, 3, N'Gano')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (6, 6, 95, 6, 3, N'Gano')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (7, 7, 96, 7, 5, N'Gano')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (8, 8, 97, 1, 4, N'Gano')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (9, 9, 98, 2, 3, N'Gano')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (10, 10, 99, 3, 6, N'Gano')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (11, 11, 100, 4, 2, N'Perdio')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (12, 12, 101, 5, 3, N'Gano')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (13, 13, 102, 6, 5, N'Gano')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (14, 14, 103, 7, 2, N'Perdio')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (15, 15, 104, 1, 2, N'Perdio')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (16, 16, 105, 2, 2, N'Perdio')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (17, 17, 106, 3, 2, N'Perdio')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (18, 18, 107, 4, 4, N'Gano')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (19, 19, 108, 5, 4, N'Gano')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (20, 20, 109, 6, 3, N'Gano')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (21, 1, 110, 7, 6, N'Gano')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (22, 2, 111, 1, 2, N'Perdio')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (23, 3, 112, 2, 3, N'Gano')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (24, 4, 113, 3, 5, N'Gano')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (25, 5, 114, 4, 2, N'Perdio')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (26, 6, 115, 5, 2, N'Perdio')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (27, 7, 116, 6, 4, N'Gano')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (28, 8, 117, 7, 3, N'Gano')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (29, 9, 118, 1, 6, N'Gano')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (30, 10, 119, 2, 2, N'Perdio')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (31, 11, 120, 3, 3, N'Gano')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (32, 12, 121, 4, 5, N'Gano')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (33, 13, 122, 5, 2, N'Perdio')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (34, 14, 123, 6, 2, N'Perdio')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (35, 15, 124, 7, 4, N'Gano')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (36, 16, 125, 1, 3, N'Gano')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (37, 17, 126, 2, 6, N'Gano')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (38, 18, 127, 3, 2, N'Perdio')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (39, 19, 128, 4, 3, N'Gano')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (40, 20, 129, 5, 5, N'Gano')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (41, 1, 130, 6, 2, N'Perdio')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (42, 2, 131, 7, 2, N'Perdio')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (43, 3, 132, 1, 4, N'Gano')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (44, 4, 133, 2, 3, N'Gano')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (45, 5, 134, 3, 6, N'Gano')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (46, 6, 135, 4, 2, N'Perdio')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (47, 7, 136, 5, 3, N'Gano')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (48, 8, 137, 6, 5, N'Gano')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (49, 9, 138, 7, 2, N'Perdio')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (50, 10, 139, 1, 2, N'Perdio')
INSERT [dbo].[Notas] ([Nota_Id], [Profesor_Id], [Estudiante_Id], [Materia_Id], [Calificacion], [Descripcion]) VALUES (52, 1, 2, 1, 5, N'Modificada')
SET IDENTITY_INSERT [dbo].[Notas] OFF
GO
SET IDENTITY_INSERT [dbo].[Profesor] ON 

INSERT [dbo].[Profesor] ([Profesor_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (1, N'TI', N'49790257', N'DENIS ', N'SEPULVEDA ', N'F', CAST(N'1993-09-18' AS Date), N'Calle16a 25-77', N'denis@gmail.com', N'3105533662')
INSERT [dbo].[Profesor] ([Profesor_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (2, N'CC', N'5028559', N'TOMAS', N'SALAZAR', N'M', CAST(N'1996-07-13' AS Date), N'calle 17a 55-85', N'tomas@gmail.com', N'3116357869')
INSERT [dbo].[Profesor] ([Profesor_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (3, N'CC', N'1756368', N'MANUEL', N'BAYONA', N'M', CAST(N'2002-09-20' AS Date), N'calle 15a 66-33', N'manuel@gmail.com', N'3124547888')
INSERT [dbo].[Profesor] ([Profesor_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (4, N'CC', N'88142743', N'PEDRO', N'MIRANDA', N'M', CAST(N'2002-03-29' AS Date), N'calle 12a 35-66', N'pedro@gmail.com', N'3134494032')
INSERT [dbo].[Profesor] ([Profesor_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (5, N'CC', N'12621430', N'JAIME', N'MARIÑO', N'M', CAST(N'2001-10-21' AS Date), N'Calle16a 25-78', N'Jaime@gmail.com', N'3144001145')
INSERT [dbo].[Profesor] ([Profesor_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (6, N'CC', N'5139252', N'OMAR', N'GARCIA', N'M', CAST(N'1990-01-04' AS Date), N'calle 17a 55-86', N'Omar@gmail.com', N'3153508258')
INSERT [dbo].[Profesor] ([Profesor_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (7, N'CC', N'77035885', N'DIMAS', N'LEMUS', N'F', CAST(N'1994-02-01' AS Date), N'calle 15a 66-34', N'Dimas@gmail.com', N'3163015371')
INSERT [dbo].[Profesor] ([Profesor_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (8, N'CC', N'12721615', N'ALONSO', N'CARDENAS', N'M', CAST(N'1995-01-31' AS Date), N'calle 12a 35-67', N'Alonso@gmail.com', N'3172522484')
INSERT [dbo].[Profesor] ([Profesor_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (9, N'CC', N'5466115', N'SOTERO', N'CHAUSTRE', N'M', CAST(N'2003-07-13' AS Date), N'Calle16a 25-79', N'Sotero@gmail.com', N'3182029597')
INSERT [dbo].[Profesor] ([Profesor_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (10, N'CC', N'1979737', N'JOSE', N'QUINTANA', N'M', CAST(N'2002-07-28' AS Date), N'calle 17a 55-87', N'Jose@gmail.com', N'3191536710')
INSERT [dbo].[Profesor] ([Profesor_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (11, N'CC', N'12721883', N'ALONSO', N'PORTILLO', N'M', CAST(N'1997-02-20' AS Date), N'calle 15a 66-35', N'Alonso@gmail.com', N'3201043823')
INSERT [dbo].[Profesor] ([Profesor_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (12, N'CC', N'77020351', N'ROSENDO', N'CHICA', N'M', CAST(N'1989-08-05' AS Date), N'calle 12a 35-68', N'Rosendo@gmail.com', N'3210550936')
INSERT [dbo].[Profesor] ([Profesor_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (13, N'CC', N'70194950', N'CARLOS', N'BARRIENTOS', N'M', CAST(N'1989-07-08' AS Date), N'Calle16a 25-80', N'Carlos@gmail.com', N'3220058049')
INSERT [dbo].[Profesor] ([Profesor_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (14, N'CC', N'1740012', N'JORGE', N'PIANETA', N'M', CAST(N'1992-02-01' AS Date), N'calle 17a 55-88', N'Jorge@gmail.com', N'3229565162')
INSERT [dbo].[Profesor] ([Profesor_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (15, N'CC', N'5072570', N'CARMELO', N'ARIAS', N'M', CAST(N'2002-11-16' AS Date), N'calle 15a 66-36', N'Carmelo@gmail.com', N'3239072275')
INSERT [dbo].[Profesor] ([Profesor_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (16, N'CC', N'1063596405', N'EVA ', N'MAESTRE ', N'F', CAST(N'1993-09-18' AS Date), N'Calle16a 25-80', N'eva@gmail.com', N'3248579388')
INSERT [dbo].[Profesor] ([Profesor_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (17, N'CC', N'1064556024', N'ANDREA ', N'LEIVA ', N'F', CAST(N'1996-07-13' AS Date), N'calle 17a 55-88', N'andrea@gmail.com', N'3258086501')
INSERT [dbo].[Profesor] ([Profesor_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (18, N'CC', N'1007532824', N'MARGI', N'HERNANDEZ', N'F', CAST(N'2002-09-20' AS Date), N'calle 15a 66-36', N'margi@gmail.com', N'3267593614')
INSERT [dbo].[Profesor] ([Profesor_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (19, N'CC', N'1007556384', N'CLAUDIA', N'VILORIA', N'F', CAST(N'2002-03-29' AS Date), N'calle 12a 35-69', N'claudia@gmail.com', N'3277100727')
INSERT [dbo].[Profesor] ([Profesor_Id], [Tipo_Identificacion], [Numero_Identificacion], [Nombre], [Apellido], [Sexo], [Fecha_Nacimiento], [Direccion], [Correo_Electronico], [Telefono]) VALUES (20, N'CC', N'1065671047', N'JESICA', N'PINZON', N'F', CAST(N'2001-10-21' AS Date), N'Calle16a 25-81', N'jesica@gmail.com', N'3286607840')
SET IDENTITY_INSERT [dbo].[Profesor] OFF
GO
ALTER TABLE [dbo].[Notas]  WITH CHECK ADD  CONSTRAINT [FK_Notas_Estudiante] FOREIGN KEY([Estudiante_Id])
REFERENCES [dbo].[Estudiante] ([Estudiante_Id])
GO
ALTER TABLE [dbo].[Notas] CHECK CONSTRAINT [FK_Notas_Estudiante]
GO
ALTER TABLE [dbo].[Notas]  WITH CHECK ADD  CONSTRAINT [FK_Notas_Materias] FOREIGN KEY([Materia_Id])
REFERENCES [dbo].[Materias] ([Materia_Id])
GO
ALTER TABLE [dbo].[Notas] CHECK CONSTRAINT [FK_Notas_Materias]
GO
ALTER TABLE [dbo].[Notas]  WITH CHECK ADD  CONSTRAINT [FK_Notas_Profesor] FOREIGN KEY([Profesor_Id])
REFERENCES [dbo].[Profesor] ([Profesor_Id])
GO
ALTER TABLE [dbo].[Notas] CHECK CONSTRAINT [FK_Notas_Profesor]
GO
