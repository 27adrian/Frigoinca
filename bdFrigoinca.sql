/****** Object:  Table [dbo].[ANIMAL]    Script Date: 6/07/2024 10:38:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ANIMAL](
	[idAnimal] [int] IDENTITY(1,1) NOT NULL,
	[especie] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idAnimal] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLIENTE]    Script Date: 6/07/2024 10:38:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENTE](
	[idCli] [int] IDENTITY(1,1) NOT NULL,
	[nombCli] [nvarchar](100) NULL,
	[apellCli] [varchar](50) NOT NULL,
	[tipoCliente] [nvarchar](50) NOT NULL,
	[tipoDoc] [nvarchar](50) NULL,
	[numeroDoc] [bigint] NULL,
	[idUbigeo] [int] NULL,
	[telefono] [bigint] NULL,
	[estado] [bit] NOT NULL,
	[direccion] [nvarchar](100) NULL,
	[fecha] [date] NULL,
 CONSTRAINT [PK__CLIENTE__398F670597869A9A] PRIMARY KEY CLUSTERED 
(
	[idCli] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CORTE_ANIMAL]    Script Date: 6/07/2024 10:38:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CORTE_ANIMAL](
	[idCorteAnim] [int] IDENTITY(1,1) NOT NULL,
	[descCorteAnim] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idCorteAnim] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DETALLE_ANIMAL]    Script Date: 6/07/2024 10:38:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DETALLE_ANIMAL](
	[idDetAnim] [int] IDENTITY(1,1) NOT NULL,
	[idAnimal] [int] NOT NULL,
	[idCorteAnim] [int] NOT NULL,
 CONSTRAINT [PK_DETALLE_ANIMAL] PRIMARY KEY CLUSTERED 
(
	[idDetAnim] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DETALLE_INVENTARIO]    Script Date: 6/07/2024 10:38:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DETALLE_INVENTARIO](
	[idDetalleInv] [bigint] IDENTITY(1,1) NOT NULL,
	[idInv] [int] NOT NULL,
	[idLotProd] [bigint] NOT NULL,
 CONSTRAINT [PK_DETALLE_INVENTARIO] PRIMARY KEY CLUSTERED 
(
	[idDetalleInv] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DETALLE_VENTA]    Script Date: 6/07/2024 10:38:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DETALLE_VENTA](
	[idOrdVen] [bigint] NOT NULL,
	[idInv] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[precioUnitario] [numeric](14, 2) NOT NULL,
	[subTotal] [numeric](14, 2) NOT NULL,
	[idDetVenta] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK__DETALLE___13ACE232C46A32D3] PRIMARY KEY CLUSTERED 
(
	[idDetVenta] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INGRESO_MP]    Script Date: 6/07/2024 10:38:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INGRESO_MP](
	[idMP] [bigint] IDENTITY(1,1) NOT NULL,
	[idOrdCom] [bigint] NULL,
	[cantidad] [int] NOT NULL,
	[estado] [bit] NOT NULL,
	[descripcion] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idMP] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INVENTARIO]    Script Date: 6/07/2024 10:38:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INVENTARIO](
	[idInv] [int] IDENTITY(1,1) NOT NULL,
	[stock] [int] NOT NULL,
	[fechaRegistro] [datetime] NOT NULL,
	[precioXunidad] [decimal](14, 2) NOT NULL,
	[descripcion] [varchar](30) NOT NULL,
 CONSTRAINT [PK__INVENTAR__3C3EB36A3BEDD39E] PRIMARY KEY CLUSTERED 
(
	[idInv] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOTE_PRODUCTO]    Script Date: 6/07/2024 10:38:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOTE_PRODUCTO](
	[idLoteProd] [bigint] IDENTITY(1,1) NOT NULL,
	[idDetAnim] [int] NOT NULL,
	[idIngresoMP] [bigint] NULL,
	[descripcion] [varchar](50) NULL,
	[stock] [int] NOT NULL,
	[fechaRegistro] [datetime] NOT NULL,
 CONSTRAINT [PK__LOTE_PRO__B01BD9E8CCC8D526] PRIMARY KEY CLUSTERED 
(
	[idLoteProd] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MEDIO_PAGO]    Script Date: 6/07/2024 10:38:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MEDIO_PAGO](
	[idMedPago] [int] IDENTITY(1,1) NOT NULL,
	[descMedPag] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idMedPago] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORDEN_COMPRA]    Script Date: 6/07/2024 10:38:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDEN_COMPRA](
	[idOrdCom] [bigint] IDENTITY(1,1) NOT NULL,
	[idMedPago] [int] NOT NULL,
	[idProv] [int] NOT NULL,
	[idReqComp] [bigint] NULL,
	[cantidad] [int] NOT NULL,
	[monto] [numeric](14, 2) NOT NULL,
	[montoTotal] [numeric](14, 2) NOT NULL,
	[fechaRegistro] [datetime] NOT NULL,
	[descripcion] [varchar](50) NULL,
	[estado] [bit] NOT NULL,
 CONSTRAINT [PK__ORDEN_CO__6E10481D60F832A4] PRIMARY KEY CLUSTERED 
(
	[idOrdCom] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORDEN_VENTA]    Script Date: 6/07/2024 10:38:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDEN_VENTA](
	[idOrdVen] [bigint] IDENTITY(1,1) NOT NULL,
	[idMedPago] [int] NOT NULL,
	[idCli] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[montoTotal] [numeric](14, 2) NOT NULL,
	[fechaRegistro] [datetime] NOT NULL,
 CONSTRAINT [PK__ORDEN_VE__53EBE6D08803C8F8] PRIMARY KEY CLUSTERED 
(
	[idOrdVen] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORDEN_VENTA_VISA]    Script Date: 6/07/2024 10:38:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDEN_VENTA_VISA](
	[idOrdVen] [int] NULL,
	[purchaseNumber] [nvarchar](12) NULL,
	[cadenaJson] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROVEEDOR]    Script Date: 6/07/2024 10:38:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROVEEDOR](
	[idProv] [int] IDENTITY(1,1) NOT NULL,
	[idAnimal] [int] NOT NULL,
	[idUbigeo] [int] NOT NULL,
	[nombProv] [nvarchar](50) NOT NULL,
	[estado] [bit] NOT NULL,
	[fecha] [date] NOT NULL,
	[direccion] [nvarchar](100) NOT NULL,
	[telefono] [bigint] NOT NULL,
	[ruc] [bigint] NOT NULL,
 CONSTRAINT [PK__PROVEEDO__B41BB0D8247A6EF0] PRIMARY KEY CLUSTERED 
(
	[idProv] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[REQUERIMIENTO_COMPRA]    Script Date: 6/07/2024 10:38:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[REQUERIMIENTO_COMPRA](
	[idReqComp] [bigint] IDENTITY(1,1) NOT NULL,
	[desReqComp] [varchar](100) NOT NULL,
	[cantidad] [int] NOT NULL,
	[estado] [bit] NOT NULL,
	[idInv] [int] NULL,
 CONSTRAINT [PK__REQUERIM__80F3ABE01131F768] PRIMARY KEY CLUSTERED 
(
	[idReqComp] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ROL]    Script Date: 6/07/2024 10:38:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ROL](
	[idRol] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [nvarchar](50) NOT NULL,
	[estado] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idRol] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRABAJADOR]    Script Date: 6/07/2024 10:38:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRABAJADOR](
	[idTrab] [bigint] IDENTITY(1,1) NOT NULL,
	[idRol] [int] NULL,
	[idUbigeo] [int] NULL,
	[nombTrab] [nvarchar](100) NOT NULL,
	[estado] [bit] NOT NULL,
	[usuario] [nvarchar](20) NOT NULL,
	[contraseña] [nvarchar](30) NOT NULL,
	[fechaRegistro] [datetime] NOT NULL,
	[numDoc] [int] NOT NULL,
 CONSTRAINT [PK__TRABAJAD__B90D758469310BB3] PRIMARY KEY CLUSTERED 
(
	[idTrab] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UBIGEO]    Script Date: 6/07/2024 10:38:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UBIGEO](
	[idUbigeo] [int] NOT NULL,
	[DEPARTAMENTO] [nvarchar](100) NULL,
	[PROVINCIA] [nvarchar](100) NULL,
	[DISTRITO] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[idUbigeo] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ANIMAL] ON 

INSERT [dbo].[ANIMAL] ([idAnimal], [especie]) VALUES (1, N'Res')
INSERT [dbo].[ANIMAL] ([idAnimal], [especie]) VALUES (2, N'Cerdo')
INSERT [dbo].[ANIMAL] ([idAnimal], [especie]) VALUES (3, N'Pollo')
INSERT [dbo].[ANIMAL] ([idAnimal], [especie]) VALUES (4, N'Cordero')
INSERT [dbo].[ANIMAL] ([idAnimal], [especie]) VALUES (5, N'Pavo')
INSERT [dbo].[ANIMAL] ([idAnimal], [especie]) VALUES (6, N'Pichon')
SET IDENTITY_INSERT [dbo].[ANIMAL] OFF
GO
SET IDENTITY_INSERT [dbo].[CLIENTE] ON 

INSERT [dbo].[CLIENTE] ([idCli], [nombCli], [apellCli], [tipoCliente], [tipoDoc], [numeroDoc], [idUbigeo], [telefono], [estado], [direccion], [fecha]) VALUES (1, N'JHORDANY JANPOOL', N'TORRES VILLENA', N'REGULAR', N'DNI', 74619030, 130105, 912832180, 1, N'Calle Panama Mz8Lt6 ASENT-H-ALANGARCIA', CAST(N'2024-06-07' AS Date))
INSERT [dbo].[CLIENTE] ([idCli], [nombCli], [apellCli], [tipoCliente], [tipoDoc], [numeroDoc], [idUbigeo], [telefono], [estado], [direccion], [fecha]) VALUES (2, N'DAVID ADRIAN', N'MUÑOZ RONCAL', N'REGULAR', N'DNI', 70692252, 20103, 916254325, 1, N'Calle Venexuela,123 Av.', CAST(N'2024-06-13' AS Date))
INSERT [dbo].[CLIENTE] ([idCli], [nombCli], [apellCli], [tipoCliente], [tipoDoc], [numeroDoc], [idUbigeo], [telefono], [estado], [direccion], [fecha]) VALUES (3, N'JACK JOSSIMAR', N'CARPIO DIAZ', N'REGULAR', N'DNI', 75361280, 130101, 968423658, 1, N'Calle Bolivia 9123 .4to piso', CAST(N'2024-06-19' AS Date))
INSERT [dbo].[CLIENTE] ([idCli], [nombCli], [apellCli], [tipoCliente], [tipoDoc], [numeroDoc], [idUbigeo], [telefono], [estado], [direccion], [fecha]) VALUES (4, N'CORPUS OSWALDO', N'COC MORENO', N'REGULAR', N'DNI', 15623493, 130105, 987456631, 1, N'Calle San Martin Nro 92384 . Av', CAST(N'2024-06-19' AS Date))
SET IDENTITY_INSERT [dbo].[CLIENTE] OFF
GO
SET IDENTITY_INSERT [dbo].[CORTE_ANIMAL] ON 

INSERT [dbo].[CORTE_ANIMAL] ([idCorteAnim], [descCorteAnim]) VALUES (1, N'Filete')
INSERT [dbo].[CORTE_ANIMAL] ([idCorteAnim], [descCorteAnim]) VALUES (2, N'Costilla')
INSERT [dbo].[CORTE_ANIMAL] ([idCorteAnim], [descCorteAnim]) VALUES (3, N'Chuleta')
INSERT [dbo].[CORTE_ANIMAL] ([idCorteAnim], [descCorteAnim]) VALUES (4, N'Lomo')
INSERT [dbo].[CORTE_ANIMAL] ([idCorteAnim], [descCorteAnim]) VALUES (5, N'Solomillo')
INSERT [dbo].[CORTE_ANIMAL] ([idCorteAnim], [descCorteAnim]) VALUES (6, N'Ala')
INSERT [dbo].[CORTE_ANIMAL] ([idCorteAnim], [descCorteAnim]) VALUES (7, N'Muslo')
INSERT [dbo].[CORTE_ANIMAL] ([idCorteAnim], [descCorteAnim]) VALUES (8, N'Pechuga')
INSERT [dbo].[CORTE_ANIMAL] ([idCorteAnim], [descCorteAnim]) VALUES (9, N'Paletilla')
INSERT [dbo].[CORTE_ANIMAL] ([idCorteAnim], [descCorteAnim]) VALUES (10, N'Pierna')
SET IDENTITY_INSERT [dbo].[CORTE_ANIMAL] OFF
GO
SET IDENTITY_INSERT [dbo].[DETALLE_ANIMAL] ON 

INSERT [dbo].[DETALLE_ANIMAL] ([idDetAnim], [idAnimal], [idCorteAnim]) VALUES (1, 1, 1)
INSERT [dbo].[DETALLE_ANIMAL] ([idDetAnim], [idAnimal], [idCorteAnim]) VALUES (2, 1, 2)
INSERT [dbo].[DETALLE_ANIMAL] ([idDetAnim], [idAnimal], [idCorteAnim]) VALUES (3, 1, 3)
INSERT [dbo].[DETALLE_ANIMAL] ([idDetAnim], [idAnimal], [idCorteAnim]) VALUES (4, 1, 4)
INSERT [dbo].[DETALLE_ANIMAL] ([idDetAnim], [idAnimal], [idCorteAnim]) VALUES (5, 1, 5)
INSERT [dbo].[DETALLE_ANIMAL] ([idDetAnim], [idAnimal], [idCorteAnim]) VALUES (6, 1, 9)
INSERT [dbo].[DETALLE_ANIMAL] ([idDetAnim], [idAnimal], [idCorteAnim]) VALUES (7, 1, 10)
INSERT [dbo].[DETALLE_ANIMAL] ([idDetAnim], [idAnimal], [idCorteAnim]) VALUES (8, 2, 1)
INSERT [dbo].[DETALLE_ANIMAL] ([idDetAnim], [idAnimal], [idCorteAnim]) VALUES (9, 2, 2)
INSERT [dbo].[DETALLE_ANIMAL] ([idDetAnim], [idAnimal], [idCorteAnim]) VALUES (10, 2, 3)
INSERT [dbo].[DETALLE_ANIMAL] ([idDetAnim], [idAnimal], [idCorteAnim]) VALUES (11, 2, 4)
INSERT [dbo].[DETALLE_ANIMAL] ([idDetAnim], [idAnimal], [idCorteAnim]) VALUES (12, 2, 5)
INSERT [dbo].[DETALLE_ANIMAL] ([idDetAnim], [idAnimal], [idCorteAnim]) VALUES (13, 2, 9)
INSERT [dbo].[DETALLE_ANIMAL] ([idDetAnim], [idAnimal], [idCorteAnim]) VALUES (14, 2, 10)
INSERT [dbo].[DETALLE_ANIMAL] ([idDetAnim], [idAnimal], [idCorteAnim]) VALUES (15, 3, 6)
INSERT [dbo].[DETALLE_ANIMAL] ([idDetAnim], [idAnimal], [idCorteAnim]) VALUES (16, 3, 7)
INSERT [dbo].[DETALLE_ANIMAL] ([idDetAnim], [idAnimal], [idCorteAnim]) VALUES (17, 3, 8)
INSERT [dbo].[DETALLE_ANIMAL] ([idDetAnim], [idAnimal], [idCorteAnim]) VALUES (18, 4, 3)
INSERT [dbo].[DETALLE_ANIMAL] ([idDetAnim], [idAnimal], [idCorteAnim]) VALUES (19, 4, 4)
INSERT [dbo].[DETALLE_ANIMAL] ([idDetAnim], [idAnimal], [idCorteAnim]) VALUES (20, 4, 2)
INSERT [dbo].[DETALLE_ANIMAL] ([idDetAnim], [idAnimal], [idCorteAnim]) VALUES (21, 4, 10)
INSERT [dbo].[DETALLE_ANIMAL] ([idDetAnim], [idAnimal], [idCorteAnim]) VALUES (22, 4, 9)
INSERT [dbo].[DETALLE_ANIMAL] ([idDetAnim], [idAnimal], [idCorteAnim]) VALUES (23, 5, 8)
INSERT [dbo].[DETALLE_ANIMAL] ([idDetAnim], [idAnimal], [idCorteAnim]) VALUES (24, 5, 7)
INSERT [dbo].[DETALLE_ANIMAL] ([idDetAnim], [idAnimal], [idCorteAnim]) VALUES (25, 5, 6)
INSERT [dbo].[DETALLE_ANIMAL] ([idDetAnim], [idAnimal], [idCorteAnim]) VALUES (26, 6, 6)
SET IDENTITY_INSERT [dbo].[DETALLE_ANIMAL] OFF
GO
SET IDENTITY_INSERT [dbo].[DETALLE_INVENTARIO] ON 

INSERT [dbo].[DETALLE_INVENTARIO] ([idDetalleInv], [idInv], [idLotProd]) VALUES (1, 1, 1)
INSERT [dbo].[DETALLE_INVENTARIO] ([idDetalleInv], [idInv], [idLotProd]) VALUES (2, 1, 2)
INSERT [dbo].[DETALLE_INVENTARIO] ([idDetalleInv], [idInv], [idLotProd]) VALUES (3, 2, 3)
INSERT [dbo].[DETALLE_INVENTARIO] ([idDetalleInv], [idInv], [idLotProd]) VALUES (4, 2, 4)
INSERT [dbo].[DETALLE_INVENTARIO] ([idDetalleInv], [idInv], [idLotProd]) VALUES (5, 3, 5)
INSERT [dbo].[DETALLE_INVENTARIO] ([idDetalleInv], [idInv], [idLotProd]) VALUES (6, 4, 6)
INSERT [dbo].[DETALLE_INVENTARIO] ([idDetalleInv], [idInv], [idLotProd]) VALUES (7, 2, 7)
INSERT [dbo].[DETALLE_INVENTARIO] ([idDetalleInv], [idInv], [idLotProd]) VALUES (8, 5, 8)
INSERT [dbo].[DETALLE_INVENTARIO] ([idDetalleInv], [idInv], [idLotProd]) VALUES (9, 4, 9)
INSERT [dbo].[DETALLE_INVENTARIO] ([idDetalleInv], [idInv], [idLotProd]) VALUES (10, 6, 10)
INSERT [dbo].[DETALLE_INVENTARIO] ([idDetalleInv], [idInv], [idLotProd]) VALUES (11, 6, 11)
SET IDENTITY_INSERT [dbo].[DETALLE_INVENTARIO] OFF
GO
SET IDENTITY_INSERT [dbo].[DETALLE_VENTA] ON 

INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (6, 1, 2, CAST(3.50 AS Numeric(14, 2)), CAST(7.00 AS Numeric(14, 2)), 1)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (7, 1, 2, CAST(3.50 AS Numeric(14, 2)), CAST(7.00 AS Numeric(14, 2)), 2)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (8, 1, 3, CAST(3.50 AS Numeric(14, 2)), CAST(10.50 AS Numeric(14, 2)), 3)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (9, 1, 2, CAST(3.50 AS Numeric(14, 2)), CAST(7.00 AS Numeric(14, 2)), 4)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (10, 1, 2, CAST(3.50 AS Numeric(14, 2)), CAST(7.00 AS Numeric(14, 2)), 5)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (11, 1, 2, CAST(3.50 AS Numeric(14, 2)), CAST(7.00 AS Numeric(14, 2)), 6)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (12, 1, 2, CAST(3.50 AS Numeric(14, 2)), CAST(7.00 AS Numeric(14, 2)), 7)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (13, 1, 2, CAST(3.50 AS Numeric(14, 2)), CAST(7.00 AS Numeric(14, 2)), 8)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (14, 1, 1, CAST(3.50 AS Numeric(14, 2)), CAST(3.50 AS Numeric(14, 2)), 9)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (15, 1, 1, CAST(3.50 AS Numeric(14, 2)), CAST(3.50 AS Numeric(14, 2)), 10)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (16, 1, 1, CAST(3.50 AS Numeric(14, 2)), CAST(3.50 AS Numeric(14, 2)), 11)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (17, 1, 1, CAST(3.50 AS Numeric(14, 2)), CAST(3.50 AS Numeric(14, 2)), 12)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (18, 1, 1, CAST(3.50 AS Numeric(14, 2)), CAST(3.50 AS Numeric(14, 2)), 13)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (19, 1, 2, CAST(3.50 AS Numeric(14, 2)), CAST(7.00 AS Numeric(14, 2)), 14)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (20, 1, 2, CAST(3.50 AS Numeric(14, 2)), CAST(7.00 AS Numeric(14, 2)), 15)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (21, 1, 2, CAST(3.50 AS Numeric(14, 2)), CAST(7.00 AS Numeric(14, 2)), 16)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (22, 1, 2, CAST(3.50 AS Numeric(14, 2)), CAST(7.00 AS Numeric(14, 2)), 17)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (23, 1, 2, CAST(3.50 AS Numeric(14, 2)), CAST(7.00 AS Numeric(14, 2)), 18)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (24, 1, 2, CAST(3.50 AS Numeric(14, 2)), CAST(7.00 AS Numeric(14, 2)), 19)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (25, 1, 2, CAST(3.50 AS Numeric(14, 2)), CAST(7.00 AS Numeric(14, 2)), 20)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (26, 1, 2, CAST(3.50 AS Numeric(14, 2)), CAST(7.00 AS Numeric(14, 2)), 21)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (27, 1, 2, CAST(3.50 AS Numeric(14, 2)), CAST(7.00 AS Numeric(14, 2)), 22)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (28, 1, 2, CAST(3.50 AS Numeric(14, 2)), CAST(7.00 AS Numeric(14, 2)), 23)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (29, 1, 2, CAST(3.50 AS Numeric(14, 2)), CAST(7.00 AS Numeric(14, 2)), 24)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (30, 1, 2, CAST(3.50 AS Numeric(14, 2)), CAST(7.00 AS Numeric(14, 2)), 25)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (31, 1, 2, CAST(3.50 AS Numeric(14, 2)), CAST(7.00 AS Numeric(14, 2)), 26)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (32, 1, 2, CAST(3.50 AS Numeric(14, 2)), CAST(7.00 AS Numeric(14, 2)), 27)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (33, 1, 2, CAST(3.50 AS Numeric(14, 2)), CAST(7.00 AS Numeric(14, 2)), 28)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (34, 1, 2, CAST(3.50 AS Numeric(14, 2)), CAST(7.00 AS Numeric(14, 2)), 29)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (35, 1, 2, CAST(3.50 AS Numeric(14, 2)), CAST(7.00 AS Numeric(14, 2)), 30)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (36, 1, 2, CAST(3.50 AS Numeric(14, 2)), CAST(7.00 AS Numeric(14, 2)), 31)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (37, 1, 2, CAST(3.50 AS Numeric(14, 2)), CAST(7.00 AS Numeric(14, 2)), 32)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (38, 1, 4, CAST(3.50 AS Numeric(14, 2)), CAST(14.00 AS Numeric(14, 2)), 33)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (39, 1, 4, CAST(3.50 AS Numeric(14, 2)), CAST(14.00 AS Numeric(14, 2)), 34)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (40, 1, 2, CAST(3.50 AS Numeric(14, 2)), CAST(7.00 AS Numeric(14, 2)), 35)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (41, 2, 15, CAST(35.00 AS Numeric(14, 2)), CAST(525.00 AS Numeric(14, 2)), 36)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (41, 2, 5, CAST(35.00 AS Numeric(14, 2)), CAST(175.00 AS Numeric(14, 2)), 37)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (42, 1, 2, CAST(3.50 AS Numeric(14, 2)), CAST(7.00 AS Numeric(14, 2)), 38)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (42, 2, 4, CAST(35.00 AS Numeric(14, 2)), CAST(140.00 AS Numeric(14, 2)), 39)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (43, 2, 2, CAST(35.00 AS Numeric(14, 2)), CAST(70.00 AS Numeric(14, 2)), 40)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (44, 2, 1, CAST(35.00 AS Numeric(14, 2)), CAST(35.00 AS Numeric(14, 2)), 41)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (45, 2, 1, CAST(35.00 AS Numeric(14, 2)), CAST(35.00 AS Numeric(14, 2)), 42)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (46, 1, 1, CAST(3.50 AS Numeric(14, 2)), CAST(3.50 AS Numeric(14, 2)), 43)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (47, 2, 1, CAST(35.00 AS Numeric(14, 2)), CAST(35.00 AS Numeric(14, 2)), 44)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (48, 1, 1, CAST(3.50 AS Numeric(14, 2)), CAST(3.50 AS Numeric(14, 2)), 45)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (49, 2, 1, CAST(35.00 AS Numeric(14, 2)), CAST(35.00 AS Numeric(14, 2)), 46)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (50, 3, 1, CAST(3.40 AS Numeric(14, 2)), CAST(3.40 AS Numeric(14, 2)), 47)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (50, 4, 2, CAST(3.40 AS Numeric(14, 2)), CAST(6.80 AS Numeric(14, 2)), 48)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (51, 4, 2, CAST(3.40 AS Numeric(14, 2)), CAST(6.80 AS Numeric(14, 2)), 49)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (52, 3, 2, CAST(3.40 AS Numeric(14, 2)), CAST(6.80 AS Numeric(14, 2)), 50)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (53, 3, 3, CAST(3.40 AS Numeric(14, 2)), CAST(10.20 AS Numeric(14, 2)), 51)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (54, 3, 2, CAST(3.40 AS Numeric(14, 2)), CAST(6.80 AS Numeric(14, 2)), 52)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (55, 2, 2, CAST(35.00 AS Numeric(14, 2)), CAST(70.00 AS Numeric(14, 2)), 53)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (56, 2, 2, CAST(35.00 AS Numeric(14, 2)), CAST(70.00 AS Numeric(14, 2)), 54)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (57, 2, 2, CAST(35.00 AS Numeric(14, 2)), CAST(70.00 AS Numeric(14, 2)), 55)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (58, 2, 2, CAST(35.00 AS Numeric(14, 2)), CAST(70.00 AS Numeric(14, 2)), 56)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (59, 2, 1, CAST(35.00 AS Numeric(14, 2)), CAST(35.00 AS Numeric(14, 2)), 57)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (60, 2, 1, CAST(35.00 AS Numeric(14, 2)), CAST(35.00 AS Numeric(14, 2)), 58)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (61, 2, 1, CAST(35.00 AS Numeric(14, 2)), CAST(35.00 AS Numeric(14, 2)), 59)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (62, 3, 2, CAST(3.60 AS Numeric(14, 2)), CAST(7.20 AS Numeric(14, 2)), 60)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (63, 2, 1, CAST(3.50 AS Numeric(14, 2)), CAST(3.50 AS Numeric(14, 2)), 61)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (64, 3, 1, CAST(3.60 AS Numeric(14, 2)), CAST(3.60 AS Numeric(14, 2)), 62)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (65, 2, 1, CAST(3.50 AS Numeric(14, 2)), CAST(3.50 AS Numeric(14, 2)), 63)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (66, 3, 2, CAST(3.70 AS Numeric(14, 2)), CAST(7.40 AS Numeric(14, 2)), 64)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (66, 4, 2, CAST(3.40 AS Numeric(14, 2)), CAST(6.80 AS Numeric(14, 2)), 65)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (66, 2, 1, CAST(3.50 AS Numeric(14, 2)), CAST(3.50 AS Numeric(14, 2)), 66)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (67, 4, 1, CAST(3.40 AS Numeric(14, 2)), CAST(3.40 AS Numeric(14, 2)), 67)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (67, 2, 1, CAST(3.50 AS Numeric(14, 2)), CAST(3.50 AS Numeric(14, 2)), 68)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (67, 3, 1, CAST(3.70 AS Numeric(14, 2)), CAST(3.70 AS Numeric(14, 2)), 69)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (68, 4, 2, CAST(3.40 AS Numeric(14, 2)), CAST(6.80 AS Numeric(14, 2)), 70)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (69, 4, 1, CAST(3.40 AS Numeric(14, 2)), CAST(3.40 AS Numeric(14, 2)), 71)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (69, 1, 5, CAST(3.60 AS Numeric(14, 2)), CAST(18.00 AS Numeric(14, 2)), 72)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (70, 2, 5, CAST(3.50 AS Numeric(14, 2)), CAST(17.50 AS Numeric(14, 2)), 73)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (71, 1, 5, CAST(3.60 AS Numeric(14, 2)), CAST(18.00 AS Numeric(14, 2)), 74)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (71, 2, 5, CAST(3.50 AS Numeric(14, 2)), CAST(17.50 AS Numeric(14, 2)), 75)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (71, 4, 5, CAST(3.40 AS Numeric(14, 2)), CAST(17.00 AS Numeric(14, 2)), 76)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (72, 1, 5, CAST(3.60 AS Numeric(14, 2)), CAST(18.00 AS Numeric(14, 2)), 77)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (72, 4, 5, CAST(3.40 AS Numeric(14, 2)), CAST(17.00 AS Numeric(14, 2)), 78)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (73, 3, 3, CAST(3.70 AS Numeric(14, 2)), CAST(11.10 AS Numeric(14, 2)), 79)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (73, 1, 2, CAST(3.80 AS Numeric(14, 2)), CAST(7.60 AS Numeric(14, 2)), 80)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (73, 4, 2, CAST(3.40 AS Numeric(14, 2)), CAST(6.80 AS Numeric(14, 2)), 81)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (74, 2, 5, CAST(3.50 AS Numeric(14, 2)), CAST(17.50 AS Numeric(14, 2)), 82)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (74, 3, 2, CAST(3.70 AS Numeric(14, 2)), CAST(7.40 AS Numeric(14, 2)), 83)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (75, 1, 3, CAST(4.00 AS Numeric(14, 2)), CAST(12.00 AS Numeric(14, 2)), 84)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (76, 1, 5, CAST(4.00 AS Numeric(14, 2)), CAST(20.00 AS Numeric(14, 2)), 85)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (76, 4, 3, CAST(3.40 AS Numeric(14, 2)), CAST(10.20 AS Numeric(14, 2)), 86)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (77, 2, 5, CAST(3.50 AS Numeric(14, 2)), CAST(17.50 AS Numeric(14, 2)), 87)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (77, 4, 5, CAST(3.40 AS Numeric(14, 2)), CAST(17.00 AS Numeric(14, 2)), 88)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (78, 4, 5, CAST(3.40 AS Numeric(14, 2)), CAST(17.00 AS Numeric(14, 2)), 89)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (79, 3, 5, CAST(3.70 AS Numeric(14, 2)), CAST(18.50 AS Numeric(14, 2)), 90)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (80, 5, 5, CAST(15.00 AS Numeric(14, 2)), CAST(75.00 AS Numeric(14, 2)), 91)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (80, 4, 5, CAST(3.40 AS Numeric(14, 2)), CAST(17.00 AS Numeric(14, 2)), 92)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (81, 1, 5, CAST(4.00 AS Numeric(14, 2)), CAST(20.00 AS Numeric(14, 2)), 93)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (81, 5, 3, CAST(15.00 AS Numeric(14, 2)), CAST(45.00 AS Numeric(14, 2)), 94)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (81, 4, 3, CAST(3.40 AS Numeric(14, 2)), CAST(10.20 AS Numeric(14, 2)), 95)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (82, 5, 2, CAST(15.00 AS Numeric(14, 2)), CAST(30.00 AS Numeric(14, 2)), 96)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (83, 4, 2, CAST(3.40 AS Numeric(14, 2)), CAST(6.80 AS Numeric(14, 2)), 97)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (84, 1, 5, CAST(4.00 AS Numeric(14, 2)), CAST(20.00 AS Numeric(14, 2)), 98)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (85, 1, 2, CAST(4.00 AS Numeric(14, 2)), CAST(8.00 AS Numeric(14, 2)), 99)
GO
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (86, 6, 5, CAST(5.00 AS Numeric(14, 2)), CAST(25.00 AS Numeric(14, 2)), 100)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (87, 3, 3, CAST(3.70 AS Numeric(14, 2)), CAST(11.10 AS Numeric(14, 2)), 101)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (87, 5, 2, CAST(15.00 AS Numeric(14, 2)), CAST(30.00 AS Numeric(14, 2)), 102)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (88, 2, 5, CAST(3.50 AS Numeric(14, 2)), CAST(17.50 AS Numeric(14, 2)), 103)
INSERT [dbo].[DETALLE_VENTA] ([idOrdVen], [idInv], [cantidad], [precioUnitario], [subTotal], [idDetVenta]) VALUES (89, 4, 5, CAST(3.40 AS Numeric(14, 2)), CAST(17.00 AS Numeric(14, 2)), 104)
SET IDENTITY_INSERT [dbo].[DETALLE_VENTA] OFF
GO
SET IDENTITY_INSERT [dbo].[INGRESO_MP] ON 

INSERT [dbo].[INGRESO_MP] ([idMP], [idOrdCom], [cantidad], [estado], [descripcion]) VALUES (1, 2, 0, 0, N'Pollo')
INSERT [dbo].[INGRESO_MP] ([idMP], [idOrdCom], [cantidad], [estado], [descripcion]) VALUES (2, 3, 0, 0, N'Pollo')
INSERT [dbo].[INGRESO_MP] ([idMP], [idOrdCom], [cantidad], [estado], [descripcion]) VALUES (3, 4, 0, 0, N'Res')
INSERT [dbo].[INGRESO_MP] ([idMP], [idOrdCom], [cantidad], [estado], [descripcion]) VALUES (4, 5, 14, 0, N'Pollo')
INSERT [dbo].[INGRESO_MP] ([idMP], [idOrdCom], [cantidad], [estado], [descripcion]) VALUES (5, 6, 14, 0, N'Cordero')
INSERT [dbo].[INGRESO_MP] ([idMP], [idOrdCom], [cantidad], [estado], [descripcion]) VALUES (6, 7, 30, 0, N'Cordero')
INSERT [dbo].[INGRESO_MP] ([idMP], [idOrdCom], [cantidad], [estado], [descripcion]) VALUES (7, 8, 30, 1, N'Cordero')
INSERT [dbo].[INGRESO_MP] ([idMP], [idOrdCom], [cantidad], [estado], [descripcion]) VALUES (8, 9, 20, 1, N'Pollo')
INSERT [dbo].[INGRESO_MP] ([idMP], [idOrdCom], [cantidad], [estado], [descripcion]) VALUES (9, 10, 12, 1, N'Pollo')
INSERT [dbo].[INGRESO_MP] ([idMP], [idOrdCom], [cantidad], [estado], [descripcion]) VALUES (10, 11, 10, 1, N'Res')
INSERT [dbo].[INGRESO_MP] ([idMP], [idOrdCom], [cantidad], [estado], [descripcion]) VALUES (11, 12, 10, 1, N'Cordero')
INSERT [dbo].[INGRESO_MP] ([idMP], [idOrdCom], [cantidad], [estado], [descripcion]) VALUES (12, 13, 10, 1, N'Cordero')
SET IDENTITY_INSERT [dbo].[INGRESO_MP] OFF
GO
SET IDENTITY_INSERT [dbo].[INVENTARIO] ON 

INSERT [dbo].[INVENTARIO] ([idInv], [stock], [fechaRegistro], [precioXunidad], [descripcion]) VALUES (1, 18, CAST(N'2024-06-18T22:07:25.730' AS DateTime), CAST(4.00 AS Decimal(14, 2)), N'Ala de Pollo')
INSERT [dbo].[INVENTARIO] ([idInv], [stock], [fechaRegistro], [precioXunidad], [descripcion]) VALUES (2, 25, CAST(N'2024-06-19T18:41:19.040' AS DateTime), CAST(3.50 AS Decimal(14, 2)), N'Costilla de Cordero')
INSERT [dbo].[INVENTARIO] ([idInv], [stock], [fechaRegistro], [precioXunidad], [descripcion]) VALUES (3, 7, CAST(N'2024-06-19T15:34:25.443' AS DateTime), CAST(3.70 AS Decimal(14, 2)), N'Chuleta de Cordero')
INSERT [dbo].[INVENTARIO] ([idInv], [stock], [fechaRegistro], [precioXunidad], [descripcion]) VALUES (4, 15, CAST(N'2024-07-03T17:59:41.580' AS DateTime), CAST(3.40 AS Decimal(14, 2)), N'Paletilla de Cordero')
INSERT [dbo].[INVENTARIO] ([idInv], [stock], [fechaRegistro], [precioXunidad], [descripcion]) VALUES (5, 18, CAST(N'2024-06-21T22:14:35.883' AS DateTime), CAST(15.00 AS Decimal(14, 2)), N'Filete de Res')
INSERT [dbo].[INVENTARIO] ([idInv], [stock], [fechaRegistro], [precioXunidad], [descripcion]) VALUES (6, 30, CAST(N'2024-07-04T08:50:50.833' AS DateTime), CAST(5.00 AS Decimal(14, 2)), N'Lomo de Cordero')
SET IDENTITY_INSERT [dbo].[INVENTARIO] OFF
GO
SET IDENTITY_INSERT [dbo].[LOTE_PRODUCTO] ON 

INSERT [dbo].[LOTE_PRODUCTO] ([idLoteProd], [idDetAnim], [idIngresoMP], [descripcion], [stock], [fechaRegistro]) VALUES (1, 15, 4, N'Ala de Pollo', 20, CAST(N'2024-06-18T22:06:58.990' AS DateTime))
INSERT [dbo].[LOTE_PRODUCTO] ([idLoteProd], [idDetAnim], [idIngresoMP], [descripcion], [stock], [fechaRegistro]) VALUES (2, 15, 4, N'Ala de Pollo', 2, CAST(N'2024-06-18T22:07:25.730' AS DateTime))
INSERT [dbo].[LOTE_PRODUCTO] ([idLoteProd], [idDetAnim], [idIngresoMP], [descripcion], [stock], [fechaRegistro]) VALUES (3, 20, 5, N'Costilla de Cordero', 15, CAST(N'2024-06-19T13:31:16.640' AS DateTime))
INSERT [dbo].[LOTE_PRODUCTO] ([idLoteProd], [idDetAnim], [idIngresoMP], [descripcion], [stock], [fechaRegistro]) VALUES (4, 20, 5, N'Costilla de Cordero', 15, CAST(N'2024-06-19T14:35:12.543' AS DateTime))
INSERT [dbo].[LOTE_PRODUCTO] ([idLoteProd], [idDetAnim], [idIngresoMP], [descripcion], [stock], [fechaRegistro]) VALUES (5, 18, 5, N'Chuleta de Cordero', 14, CAST(N'2024-06-19T15:34:25.443' AS DateTime))
INSERT [dbo].[LOTE_PRODUCTO] ([idLoteProd], [idDetAnim], [idIngresoMP], [descripcion], [stock], [fechaRegistro]) VALUES (6, 22, 5, N'Paletilla de Cordero', 9, CAST(N'2024-06-19T15:37:07.840' AS DateTime))
INSERT [dbo].[LOTE_PRODUCTO] ([idLoteProd], [idDetAnim], [idIngresoMP], [descripcion], [stock], [fechaRegistro]) VALUES (7, 20, 7, N'Costilla de Cordero', 15, CAST(N'2024-06-19T18:41:19.040' AS DateTime))
INSERT [dbo].[LOTE_PRODUCTO] ([idLoteProd], [idDetAnim], [idIngresoMP], [descripcion], [stock], [fechaRegistro]) VALUES (8, 1, 10, N'Filete de Res', 30, CAST(N'2024-06-21T22:14:35.883' AS DateTime))
INSERT [dbo].[LOTE_PRODUCTO] ([idLoteProd], [idDetAnim], [idIngresoMP], [descripcion], [stock], [fechaRegistro]) VALUES (9, 22, 11, N'Paletilla de Cordero', 25, CAST(N'2024-07-03T17:59:41.580' AS DateTime))
INSERT [dbo].[LOTE_PRODUCTO] ([idLoteProd], [idDetAnim], [idIngresoMP], [descripcion], [stock], [fechaRegistro]) VALUES (10, 19, 12, N'Lomo de Cordero', 20, CAST(N'2024-07-04T08:50:03.430' AS DateTime))
INSERT [dbo].[LOTE_PRODUCTO] ([idLoteProd], [idDetAnim], [idIngresoMP], [descripcion], [stock], [fechaRegistro]) VALUES (11, 19, 12, N'Lomo de Cordero', 15, CAST(N'2024-07-04T08:50:50.833' AS DateTime))
SET IDENTITY_INSERT [dbo].[LOTE_PRODUCTO] OFF
GO
SET IDENTITY_INSERT [dbo].[MEDIO_PAGO] ON 

INSERT [dbo].[MEDIO_PAGO] ([idMedPago], [descMedPag]) VALUES (1, N'Efectivo')
INSERT [dbo].[MEDIO_PAGO] ([idMedPago], [descMedPag]) VALUES (2, N'Yape')
INSERT [dbo].[MEDIO_PAGO] ([idMedPago], [descMedPag]) VALUES (3, N'Plin')
INSERT [dbo].[MEDIO_PAGO] ([idMedPago], [descMedPag]) VALUES (4, N'Tarjeta')
SET IDENTITY_INSERT [dbo].[MEDIO_PAGO] OFF
GO
SET IDENTITY_INSERT [dbo].[ORDEN_COMPRA] ON 

INSERT [dbo].[ORDEN_COMPRA] ([idOrdCom], [idMedPago], [idProv], [idReqComp], [cantidad], [monto], [montoTotal], [fechaRegistro], [descripcion], [estado]) VALUES (1, 1, 7, NULL, 14, CAST(3.50 AS Numeric(14, 2)), CAST(49.00 AS Numeric(14, 2)), CAST(N'2024-06-17T10:49:58.330' AS DateTime), N'Cerdo', 0)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdCom], [idMedPago], [idProv], [idReqComp], [cantidad], [monto], [montoTotal], [fechaRegistro], [descripcion], [estado]) VALUES (2, 2, 3, NULL, 12, CAST(2.50 AS Numeric(14, 2)), CAST(30.00 AS Numeric(14, 2)), CAST(N'2024-06-18T01:13:08.210' AS DateTime), N'Pollo', 0)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdCom], [idMedPago], [idProv], [idReqComp], [cantidad], [monto], [montoTotal], [fechaRegistro], [descripcion], [estado]) VALUES (3, 3, 3, NULL, 20, CAST(2.50 AS Numeric(14, 2)), CAST(50.00 AS Numeric(14, 2)), CAST(N'2024-06-18T01:56:33.373' AS DateTime), N'Pollo', 0)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdCom], [idMedPago], [idProv], [idReqComp], [cantidad], [monto], [montoTotal], [fechaRegistro], [descripcion], [estado]) VALUES (4, 2, 1, NULL, 12, CAST(4.60 AS Numeric(14, 2)), CAST(55.20 AS Numeric(14, 2)), CAST(N'2024-06-18T02:54:13.377' AS DateTime), N'Res', 0)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdCom], [idMedPago], [idProv], [idReqComp], [cantidad], [monto], [montoTotal], [fechaRegistro], [descripcion], [estado]) VALUES (5, 1, 3, NULL, 14, CAST(2.50 AS Numeric(14, 2)), CAST(35.00 AS Numeric(14, 2)), CAST(N'2024-06-18T15:54:35.800' AS DateTime), N'Pollo', 0)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdCom], [idMedPago], [idProv], [idReqComp], [cantidad], [monto], [montoTotal], [fechaRegistro], [descripcion], [estado]) VALUES (6, 2, 4, NULL, 14, CAST(3.40 AS Numeric(14, 2)), CAST(47.60 AS Numeric(14, 2)), CAST(N'2024-06-18T16:05:16.543' AS DateTime), N'Cordero', 0)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdCom], [idMedPago], [idProv], [idReqComp], [cantidad], [monto], [montoTotal], [fechaRegistro], [descripcion], [estado]) VALUES (7, 1, 4, 2, 30, CAST(2.20 AS Numeric(14, 2)), CAST(66.00 AS Numeric(14, 2)), CAST(N'2024-06-19T15:56:31.513' AS DateTime), N'Cordero', 0)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdCom], [idMedPago], [idProv], [idReqComp], [cantidad], [monto], [montoTotal], [fechaRegistro], [descripcion], [estado]) VALUES (8, 4, 4, 2, 30, CAST(2.20 AS Numeric(14, 2)), CAST(66.00 AS Numeric(14, 2)), CAST(N'2024-06-19T16:04:45.403' AS DateTime), N'Cordero', 0)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdCom], [idMedPago], [idProv], [idReqComp], [cantidad], [monto], [montoTotal], [fechaRegistro], [descripcion], [estado]) VALUES (9, 1, 3, 3, 20, CAST(3.60 AS Numeric(14, 2)), CAST(72.00 AS Numeric(14, 2)), CAST(N'2024-06-20T00:10:04.970' AS DateTime), N'Pollo', 0)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdCom], [idMedPago], [idProv], [idReqComp], [cantidad], [monto], [montoTotal], [fechaRegistro], [descripcion], [estado]) VALUES (10, 1, 3, NULL, 12, CAST(2.50 AS Numeric(14, 2)), CAST(30.00 AS Numeric(14, 2)), CAST(N'2024-06-20T23:56:07.013' AS DateTime), N'Pollo', 0)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdCom], [idMedPago], [idProv], [idReqComp], [cantidad], [monto], [montoTotal], [fechaRegistro], [descripcion], [estado]) VALUES (11, 1, 1, NULL, 10, CAST(5.00 AS Numeric(14, 2)), CAST(50.00 AS Numeric(14, 2)), CAST(N'2024-06-21T22:13:25.923' AS DateTime), N'Res', 0)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdCom], [idMedPago], [idProv], [idReqComp], [cantidad], [monto], [montoTotal], [fechaRegistro], [descripcion], [estado]) VALUES (12, 1, 4, 4, 10, CAST(5.00 AS Numeric(14, 2)), CAST(50.00 AS Numeric(14, 2)), CAST(N'2024-07-03T17:56:47.980' AS DateTime), N'Cordero', 0)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdCom], [idMedPago], [idProv], [idReqComp], [cantidad], [monto], [montoTotal], [fechaRegistro], [descripcion], [estado]) VALUES (13, 1, 4, 5, 10, CAST(2.00 AS Numeric(14, 2)), CAST(20.00 AS Numeric(14, 2)), CAST(N'2024-07-04T08:48:10.257' AS DateTime), N'Cordero', 0)
SET IDENTITY_INSERT [dbo].[ORDEN_COMPRA] OFF
GO
SET IDENTITY_INSERT [dbo].[ORDEN_VENTA] ON 

INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (1, 1, 1, 4, CAST(8.00 AS Numeric(14, 2)), CAST(N'2024-06-13T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (2, 2, 1, 4, CAST(8.00 AS Numeric(14, 2)), CAST(N'2024-06-13T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (3, 1, 1, 4, CAST(8.00 AS Numeric(14, 2)), CAST(N'2024-06-13T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (4, 1, 1, 2, CAST(7.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (5, 1, 1, 2, CAST(7.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (6, 1, 1, 2, CAST(7.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (7, 1, 1, 2, CAST(7.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (8, 1, 1, 3, CAST(10.50 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (9, 1, 1, 2, CAST(7.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (10, 1, 1, 2, CAST(7.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (11, 1, 1, 2, CAST(7.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (12, 1, 1, 2, CAST(7.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (13, 1, 1, 2, CAST(7.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (14, 1, 2, 1, CAST(3.50 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (15, 1, 2, 1, CAST(3.50 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (16, 1, 1, 1, CAST(3.50 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (17, 1, 1, 1, CAST(3.50 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (18, 1, 1, 1, CAST(3.50 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (19, 1, 1, 2, CAST(7.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (20, 1, 1, 2, CAST(7.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (21, 1, 1, 2, CAST(7.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (22, 1, 1, 2, CAST(7.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (23, 1, 1, 2, CAST(7.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (24, 1, 1, 2, CAST(7.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (25, 1, 1, 2, CAST(7.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (26, 1, 1, 2, CAST(7.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (27, 1, 1, 2, CAST(7.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (28, 1, 1, 2, CAST(7.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (29, 1, 1, 2, CAST(7.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (30, 1, 1, 2, CAST(7.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (31, 1, 1, 2, CAST(7.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (32, 1, 1, 2, CAST(7.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (33, 1, 1, 2, CAST(7.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (34, 1, 1, 2, CAST(7.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (35, 1, 1, 2, CAST(7.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (36, 1, 1, 2, CAST(7.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (37, 1, 1, 2, CAST(7.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (38, 1, 1, 4, CAST(14.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (39, 1, 1, 4, CAST(14.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (40, 4, 2, 2, CAST(7.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (41, 1, 1, 20, CAST(700.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (42, 1, 2, 6, CAST(147.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (43, 1, 1, 2, CAST(70.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (44, 1, 2, 1, CAST(35.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (45, 1, 2, 1, CAST(35.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (46, 1, 1, 1, CAST(3.50 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (47, 1, 2, 1, CAST(35.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (48, 1, 1, 1, CAST(3.50 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (49, 1, 1, 1, CAST(35.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (50, 1, 1, 3, CAST(10.20 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (51, 1, 2, 2, CAST(6.80 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (52, 1, 2, 2, CAST(6.80 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (53, 4, 2, 3, CAST(10.20 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (54, 4, 2, 2, CAST(6.80 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (55, 4, 2, 2, CAST(70.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (56, 4, 2, 2, CAST(70.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (57, 1, 2, 2, CAST(70.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (58, 1, 2, 2, CAST(70.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (59, 4, 2, 1, CAST(35.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (60, 4, 1, 1, CAST(35.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (61, 4, 2, 1, CAST(35.00 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (62, 4, 4, 2, CAST(7.20 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (63, 1, 3, 1, CAST(3.50 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (64, 1, 4, 1, CAST(3.60 AS Numeric(14, 2)), CAST(N'2024-06-19T21:02:04.797' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (65, 1, 2, 1, CAST(3.50 AS Numeric(14, 2)), CAST(N'2024-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (66, 1, 2, 5, CAST(17.70 AS Numeric(14, 2)), CAST(N'2024-06-20T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (67, 4, 2, 3, CAST(10.60 AS Numeric(14, 2)), CAST(N'2024-06-20T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (68, 4, 2, 2, CAST(6.80 AS Numeric(14, 2)), CAST(N'2024-06-20T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (69, 4, 2, 6, CAST(21.40 AS Numeric(14, 2)), CAST(N'2024-06-20T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (70, 4, 2, 5, CAST(17.50 AS Numeric(14, 2)), CAST(N'2024-06-20T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (71, 4, 1, 15, CAST(52.50 AS Numeric(14, 2)), CAST(N'2024-06-20T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (72, 1, 2, 10, CAST(35.00 AS Numeric(14, 2)), CAST(N'2024-06-20T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (73, 4, 2, 7, CAST(25.50 AS Numeric(14, 2)), CAST(N'2024-06-21T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (74, 4, 3, 7, CAST(24.90 AS Numeric(14, 2)), CAST(N'2024-06-27T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (75, 4, 2, 3, CAST(12.00 AS Numeric(14, 2)), CAST(N'2024-06-30T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (76, 1, 2, 8, CAST(30.20 AS Numeric(14, 2)), CAST(N'2024-06-30T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (77, 1, 2, 10, CAST(34.50 AS Numeric(14, 2)), CAST(N'2024-07-03T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (78, 1, 1, 5, CAST(17.00 AS Numeric(14, 2)), CAST(N'2024-07-03T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (79, 4, 2, 5, CAST(18.50 AS Numeric(14, 2)), CAST(N'2024-07-03T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (80, 4, 3, 10, CAST(92.00 AS Numeric(14, 2)), CAST(N'2024-07-03T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (81, 4, 3, 11, CAST(75.20 AS Numeric(14, 2)), CAST(N'2024-07-03T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (82, 1, 3, 2, CAST(30.00 AS Numeric(14, 2)), CAST(N'2024-07-03T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (83, 1, 4, 2, CAST(6.80 AS Numeric(14, 2)), CAST(N'2024-07-03T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (84, 4, 1, 5, CAST(20.00 AS Numeric(14, 2)), CAST(N'2024-07-03T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (85, 1, 1, 2, CAST(8.00 AS Numeric(14, 2)), CAST(N'2024-07-04T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (86, 1, 2, 5, CAST(25.00 AS Numeric(14, 2)), CAST(N'2024-07-04T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (87, 4, 1, 5, CAST(41.10 AS Numeric(14, 2)), CAST(N'2024-07-04T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (88, 1, 1, 5, CAST(17.50 AS Numeric(14, 2)), CAST(N'2024-07-04T00:00:00.000' AS DateTime))
INSERT [dbo].[ORDEN_VENTA] ([idOrdVen], [idMedPago], [idCli], [cantidad], [montoTotal], [fechaRegistro]) VALUES (89, 1, 2, 5, CAST(17.00 AS Numeric(14, 2)), CAST(N'2024-07-04T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[ORDEN_VENTA] OFF
GO
INSERT [dbo].[ORDEN_VENTA_VISA] ([idOrdVen], [purchaseNumber], [cadenaJson]) VALUES (54, N'33566054400', N'{
  "header": {
    "ecoreTransactionUUID": "a1145275-038c-4b6f-9ba2-2985f9f6fc14",
    "ecoreTransactionDate": 1718838599405,
    "millis": 617
  },
  "fulfillment": {
    "channel": "pasarela",
    "merchantId": "456879852",
    "terminalId": "00000001",
    "captureType": "manual",
    "countable": true,
    "fastPayment": false,
    "signature": "a1145275-038c-4b6f-9ba2-2985f9f6fc14"
  },
  "order": {
    "purchaseNumber": "33566054400",
    "amount": 6.8,
    "installment": 4,
    "currency": "PEN",
    "authorizedAmount": 6.8,
    "authorizationCode": "142237",
    "actionCode": "000",
    "traceNumber": "469336",
    "transactionDate": "240619180959",
    "transactionId": "993203570048588"
  },
  "dataMap": {
    "TERMINAL": "00000001",
    "BRAND_ACTION_CODE": "00",
    "BRAND_HOST_DATE_TIME": "201222141839",
    "TRACE_NUMBER": "469336",
    "CARD_TYPE": "C",
    "ECI_DESCRIPTION": "Transaccion no autenticada pero enviada en canal seguro",
    "SIGNATURE": "a1145275-038c-4b6f-9ba2-2985f9f6fc14",
    "CARD": "455170******8059",
    "MERCHANT": "456879852",
    "STATUS": "Authorized",
    "INSTALLMENTS_INFO": "04000000000",
    "ACTION_DESCRIPTION": "Aprobado y completado con exito",
    "ID_UNICO": "993203570048588",
    "AMOUNT": "6.8",
    "QUOTA_NUMBER": "04",
    "BRAND_HOST_ID": "566998",
    "AUTHORIZATION_CODE": "142237",
    "CURRENCY": "0604",
    "TRANSACTION_DATE": "240619180959",
    "ACTION_CODE": "000",
    "CVV2_VALIDATION_RESULT": "M",
    "ECI": "07",
    "ID_RESOLUTOR": "420201222142237",
    "BRAND": "visa",
    "ADQUIRENTE": "570009",
    "QUOTA_AMOUNT": "0.00",
    "BRAND_NAME": "VI",
    "PROCESS_CODE": "000000",
    "TRANSACTION_ID": "993203570048588",
    "QUOTA_DEFERRED": "0"
  }
}')
INSERT [dbo].[ORDEN_VENTA_VISA] ([idOrdVen], [purchaseNumber], [cadenaJson]) VALUES (55, N'33729189276', N'{
  "header": {
    "ecoreTransactionUUID": "41a1474c-d5e5-48f5-b129-c1bd4307b205",
    "ecoreTransactionDate": 1718840978965,
    "millis": 1114
  },
  "fulfillment": {
    "channel": "pasarela",
    "merchantId": "456879852",
    "terminalId": "00000001",
    "captureType": "manual",
    "countable": true,
    "fastPayment": false,
    "signature": "41a1474c-d5e5-48f5-b129-c1bd4307b205"
  },
  "order": {
    "purchaseNumber": "33729189276",
    "amount": 70.0,
    "installment": 4,
    "currency": "PEN",
    "authorizedAmount": 70.0,
    "authorizationCode": "142237",
    "actionCode": "000",
    "traceNumber": "469344",
    "transactionDate": "240619184938",
    "transactionId": "993203570048588"
  },
  "dataMap": {
    "TERMINAL": "00000001",
    "BRAND_ACTION_CODE": "00",
    "BRAND_HOST_DATE_TIME": "201222141839",
    "TRACE_NUMBER": "469344",
    "CARD_TYPE": "C",
    "ECI_DESCRIPTION": "Transaccion no autenticada pero enviada en canal seguro",
    "SIGNATURE": "41a1474c-d5e5-48f5-b129-c1bd4307b205",
    "CARD": "455170******8059",
    "MERCHANT": "456879852",
    "STATUS": "Authorized",
    "INSTALLMENTS_INFO": "04000000000",
    "ACTION_DESCRIPTION": "Aprobado y completado con exito",
    "ID_UNICO": "993203570048588",
    "AMOUNT": "70.0",
    "QUOTA_NUMBER": "04",
    "BRAND_HOST_ID": "566998",
    "AUTHORIZATION_CODE": "142237",
    "CURRENCY": "0604",
    "TRANSACTION_DATE": "240619184938",
    "ACTION_CODE": "000",
    "CVV2_VALIDATION_RESULT": "M",
    "ECI": "07",
    "ID_RESOLUTOR": "420201222142237",
    "BRAND": "visa",
    "ADQUIRENTE": "570009",
    "QUOTA_AMOUNT": "0.00",
    "BRAND_NAME": "VI",
    "PROCESS_CODE": "000000",
    "TRANSACTION_ID": "993203570048588",
    "QUOTA_DEFERRED": "0"
  }
}')
INSERT [dbo].[ORDEN_VENTA_VISA] ([idOrdVen], [purchaseNumber], [cadenaJson]) VALUES (56, N'33807341536', N'{
  "header": {
    "ecoreTransactionUUID": "d8c0ad3b-fa36-4cc0-bc51-d3776314ce9d",
    "ecoreTransactionDate": 1718841177129,
    "millis": 618
  },
  "fulfillment": {
    "channel": "pasarela",
    "merchantId": "456879852",
    "terminalId": "00000001",
    "captureType": "manual",
    "countable": true,
    "fastPayment": false,
    "signature": "d8c0ad3b-fa36-4cc0-bc51-d3776314ce9d"
  },
  "order": {
    "purchaseNumber": "33807341536",
    "amount": 70.0,
    "installment": 4,
    "currency": "PEN",
    "authorizedAmount": 70.0,
    "authorizationCode": "142237",
    "actionCode": "000",
    "traceNumber": "469345",
    "transactionDate": "240619185256",
    "transactionId": "993203570048588"
  },
  "dataMap": {
    "TERMINAL": "00000001",
    "BRAND_ACTION_CODE": "00",
    "BRAND_HOST_DATE_TIME": "201222141839",
    "TRACE_NUMBER": "469345",
    "CARD_TYPE": "C",
    "ECI_DESCRIPTION": "Transaccion no autenticada pero enviada en canal seguro",
    "SIGNATURE": "d8c0ad3b-fa36-4cc0-bc51-d3776314ce9d",
    "CARD": "455170******8059",
    "MERCHANT": "456879852",
    "STATUS": "Authorized",
    "INSTALLMENTS_INFO": "04000000000",
    "ACTION_DESCRIPTION": "Aprobado y completado con exito",
    "ID_UNICO": "993203570048588",
    "AMOUNT": "70.0",
    "QUOTA_NUMBER": "04",
    "BRAND_HOST_ID": "566998",
    "AUTHORIZATION_CODE": "142237",
    "CURRENCY": "0604",
    "TRANSACTION_DATE": "240619185256",
    "ACTION_CODE": "000",
    "CVV2_VALIDATION_RESULT": "M",
    "ECI": "07",
    "ID_RESOLUTOR": "420201222142237",
    "BRAND": "visa",
    "ADQUIRENTE": "570009",
    "QUOTA_AMOUNT": "0.00",
    "BRAND_NAME": "VI",
    "PROCESS_CODE": "000000",
    "TRANSACTION_ID": "993203570048588",
    "QUOTA_DEFERRED": "0"
  }
}')
INSERT [dbo].[ORDEN_VENTA_VISA] ([idOrdVen], [purchaseNumber], [cadenaJson]) VALUES (59, N'33590383807', N'{
  "header": {
    "ecoreTransactionUUID": "2e449095-3eb9-4139-a6b6-f3aaea0c545e",
    "ecoreTransactionDate": 1718841557341,
    "millis": 700
  },
  "fulfillment": {
    "channel": "pasarela",
    "merchantId": "456879852",
    "terminalId": "00000001",
    "captureType": "manual",
    "countable": true,
    "fastPayment": false,
    "signature": "2e449095-3eb9-4139-a6b6-f3aaea0c545e"
  },
  "order": {
    "purchaseNumber": "33590383807",
    "amount": 35.0,
    "installment": 4,
    "currency": "PEN",
    "authorizedAmount": 35.0,
    "authorizationCode": "142237",
    "actionCode": "000",
    "traceNumber": "469347",
    "transactionDate": "240619185916",
    "transactionId": "993203570048588"
  },
  "dataMap": {
    "TERMINAL": "00000001",
    "BRAND_ACTION_CODE": "00",
    "BRAND_HOST_DATE_TIME": "201222141839",
    "TRACE_NUMBER": "469347",
    "CARD_TYPE": "C",
    "ECI_DESCRIPTION": "Transaccion no autenticada pero enviada en canal seguro",
    "SIGNATURE": "2e449095-3eb9-4139-a6b6-f3aaea0c545e",
    "CARD": "455170******8059",
    "MERCHANT": "456879852",
    "STATUS": "Authorized",
    "INSTALLMENTS_INFO": "04000000000",
    "ACTION_DESCRIPTION": "Aprobado y completado con exito",
    "ID_UNICO": "993203570048588",
    "AMOUNT": "35.0",
    "QUOTA_NUMBER": "04",
    "BRAND_HOST_ID": "566998",
    "AUTHORIZATION_CODE": "142237",
    "CURRENCY": "0604",
    "TRANSACTION_DATE": "240619185916",
    "ACTION_CODE": "000",
    "CVV2_VALIDATION_RESULT": "M",
    "ECI": "07",
    "ID_RESOLUTOR": "420201222142237",
    "BRAND": "visa",
    "ADQUIRENTE": "570009",
    "QUOTA_AMOUNT": "0.00",
    "BRAND_NAME": "VI",
    "PROCESS_CODE": "000000",
    "TRANSACTION_ID": "993203570048588",
    "QUOTA_DEFERRED": "0"
  }
}')
INSERT [dbo].[ORDEN_VENTA_VISA] ([idOrdVen], [purchaseNumber], [cadenaJson]) VALUES (60, N'33403439234', N'{
  "header": {
    "ecoreTransactionUUID": "3e64e03b-d931-442a-814d-0c5bb0a6c703",
    "ecoreTransactionDate": 1718841671100,
    "millis": 646
  },
  "fulfillment": {
    "channel": "pasarela",
    "merchantId": "456879852",
    "terminalId": "00000001",
    "captureType": "manual",
    "countable": true,
    "fastPayment": false,
    "signature": "3e64e03b-d931-442a-814d-0c5bb0a6c703"
  },
  "order": {
    "purchaseNumber": "33403439234",
    "amount": 35.0,
    "installment": 4,
    "currency": "PEN",
    "authorizedAmount": 35.0,
    "authorizationCode": "142237",
    "actionCode": "000",
    "traceNumber": "469349",
    "transactionDate": "240619190110",
    "transactionId": "993203570048588"
  },
  "dataMap": {
    "TERMINAL": "00000001",
    "BRAND_ACTION_CODE": "00",
    "BRAND_HOST_DATE_TIME": "201222141839",
    "TRACE_NUMBER": "469349",
    "CARD_TYPE": "C",
    "ECI_DESCRIPTION": "Transaccion no autenticada pero enviada en canal seguro",
    "SIGNATURE": "3e64e03b-d931-442a-814d-0c5bb0a6c703",
    "CARD": "455170******8059",
    "MERCHANT": "456879852",
    "STATUS": "Authorized",
    "INSTALLMENTS_INFO": "04000000000",
    "ACTION_DESCRIPTION": "Aprobado y completado con exito",
    "ID_UNICO": "993203570048588",
    "AMOUNT": "35.0",
    "QUOTA_NUMBER": "04",
    "BRAND_HOST_ID": "566998",
    "AUTHORIZATION_CODE": "142237",
    "CURRENCY": "0604",
    "TRANSACTION_DATE": "240619190110",
    "ACTION_CODE": "000",
    "CVV2_VALIDATION_RESULT": "M",
    "ECI": "07",
    "ID_RESOLUTOR": "420201222142237",
    "BRAND": "visa",
    "ADQUIRENTE": "570009",
    "QUOTA_AMOUNT": "0.00",
    "BRAND_NAME": "VI",
    "PROCESS_CODE": "000000",
    "TRANSACTION_ID": "993203570048588",
    "QUOTA_DEFERRED": "0"
  }
}')
INSERT [dbo].[ORDEN_VENTA_VISA] ([idOrdVen], [purchaseNumber], [cadenaJson]) VALUES (61, N'33261634940', N'{
  "header": {
    "ecoreTransactionUUID": "b1499ffe-c929-4d0e-a621-8234b003e5a6",
    "ecoreTransactionDate": 1718841790301,
    "millis": 1069
  },
  "fulfillment": {
    "channel": "pasarela",
    "merchantId": "456879852",
    "terminalId": "00000001",
    "captureType": "manual",
    "countable": true,
    "fastPayment": false,
    "signature": "b1499ffe-c929-4d0e-a621-8234b003e5a6"
  },
  "order": {
    "purchaseNumber": "33261634940",
    "amount": 35.0,
    "installment": 4,
    "currency": "PEN",
    "authorizedAmount": 35.0,
    "authorizationCode": "142237",
    "actionCode": "000",
    "traceNumber": "469350",
    "transactionDate": "240619190309",
    "transactionId": "993203570048588"
  },
  "dataMap": {
    "TERMINAL": "00000001",
    "BRAND_ACTION_CODE": "00",
    "BRAND_HOST_DATE_TIME": "201222141839",
    "TRACE_NUMBER": "469350",
    "CARD_TYPE": "C",
    "ECI_DESCRIPTION": "Transaccion no autenticada pero enviada en canal seguro",
    "SIGNATURE": "b1499ffe-c929-4d0e-a621-8234b003e5a6",
    "CARD": "455170******8059",
    "MERCHANT": "456879852",
    "STATUS": "Authorized",
    "INSTALLMENTS_INFO": "04000000000",
    "ACTION_DESCRIPTION": "Aprobado y completado con exito",
    "ID_UNICO": "993203570048588",
    "AMOUNT": "35.0",
    "QUOTA_NUMBER": "04",
    "BRAND_HOST_ID": "566998",
    "AUTHORIZATION_CODE": "142237",
    "CURRENCY": "0604",
    "TRANSACTION_DATE": "240619190309",
    "ACTION_CODE": "000",
    "CVV2_VALIDATION_RESULT": "M",
    "ECI": "07",
    "ID_RESOLUTOR": "420201222142237",
    "BRAND": "visa",
    "ADQUIRENTE": "570009",
    "QUOTA_AMOUNT": "0.00",
    "BRAND_NAME": "VI",
    "PROCESS_CODE": "000000",
    "TRANSACTION_ID": "993203570048588",
    "QUOTA_DEFERRED": "0"
  }
}')
INSERT [dbo].[ORDEN_VENTA_VISA] ([idOrdVen], [purchaseNumber], [cadenaJson]) VALUES (62, N'33276208587', N'{
  "header": {
    "ecoreTransactionUUID": "6506852d-78e6-41fa-bb38-19dc7086656c",
    "ecoreTransactionDate": 1718848413866,
    "millis": 1152
  },
  "fulfillment": {
    "channel": "pasarela",
    "merchantId": "456879852",
    "terminalId": "00000001",
    "captureType": "manual",
    "countable": true,
    "fastPayment": false,
    "signature": "6506852d-78e6-41fa-bb38-19dc7086656c"
  },
  "order": {
    "purchaseNumber": "33276208587",
    "amount": 7.2,
    "installment": 4,
    "currency": "PEN",
    "authorizedAmount": 7.2,
    "authorizationCode": "142237",
    "actionCode": "000",
    "traceNumber": "469355",
    "transactionDate": "240619205333",
    "transactionId": "993203570048588"
  },
  "dataMap": {
    "TERMINAL": "00000001",
    "BRAND_ACTION_CODE": "00",
    "BRAND_HOST_DATE_TIME": "201222141839",
    "TRACE_NUMBER": "469355",
    "CARD_TYPE": "C",
    "ECI_DESCRIPTION": "Transaccion no autenticada pero enviada en canal seguro",
    "SIGNATURE": "6506852d-78e6-41fa-bb38-19dc7086656c",
    "CARD": "455170******8059",
    "MERCHANT": "456879852",
    "STATUS": "Authorized",
    "INSTALLMENTS_INFO": "04000000000",
    "ACTION_DESCRIPTION": "Aprobado y completado con exito",
    "ID_UNICO": "993203570048588",
    "AMOUNT": "7.2",
    "QUOTA_NUMBER": "04",
    "BRAND_HOST_ID": "566998",
    "AUTHORIZATION_CODE": "142237",
    "CURRENCY": "0604",
    "TRANSACTION_DATE": "240619205333",
    "ACTION_CODE": "000",
    "CVV2_VALIDATION_RESULT": "M",
    "ECI": "07",
    "ID_RESOLUTOR": "420201222142237",
    "BRAND": "visa",
    "ADQUIRENTE": "570009",
    "QUOTA_AMOUNT": "0.00",
    "BRAND_NAME": "VI",
    "PROCESS_CODE": "000000",
    "TRANSACTION_ID": "993203570048588",
    "QUOTA_DEFERRED": "0"
  }
}')
INSERT [dbo].[ORDEN_VENTA_VISA] ([idOrdVen], [purchaseNumber], [cadenaJson]) VALUES (67, N'33785950414', N'{
  "header": {
    "ecoreTransactionUUID": "ed8b0b79-4d62-45c4-954b-164dd8c95aad",
    "ecoreTransactionDate": 1718864534141,
    "millis": 1122
  },
  "fulfillment": {
    "channel": "pasarela",
    "merchantId": "456879852",
    "terminalId": "00000001",
    "captureType": "manual",
    "countable": true,
    "fastPayment": false,
    "signature": "ed8b0b79-4d62-45c4-954b-164dd8c95aad"
  },
  "order": {
    "purchaseNumber": "33785950414",
    "amount": 10.6,
    "installment": 4,
    "currency": "PEN",
    "authorizedAmount": 10.6,
    "authorizationCode": "142237",
    "actionCode": "000",
    "traceNumber": "469409",
    "transactionDate": "240620012213",
    "transactionId": "993203570048588"
  },
  "dataMap": {
    "TERMINAL": "00000001",
    "BRAND_ACTION_CODE": "00",
    "BRAND_HOST_DATE_TIME": "201222141839",
    "TRACE_NUMBER": "469409",
    "CARD_TYPE": "C",
    "ECI_DESCRIPTION": "Transaccion no autenticada pero enviada en canal seguro",
    "SIGNATURE": "ed8b0b79-4d62-45c4-954b-164dd8c95aad",
    "CARD": "455170******8059",
    "MERCHANT": "456879852",
    "STATUS": "Authorized",
    "INSTALLMENTS_INFO": "04000000000",
    "ACTION_DESCRIPTION": "Aprobado y completado con exito",
    "ID_UNICO": "993203570048588",
    "AMOUNT": "10.6",
    "QUOTA_NUMBER": "04",
    "BRAND_HOST_ID": "566998",
    "AUTHORIZATION_CODE": "142237",
    "CURRENCY": "0604",
    "TRANSACTION_DATE": "240620012213",
    "ACTION_CODE": "000",
    "CVV2_VALIDATION_RESULT": "M",
    "ECI": "07",
    "ID_RESOLUTOR": "420201222142237",
    "BRAND": "visa",
    "ADQUIRENTE": "570009",
    "QUOTA_AMOUNT": "0.00",
    "BRAND_NAME": "VI",
    "PROCESS_CODE": "000000",
    "TRANSACTION_ID": "993203570048588",
    "QUOTA_DEFERRED": "0"
  }
}')
INSERT [dbo].[ORDEN_VENTA_VISA] ([idOrdVen], [purchaseNumber], [cadenaJson]) VALUES (68, N'33702088760', N'{
  "header": {
    "ecoreTransactionUUID": "08f69095-6abf-4e18-8366-3161a8c9116f",
    "ecoreTransactionDate": 1718900582051,
    "millis": 693
  },
  "fulfillment": {
    "channel": "pasarela",
    "merchantId": "456879852",
    "terminalId": "00000001",
    "captureType": "manual",
    "countable": true,
    "fastPayment": false,
    "signature": "08f69095-6abf-4e18-8366-3161a8c9116f"
  },
  "order": {
    "purchaseNumber": "33702088760",
    "amount": 6.8,
    "installment": 4,
    "currency": "PEN",
    "authorizedAmount": 6.8,
    "authorizationCode": "142237",
    "actionCode": "000",
    "traceNumber": "469633",
    "transactionDate": "240620112301",
    "transactionId": "993203570048588"
  },
  "dataMap": {
    "TERMINAL": "00000001",
    "BRAND_ACTION_CODE": "00",
    "BRAND_HOST_DATE_TIME": "201222141839",
    "TRACE_NUMBER": "469633",
    "CARD_TYPE": "C",
    "ECI_DESCRIPTION": "Transaccion no autenticada pero enviada en canal seguro",
    "SIGNATURE": "08f69095-6abf-4e18-8366-3161a8c9116f",
    "CARD": "455170******8059",
    "MERCHANT": "456879852",
    "STATUS": "Authorized",
    "INSTALLMENTS_INFO": "04000000000",
    "ACTION_DESCRIPTION": "Aprobado y completado con exito",
    "ID_UNICO": "993203570048588",
    "AMOUNT": "6.8",
    "QUOTA_NUMBER": "04",
    "BRAND_HOST_ID": "566998",
    "AUTHORIZATION_CODE": "142237",
    "CURRENCY": "0604",
    "TRANSACTION_DATE": "240620112301",
    "ACTION_CODE": "000",
    "CVV2_VALIDATION_RESULT": "M",
    "ECI": "07",
    "ID_RESOLUTOR": "420201222142237",
    "BRAND": "visa",
    "ADQUIRENTE": "570009",
    "QUOTA_AMOUNT": "0.00",
    "BRAND_NAME": "VI",
    "PROCESS_CODE": "000000",
    "TRANSACTION_ID": "993203570048588",
    "QUOTA_DEFERRED": "0"
  }
}')
INSERT [dbo].[ORDEN_VENTA_VISA] ([idOrdVen], [purchaseNumber], [cadenaJson]) VALUES (69, N'01702161207', N'{
  "header": {
    "ecoreTransactionUUID": "29bad4ae-6917-49bd-b987-fe684453359a",
    "ecoreTransactionDate": 1718902389068,
    "millis": 690
  },
  "fulfillment": {
    "channel": "pasarela",
    "merchantId": "456879852",
    "terminalId": "00000001",
    "captureType": "manual",
    "countable": true,
    "fastPayment": false,
    "signature": "29bad4ae-6917-49bd-b987-fe684453359a"
  },
  "order": {
    "purchaseNumber": "01702161207",
    "amount": 21.4,
    "installment": 4,
    "currency": "PEN",
    "authorizedAmount": 21.4,
    "authorizationCode": "142237",
    "actionCode": "000",
    "traceNumber": "469645",
    "transactionDate": "240620115308",
    "transactionId": "993203570048588"
  },
  "dataMap": {
    "TERMINAL": "00000001",
    "BRAND_ACTION_CODE": "00",
    "BRAND_HOST_DATE_TIME": "201222141839",
    "TRACE_NUMBER": "469645",
    "CARD_TYPE": "C",
    "ECI_DESCRIPTION": "Transaccion no autenticada pero enviada en canal seguro",
    "SIGNATURE": "29bad4ae-6917-49bd-b987-fe684453359a",
    "CARD": "455170******8059",
    "MERCHANT": "456879852",
    "STATUS": "Authorized",
    "INSTALLMENTS_INFO": "04000000000",
    "ACTION_DESCRIPTION": "Aprobado y completado con exito",
    "ID_UNICO": "993203570048588",
    "AMOUNT": "21.4",
    "QUOTA_NUMBER": "04",
    "BRAND_HOST_ID": "566998",
    "AUTHORIZATION_CODE": "142237",
    "CURRENCY": "0604",
    "TRANSACTION_DATE": "240620115308",
    "ACTION_CODE": "000",
    "CVV2_VALIDATION_RESULT": "M",
    "ECI": "07",
    "ID_RESOLUTOR": "420201222142237",
    "BRAND": "visa",
    "ADQUIRENTE": "570009",
    "QUOTA_AMOUNT": "0.00",
    "BRAND_NAME": "VI",
    "PROCESS_CODE": "000000",
    "TRANSACTION_ID": "993203570048588",
    "QUOTA_DEFERRED": "0"
  }
}')
INSERT [dbo].[ORDEN_VENTA_VISA] ([idOrdVen], [purchaseNumber], [cadenaJson]) VALUES (70, N'33776147200', N'{
  "header": {
    "ecoreTransactionUUID": "d389ec87-fb04-4184-a3fc-40c2e9f99fce",
    "ecoreTransactionDate": 1718902447931,
    "millis": 619
  },
  "fulfillment": {
    "channel": "pasarela",
    "merchantId": "456879852",
    "terminalId": "00000001",
    "captureType": "manual",
    "countable": true,
    "fastPayment": false,
    "signature": "d389ec87-fb04-4184-a3fc-40c2e9f99fce"
  },
  "order": {
    "purchaseNumber": "33776147200",
    "amount": 17.5,
    "installment": 4,
    "currency": "PEN",
    "authorizedAmount": 17.5,
    "authorizationCode": "142237",
    "actionCode": "000",
    "traceNumber": "469646",
    "transactionDate": "240620115407",
    "transactionId": "993203570048588"
  },
  "dataMap": {
    "TERMINAL": "00000001",
    "BRAND_ACTION_CODE": "00",
    "BRAND_HOST_DATE_TIME": "201222141839",
    "TRACE_NUMBER": "469646",
    "CARD_TYPE": "C",
    "ECI_DESCRIPTION": "Transaccion no autenticada pero enviada en canal seguro",
    "SIGNATURE": "d389ec87-fb04-4184-a3fc-40c2e9f99fce",
    "CARD": "455170******8059",
    "MERCHANT": "456879852",
    "STATUS": "Authorized",
    "INSTALLMENTS_INFO": "04000000000",
    "ACTION_DESCRIPTION": "Aprobado y completado con exito",
    "ID_UNICO": "993203570048588",
    "AMOUNT": "17.5",
    "QUOTA_NUMBER": "04",
    "BRAND_HOST_ID": "566998",
    "AUTHORIZATION_CODE": "142237",
    "CURRENCY": "0604",
    "TRANSACTION_DATE": "240620115407",
    "ACTION_CODE": "000",
    "CVV2_VALIDATION_RESULT": "M",
    "ECI": "07",
    "ID_RESOLUTOR": "420201222142237",
    "BRAND": "visa",
    "ADQUIRENTE": "570009",
    "QUOTA_AMOUNT": "0.00",
    "BRAND_NAME": "VI",
    "PROCESS_CODE": "000000",
    "TRANSACTION_ID": "993203570048588",
    "QUOTA_DEFERRED": "0"
  }
}')
INSERT [dbo].[ORDEN_VENTA_VISA] ([idOrdVen], [purchaseNumber], [cadenaJson]) VALUES (71, N'33141144255', N'{
  "header": {
    "ecoreTransactionUUID": "7dce8362-6732-473a-9b79-64c40310fe5a",
    "ecoreTransactionDate": 1718906491762,
    "millis": 1173
  },
  "fulfillment": {
    "channel": "pasarela",
    "merchantId": "456879852",
    "terminalId": "00000001",
    "captureType": "manual",
    "countable": true,
    "fastPayment": false,
    "signature": "7dce8362-6732-473a-9b79-64c40310fe5a"
  },
  "order": {
    "purchaseNumber": "33141144255",
    "amount": 52.5,
    "installment": 4,
    "currency": "PEN",
    "authorizedAmount": 52.5,
    "authorizationCode": "142237",
    "actionCode": "000",
    "traceNumber": "469666",
    "transactionDate": "240620130131",
    "transactionId": "993203570048588"
  },
  "dataMap": {
    "TERMINAL": "00000001",
    "BRAND_ACTION_CODE": "00",
    "BRAND_HOST_DATE_TIME": "201222141839",
    "TRACE_NUMBER": "469666",
    "CARD_TYPE": "C",
    "ECI_DESCRIPTION": "Transaccion no autenticada pero enviada en canal seguro",
    "SIGNATURE": "7dce8362-6732-473a-9b79-64c40310fe5a",
    "CARD": "455170******8059",
    "MERCHANT": "456879852",
    "STATUS": "Authorized",
    "INSTALLMENTS_INFO": "04000000000",
    "ACTION_DESCRIPTION": "Aprobado y completado con exito",
    "ID_UNICO": "993203570048588",
    "AMOUNT": "52.5",
    "QUOTA_NUMBER": "04",
    "BRAND_HOST_ID": "566998",
    "AUTHORIZATION_CODE": "142237",
    "CURRENCY": "0604",
    "TRANSACTION_DATE": "240620130131",
    "ACTION_CODE": "000",
    "CVV2_VALIDATION_RESULT": "M",
    "ECI": "07",
    "ID_RESOLUTOR": "420201222142237",
    "BRAND": "visa",
    "ADQUIRENTE": "570009",
    "QUOTA_AMOUNT": "0.00",
    "BRAND_NAME": "VI",
    "PROCESS_CODE": "000000",
    "TRANSACTION_ID": "993203570048588",
    "QUOTA_DEFERRED": "0"
  }
}')
INSERT [dbo].[ORDEN_VENTA_VISA] ([idOrdVen], [purchaseNumber], [cadenaJson]) VALUES (74, N'33701783053', N'{
  "header": {
    "ecoreTransactionUUID": "dd7a52dd-7eae-45e1-9c1e-25b0aa25c08d",
    "ecoreTransactionDate": 1719503479799,
    "millis": 639
  },
  "fulfillment": {
    "channel": "pasarela",
    "merchantId": "456879852",
    "terminalId": "00000001",
    "captureType": "manual",
    "countable": true,
    "fastPayment": false,
    "signature": "dd7a52dd-7eae-45e1-9c1e-25b0aa25c08d"
  },
  "order": {
    "purchaseNumber": "33701783053",
    "amount": 24.9,
    "installment": 4,
    "currency": "PEN",
    "authorizedAmount": 24.9,
    "authorizationCode": "{authorizationCode}",
    "actionCode": "000",
    "traceNumber": "476446",
    "transactionDate": "240627105119",
    "transactionId": "99320370048001"
  },
  "dataMap": {
    "TERMINAL": "00000001",
    "BRAND_ACTION_CODE": "00",
    "BRAND_HOST_DATE_TIME": "201222141839",
    "TRACE_NUMBER": "476446",
    "CARD_TYPE": "C",
    "ECI_DESCRIPTION": "Transaccion no autenticada pero enviada en canal seguro",
    "SIGNATURE": "dd7a52dd-7eae-45e1-9c1e-25b0aa25c08d",
    "CARD": "516003******0317",
    "MERCHANT": "456879852",
    "STATUS": "Authorized",
    "INSTALLMENTS_INFO": "04000000000",
    "ACTION_DESCRIPTION": "Aprobado y completado con exito",
    "ID_UNICO": "99320370048001",
    "AMOUNT": "24.9",
    "QUOTA_NUMBER": "04",
    "BRAND_HOST_ID": "566998",
    "AUTHORIZATION_CODE": "{authorizationCode}",
    "CURRENCY": "0604",
    "TRANSACTION_DATE": "240627105119",
    "ACTION_CODE": "000",
    "CVV2_VALIDATION_RESULT": "M",
    "ECI": "05",
    "ID_RESOLUTOR": "420201222142237",
    "BRAND": "mastercard",
    "ADQUIRENTE": "570009",
    "QUOTA_AMOUNT": "0.00",
    "BRAND_NAME": "MC",
    "PROCESS_CODE": "000000",
    "TRANSACTION_ID": "99320370048001",
    "QUOTA_DEFERRED": "0"
  }
}')
INSERT [dbo].[ORDEN_VENTA_VISA] ([idOrdVen], [purchaseNumber], [cadenaJson]) VALUES (75, N'33912884479', N'{
  "header": {
    "ecoreTransactionUUID": "784a77f1-6597-4f7a-a823-8ddfba57cc39",
    "ecoreTransactionDate": 1719792272890,
    "millis": 706
  },
  "fulfillment": {
    "channel": "pasarela",
    "merchantId": "456879852",
    "terminalId": "00000001",
    "captureType": "manual",
    "countable": true,
    "fastPayment": false,
    "signature": "784a77f1-6597-4f7a-a823-8ddfba57cc39"
  },
  "order": {
    "purchaseNumber": "33912884479",
    "amount": 12.0,
    "installment": 4,
    "currency": "PEN",
    "authorizedAmount": 12.0,
    "authorizationCode": "142237",
    "actionCode": "000",
    "traceNumber": "478609",
    "transactionDate": "240630190432",
    "transactionId": "993203570048588"
  },
  "dataMap": {
    "TERMINAL": "00000001",
    "BRAND_ACTION_CODE": "00",
    "BRAND_HOST_DATE_TIME": "201222141839",
    "TRACE_NUMBER": "478609",
    "CARD_TYPE": "C",
    "ECI_DESCRIPTION": "Transaccion no autenticada pero enviada en canal seguro",
    "SIGNATURE": "784a77f1-6597-4f7a-a823-8ddfba57cc39",
    "CARD": "455170******8059",
    "MERCHANT": "456879852",
    "STATUS": "Authorized",
    "INSTALLMENTS_INFO": "04000000000",
    "ACTION_DESCRIPTION": "Aprobado y completado con exito",
    "ID_UNICO": "993203570048588",
    "AMOUNT": "12.0",
    "QUOTA_NUMBER": "04",
    "BRAND_HOST_ID": "566998",
    "AUTHORIZATION_CODE": "142237",
    "CURRENCY": "0604",
    "TRANSACTION_DATE": "240630190432",
    "ACTION_CODE": "000",
    "CVV2_VALIDATION_RESULT": "M",
    "ECI": "07",
    "ID_RESOLUTOR": "420201222142237",
    "BRAND": "visa",
    "ADQUIRENTE": "570009",
    "QUOTA_AMOUNT": "0.00",
    "BRAND_NAME": "VI",
    "PROCESS_CODE": "000000",
    "TRANSACTION_ID": "993203570048588",
    "QUOTA_DEFERRED": "0"
  }
}')
INSERT [dbo].[ORDEN_VENTA_VISA] ([idOrdVen], [purchaseNumber], [cadenaJson]) VALUES (79, N'01556069440', N'{
  "header": {
    "ecoreTransactionUUID": "70302227-3e35-43df-af04-7fa8f0d283ad",
    "ecoreTransactionDate": 1720062907423,
    "millis": 1128
  },
  "fulfillment": {
    "channel": "pasarela",
    "merchantId": "456879852",
    "terminalId": "00000001",
    "captureType": "manual",
    "countable": true,
    "fastPayment": false,
    "signature": "70302227-3e35-43df-af04-7fa8f0d283ad"
  },
  "order": {
    "purchaseNumber": "01556069440",
    "amount": 18.5,
    "installment": 4,
    "currency": "PEN",
    "authorizedAmount": 18.5,
    "authorizationCode": "142237",
    "actionCode": "000",
    "traceNumber": "483352",
    "transactionDate": "240703221506",
    "transactionId": "993203570048588"
  },
  "dataMap": {
    "TERMINAL": "00000001",
    "BRAND_ACTION_CODE": "00",
    "BRAND_HOST_DATE_TIME": "201222141839",
    "TRACE_NUMBER": "483352",
    "CARD_TYPE": "C",
    "ECI_DESCRIPTION": "Transaccion no autenticada pero enviada en canal seguro",
    "SIGNATURE": "70302227-3e35-43df-af04-7fa8f0d283ad",
    "CARD": "455170******8059",
    "MERCHANT": "456879852",
    "STATUS": "Authorized",
    "INSTALLMENTS_INFO": "04000000000",
    "ACTION_DESCRIPTION": "Aprobado y completado con exito",
    "ID_UNICO": "993203570048588",
    "AMOUNT": "18.5",
    "QUOTA_NUMBER": "04",
    "BRAND_HOST_ID": "566998",
    "AUTHORIZATION_CODE": "142237",
    "CURRENCY": "0604",
    "TRANSACTION_DATE": "240703221506",
    "ACTION_CODE": "000",
    "CVV2_VALIDATION_RESULT": "M",
    "ECI": "07",
    "ID_RESOLUTOR": "420201222142237",
    "BRAND": "visa",
    "ADQUIRENTE": "570009",
    "QUOTA_AMOUNT": "0.00",
    "BRAND_NAME": "VI",
    "PROCESS_CODE": "000000",
    "TRANSACTION_ID": "993203570048588",
    "QUOTA_DEFERRED": "0"
  }
}')
INSERT [dbo].[ORDEN_VENTA_VISA] ([idOrdVen], [purchaseNumber], [cadenaJson]) VALUES (80, N'33373593482', N'{
  "header": {
    "ecoreTransactionUUID": "62ae5de9-8faf-4343-bea1-f3267fc3197d",
    "ecoreTransactionDate": 1720062974396,
    "millis": 646
  },
  "fulfillment": {
    "channel": "pasarela",
    "merchantId": "456879852",
    "terminalId": "00000001",
    "captureType": "manual",
    "countable": true,
    "fastPayment": false,
    "signature": "62ae5de9-8faf-4343-bea1-f3267fc3197d"
  },
  "order": {
    "purchaseNumber": "33373593482",
    "amount": 92.0,
    "installment": 0,
    "currency": "PEN",
    "authorizedAmount": 92.0,
    "authorizationCode": "091800",
    "actionCode": "000",
    "traceNumber": "483353",
    "transactionDate": "240703221614",
    "transactionId": "993211570048581"
  },
  "dataMap": {
    "TERMINAL": "00000001",
    "BRAND_ACTION_CODE": "00",
    "BRAND_HOST_DATE_TIME": "201222141839",
    "TRACE_NUMBER": "483353",
    "CARD_TYPE": "D",
    "ECI_DESCRIPTION": "Transaccion no autenticada pero enviada en canal seguro",
    "SIGNATURE": "62ae5de9-8faf-4343-bea1-f3267fc3197d",
    "CARD": "447411******2240",
    "MERCHANT": "109705108",
    "STATUS": "Authorized",
    "ACTION_DESCRIPTION": "Aprobado y completado con exito",
    "ID_UNICO": "993211570048581",
    "AMOUNT": "92.0",
    "AUTHORIZATION_CODE": "091800",
    "CURRENCY": "0604",
    "TRANSACTION_DATE": "240703221614",
    "ACTION_CODE": "000",
    "CVV2_VALIDATION_RESULT": "M",
    "ECI": "07",
    "ID_RESOLUTOR": "420201222142237",
    "BRAND": "visa",
    "ADQUIRENTE": "570002",
    "BRAND_NAME": "VI",
    "PROCESS_CODE": "000000",
    "TRANSACTION_ID": "993211570048581"
  }
}')
INSERT [dbo].[ORDEN_VENTA_VISA] ([idOrdVen], [purchaseNumber], [cadenaJson]) VALUES (84, N'01227710277', N'{
  "header": {
    "ecoreTransactionUUID": "59bc6a3e-181b-4331-a2c7-32e6c0741252",
    "ecoreTransactionDate": 1720067975149,
    "millis": 1117
  },
  "fulfillment": {
    "channel": "pasarela",
    "merchantId": "456879852",
    "terminalId": "00000001",
    "captureType": "manual",
    "countable": true,
    "fastPayment": false,
    "signature": "59bc6a3e-181b-4331-a2c7-32e6c0741252"
  },
  "order": {
    "purchaseNumber": "01227710277",
    "amount": 20.0,
    "installment": 0,
    "currency": "PEN",
    "authorizedAmount": 20.0,
    "authorizationCode": "091800",
    "actionCode": "000",
    "traceNumber": "483360",
    "transactionDate": "240703233934",
    "transactionId": "993211570048581"
  },
  "dataMap": {
    "TERMINAL": "00000001",
    "BRAND_ACTION_CODE": "00",
    "BRAND_HOST_DATE_TIME": "201222141839",
    "TRACE_NUMBER": "483360",
    "CARD_TYPE": "D",
    "ECI_DESCRIPTION": "Transaccion no autenticada pero enviada en canal seguro",
    "SIGNATURE": "59bc6a3e-181b-4331-a2c7-32e6c0741252",
    "CARD": "447411******2240",
    "MERCHANT": "109705108",
    "STATUS": "Authorized",
    "ACTION_DESCRIPTION": "Aprobado y completado con exito",
    "ID_UNICO": "993211570048581",
    "AMOUNT": "20.0",
    "AUTHORIZATION_CODE": "091800",
    "CURRENCY": "0604",
    "TRANSACTION_DATE": "240703233934",
    "ACTION_CODE": "000",
    "CVV2_VALIDATION_RESULT": "M",
    "ECI": "07",
    "ID_RESOLUTOR": "420201222142237",
    "BRAND": "visa",
    "ADQUIRENTE": "570002",
    "BRAND_NAME": "VI",
    "PROCESS_CODE": "000000",
    "TRANSACTION_ID": "993211570048581"
  }
}')
INSERT [dbo].[ORDEN_VENTA_VISA] ([idOrdVen], [purchaseNumber], [cadenaJson]) VALUES (87, N'01630961934', N'{
  "header": {
    "ecoreTransactionUUID": "b7d9fed6-9278-49f9-99f8-1f2dda485dbb",
    "ecoreTransactionDate": 1720103948041,
    "millis": 768
  },
  "fulfillment": {
    "channel": "pasarela",
    "merchantId": "456879852",
    "terminalId": "00000001",
    "captureType": "manual",
    "countable": true,
    "fastPayment": false,
    "signature": "b7d9fed6-9278-49f9-99f8-1f2dda485dbb"
  },
  "order": {
    "purchaseNumber": "01630961934",
    "amount": 41.1,
    "installment": 4,
    "currency": "PEN",
    "authorizedAmount": 41.1,
    "authorizationCode": "142237",
    "actionCode": "000",
    "traceNumber": "484631",
    "transactionDate": "240704093907",
    "transactionId": "993203570048588"
  },
  "dataMap": {
    "TERMINAL": "00000001",
    "BRAND_ACTION_CODE": "00",
    "BRAND_HOST_DATE_TIME": "201222141839",
    "TRACE_NUMBER": "484631",
    "CARD_TYPE": "C",
    "ECI_DESCRIPTION": "Transaccion no autenticada pero enviada en canal seguro",
    "SIGNATURE": "b7d9fed6-9278-49f9-99f8-1f2dda485dbb",
    "CARD": "455170******8059",
    "MERCHANT": "456879852",
    "STATUS": "Authorized",
    "INSTALLMENTS_INFO": "04000000000",
    "ACTION_DESCRIPTION": "Aprobado y completado con exito",
    "ID_UNICO": "993203570048588",
    "AMOUNT": "41.1",
    "QUOTA_NUMBER": "04",
    "BRAND_HOST_ID": "566998",
    "AUTHORIZATION_CODE": "142237",
    "CURRENCY": "0604",
    "TRANSACTION_DATE": "240704093907",
    "ACTION_CODE": "000",
    "CVV2_VALIDATION_RESULT": "M",
    "ECI": "07",
    "ID_RESOLUTOR": "420201222142237",
    "BRAND": "visa",
    "ADQUIRENTE": "570009",
    "QUOTA_AMOUNT": "0.00",
    "BRAND_NAME": "VI",
    "PROCESS_CODE": "000000",
    "TRANSACTION_ID": "993203570048588",
    "QUOTA_DEFERRED": "0"
  }
}')
INSERT [dbo].[ORDEN_VENTA_VISA] ([idOrdVen], [purchaseNumber], [cadenaJson]) VALUES (73, N'33318005452', N'{
  "header": {
    "ecoreTransactionUUID": "9bcf24a1-09a0-4a8e-906c-9877b6895d29",
    "ecoreTransactionDate": 1718946238161,
    "millis": 1157
  },
  "fulfillment": {
    "channel": "pasarela",
    "merchantId": "456879852",
    "terminalId": "00000001",
    "captureType": "manual",
    "countable": true,
    "fastPayment": false,
    "signature": "9bcf24a1-09a0-4a8e-906c-9877b6895d29"
  },
  "order": {
    "purchaseNumber": "33318005452",
    "amount": 25.5,
    "installment": 4,
    "currency": "PEN",
    "authorizedAmount": 25.5,
    "authorizationCode": "142237",
    "actionCode": "000",
    "traceNumber": "469827",
    "transactionDate": "240621000357",
    "transactionId": "993203570048588"
  },
  "dataMap": {
    "TERMINAL": "00000001",
    "BRAND_ACTION_CODE": "00",
    "BRAND_HOST_DATE_TIME": "201222141839",
    "TRACE_NUMBER": "469827",
    "CARD_TYPE": "C",
    "ECI_DESCRIPTION": "Transaccion no autenticada pero enviada en canal seguro",
    "SIGNATURE": "9bcf24a1-09a0-4a8e-906c-9877b6895d29",
    "CARD": "455170******8059",
    "MERCHANT": "456879852",
    "STATUS": "Authorized",
    "INSTALLMENTS_INFO": "04000000000",
    "ACTION_DESCRIPTION": "Aprobado y completado con exito",
    "ID_UNICO": "993203570048588",
    "AMOUNT": "25.5",
    "QUOTA_NUMBER": "04",
    "BRAND_HOST_ID": "566998",
    "AUTHORIZATION_CODE": "142237",
    "CURRENCY": "0604",
    "TRANSACTION_DATE": "240621000357",
    "ACTION_CODE": "000",
    "CVV2_VALIDATION_RESULT": "M",
    "ECI": "07",
    "ID_RESOLUTOR": "420201222142237",
    "BRAND": "visa",
    "ADQUIRENTE": "570009",
    "QUOTA_AMOUNT": "0.00",
    "BRAND_NAME": "VI",
    "PROCESS_CODE": "000000",
    "TRANSACTION_ID": "993203570048588",
    "QUOTA_DEFERRED": "0"
  }
}')
INSERT [dbo].[ORDEN_VENTA_VISA] ([idOrdVen], [purchaseNumber], [cadenaJson]) VALUES (81, N'33522724206', N'{
  "header": {
    "ecoreTransactionUUID": "b05743e0-3be5-419e-9643-8d862860a1ef",
    "ecoreTransactionDate": 1720063197957,
    "millis": 640
  },
  "fulfillment": {
    "channel": "pasarela",
    "merchantId": "456879852",
    "terminalId": "00000001",
    "captureType": "manual",
    "countable": true,
    "fastPayment": false,
    "signature": "b05743e0-3be5-419e-9643-8d862860a1ef"
  },
  "order": {
    "purchaseNumber": "33522724206",
    "amount": 75.2,
    "installment": 0,
    "currency": "PEN",
    "authorizedAmount": 75.2,
    "authorizationCode": "091800",
    "actionCode": "000",
    "traceNumber": "483356",
    "transactionDate": "240703221957",
    "transactionId": "993211570048581"
  },
  "dataMap": {
    "TERMINAL": "00000001",
    "BRAND_ACTION_CODE": "00",
    "BRAND_HOST_DATE_TIME": "201222141839",
    "TRACE_NUMBER": "483356",
    "CARD_TYPE": "D",
    "ECI_DESCRIPTION": "Transaccion no autenticada pero enviada en canal seguro",
    "SIGNATURE": "b05743e0-3be5-419e-9643-8d862860a1ef",
    "CARD": "447411******2240",
    "MERCHANT": "109705108",
    "STATUS": "Authorized",
    "ACTION_DESCRIPTION": "Aprobado y completado con exito",
    "ID_UNICO": "993211570048581",
    "AMOUNT": "75.2",
    "AUTHORIZATION_CODE": "091800",
    "CURRENCY": "0604",
    "TRANSACTION_DATE": "240703221957",
    "ACTION_CODE": "000",
    "CVV2_VALIDATION_RESULT": "M",
    "ECI": "07",
    "ID_RESOLUTOR": "420201222142237",
    "BRAND": "visa",
    "ADQUIRENTE": "570002",
    "BRAND_NAME": "VI",
    "PROCESS_CODE": "000000",
    "TRANSACTION_ID": "993211570048581"
  }
}')
GO
SET IDENTITY_INSERT [dbo].[PROVEEDOR] ON 

INSERT [dbo].[PROVEEDOR] ([idProv], [idAnimal], [idUbigeo], [nombProv], [estado], [fecha], [direccion], [telefono], [ruc]) VALUES (1, 1, 130111, N'Empresa Ficticia 1', 1, CAST(N'2024-06-16' AS Date), N'Av. Siempre Viva 123, Ciudad Futura', 987678765, 45678901234)
INSERT [dbo].[PROVEEDOR] ([idProv], [idAnimal], [idUbigeo], [nombProv], [estado], [fecha], [direccion], [telefono], [ruc]) VALUES (2, 2, 130403, N'Empresa Ficticia 2', 1, CAST(N'2024-06-16' AS Date), N'Calle Inventada 456, Villa Imaginaria', 876543210, 56789012345)
INSERT [dbo].[PROVEEDOR] ([idProv], [idAnimal], [idUbigeo], [nombProv], [estado], [fecha], [direccion], [telefono], [ruc]) VALUES (3, 3, 61111, N'Empresa Ficticia 3', 1, CAST(N'2024-06-19' AS Date), N'Paseo de la Fantasía 789, Pueblo Ilusión', 765432109, 67890123456)
INSERT [dbo].[PROVEEDOR] ([idProv], [idAnimal], [idUbigeo], [nombProv], [estado], [fecha], [direccion], [telefono], [ruc]) VALUES (4, 4, 130208, N'Empresa Ficticia 4', 1, CAST(N'2024-06-16' AS Date), N'Carrera de los Sueños 101, Ciudad de Ensueño', 654321098, 78901234567)
INSERT [dbo].[PROVEEDOR] ([idProv], [idAnimal], [idUbigeo], [nombProv], [estado], [fecha], [direccion], [telefono], [ruc]) VALUES (5, 5, 140101, N'Empresa Ficticia 5', 1, CAST(N'2024-06-19' AS Date), N'Bulevar de la Quimera 202, Aldea Utopía', 965482136, 89012345678)
INSERT [dbo].[PROVEEDOR] ([idProv], [idAnimal], [idUbigeo], [nombProv], [estado], [fecha], [direccion], [telefono], [ruc]) VALUES (6, 1, 10101, N'Empresa Ficticia 6', 1, CAST(N'2024-06-19' AS Date), N'Plaza Imaginaria 303, Metropoli Fantástica', 432109876, 90123456789)
INSERT [dbo].[PROVEEDOR] ([idProv], [idAnimal], [idUbigeo], [nombProv], [estado], [fecha], [direccion], [telefono], [ruc]) VALUES (7, 2, 150119, N'PORCINOS DEL PERU GROUP E.I.R.L.', 1, CAST(N'2024-06-17' AS Date), N'---- SUB ESTACION N.13 (GRUPO MZA. J-05 ASC. SUMAC PACHA LIMA LIMA LURIN', 9185426351, 20606012820)
SET IDENTITY_INSERT [dbo].[PROVEEDOR] OFF
GO
SET IDENTITY_INSERT [dbo].[REQUERIMIENTO_COMPRA] ON 

INSERT [dbo].[REQUERIMIENTO_COMPRA] ([idReqComp], [desReqComp], [cantidad], [estado], [idInv]) VALUES (1, N'Falta Pollo', 30, 0, 1)
INSERT [dbo].[REQUERIMIENTO_COMPRA] ([idReqComp], [desReqComp], [cantidad], [estado], [idInv]) VALUES (2, N'Falta Cordero', 30, 0, 4)
INSERT [dbo].[REQUERIMIENTO_COMPRA] ([idReqComp], [desReqComp], [cantidad], [estado], [idInv]) VALUES (3, N'Falta Pollo', 20, 0, 1)
INSERT [dbo].[REQUERIMIENTO_COMPRA] ([idReqComp], [desReqComp], [cantidad], [estado], [idInv]) VALUES (4, N'falta paletilla de cordero', 10, 0, 4)
INSERT [dbo].[REQUERIMIENTO_COMPRA] ([idReqComp], [desReqComp], [cantidad], [estado], [idInv]) VALUES (5, N'falta chuleta de cordero', 10, 0, 3)
SET IDENTITY_INSERT [dbo].[REQUERIMIENTO_COMPRA] OFF
GO
SET IDENTITY_INSERT [dbo].[ROL] ON 

INSERT [dbo].[ROL] ([idRol], [descripcion], [estado]) VALUES (1, N'Administrador', 1)
INSERT [dbo].[ROL] ([idRol], [descripcion], [estado]) VALUES (2, N'Jefe de almacen', 1)
INSERT [dbo].[ROL] ([idRol], [descripcion], [estado]) VALUES (3, N'Jefe de compras', 1)
INSERT [dbo].[ROL] ([idRol], [descripcion], [estado]) VALUES (4, N'Jefe de ventas', 1)
INSERT [dbo].[ROL] ([idRol], [descripcion], [estado]) VALUES (5, N'Vendedor', 1)
SET IDENTITY_INSERT [dbo].[ROL] OFF
GO
SET IDENTITY_INSERT [dbo].[TRABAJADOR] ON 

INSERT [dbo].[TRABAJADOR] ([idTrab], [idRol], [idUbigeo], [nombTrab], [estado], [usuario], [contraseña], [fechaRegistro], [numDoc]) VALUES (1, 1, 130105, N'Carlos Garcia', 1, N'AdmiGarcia', N'123', CAST(N'2024-06-07T23:02:29.997' AS DateTime), 76543210)
INSERT [dbo].[TRABAJADOR] ([idTrab], [idRol], [idUbigeo], [nombTrab], [estado], [usuario], [contraseña], [fechaRegistro], [numDoc]) VALUES (2, 1, 130105, N'Jhordany Torres', 1, N'sa', N'123', CAST(N'2024-06-16T23:34:59.177' AS DateTime), 98765432)
INSERT [dbo].[TRABAJADOR] ([idTrab], [idRol], [idUbigeo], [nombTrab], [estado], [usuario], [contraseña], [fechaRegistro], [numDoc]) VALUES (4, 3, 131101, N'Jose Arteaga', 1, N'UserVillena', N'345', CAST(N'2024-06-12T21:36:06.423' AS DateTime), 23568978)
INSERT [dbo].[TRABAJADOR] ([idTrab], [idRol], [idUbigeo], [nombTrab], [estado], [usuario], [contraseña], [fechaRegistro], [numDoc]) VALUES (5, 4, 130701, N'Arturo Ibañes', 1, N'UserArturo', N'234', CAST(N'2024-06-12T21:34:56.187' AS DateTime), 56235689)
INSERT [dbo].[TRABAJADOR] ([idTrab], [idRol], [idUbigeo], [nombTrab], [estado], [usuario], [contraseña], [fechaRegistro], [numDoc]) VALUES (6, 5, 150701, N'Andres Rodriguez', 1, N'UserAndres', N'345', CAST(N'2024-06-12T21:35:31.337' AS DateTime), 87456321)
INSERT [dbo].[TRABAJADOR] ([idTrab], [idRol], [idUbigeo], [nombTrab], [estado], [usuario], [contraseña], [fechaRegistro], [numDoc]) VALUES (7, 1, 130105, N'pp', 1, N'pp', N'123', CAST(N'2024-06-17T00:00:00.000' AS DateTime), 12345678)
INSERT [dbo].[TRABAJADOR] ([idTrab], [idRol], [idUbigeo], [nombTrab], [estado], [usuario], [contraseña], [fechaRegistro], [numDoc]) VALUES (8, 5, 130203, N'DAVID ADRIAN MUÑOZ', 1, N'usAdrian', N'123', CAST(N'2024-06-17T18:50:49.410' AS DateTime), 70692252)
INSERT [dbo].[TRABAJADOR] ([idTrab], [idRol], [idUbigeo], [nombTrab], [estado], [usuario], [contraseña], [fechaRegistro], [numDoc]) VALUES (9, 2, 130403, N'CHESTER FABRIZIO QUIÑONES', 1, N'Fabri553', N'123456', CAST(N'2024-06-20T11:37:56.273' AS DateTime), 78021678)
SET IDENTITY_INSERT [dbo].[TRABAJADOR] OFF
GO
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10101, N'AMAZONAS', N'CHACHAPOYAS', N'CHACHAPOYAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10102, N'AMAZONAS', N'CHACHAPOYAS', N'ASUNCION')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10103, N'AMAZONAS', N'CHACHAPOYAS', N'BALSAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10104, N'AMAZONAS', N'CHACHAPOYAS', N'CHETO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10105, N'AMAZONAS', N'CHACHAPOYAS', N'CHILIQUIN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10106, N'AMAZONAS', N'CHACHAPOYAS', N'CHUQUIBAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10107, N'AMAZONAS', N'CHACHAPOYAS', N'GRANADA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10108, N'AMAZONAS', N'CHACHAPOYAS', N'HUANCAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10109, N'AMAZONAS', N'CHACHAPOYAS', N'LA JALCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10110, N'AMAZONAS', N'CHACHAPOYAS', N'LEIMEBAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10111, N'AMAZONAS', N'CHACHAPOYAS', N'LEVANTO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10112, N'AMAZONAS', N'CHACHAPOYAS', N'MAGDALENA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10113, N'AMAZONAS', N'CHACHAPOYAS', N'MARISCAL CASTILLA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10114, N'AMAZONAS', N'CHACHAPOYAS', N'MOLINOPAMPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10115, N'AMAZONAS', N'CHACHAPOYAS', N'MONTEVIDEO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10116, N'AMAZONAS', N'CHACHAPOYAS', N'OLLEROS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10117, N'AMAZONAS', N'CHACHAPOYAS', N'QUINJALCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10118, N'AMAZONAS', N'CHACHAPOYAS', N'SAN FRANCISCO DE DAGUAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10119, N'AMAZONAS', N'CHACHAPOYAS', N'SAN ISIDRO DE MAINO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10120, N'AMAZONAS', N'CHACHAPOYAS', N'SOLOCO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10121, N'AMAZONAS', N'CHACHAPOYAS', N'SONCHE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10201, N'AMAZONAS', N'BAGUA', N'BAGUA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10202, N'AMAZONAS', N'BAGUA', N'ARAMANGO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10203, N'AMAZONAS', N'BAGUA', N'COPALLIN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10204, N'AMAZONAS', N'BAGUA', N'EL PARCO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10205, N'AMAZONAS', N'BAGUA', N'IMAZA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10206, N'AMAZONAS', N'BAGUA', N'LA PECA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10301, N'AMAZONAS', N'BONGARA', N'JUMBILLA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10302, N'AMAZONAS', N'BONGARA', N'CHISQUILLA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10303, N'AMAZONAS', N'BONGARA', N'CHURUJA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10304, N'AMAZONAS', N'BONGARA', N'COROSHA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10305, N'AMAZONAS', N'BONGARA', N'CUISPES')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10306, N'AMAZONAS', N'BONGARA', N'FLORIDA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10307, N'AMAZONAS', N'BONGARA', N'JAZAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10308, N'AMAZONAS', N'BONGARA', N'RECTA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10309, N'AMAZONAS', N'BONGARA', N'SAN CARLOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10310, N'AMAZONAS', N'BONGARA', N'SHIPASBAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10311, N'AMAZONAS', N'BONGARA', N'VALERA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10312, N'AMAZONAS', N'BONGARA', N'YAMBRASBAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10401, N'AMAZONAS', N'CONDORCANQUI', N'NIEVA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10402, N'AMAZONAS', N'CONDORCANQUI', N'EL CENEPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10403, N'AMAZONAS', N'CONDORCANQUI', N'RIO SANTIAGO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10501, N'AMAZONAS', N'LUYA', N'LAMUD')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10502, N'AMAZONAS', N'LUYA', N'CAMPORREDONDO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10503, N'AMAZONAS', N'LUYA', N'COCABAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10504, N'AMAZONAS', N'LUYA', N'COLCAMAR')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10505, N'AMAZONAS', N'LUYA', N'CONILA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10506, N'AMAZONAS', N'LUYA', N'INGUILPATA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10507, N'AMAZONAS', N'LUYA', N'LONGUITA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10508, N'AMAZONAS', N'LUYA', N'LONYA CHICO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10509, N'AMAZONAS', N'LUYA', N'LUYA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10510, N'AMAZONAS', N'LUYA', N'LUYA VIEJO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10511, N'AMAZONAS', N'LUYA', N'MARIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10512, N'AMAZONAS', N'LUYA', N'OCALLI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10513, N'AMAZONAS', N'LUYA', N'OCUMAL')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10514, N'AMAZONAS', N'LUYA', N'PISUQUIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10515, N'AMAZONAS', N'LUYA', N'PROVIDENCIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10516, N'AMAZONAS', N'LUYA', N'SAN CRISTOBAL')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10517, N'AMAZONAS', N'LUYA', N'SAN FRANCISCO DEL YESO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10518, N'AMAZONAS', N'LUYA', N'SAN JERONIMO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10519, N'AMAZONAS', N'LUYA', N'SAN JUAN DE LOPECANCHA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10520, N'AMAZONAS', N'LUYA', N'SANTA CATALINA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10521, N'AMAZONAS', N'LUYA', N'SANTO TOMAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10522, N'AMAZONAS', N'LUYA', N'TINGO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10523, N'AMAZONAS', N'LUYA', N'TRITA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10601, N'AMAZONAS', N'RODRIGUEZ DE MENDOZA', N'SAN NICOLAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10602, N'AMAZONAS', N'RODRIGUEZ DE MENDOZA', N'CHIRIMOTO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10603, N'AMAZONAS', N'RODRIGUEZ DE MENDOZA', N'COCHAMAL')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10604, N'AMAZONAS', N'RODRIGUEZ DE MENDOZA', N'HUAMBO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10605, N'AMAZONAS', N'RODRIGUEZ DE MENDOZA', N'LIMABAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10606, N'AMAZONAS', N'RODRIGUEZ DE MENDOZA', N'LONGAR')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10607, N'AMAZONAS', N'RODRIGUEZ DE MENDOZA', N'MARISCAL BENAVIDES')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10608, N'AMAZONAS', N'RODRIGUEZ DE MENDOZA', N'MILPUC')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10609, N'AMAZONAS', N'RODRIGUEZ DE MENDOZA', N'OMIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10610, N'AMAZONAS', N'RODRIGUEZ DE MENDOZA', N'SANTA ROSA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10611, N'AMAZONAS', N'RODRIGUEZ DE MENDOZA', N'TOTORA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10612, N'AMAZONAS', N'RODRIGUEZ DE MENDOZA', N'VISTA ALEGRE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10701, N'AMAZONAS', N'UTCUBAMBA', N'BAGUA GRANDE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10702, N'AMAZONAS', N'UTCUBAMBA', N'CAJARURO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10703, N'AMAZONAS', N'UTCUBAMBA', N'CUMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10704, N'AMAZONAS', N'UTCUBAMBA', N'EL MILAGRO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10705, N'AMAZONAS', N'UTCUBAMBA', N'JAMALCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10706, N'AMAZONAS', N'UTCUBAMBA', N'LONYA GRANDE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (10707, N'AMAZONAS', N'UTCUBAMBA', N'YAMON')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20101, N'ANCASH', N'HUARAZ', N'HUARAZ')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20102, N'ANCASH', N'HUARAZ', N'COCHABAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20103, N'ANCASH', N'HUARAZ', N'COLCABAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20104, N'ANCASH', N'HUARAZ', N'HUANCHAY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20105, N'ANCASH', N'HUARAZ', N'INDEPENDENCIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20106, N'ANCASH', N'HUARAZ', N'JANGAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20107, N'ANCASH', N'HUARAZ', N'LA LIBERTAD')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20108, N'ANCASH', N'HUARAZ', N'OLLEROS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20109, N'ANCASH', N'HUARAZ', N'PAMPAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20110, N'ANCASH', N'HUARAZ', N'PARIACOTO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20111, N'ANCASH', N'HUARAZ', N'PIRA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20112, N'ANCASH', N'HUARAZ', N'TARICA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20201, N'ANCASH', N'AIJA', N'AIJA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20202, N'ANCASH', N'AIJA', N'CORIS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20203, N'ANCASH', N'AIJA', N'HUACLLAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20204, N'ANCASH', N'AIJA', N'LA MERCED')
GO
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20205, N'ANCASH', N'AIJA', N'SUCCHA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20301, N'ANCASH', N'ANTONIO RAYMONDI', N'LLAMELLIN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20302, N'ANCASH', N'ANTONIO RAYMONDI', N'ACZO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20303, N'ANCASH', N'ANTONIO RAYMONDI', N'CHACCHO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20304, N'ANCASH', N'ANTONIO RAYMONDI', N'CHINGAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20305, N'ANCASH', N'ANTONIO RAYMONDI', N'MIRGAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20306, N'ANCASH', N'ANTONIO RAYMONDI', N'SAN JUAN DE RONTOY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20401, N'ANCASH', N'ASUNCION', N'CHACAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20402, N'ANCASH', N'ASUNCION', N'ACOCHACA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20501, N'ANCASH', N'BOLOGNESI', N'CHIQUIAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20502, N'ANCASH', N'BOLOGNESI', N'ABELARDO PARDO LEZAMETA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20503, N'ANCASH', N'BOLOGNESI', N'ANTONIO RAYMONDI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20504, N'ANCASH', N'BOLOGNESI', N'AQUIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20505, N'ANCASH', N'BOLOGNESI', N'CAJACAY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20506, N'ANCASH', N'BOLOGNESI', N'CANIS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20507, N'ANCASH', N'BOLOGNESI', N'COLQUIOC')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20508, N'ANCASH', N'BOLOGNESI', N'HUALLANCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20509, N'ANCASH', N'BOLOGNESI', N'HUASTA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20510, N'ANCASH', N'BOLOGNESI', N'HUAYLLACAYAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20511, N'ANCASH', N'BOLOGNESI', N'LA PRIMAVERA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20512, N'ANCASH', N'BOLOGNESI', N'MANGAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20513, N'ANCASH', N'BOLOGNESI', N'PACLLON')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20514, N'ANCASH', N'BOLOGNESI', N'SAN MIGUEL DE CORPANQUI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20515, N'ANCASH', N'BOLOGNESI', N'TICLLOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20601, N'ANCASH', N'CARHUAZ', N'CARHUAZ')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20602, N'ANCASH', N'CARHUAZ', N'ACOPAMPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20603, N'ANCASH', N'CARHUAZ', N'AMASHCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20604, N'ANCASH', N'CARHUAZ', N'ANTA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20605, N'ANCASH', N'CARHUAZ', N'ATAQUERO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20606, N'ANCASH', N'CARHUAZ', N'MARCARA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20607, N'ANCASH', N'CARHUAZ', N'PARIAHUANCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20608, N'ANCASH', N'CARHUAZ', N'SAN MIGUEL DE ACO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20609, N'ANCASH', N'CARHUAZ', N'SHILLA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20610, N'ANCASH', N'CARHUAZ', N'TINCO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20611, N'ANCASH', N'CARHUAZ', N'YUNGAR')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20701, N'ANCASH', N'CARLOS FERMIN FITZCARRALD', N'SAN LUIS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20702, N'ANCASH', N'CARLOS FERMIN FITZCARRALD', N'SAN NICOLAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20703, N'ANCASH', N'CARLOS FERMIN FITZCARRALD', N'YAUYA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20801, N'ANCASH', N'CASMA', N'CASMA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20802, N'ANCASH', N'CASMA', N'BUENA VISTA ALTA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20803, N'ANCASH', N'CASMA', N'COMANDANTE NOEL')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20804, N'ANCASH', N'CASMA', N'YAUTAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20901, N'ANCASH', N'CORONGO', N'CORONGO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20902, N'ANCASH', N'CORONGO', N'ACO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20903, N'ANCASH', N'CORONGO', N'BAMBAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20904, N'ANCASH', N'CORONGO', N'CUSCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20905, N'ANCASH', N'CORONGO', N'LA PAMPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20906, N'ANCASH', N'CORONGO', N'YANAC')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (20907, N'ANCASH', N'CORONGO', N'YUPAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21001, N'ANCASH', N'HUARI', N'HUARI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21002, N'ANCASH', N'HUARI', N'ANRA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21003, N'ANCASH', N'HUARI', N'CAJAY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21004, N'ANCASH', N'HUARI', N'CHAVIN DE HUANTAR')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21005, N'ANCASH', N'HUARI', N'HUACACHI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21006, N'ANCASH', N'HUARI', N'HUACCHIS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21007, N'ANCASH', N'HUARI', N'HUACHIS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21008, N'ANCASH', N'HUARI', N'HUANTAR')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21009, N'ANCASH', N'HUARI', N'MASIN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21010, N'ANCASH', N'HUARI', N'PAUCAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21011, N'ANCASH', N'HUARI', N'PONTO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21012, N'ANCASH', N'HUARI', N'RAHUAPAMPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21013, N'ANCASH', N'HUARI', N'RAPAYAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21014, N'ANCASH', N'HUARI', N'SAN MARCOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21015, N'ANCASH', N'HUARI', N'SAN PEDRO DE CHANA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21016, N'ANCASH', N'HUARI', N'UCO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21101, N'ANCASH', N'HUARMEY', N'HUARMEY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21102, N'ANCASH', N'HUARMEY', N'COCHAPETI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21103, N'ANCASH', N'HUARMEY', N'CULEBRAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21104, N'ANCASH', N'HUARMEY', N'HUAYAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21105, N'ANCASH', N'HUARMEY', N'MALVAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21201, N'ANCASH', N'HUAYLAS', N'CARAZ')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21202, N'ANCASH', N'HUAYLAS', N'HUALLANCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21203, N'ANCASH', N'HUAYLAS', N'HUATA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21204, N'ANCASH', N'HUAYLAS', N'HUAYLAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21205, N'ANCASH', N'HUAYLAS', N'MATO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21206, N'ANCASH', N'HUAYLAS', N'PAMPAROMAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21207, N'ANCASH', N'HUAYLAS', N'PUEBLO LIBRE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21208, N'ANCASH', N'HUAYLAS', N'SANTA CRUZ')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21209, N'ANCASH', N'HUAYLAS', N'SANTO TORIBIO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21210, N'ANCASH', N'HUAYLAS', N'YURACMARCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21301, N'ANCASH', N'MARISCAL LUZURIAGA', N'PISCOBAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21302, N'ANCASH', N'MARISCAL LUZURIAGA', N'CASCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21303, N'ANCASH', N'MARISCAL LUZURIAGA', N'ELEAZAR GUZMAN BARRON')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21304, N'ANCASH', N'MARISCAL LUZURIAGA', N'FIDEL OLIVAS ESCUDERO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21305, N'ANCASH', N'MARISCAL LUZURIAGA', N'LLAMA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21306, N'ANCASH', N'MARISCAL LUZURIAGA', N'LLUMPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21307, N'ANCASH', N'MARISCAL LUZURIAGA', N'LUCMA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21308, N'ANCASH', N'MARISCAL LUZURIAGA', N'MUSGA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21401, N'ANCASH', N'OCROS', N'OCROS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21402, N'ANCASH', N'OCROS', N'ACAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21403, N'ANCASH', N'OCROS', N'CAJAMARQUILLA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21404, N'ANCASH', N'OCROS', N'CARHUAPAMPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21405, N'ANCASH', N'OCROS', N'COCHAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21406, N'ANCASH', N'OCROS', N'CONGAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21407, N'ANCASH', N'OCROS', N'LLIPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21408, N'ANCASH', N'OCROS', N'SAN CRISTOBAL DE RAJAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21409, N'ANCASH', N'OCROS', N'SAN PEDRO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21410, N'ANCASH', N'OCROS', N'SANTIAGO DE CHILCAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21501, N'ANCASH', N'PALLASCA', N'CABANA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21502, N'ANCASH', N'PALLASCA', N'BOLOGNESI')
GO
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21503, N'ANCASH', N'PALLASCA', N'CONCHUCOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21504, N'ANCASH', N'PALLASCA', N'HUACASCHUQUE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21505, N'ANCASH', N'PALLASCA', N'HUANDOVAL')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21506, N'ANCASH', N'PALLASCA', N'LACABAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21507, N'ANCASH', N'PALLASCA', N'LLAPO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21508, N'ANCASH', N'PALLASCA', N'PALLASCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21509, N'ANCASH', N'PALLASCA', N'PAMPAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21510, N'ANCASH', N'PALLASCA', N'SANTA ROSA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21511, N'ANCASH', N'PALLASCA', N'TAUCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21601, N'ANCASH', N'POMABAMBA', N'POMABAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21602, N'ANCASH', N'POMABAMBA', N'HUAYLLAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21603, N'ANCASH', N'POMABAMBA', N'PAROBAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21604, N'ANCASH', N'POMABAMBA', N'QUINUABAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21701, N'ANCASH', N'RECUAY', N'RECUAY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21702, N'ANCASH', N'RECUAY', N'CATAC')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21703, N'ANCASH', N'RECUAY', N'COTAPARACO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21704, N'ANCASH', N'RECUAY', N'HUAYLLAPAMPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21705, N'ANCASH', N'RECUAY', N'LLACLLIN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21706, N'ANCASH', N'RECUAY', N'MARCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21707, N'ANCASH', N'RECUAY', N'PAMPAS CHICO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21708, N'ANCASH', N'RECUAY', N'PARARIN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21709, N'ANCASH', N'RECUAY', N'TAPACOCHA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21710, N'ANCASH', N'RECUAY', N'TICAPAMPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21801, N'ANCASH', N'SANTA', N'CHIMBOTE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21802, N'ANCASH', N'SANTA', N'CACERES DEL PERU')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21803, N'ANCASH', N'SANTA', N'COISHCO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21804, N'ANCASH', N'SANTA', N'MACATE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21805, N'ANCASH', N'SANTA', N'MORO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21806, N'ANCASH', N'SANTA', N'NEPEÑA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21807, N'ANCASH', N'SANTA', N'SAMANCO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21808, N'ANCASH', N'SANTA', N'SANTA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21809, N'ANCASH', N'SANTA', N'NUEVO CHIMBOTE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21901, N'ANCASH', N'SIHUAS', N'SIHUAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21902, N'ANCASH', N'SIHUAS', N'ACOBAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21903, N'ANCASH', N'SIHUAS', N'ALFONSO UGARTE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21904, N'ANCASH', N'SIHUAS', N'CASHAPAMPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21905, N'ANCASH', N'SIHUAS', N'CHINGALPO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21906, N'ANCASH', N'SIHUAS', N'HUAYLLABAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21907, N'ANCASH', N'SIHUAS', N'QUICHES')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21908, N'ANCASH', N'SIHUAS', N'RAGASH')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21909, N'ANCASH', N'SIHUAS', N'SAN JUAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (21910, N'ANCASH', N'SIHUAS', N'SICSIBAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (22001, N'ANCASH', N'YUNGAY', N'YUNGAY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (22002, N'ANCASH', N'YUNGAY', N'CASCAPARA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (22003, N'ANCASH', N'YUNGAY', N'MANCOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (22004, N'ANCASH', N'YUNGAY', N'MATACOTO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (22005, N'ANCASH', N'YUNGAY', N'QUILLO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (22006, N'ANCASH', N'YUNGAY', N'RANRAHIRCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (22007, N'ANCASH', N'YUNGAY', N'SHUPLUY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (22008, N'ANCASH', N'YUNGAY', N'YANAMA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30101, N'APURIMAC', N'ABANCAY', N'ABANCAY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30102, N'APURIMAC', N'ABANCAY', N'CHACOCHE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30103, N'APURIMAC', N'ABANCAY', N'CIRCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30104, N'APURIMAC', N'ABANCAY', N'CURAHUASI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30105, N'APURIMAC', N'ABANCAY', N'HUANIPACA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30106, N'APURIMAC', N'ABANCAY', N'LAMBRAMA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30107, N'APURIMAC', N'ABANCAY', N'PICHIRHUA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30108, N'APURIMAC', N'ABANCAY', N'SAN PEDRO DE CACHORA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30109, N'APURIMAC', N'ABANCAY', N'TAMBURCO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30201, N'APURIMAC', N'ANDAHUAYLAS', N'ANDAHUAYLAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30202, N'APURIMAC', N'ANDAHUAYLAS', N'ANDARAPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30203, N'APURIMAC', N'ANDAHUAYLAS', N'CHIARA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30204, N'APURIMAC', N'ANDAHUAYLAS', N'HUANCARAMA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30205, N'APURIMAC', N'ANDAHUAYLAS', N'HUANCARAY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30206, N'APURIMAC', N'ANDAHUAYLAS', N'HUAYANA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30207, N'APURIMAC', N'ANDAHUAYLAS', N'KISHUARA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30208, N'APURIMAC', N'ANDAHUAYLAS', N'PACOBAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30209, N'APURIMAC', N'ANDAHUAYLAS', N'PACUCHA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30210, N'APURIMAC', N'ANDAHUAYLAS', N'PAMPACHIRI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30211, N'APURIMAC', N'ANDAHUAYLAS', N'POMACOCHA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30212, N'APURIMAC', N'ANDAHUAYLAS', N'SAN ANTONIO DE CACHI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30213, N'APURIMAC', N'ANDAHUAYLAS', N'SAN JERONIMO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30214, N'APURIMAC', N'ANDAHUAYLAS', N'SAN MIGUEL DE CHACCRAMPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30215, N'APURIMAC', N'ANDAHUAYLAS', N'SANTA MARIA DE CHICMO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30216, N'APURIMAC', N'ANDAHUAYLAS', N'TALAVERA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30217, N'APURIMAC', N'ANDAHUAYLAS', N'TUMAY HUARACA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30218, N'APURIMAC', N'ANDAHUAYLAS', N'TURPO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30219, N'APURIMAC', N'ANDAHUAYLAS', N'KAQUIABAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30220, N'APURIMAC', N'ANDAHUAYLAS', N'JOSE MARIA ARGUEDAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30301, N'APURIMAC', N'ANTABAMBA', N'ANTABAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30302, N'APURIMAC', N'ANTABAMBA', N'EL ORO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30303, N'APURIMAC', N'ANTABAMBA', N'HUAQUIRCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30304, N'APURIMAC', N'ANTABAMBA', N'JUAN ESPINOZA MEDRANO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30305, N'APURIMAC', N'ANTABAMBA', N'OROPESA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30306, N'APURIMAC', N'ANTABAMBA', N'PACHACONAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30307, N'APURIMAC', N'ANTABAMBA', N'SABAINO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30401, N'APURIMAC', N'AYMARAES', N'CHALHUANCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30402, N'APURIMAC', N'AYMARAES', N'CAPAYA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30403, N'APURIMAC', N'AYMARAES', N'CARAYBAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30404, N'APURIMAC', N'AYMARAES', N'CHAPIMARCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30405, N'APURIMAC', N'AYMARAES', N'COLCABAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30406, N'APURIMAC', N'AYMARAES', N'COTARUSE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30407, N'APURIMAC', N'AYMARAES', N'HUAYLLO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30408, N'APURIMAC', N'AYMARAES', N'JUSTO APU SAHUARAURA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30409, N'APURIMAC', N'AYMARAES', N'LUCRE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30410, N'APURIMAC', N'AYMARAES', N'POCOHUANCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30411, N'APURIMAC', N'AYMARAES', N'SAN JUAN DE CHACÑA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30412, N'APURIMAC', N'AYMARAES', N'SAÑAYCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30413, N'APURIMAC', N'AYMARAES', N'SORAYA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30414, N'APURIMAC', N'AYMARAES', N'TAPAIRIHUA')
GO
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30415, N'APURIMAC', N'AYMARAES', N'TINTAY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30416, N'APURIMAC', N'AYMARAES', N'TORAYA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30417, N'APURIMAC', N'AYMARAES', N'YANACA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30501, N'APURIMAC', N'COTABAMBAS', N'TAMBOBAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30502, N'APURIMAC', N'COTABAMBAS', N'COTABAMBAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30503, N'APURIMAC', N'COTABAMBAS', N'COYLLURQUI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30504, N'APURIMAC', N'COTABAMBAS', N'HAQUIRA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30505, N'APURIMAC', N'COTABAMBAS', N'MARA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30506, N'APURIMAC', N'COTABAMBAS', N'CHALLHUAHUACHO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30601, N'APURIMAC', N'CHINCHEROS', N'CHINCHEROS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30602, N'APURIMAC', N'CHINCHEROS', N'ANCO-HUALLO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30603, N'APURIMAC', N'CHINCHEROS', N'COCHARCAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30604, N'APURIMAC', N'CHINCHEROS', N'HUACCANA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30605, N'APURIMAC', N'CHINCHEROS', N'OCOBAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30606, N'APURIMAC', N'CHINCHEROS', N'ONGOY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30607, N'APURIMAC', N'CHINCHEROS', N'URANMARCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30608, N'APURIMAC', N'CHINCHEROS', N'RANRACANCHA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30609, N'APURIMAC', N'CHINCHEROS', N'ROCCHACC')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30610, N'APURIMAC', N'CHINCHEROS', N'EL PORVENIR')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30611, N'APURIMAC', N'CHINCHEROS', N'LOS CHANKAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30612, N'APURIMAC', N'CHINCHEROS', N'AHUAYRO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30701, N'APURIMAC', N'GRAU', N'CHUQUIBAMBILLA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30702, N'APURIMAC', N'GRAU', N'CURPAHUASI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30703, N'APURIMAC', N'GRAU', N'GAMARRA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30704, N'APURIMAC', N'GRAU', N'HUAYLLATI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30705, N'APURIMAC', N'GRAU', N'MAMARA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30706, N'APURIMAC', N'GRAU', N'MICAELA BASTIDAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30707, N'APURIMAC', N'GRAU', N'PATAYPAMPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30708, N'APURIMAC', N'GRAU', N'PROGRESO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30709, N'APURIMAC', N'GRAU', N'SAN ANTONIO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30710, N'APURIMAC', N'GRAU', N'SANTA ROSA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30711, N'APURIMAC', N'GRAU', N'TURPAY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30712, N'APURIMAC', N'GRAU', N'VILCABAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30713, N'APURIMAC', N'GRAU', N'VIRUNDO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (30714, N'APURIMAC', N'GRAU', N'CURASCO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40101, N'AREQUIPA', N'AREQUIPA', N'AREQUIPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40102, N'AREQUIPA', N'AREQUIPA', N'ALTO SELVA ALEGRE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40103, N'AREQUIPA', N'AREQUIPA', N'CAYMA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40104, N'AREQUIPA', N'AREQUIPA', N'CERRO COLORADO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40105, N'AREQUIPA', N'AREQUIPA', N'CHARACATO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40106, N'AREQUIPA', N'AREQUIPA', N'CHIGUATA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40107, N'AREQUIPA', N'AREQUIPA', N'JACOBO HUNTER')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40108, N'AREQUIPA', N'AREQUIPA', N'LA JOYA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40109, N'AREQUIPA', N'AREQUIPA', N'MARIANO MELGAR')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40110, N'AREQUIPA', N'AREQUIPA', N'MIRAFLORES')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40111, N'AREQUIPA', N'AREQUIPA', N'MOLLEBAYA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40112, N'AREQUIPA', N'AREQUIPA', N'PAUCARPATA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40113, N'AREQUIPA', N'AREQUIPA', N'POCSI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40114, N'AREQUIPA', N'AREQUIPA', N'POLOBAYA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40115, N'AREQUIPA', N'AREQUIPA', N'QUEQUEÑA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40116, N'AREQUIPA', N'AREQUIPA', N'SABANDIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40117, N'AREQUIPA', N'AREQUIPA', N'SACHACA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40118, N'AREQUIPA', N'AREQUIPA', N'SAN JUAN DE SIGUAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40119, N'AREQUIPA', N'AREQUIPA', N'SAN JUAN DE TARUCANI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40120, N'AREQUIPA', N'AREQUIPA', N'SANTA ISABEL DE SIGUAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40121, N'AREQUIPA', N'AREQUIPA', N'SANTA RITA DE SIGUAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40122, N'AREQUIPA', N'AREQUIPA', N'SOCABAYA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40123, N'AREQUIPA', N'AREQUIPA', N'TIABAYA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40124, N'AREQUIPA', N'AREQUIPA', N'UCHUMAYO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40125, N'AREQUIPA', N'AREQUIPA', N'VITOR')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40126, N'AREQUIPA', N'AREQUIPA', N'YANAHUARA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40127, N'AREQUIPA', N'AREQUIPA', N'YARABAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40128, N'AREQUIPA', N'AREQUIPA', N'YURA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40129, N'AREQUIPA', N'AREQUIPA', N'JOSE LUIS BUSTAMANTE Y RIVERO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40201, N'AREQUIPA', N'CAMANA', N'CAMANA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40202, N'AREQUIPA', N'CAMANA', N'JOSE MARIA QUIMPER')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40203, N'AREQUIPA', N'CAMANA', N'MARIANO NICOLAS VALCARCEL')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40204, N'AREQUIPA', N'CAMANA', N'MARISCAL CACERES')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40205, N'AREQUIPA', N'CAMANA', N'NICOLAS DE PIEROLA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40206, N'AREQUIPA', N'CAMANA', N'OCOÑA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40207, N'AREQUIPA', N'CAMANA', N'QUILCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40208, N'AREQUIPA', N'CAMANA', N'SAMUEL PASTOR')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40301, N'AREQUIPA', N'CARAVELI', N'CARAVELI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40302, N'AREQUIPA', N'CARAVELI', N'ACARI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40303, N'AREQUIPA', N'CARAVELI', N'ATICO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40304, N'AREQUIPA', N'CARAVELI', N'ATIQUIPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40305, N'AREQUIPA', N'CARAVELI', N'BELLA UNION')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40306, N'AREQUIPA', N'CARAVELI', N'CAHUACHO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40307, N'AREQUIPA', N'CARAVELI', N'CHALA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40308, N'AREQUIPA', N'CARAVELI', N'CHAPARRA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40309, N'AREQUIPA', N'CARAVELI', N'HUANUHUANU')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40310, N'AREQUIPA', N'CARAVELI', N'JAQUI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40311, N'AREQUIPA', N'CARAVELI', N'LOMAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40312, N'AREQUIPA', N'CARAVELI', N'QUICACHA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40313, N'AREQUIPA', N'CARAVELI', N'YAUCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40401, N'AREQUIPA', N'CASTILLA', N'APLAO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40402, N'AREQUIPA', N'CASTILLA', N'ANDAGUA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40403, N'AREQUIPA', N'CASTILLA', N'AYO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40404, N'AREQUIPA', N'CASTILLA', N'CHACHAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40405, N'AREQUIPA', N'CASTILLA', N'CHILCAYMARCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40406, N'AREQUIPA', N'CASTILLA', N'CHOCO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40407, N'AREQUIPA', N'CASTILLA', N'HUANCARQUI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40408, N'AREQUIPA', N'CASTILLA', N'MACHAGUAY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40409, N'AREQUIPA', N'CASTILLA', N'ORCOPAMPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40410, N'AREQUIPA', N'CASTILLA', N'PAMPACOLCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40411, N'AREQUIPA', N'CASTILLA', N'TIPAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40412, N'AREQUIPA', N'CASTILLA', N'UÑON')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40413, N'AREQUIPA', N'CASTILLA', N'URACA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40414, N'AREQUIPA', N'CASTILLA', N'VIRACO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40501, N'AREQUIPA', N'CAYLLOMA', N'CHIVAY')
GO
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40502, N'AREQUIPA', N'CAYLLOMA', N'ACHOMA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40503, N'AREQUIPA', N'CAYLLOMA', N'CABANACONDE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40504, N'AREQUIPA', N'CAYLLOMA', N'CALLALLI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40505, N'AREQUIPA', N'CAYLLOMA', N'CAYLLOMA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40506, N'AREQUIPA', N'CAYLLOMA', N'COPORAQUE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40507, N'AREQUIPA', N'CAYLLOMA', N'HUAMBO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40508, N'AREQUIPA', N'CAYLLOMA', N'HUANCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40509, N'AREQUIPA', N'CAYLLOMA', N'ICHUPAMPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40510, N'AREQUIPA', N'CAYLLOMA', N'LARI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40511, N'AREQUIPA', N'CAYLLOMA', N'LLUTA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40512, N'AREQUIPA', N'CAYLLOMA', N'MACA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40513, N'AREQUIPA', N'CAYLLOMA', N'MADRIGAL')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40514, N'AREQUIPA', N'CAYLLOMA', N'SAN ANTONIO DE CHUCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40515, N'AREQUIPA', N'CAYLLOMA', N'SIBAYO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40516, N'AREQUIPA', N'CAYLLOMA', N'TAPAY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40517, N'AREQUIPA', N'CAYLLOMA', N'TISCO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40518, N'AREQUIPA', N'CAYLLOMA', N'TUTI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40519, N'AREQUIPA', N'CAYLLOMA', N'YANQUE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40520, N'AREQUIPA', N'CAYLLOMA', N'MAJES')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40601, N'AREQUIPA', N'CONDESUYOS', N'CHUQUIBAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40602, N'AREQUIPA', N'CONDESUYOS', N'ANDARAY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40603, N'AREQUIPA', N'CONDESUYOS', N'CAYARANI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40604, N'AREQUIPA', N'CONDESUYOS', N'CHICHAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40605, N'AREQUIPA', N'CONDESUYOS', N'IRAY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40606, N'AREQUIPA', N'CONDESUYOS', N'RIO GRANDE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40607, N'AREQUIPA', N'CONDESUYOS', N'SALAMANCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40608, N'AREQUIPA', N'CONDESUYOS', N'YANAQUIHUA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40701, N'AREQUIPA', N'ISLAY', N'MOLLENDO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40702, N'AREQUIPA', N'ISLAY', N'COCACHACRA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40703, N'AREQUIPA', N'ISLAY', N'DEAN VALDIVIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40704, N'AREQUIPA', N'ISLAY', N'ISLAY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40705, N'AREQUIPA', N'ISLAY', N'MEJIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40706, N'AREQUIPA', N'ISLAY', N'PUNTA DE BOMBON')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40801, N'AREQUIPA', N'LA UNION', N'COTAHUASI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40802, N'AREQUIPA', N'LA UNION', N'ALCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40803, N'AREQUIPA', N'LA UNION', N'CHARCANA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40804, N'AREQUIPA', N'LA UNION', N'HUAYNACOTAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40805, N'AREQUIPA', N'LA UNION', N'PAMPAMARCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40806, N'AREQUIPA', N'LA UNION', N'PUYCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40807, N'AREQUIPA', N'LA UNION', N'QUECHUALLA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40808, N'AREQUIPA', N'LA UNION', N'SAYLA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40809, N'AREQUIPA', N'LA UNION', N'TAURIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40810, N'AREQUIPA', N'LA UNION', N'TOMEPAMPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (40811, N'AREQUIPA', N'LA UNION', N'TORO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50101, N'AYACUCHO', N'HUAMANGA', N'AYACUCHO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50102, N'AYACUCHO', N'HUAMANGA', N'ACOCRO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50103, N'AYACUCHO', N'HUAMANGA', N'ACOS VINCHOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50104, N'AYACUCHO', N'HUAMANGA', N'CARMEN ALTO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50105, N'AYACUCHO', N'HUAMANGA', N'CHIARA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50106, N'AYACUCHO', N'HUAMANGA', N'OCROS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50107, N'AYACUCHO', N'HUAMANGA', N'PACAYCASA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50108, N'AYACUCHO', N'HUAMANGA', N'QUINUA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50109, N'AYACUCHO', N'HUAMANGA', N'SAN JOSE DE TICLLAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50110, N'AYACUCHO', N'HUAMANGA', N'SAN JUAN BAUTISTA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50111, N'AYACUCHO', N'HUAMANGA', N'SANTIAGO DE PISCHA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50112, N'AYACUCHO', N'HUAMANGA', N'SOCOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50113, N'AYACUCHO', N'HUAMANGA', N'TAMBILLO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50114, N'AYACUCHO', N'HUAMANGA', N'VINCHOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50115, N'AYACUCHO', N'HUAMANGA', N'JESUS NAZARENO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50116, N'AYACUCHO', N'HUAMANGA', N'ANDRES AVELINO CACERES DORREGARAY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50201, N'AYACUCHO', N'CANGALLO', N'CANGALLO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50202, N'AYACUCHO', N'CANGALLO', N'CHUSCHI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50203, N'AYACUCHO', N'CANGALLO', N'LOS MOROCHUCOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50204, N'AYACUCHO', N'CANGALLO', N'MARIA PARADO DE BELLIDO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50205, N'AYACUCHO', N'CANGALLO', N'PARAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50206, N'AYACUCHO', N'CANGALLO', N'TOTOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50301, N'AYACUCHO', N'HUANCA SANCOS', N'SANCOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50302, N'AYACUCHO', N'HUANCA SANCOS', N'CARAPO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50303, N'AYACUCHO', N'HUANCA SANCOS', N'SACSAMARCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50304, N'AYACUCHO', N'HUANCA SANCOS', N'SANTIAGO DE LUCANAMARCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50401, N'AYACUCHO', N'HUANTA', N'HUANTA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50402, N'AYACUCHO', N'HUANTA', N'AYAHUANCO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50403, N'AYACUCHO', N'HUANTA', N'HUAMANGUILLA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50404, N'AYACUCHO', N'HUANTA', N'IGUAIN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50405, N'AYACUCHO', N'HUANTA', N'LURICOCHA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50406, N'AYACUCHO', N'HUANTA', N'SANTILLANA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50407, N'AYACUCHO', N'HUANTA', N'SIVIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50408, N'AYACUCHO', N'HUANTA', N'LLOCHEGUA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50409, N'AYACUCHO', N'HUANTA', N'CANAYRE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50410, N'AYACUCHO', N'HUANTA', N'UCHURACCAY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50411, N'AYACUCHO', N'HUANTA', N'PUCACOLPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50412, N'AYACUCHO', N'HUANTA', N'CHACA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50413, N'AYACUCHO', N'HUANTA', N'PUTIS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50501, N'AYACUCHO', N'LA MAR', N'SAN MIGUEL')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50502, N'AYACUCHO', N'LA MAR', N'ANCO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50503, N'AYACUCHO', N'LA MAR', N'AYNA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50504, N'AYACUCHO', N'LA MAR', N'CHILCAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50505, N'AYACUCHO', N'LA MAR', N'CHUNGUI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50506, N'AYACUCHO', N'LA MAR', N'LUIS CARRANZA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50507, N'AYACUCHO', N'LA MAR', N'SANTA ROSA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50508, N'AYACUCHO', N'LA MAR', N'TAMBO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50509, N'AYACUCHO', N'LA MAR', N'SAMUGARI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50510, N'AYACUCHO', N'LA MAR', N'ANCHIHUAY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50511, N'AYACUCHO', N'LA MAR', N'ORONCCOY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50512, N'AYACUCHO', N'LA MAR', N'UNION PROGRESO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50513, N'AYACUCHO', N'LA MAR', N'RIO MAGDALENA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50514, N'AYACUCHO', N'LA MAR', N'NINABAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50515, N'AYACUCHO', N'LA MAR', N'PATIBAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50601, N'AYACUCHO', N'LUCANAS', N'PUQUIO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50602, N'AYACUCHO', N'LUCANAS', N'AUCARA')
GO
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50603, N'AYACUCHO', N'LUCANAS', N'CABANA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50604, N'AYACUCHO', N'LUCANAS', N'CARMEN SALCEDO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50605, N'AYACUCHO', N'LUCANAS', N'CHAVIÑA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50606, N'AYACUCHO', N'LUCANAS', N'CHIPAO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50607, N'AYACUCHO', N'LUCANAS', N'HUAC-HUAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50608, N'AYACUCHO', N'LUCANAS', N'LARAMATE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50609, N'AYACUCHO', N'LUCANAS', N'LEONCIO PRADO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50610, N'AYACUCHO', N'LUCANAS', N'LLAUTA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50611, N'AYACUCHO', N'LUCANAS', N'LUCANAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50612, N'AYACUCHO', N'LUCANAS', N'OCAÑA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50613, N'AYACUCHO', N'LUCANAS', N'OTOCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50614, N'AYACUCHO', N'LUCANAS', N'SAISA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50615, N'AYACUCHO', N'LUCANAS', N'SAN CRISTOBAL')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50616, N'AYACUCHO', N'LUCANAS', N'SAN JUAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50617, N'AYACUCHO', N'LUCANAS', N'SAN PEDRO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50618, N'AYACUCHO', N'LUCANAS', N'SAN PEDRO DE PALCO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50619, N'AYACUCHO', N'LUCANAS', N'SANCOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50620, N'AYACUCHO', N'LUCANAS', N'SANTA ANA DE HUAYCAHUACHO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50621, N'AYACUCHO', N'LUCANAS', N'SANTA LUCIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50701, N'AYACUCHO', N'PARINACOCHAS', N'CORACORA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50702, N'AYACUCHO', N'PARINACOCHAS', N'CHUMPI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50703, N'AYACUCHO', N'PARINACOCHAS', N'CORONEL CASTAÑEDA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50704, N'AYACUCHO', N'PARINACOCHAS', N'PACAPAUSA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50705, N'AYACUCHO', N'PARINACOCHAS', N'PULLO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50706, N'AYACUCHO', N'PARINACOCHAS', N'PUYUSCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50707, N'AYACUCHO', N'PARINACOCHAS', N'SAN FRANCISCO DE RAVACAYCO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50708, N'AYACUCHO', N'PARINACOCHAS', N'UPAHUACHO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50801, N'AYACUCHO', N'PAUCAR DEL SARA SARA', N'PAUSA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50802, N'AYACUCHO', N'PAUCAR DEL SARA SARA', N'COLTA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50803, N'AYACUCHO', N'PAUCAR DEL SARA SARA', N'CORCULLA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50804, N'AYACUCHO', N'PAUCAR DEL SARA SARA', N'LAMPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50805, N'AYACUCHO', N'PAUCAR DEL SARA SARA', N'MARCABAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50806, N'AYACUCHO', N'PAUCAR DEL SARA SARA', N'OYOLO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50807, N'AYACUCHO', N'PAUCAR DEL SARA SARA', N'PARARCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50808, N'AYACUCHO', N'PAUCAR DEL SARA SARA', N'SAN JAVIER DE ALPABAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50809, N'AYACUCHO', N'PAUCAR DEL SARA SARA', N'SAN JOSE DE USHUA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50810, N'AYACUCHO', N'PAUCAR DEL SARA SARA', N'SARA SARA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50901, N'AYACUCHO', N'SUCRE', N'QUEROBAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50902, N'AYACUCHO', N'SUCRE', N'BELEN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50903, N'AYACUCHO', N'SUCRE', N'CHALCOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50904, N'AYACUCHO', N'SUCRE', N'CHILCAYOC')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50905, N'AYACUCHO', N'SUCRE', N'HUACAÑA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50906, N'AYACUCHO', N'SUCRE', N'MORCOLLA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50907, N'AYACUCHO', N'SUCRE', N'PAICO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50908, N'AYACUCHO', N'SUCRE', N'SAN PEDRO DE LARCAY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50909, N'AYACUCHO', N'SUCRE', N'SAN SALVADOR DE QUIJE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50910, N'AYACUCHO', N'SUCRE', N'SANTIAGO DE PAUCARAY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (50911, N'AYACUCHO', N'SUCRE', N'SORAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (51001, N'AYACUCHO', N'VICTOR FAJARDO', N'HUANCAPI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (51002, N'AYACUCHO', N'VICTOR FAJARDO', N'ALCAMENCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (51003, N'AYACUCHO', N'VICTOR FAJARDO', N'APONGO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (51004, N'AYACUCHO', N'VICTOR FAJARDO', N'ASQUIPATA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (51005, N'AYACUCHO', N'VICTOR FAJARDO', N'CANARIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (51006, N'AYACUCHO', N'VICTOR FAJARDO', N'CAYARA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (51007, N'AYACUCHO', N'VICTOR FAJARDO', N'COLCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (51008, N'AYACUCHO', N'VICTOR FAJARDO', N'HUAMANQUIQUIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (51009, N'AYACUCHO', N'VICTOR FAJARDO', N'HUANCARAYLLA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (51010, N'AYACUCHO', N'VICTOR FAJARDO', N'HUAYA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (51011, N'AYACUCHO', N'VICTOR FAJARDO', N'SARHUA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (51012, N'AYACUCHO', N'VICTOR FAJARDO', N'VILCANCHOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (51101, N'AYACUCHO', N'VILCAS HUAMAN', N'VILCAS HUAMAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (51102, N'AYACUCHO', N'VILCAS HUAMAN', N'ACCOMARCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (51103, N'AYACUCHO', N'VILCAS HUAMAN', N'CARHUANCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (51104, N'AYACUCHO', N'VILCAS HUAMAN', N'CONCEPCION')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (51105, N'AYACUCHO', N'VILCAS HUAMAN', N'HUAMBALPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (51106, N'AYACUCHO', N'VILCAS HUAMAN', N'INDEPENDENCIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (51107, N'AYACUCHO', N'VILCAS HUAMAN', N'SAURAMA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (51108, N'AYACUCHO', N'VILCAS HUAMAN', N'VISCHONGO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60101, N'CAJAMARCA', N'CAJAMARCA', N'CAJAMARCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60102, N'CAJAMARCA', N'CAJAMARCA', N'ASUNCION')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60103, N'CAJAMARCA', N'CAJAMARCA', N'CHETILLA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60104, N'CAJAMARCA', N'CAJAMARCA', N'COSPAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60105, N'CAJAMARCA', N'CAJAMARCA', N'ENCAÑADA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60106, N'CAJAMARCA', N'CAJAMARCA', N'JESUS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60107, N'CAJAMARCA', N'CAJAMARCA', N'LLACANORA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60108, N'CAJAMARCA', N'CAJAMARCA', N'LOS BAÑOS DEL INCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60109, N'CAJAMARCA', N'CAJAMARCA', N'MAGDALENA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60110, N'CAJAMARCA', N'CAJAMARCA', N'MATARA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60111, N'CAJAMARCA', N'CAJAMARCA', N'NAMORA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60112, N'CAJAMARCA', N'CAJAMARCA', N'SAN JUAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60201, N'CAJAMARCA', N'CAJABAMBA', N'CAJABAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60202, N'CAJAMARCA', N'CAJABAMBA', N'CACHACHI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60203, N'CAJAMARCA', N'CAJABAMBA', N'CONDEBAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60204, N'CAJAMARCA', N'CAJABAMBA', N'SITACOCHA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60301, N'CAJAMARCA', N'CELENDIN', N'CELENDIN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60302, N'CAJAMARCA', N'CELENDIN', N'CHUMUCH')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60303, N'CAJAMARCA', N'CELENDIN', N'CORTEGANA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60304, N'CAJAMARCA', N'CELENDIN', N'HUASMIN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60305, N'CAJAMARCA', N'CELENDIN', N'JORGE CHAVEZ')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60306, N'CAJAMARCA', N'CELENDIN', N'JOSE GALVEZ')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60307, N'CAJAMARCA', N'CELENDIN', N'MIGUEL IGLESIAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60308, N'CAJAMARCA', N'CELENDIN', N'OXAMARCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60309, N'CAJAMARCA', N'CELENDIN', N'SOROCHUCO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60310, N'CAJAMARCA', N'CELENDIN', N'SUCRE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60311, N'CAJAMARCA', N'CELENDIN', N'UTCO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60312, N'CAJAMARCA', N'CELENDIN', N'LA LIBERTAD DE PALLAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60401, N'CAJAMARCA', N'CHOTA', N'CHOTA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60402, N'CAJAMARCA', N'CHOTA', N'ANGUIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60403, N'CAJAMARCA', N'CHOTA', N'CHADIN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60404, N'CAJAMARCA', N'CHOTA', N'CHIGUIRIP')
GO
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60405, N'CAJAMARCA', N'CHOTA', N'CHIMBAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60406, N'CAJAMARCA', N'CHOTA', N'CHOROPAMPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60407, N'CAJAMARCA', N'CHOTA', N'COCHABAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60408, N'CAJAMARCA', N'CHOTA', N'CONCHAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60409, N'CAJAMARCA', N'CHOTA', N'HUAMBOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60410, N'CAJAMARCA', N'CHOTA', N'LAJAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60411, N'CAJAMARCA', N'CHOTA', N'LLAMA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60412, N'CAJAMARCA', N'CHOTA', N'MIRACOSTA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60413, N'CAJAMARCA', N'CHOTA', N'PACCHA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60414, N'CAJAMARCA', N'CHOTA', N'PION')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60415, N'CAJAMARCA', N'CHOTA', N'QUEROCOTO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60416, N'CAJAMARCA', N'CHOTA', N'SAN JUAN DE LICUPIS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60417, N'CAJAMARCA', N'CHOTA', N'TACABAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60418, N'CAJAMARCA', N'CHOTA', N'TOCMOCHE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60419, N'CAJAMARCA', N'CHOTA', N'CHALAMARCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60501, N'CAJAMARCA', N'CONTUMAZA', N'CONTUMAZA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60502, N'CAJAMARCA', N'CONTUMAZA', N'CHILETE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60503, N'CAJAMARCA', N'CONTUMAZA', N'CUPISNIQUE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60504, N'CAJAMARCA', N'CONTUMAZA', N'GUZMANGO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60505, N'CAJAMARCA', N'CONTUMAZA', N'SAN BENITO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60506, N'CAJAMARCA', N'CONTUMAZA', N'SANTA CRUZ DE TOLEDO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60507, N'CAJAMARCA', N'CONTUMAZA', N'TANTARICA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60508, N'CAJAMARCA', N'CONTUMAZA', N'YONAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60601, N'CAJAMARCA', N'CUTERVO', N'CUTERVO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60602, N'CAJAMARCA', N'CUTERVO', N'CALLAYUC')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60603, N'CAJAMARCA', N'CUTERVO', N'CHOROS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60604, N'CAJAMARCA', N'CUTERVO', N'CUJILLO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60605, N'CAJAMARCA', N'CUTERVO', N'LA RAMADA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60606, N'CAJAMARCA', N'CUTERVO', N'PIMPINGOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60607, N'CAJAMARCA', N'CUTERVO', N'QUEROCOTILLO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60608, N'CAJAMARCA', N'CUTERVO', N'SAN ANDRES DE CUTERVO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60609, N'CAJAMARCA', N'CUTERVO', N'SAN JUAN DE CUTERVO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60610, N'CAJAMARCA', N'CUTERVO', N'SAN LUIS DE LUCMA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60611, N'CAJAMARCA', N'CUTERVO', N'SANTA CRUZ')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60612, N'CAJAMARCA', N'CUTERVO', N'SANTO DOMINGO DE LA CAPILLA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60613, N'CAJAMARCA', N'CUTERVO', N'SANTO TOMAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60614, N'CAJAMARCA', N'CUTERVO', N'SOCOTA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60615, N'CAJAMARCA', N'CUTERVO', N'TORIBIO CASANOVA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60701, N'CAJAMARCA', N'HUALGAYOC', N'BAMBAMARCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60702, N'CAJAMARCA', N'HUALGAYOC', N'CHUGUR')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60703, N'CAJAMARCA', N'HUALGAYOC', N'HUALGAYOC')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60801, N'CAJAMARCA', N'JAEN', N'JAEN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60802, N'CAJAMARCA', N'JAEN', N'BELLAVISTA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60803, N'CAJAMARCA', N'JAEN', N'CHONTALI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60804, N'CAJAMARCA', N'JAEN', N'COLASAY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60805, N'CAJAMARCA', N'JAEN', N'HUABAL')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60806, N'CAJAMARCA', N'JAEN', N'LAS PIRIAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60807, N'CAJAMARCA', N'JAEN', N'POMAHUACA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60808, N'CAJAMARCA', N'JAEN', N'PUCARA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60809, N'CAJAMARCA', N'JAEN', N'SALLIQUE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60810, N'CAJAMARCA', N'JAEN', N'SAN FELIPE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60811, N'CAJAMARCA', N'JAEN', N'SAN JOSE DEL ALTO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60812, N'CAJAMARCA', N'JAEN', N'SANTA ROSA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60901, N'CAJAMARCA', N'SAN IGNACIO', N'SAN IGNACIO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60902, N'CAJAMARCA', N'SAN IGNACIO', N'CHIRINOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60903, N'CAJAMARCA', N'SAN IGNACIO', N'HUARANGO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60904, N'CAJAMARCA', N'SAN IGNACIO', N'LA COIPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60905, N'CAJAMARCA', N'SAN IGNACIO', N'NAMBALLE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60906, N'CAJAMARCA', N'SAN IGNACIO', N'SAN JOSE DE LOURDES')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (60907, N'CAJAMARCA', N'SAN IGNACIO', N'TABACONAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (61001, N'CAJAMARCA', N'SAN MARCOS', N'PEDRO GALVEZ')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (61002, N'CAJAMARCA', N'SAN MARCOS', N'CHANCAY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (61003, N'CAJAMARCA', N'SAN MARCOS', N'EDUARDO VILLANUEVA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (61004, N'CAJAMARCA', N'SAN MARCOS', N'GREGORIO PITA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (61005, N'CAJAMARCA', N'SAN MARCOS', N'ICHOCAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (61006, N'CAJAMARCA', N'SAN MARCOS', N'JOSE MANUEL QUIROZ')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (61007, N'CAJAMARCA', N'SAN MARCOS', N'JOSE SABOGAL')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (61101, N'CAJAMARCA', N'SAN MIGUEL', N'SAN MIGUEL')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (61102, N'CAJAMARCA', N'SAN MIGUEL', N'BOLIVAR')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (61103, N'CAJAMARCA', N'SAN MIGUEL', N'CALQUIS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (61104, N'CAJAMARCA', N'SAN MIGUEL', N'CATILLUC')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (61105, N'CAJAMARCA', N'SAN MIGUEL', N'EL PRADO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (61106, N'CAJAMARCA', N'SAN MIGUEL', N'LA FLORIDA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (61107, N'CAJAMARCA', N'SAN MIGUEL', N'LLAPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (61108, N'CAJAMARCA', N'SAN MIGUEL', N'NANCHOC')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (61109, N'CAJAMARCA', N'SAN MIGUEL', N'NIEPOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (61110, N'CAJAMARCA', N'SAN MIGUEL', N'SAN GREGORIO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (61111, N'CAJAMARCA', N'SAN MIGUEL', N'SAN SILVESTRE DE COCHAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (61112, N'CAJAMARCA', N'SAN MIGUEL', N'TONGOD')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (61113, N'CAJAMARCA', N'SAN MIGUEL', N'UNION AGUA BLANCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (61201, N'CAJAMARCA', N'SAN PABLO', N'SAN PABLO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (61202, N'CAJAMARCA', N'SAN PABLO', N'SAN BERNARDINO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (61203, N'CAJAMARCA', N'SAN PABLO', N'SAN LUIS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (61204, N'CAJAMARCA', N'SAN PABLO', N'TUMBADEN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (61301, N'CAJAMARCA', N'SANTA CRUZ', N'SANTA CRUZ')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (61302, N'CAJAMARCA', N'SANTA CRUZ', N'ANDABAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (61303, N'CAJAMARCA', N'SANTA CRUZ', N'CATACHE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (61304, N'CAJAMARCA', N'SANTA CRUZ', N'CHANCAYBAÑOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (61305, N'CAJAMARCA', N'SANTA CRUZ', N'LA ESPERANZA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (61306, N'CAJAMARCA', N'SANTA CRUZ', N'NINABAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (61307, N'CAJAMARCA', N'SANTA CRUZ', N'PULAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (61308, N'CAJAMARCA', N'SANTA CRUZ', N'SAUCEPAMPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (61309, N'CAJAMARCA', N'SANTA CRUZ', N'SEXI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (61310, N'CAJAMARCA', N'SANTA CRUZ', N'UTICYACU')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (61311, N'CAJAMARCA', N'SANTA CRUZ', N'YAUYUCAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (70101, N'CALLAO', N'CALLAO', N'CALLAO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (70102, N'CALLAO', N'CALLAO', N'BELLAVISTA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (70103, N'CALLAO', N'CALLAO', N'CARMEN DE LA LEGUA REYNOSO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (70104, N'CALLAO', N'CALLAO', N'LA PERLA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (70105, N'CALLAO', N'CALLAO', N'LA PUNTA')
GO
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (70106, N'CALLAO', N'CALLAO', N'VENTANILLA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (70107, N'CALLAO', N'CALLAO', N'MI PERU')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80101, N'CUSCO', N'CUSCO', N'CUSCO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80102, N'CUSCO', N'CUSCO', N'CCORCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80103, N'CUSCO', N'CUSCO', N'POROY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80104, N'CUSCO', N'CUSCO', N'SAN JERONIMO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80105, N'CUSCO', N'CUSCO', N'SAN SEBASTIAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80106, N'CUSCO', N'CUSCO', N'SANTIAGO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80107, N'CUSCO', N'CUSCO', N'SAYLLA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80108, N'CUSCO', N'CUSCO', N'WANCHAQ')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80201, N'CUSCO', N'ACOMAYO', N'ACOMAYO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80202, N'CUSCO', N'ACOMAYO', N'ACOPIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80203, N'CUSCO', N'ACOMAYO', N'ACOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80204, N'CUSCO', N'ACOMAYO', N'MOSOC LLACTA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80205, N'CUSCO', N'ACOMAYO', N'POMACANCHI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80206, N'CUSCO', N'ACOMAYO', N'RONDOCAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80207, N'CUSCO', N'ACOMAYO', N'SANGARARA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80301, N'CUSCO', N'ANTA', N'ANTA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80302, N'CUSCO', N'ANTA', N'ANCAHUASI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80303, N'CUSCO', N'ANTA', N'CACHIMAYO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80304, N'CUSCO', N'ANTA', N'CHINCHAYPUJIO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80305, N'CUSCO', N'ANTA', N'HUAROCONDO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80306, N'CUSCO', N'ANTA', N'LIMATAMBO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80307, N'CUSCO', N'ANTA', N'MOLLEPATA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80308, N'CUSCO', N'ANTA', N'PUCYURA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80309, N'CUSCO', N'ANTA', N'ZURITE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80401, N'CUSCO', N'CALCA', N'CALCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80402, N'CUSCO', N'CALCA', N'COYA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80403, N'CUSCO', N'CALCA', N'LAMAY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80404, N'CUSCO', N'CALCA', N'LARES')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80405, N'CUSCO', N'CALCA', N'PISAC')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80406, N'CUSCO', N'CALCA', N'SAN SALVADOR')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80407, N'CUSCO', N'CALCA', N'TARAY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80408, N'CUSCO', N'CALCA', N'YANATILE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80501, N'CUSCO', N'CANAS', N'YANAOCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80502, N'CUSCO', N'CANAS', N'CHECCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80503, N'CUSCO', N'CANAS', N'KUNTURKANKI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80504, N'CUSCO', N'CANAS', N'LANGUI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80505, N'CUSCO', N'CANAS', N'LAYO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80506, N'CUSCO', N'CANAS', N'PAMPAMARCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80507, N'CUSCO', N'CANAS', N'QUEHUE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80508, N'CUSCO', N'CANAS', N'TUPAC AMARU')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80601, N'CUSCO', N'CANCHIS', N'SICUANI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80602, N'CUSCO', N'CANCHIS', N'CHECACUPE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80603, N'CUSCO', N'CANCHIS', N'COMBAPATA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80604, N'CUSCO', N'CANCHIS', N'MARANGANI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80605, N'CUSCO', N'CANCHIS', N'PITUMARCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80606, N'CUSCO', N'CANCHIS', N'SAN PABLO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80607, N'CUSCO', N'CANCHIS', N'SAN PEDRO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80608, N'CUSCO', N'CANCHIS', N'TINTA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80701, N'CUSCO', N'CHUMBIVILCAS', N'SANTO TOMAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80702, N'CUSCO', N'CHUMBIVILCAS', N'CAPACMARCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80703, N'CUSCO', N'CHUMBIVILCAS', N'CHAMACA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80704, N'CUSCO', N'CHUMBIVILCAS', N'COLQUEMARCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80705, N'CUSCO', N'CHUMBIVILCAS', N'LIVITACA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80706, N'CUSCO', N'CHUMBIVILCAS', N'LLUSCO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80707, N'CUSCO', N'CHUMBIVILCAS', N'QUIÑOTA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80708, N'CUSCO', N'CHUMBIVILCAS', N'VELILLE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80801, N'CUSCO', N'ESPINAR', N'ESPINAR')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80802, N'CUSCO', N'ESPINAR', N'CONDOROMA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80803, N'CUSCO', N'ESPINAR', N'COPORAQUE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80804, N'CUSCO', N'ESPINAR', N'OCORURO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80805, N'CUSCO', N'ESPINAR', N'PALLPATA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80806, N'CUSCO', N'ESPINAR', N'PICHIGUA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80807, N'CUSCO', N'ESPINAR', N'SUYCKUTAMBO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80808, N'CUSCO', N'ESPINAR', N'ALTO PICHIGUA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80901, N'CUSCO', N'LA CONVENCION', N'SANTA ANA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80902, N'CUSCO', N'LA CONVENCION', N'ECHARATE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80903, N'CUSCO', N'LA CONVENCION', N'HUAYOPATA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80904, N'CUSCO', N'LA CONVENCION', N'MARANURA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80905, N'CUSCO', N'LA CONVENCION', N'OCOBAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80906, N'CUSCO', N'LA CONVENCION', N'QUELLOUNO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80907, N'CUSCO', N'LA CONVENCION', N'QUIMBIRI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80908, N'CUSCO', N'LA CONVENCION', N'SANTA TERESA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80909, N'CUSCO', N'LA CONVENCION', N'VILCABAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80910, N'CUSCO', N'LA CONVENCION', N'PICHARI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80911, N'CUSCO', N'LA CONVENCION', N'INKAWASI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80912, N'CUSCO', N'LA CONVENCION', N'VILLA VIRGEN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80913, N'CUSCO', N'LA CONVENCION', N'VILLA KINTIARINA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80914, N'CUSCO', N'LA CONVENCION', N'MEGANTONI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80915, N'CUSCO', N'LA CONVENCION', N'KUMPIRUSHIATO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80916, N'CUSCO', N'LA CONVENCION', N'CIELO PUNCO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80917, N'CUSCO', N'LA CONVENCION', N'MANITEA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (80918, N'CUSCO', N'LA CONVENCION', N'UNION ASHÁNINKA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (81001, N'CUSCO', N'PARURO', N'PARURO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (81002, N'CUSCO', N'PARURO', N'ACCHA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (81003, N'CUSCO', N'PARURO', N'CCAPI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (81004, N'CUSCO', N'PARURO', N'COLCHA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (81005, N'CUSCO', N'PARURO', N'HUANOQUITE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (81006, N'CUSCO', N'PARURO', N'OMACHA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (81007, N'CUSCO', N'PARURO', N'PACCARITAMBO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (81008, N'CUSCO', N'PARURO', N'PILLPINTO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (81009, N'CUSCO', N'PARURO', N'YAURISQUE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (81101, N'CUSCO', N'PAUCARTAMBO', N'PAUCARTAMBO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (81102, N'CUSCO', N'PAUCARTAMBO', N'CAICAY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (81103, N'CUSCO', N'PAUCARTAMBO', N'CHALLABAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (81104, N'CUSCO', N'PAUCARTAMBO', N'COLQUEPATA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (81105, N'CUSCO', N'PAUCARTAMBO', N'HUANCARANI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (81106, N'CUSCO', N'PAUCARTAMBO', N'KOSÑIPATA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (81201, N'CUSCO', N'QUISPICANCHI', N'URCOS')
GO
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (81202, N'CUSCO', N'QUISPICANCHI', N'ANDAHUAYLILLAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (81203, N'CUSCO', N'QUISPICANCHI', N'CAMANTI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (81204, N'CUSCO', N'QUISPICANCHI', N'CCARHUAYO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (81205, N'CUSCO', N'QUISPICANCHI', N'CCATCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (81206, N'CUSCO', N'QUISPICANCHI', N'CUSIPATA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (81207, N'CUSCO', N'QUISPICANCHI', N'HUARO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (81208, N'CUSCO', N'QUISPICANCHI', N'LUCRE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (81209, N'CUSCO', N'QUISPICANCHI', N'MARCAPATA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (81210, N'CUSCO', N'QUISPICANCHI', N'OCONGATE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (81211, N'CUSCO', N'QUISPICANCHI', N'OROPESA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (81212, N'CUSCO', N'QUISPICANCHI', N'QUIQUIJANA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (81301, N'CUSCO', N'URUBAMBA', N'URUBAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (81302, N'CUSCO', N'URUBAMBA', N'CHINCHERO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (81303, N'CUSCO', N'URUBAMBA', N'HUAYLLABAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (81304, N'CUSCO', N'URUBAMBA', N'MACHUPICCHU')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (81305, N'CUSCO', N'URUBAMBA', N'MARAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (81306, N'CUSCO', N'URUBAMBA', N'OLLANTAYTAMBO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (81307, N'CUSCO', N'URUBAMBA', N'YUCAY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90101, N'HUANCAVELICA', N'HUANCAVELICA', N'HUANCAVELICA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90102, N'HUANCAVELICA', N'HUANCAVELICA', N'ACOBAMBILLA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90103, N'HUANCAVELICA', N'HUANCAVELICA', N'ACORIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90104, N'HUANCAVELICA', N'HUANCAVELICA', N'CONAYCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90105, N'HUANCAVELICA', N'HUANCAVELICA', N'CUENCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90106, N'HUANCAVELICA', N'HUANCAVELICA', N'HUACHOCOLPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90107, N'HUANCAVELICA', N'HUANCAVELICA', N'HUAYLLAHUARA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90108, N'HUANCAVELICA', N'HUANCAVELICA', N'IZCUCHACA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90109, N'HUANCAVELICA', N'HUANCAVELICA', N'LARIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90110, N'HUANCAVELICA', N'HUANCAVELICA', N'MANTA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90111, N'HUANCAVELICA', N'HUANCAVELICA', N'MARISCAL CACERES')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90112, N'HUANCAVELICA', N'HUANCAVELICA', N'MOYA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90113, N'HUANCAVELICA', N'HUANCAVELICA', N'NUEVO OCCORO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90114, N'HUANCAVELICA', N'HUANCAVELICA', N'PALCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90115, N'HUANCAVELICA', N'HUANCAVELICA', N'PILCHACA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90116, N'HUANCAVELICA', N'HUANCAVELICA', N'VILCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90117, N'HUANCAVELICA', N'HUANCAVELICA', N'YAULI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90118, N'HUANCAVELICA', N'HUANCAVELICA', N'ASCENSION')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90119, N'HUANCAVELICA', N'HUANCAVELICA', N'HUANDO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90201, N'HUANCAVELICA', N'ACOBAMBA', N'ACOBAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90202, N'HUANCAVELICA', N'ACOBAMBA', N'ANDABAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90203, N'HUANCAVELICA', N'ACOBAMBA', N'ANTA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90204, N'HUANCAVELICA', N'ACOBAMBA', N'CAJA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90205, N'HUANCAVELICA', N'ACOBAMBA', N'MARCAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90206, N'HUANCAVELICA', N'ACOBAMBA', N'PAUCARA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90207, N'HUANCAVELICA', N'ACOBAMBA', N'POMACOCHA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90208, N'HUANCAVELICA', N'ACOBAMBA', N'ROSARIO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90301, N'HUANCAVELICA', N'ANGARAES', N'LIRCAY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90302, N'HUANCAVELICA', N'ANGARAES', N'ANCHONGA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90303, N'HUANCAVELICA', N'ANGARAES', N'CALLANMARCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90304, N'HUANCAVELICA', N'ANGARAES', N'CCOCHACCASA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90305, N'HUANCAVELICA', N'ANGARAES', N'CHINCHO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90306, N'HUANCAVELICA', N'ANGARAES', N'CONGALLA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90307, N'HUANCAVELICA', N'ANGARAES', N'HUANCA-HUANCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90308, N'HUANCAVELICA', N'ANGARAES', N'HUAYLLAY GRANDE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90309, N'HUANCAVELICA', N'ANGARAES', N'JULCAMARCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90310, N'HUANCAVELICA', N'ANGARAES', N'SAN ANTONIO DE ANTAPARCO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90311, N'HUANCAVELICA', N'ANGARAES', N'SANTO TOMAS DE PATA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90312, N'HUANCAVELICA', N'ANGARAES', N'SECCLLA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90401, N'HUANCAVELICA', N'CASTROVIRREYNA', N'CASTROVIRREYNA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90402, N'HUANCAVELICA', N'CASTROVIRREYNA', N'ARMA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90403, N'HUANCAVELICA', N'CASTROVIRREYNA', N'AURAHUA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90404, N'HUANCAVELICA', N'CASTROVIRREYNA', N'CAPILLAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90405, N'HUANCAVELICA', N'CASTROVIRREYNA', N'CHUPAMARCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90406, N'HUANCAVELICA', N'CASTROVIRREYNA', N'COCAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90407, N'HUANCAVELICA', N'CASTROVIRREYNA', N'HUACHOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90408, N'HUANCAVELICA', N'CASTROVIRREYNA', N'HUAMATAMBO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90409, N'HUANCAVELICA', N'CASTROVIRREYNA', N'MOLLEPAMPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90410, N'HUANCAVELICA', N'CASTROVIRREYNA', N'SAN JUAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90411, N'HUANCAVELICA', N'CASTROVIRREYNA', N'SANTA ANA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90412, N'HUANCAVELICA', N'CASTROVIRREYNA', N'TANTARA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90413, N'HUANCAVELICA', N'CASTROVIRREYNA', N'TICRAPO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90501, N'HUANCAVELICA', N'CHURCAMPA', N'CHURCAMPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90502, N'HUANCAVELICA', N'CHURCAMPA', N'ANCO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90503, N'HUANCAVELICA', N'CHURCAMPA', N'CHINCHIHUASI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90504, N'HUANCAVELICA', N'CHURCAMPA', N'EL CARMEN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90505, N'HUANCAVELICA', N'CHURCAMPA', N'LA MERCED')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90506, N'HUANCAVELICA', N'CHURCAMPA', N'LOCROJA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90507, N'HUANCAVELICA', N'CHURCAMPA', N'PAUCARBAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90508, N'HUANCAVELICA', N'CHURCAMPA', N'SAN MIGUEL DE MAYOCC')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90509, N'HUANCAVELICA', N'CHURCAMPA', N'SAN PEDRO DE CORIS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90510, N'HUANCAVELICA', N'CHURCAMPA', N'PACHAMARCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90511, N'HUANCAVELICA', N'CHURCAMPA', N'COSME')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90601, N'HUANCAVELICA', N'HUAYTARA', N'HUAYTARA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90602, N'HUANCAVELICA', N'HUAYTARA', N'AYAVI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90603, N'HUANCAVELICA', N'HUAYTARA', N'CORDOVA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90604, N'HUANCAVELICA', N'HUAYTARA', N'HUAYACUNDO ARMA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90605, N'HUANCAVELICA', N'HUAYTARA', N'LARAMARCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90606, N'HUANCAVELICA', N'HUAYTARA', N'OCOYO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90607, N'HUANCAVELICA', N'HUAYTARA', N'PILPICHACA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90608, N'HUANCAVELICA', N'HUAYTARA', N'QUERCO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90609, N'HUANCAVELICA', N'HUAYTARA', N'QUITO-ARMA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90610, N'HUANCAVELICA', N'HUAYTARA', N'SAN ANTONIO DE CUSICANCHA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90611, N'HUANCAVELICA', N'HUAYTARA', N'SAN FRANCISCO DE SANGAYAICO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90612, N'HUANCAVELICA', N'HUAYTARA', N'SAN ISIDRO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90613, N'HUANCAVELICA', N'HUAYTARA', N'SANTIAGO DE CHOCORVOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90614, N'HUANCAVELICA', N'HUAYTARA', N'SANTIAGO DE QUIRAHUARA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90615, N'HUANCAVELICA', N'HUAYTARA', N'SANTO DOMINGO DE CAPILLAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90616, N'HUANCAVELICA', N'HUAYTARA', N'TAMBO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90701, N'HUANCAVELICA', N'TAYACAJA', N'PAMPAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90702, N'HUANCAVELICA', N'TAYACAJA', N'ACOSTAMBO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90703, N'HUANCAVELICA', N'TAYACAJA', N'ACRAQUIA')
GO
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90704, N'HUANCAVELICA', N'TAYACAJA', N'AHUAYCHA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90705, N'HUANCAVELICA', N'TAYACAJA', N'COLCABAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90706, N'HUANCAVELICA', N'TAYACAJA', N'DANIEL HERNANDEZ')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90707, N'HUANCAVELICA', N'TAYACAJA', N'HUACHOCOLPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90709, N'HUANCAVELICA', N'TAYACAJA', N'HUARIBAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90710, N'HUANCAVELICA', N'TAYACAJA', N'ÑAHUIMPUQUIO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90711, N'HUANCAVELICA', N'TAYACAJA', N'PAZOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90713, N'HUANCAVELICA', N'TAYACAJA', N'QUISHUAR')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90714, N'HUANCAVELICA', N'TAYACAJA', N'SALCABAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90715, N'HUANCAVELICA', N'TAYACAJA', N'SALCAHUASI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90716, N'HUANCAVELICA', N'TAYACAJA', N'SAN MARCOS DE ROCCHAC')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90717, N'HUANCAVELICA', N'TAYACAJA', N'SURCUBAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90718, N'HUANCAVELICA', N'TAYACAJA', N'TINTAY PUNCU')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90719, N'HUANCAVELICA', N'TAYACAJA', N'QUICHUAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90720, N'HUANCAVELICA', N'TAYACAJA', N'ANDAYMARCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90721, N'HUANCAVELICA', N'TAYACAJA', N'ROBLE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90722, N'HUANCAVELICA', N'TAYACAJA', N'PICHOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90723, N'HUANCAVELICA', N'TAYACAJA', N'SANTIAGO DE TUCUMA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90724, N'HUANCAVELICA', N'TAYACAJA', N'LAMBRAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (90725, N'HUANCAVELICA', N'TAYACAJA', N'COCHABAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100101, N'HUANUCO', N'HUANUCO', N'HUANUCO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100102, N'HUANUCO', N'HUANUCO', N'AMARILIS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100103, N'HUANUCO', N'HUANUCO', N'CHINCHAO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100104, N'HUANUCO', N'HUANUCO', N'CHURUBAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100105, N'HUANUCO', N'HUANUCO', N'MARGOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100106, N'HUANUCO', N'HUANUCO', N'QUISQUI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100107, N'HUANUCO', N'HUANUCO', N'SAN FRANCISCO DE CAYRAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100108, N'HUANUCO', N'HUANUCO', N'SAN PEDRO DE CHAULAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100109, N'HUANUCO', N'HUANUCO', N'SANTA MARIA DEL VALLE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100110, N'HUANUCO', N'HUANUCO', N'YARUMAYO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100111, N'HUANUCO', N'HUANUCO', N'PILLCO MARCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100112, N'HUANUCO', N'HUANUCO', N'YACUS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100113, N'HUANUCO', N'HUANUCO', N'SAN PABLO DE PILLAO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100201, N'HUANUCO', N'AMBO', N'AMBO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100202, N'HUANUCO', N'AMBO', N'CAYNA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100203, N'HUANUCO', N'AMBO', N'COLPAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100204, N'HUANUCO', N'AMBO', N'CONCHAMARCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100205, N'HUANUCO', N'AMBO', N'HUACAR')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100206, N'HUANUCO', N'AMBO', N'SAN FRANCISCO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100207, N'HUANUCO', N'AMBO', N'SAN RAFAEL')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100208, N'HUANUCO', N'AMBO', N'TOMAY KICHWA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100301, N'HUANUCO', N'DOS DE MAYO', N'LA UNION')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100307, N'HUANUCO', N'DOS DE MAYO', N'CHUQUIS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100311, N'HUANUCO', N'DOS DE MAYO', N'MARIAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100313, N'HUANUCO', N'DOS DE MAYO', N'PACHAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100316, N'HUANUCO', N'DOS DE MAYO', N'QUIVILLA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100317, N'HUANUCO', N'DOS DE MAYO', N'RIPAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100321, N'HUANUCO', N'DOS DE MAYO', N'SHUNQUI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100322, N'HUANUCO', N'DOS DE MAYO', N'SILLAPATA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100323, N'HUANUCO', N'DOS DE MAYO', N'YANAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100401, N'HUANUCO', N'HUACAYBAMBA', N'HUACAYBAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100402, N'HUANUCO', N'HUACAYBAMBA', N'CANCHABAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100403, N'HUANUCO', N'HUACAYBAMBA', N'COCHABAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100404, N'HUANUCO', N'HUACAYBAMBA', N'PINRA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100501, N'HUANUCO', N'HUAMALIES', N'LLATA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100502, N'HUANUCO', N'HUAMALIES', N'ARANCAY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100503, N'HUANUCO', N'HUAMALIES', N'CHAVIN DE PARIARCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100504, N'HUANUCO', N'HUAMALIES', N'JACAS GRANDE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100505, N'HUANUCO', N'HUAMALIES', N'JIRCAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100506, N'HUANUCO', N'HUAMALIES', N'MIRAFLORES')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100507, N'HUANUCO', N'HUAMALIES', N'MONZON')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100508, N'HUANUCO', N'HUAMALIES', N'PUNCHAO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100509, N'HUANUCO', N'HUAMALIES', N'PUÑOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100510, N'HUANUCO', N'HUAMALIES', N'SINGA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100511, N'HUANUCO', N'HUAMALIES', N'TANTAMAYO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100601, N'HUANUCO', N'LEONCIO PRADO', N'RUPA-RUPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100602, N'HUANUCO', N'LEONCIO PRADO', N'DANIEL ALOMIAS ROBLES')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100603, N'HUANUCO', N'LEONCIO PRADO', N'HERMILIO VALDIZAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100604, N'HUANUCO', N'LEONCIO PRADO', N'JOSE CRESPO Y CASTILLO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100605, N'HUANUCO', N'LEONCIO PRADO', N'LUYANDO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100606, N'HUANUCO', N'LEONCIO PRADO', N'MARIANO DAMASO BERAUN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100607, N'HUANUCO', N'LEONCIO PRADO', N'PUCAYACU')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100608, N'HUANUCO', N'LEONCIO PRADO', N'CASTILLO GRANDE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100609, N'HUANUCO', N'LEONCIO PRADO', N'PUEBLO NUEVO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100610, N'HUANUCO', N'LEONCIO PRADO', N'SANTO DOMINGO DE ANDA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100701, N'HUANUCO', N'MARAÑON', N'HUACRACHUCO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100702, N'HUANUCO', N'MARAÑON', N'CHOLON')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100703, N'HUANUCO', N'MARAÑON', N'SAN BUENAVENTURA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100704, N'HUANUCO', N'MARAÑON', N'LA MORADA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100705, N'HUANUCO', N'MARAÑON', N'SANTA ROSA DE ALTO YANAJANCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100801, N'HUANUCO', N'PACHITEA', N'PANAO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100802, N'HUANUCO', N'PACHITEA', N'CHAGLLA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100803, N'HUANUCO', N'PACHITEA', N'MOLINO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100804, N'HUANUCO', N'PACHITEA', N'UMARI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100901, N'HUANUCO', N'PUERTO INCA', N'PUERTO INCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100902, N'HUANUCO', N'PUERTO INCA', N'CODO DEL POZUZO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100903, N'HUANUCO', N'PUERTO INCA', N'HONORIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100904, N'HUANUCO', N'PUERTO INCA', N'TOURNAVISTA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (100905, N'HUANUCO', N'PUERTO INCA', N'YUYAPICHIS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (101001, N'HUANUCO', N'LAURICOCHA', N'JESUS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (101002, N'HUANUCO', N'LAURICOCHA', N'BAÑOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (101003, N'HUANUCO', N'LAURICOCHA', N'JIVIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (101004, N'HUANUCO', N'LAURICOCHA', N'QUEROPALCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (101005, N'HUANUCO', N'LAURICOCHA', N'RONDOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (101006, N'HUANUCO', N'LAURICOCHA', N'SAN FRANCISCO DE ASIS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (101007, N'HUANUCO', N'LAURICOCHA', N'SAN MIGUEL DE CAURI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (101101, N'HUANUCO', N'YAROWILCA', N'CHAVINILLO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (101102, N'HUANUCO', N'YAROWILCA', N'CAHUAC')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (101103, N'HUANUCO', N'YAROWILCA', N'CHACABAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (101104, N'HUANUCO', N'YAROWILCA', N'APARICIO POMARES')
GO
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (101105, N'HUANUCO', N'YAROWILCA', N'JACAS CHICO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (101106, N'HUANUCO', N'YAROWILCA', N'OBAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (101107, N'HUANUCO', N'YAROWILCA', N'PAMPAMARCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (101108, N'HUANUCO', N'YAROWILCA', N'CHORAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (110101, N'ICA', N'ICA', N'ICA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (110102, N'ICA', N'ICA', N'LA TINGUIÑA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (110103, N'ICA', N'ICA', N'LOS AQUIJES')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (110104, N'ICA', N'ICA', N'OCUCAJE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (110105, N'ICA', N'ICA', N'PACHACUTEC')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (110106, N'ICA', N'ICA', N'PARCONA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (110107, N'ICA', N'ICA', N'PUEBLO NUEVO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (110108, N'ICA', N'ICA', N'SALAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (110109, N'ICA', N'ICA', N'SAN JOSE DE LOS MOLINOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (110110, N'ICA', N'ICA', N'SAN JUAN BAUTISTA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (110111, N'ICA', N'ICA', N'SANTIAGO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (110112, N'ICA', N'ICA', N'SUBTANJALLA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (110113, N'ICA', N'ICA', N'TATE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (110114, N'ICA', N'ICA', N'YAUCA DEL ROSARIO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (110201, N'ICA', N'CHINCHA', N'CHINCHA ALTA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (110202, N'ICA', N'CHINCHA', N'ALTO LARAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (110203, N'ICA', N'CHINCHA', N'CHAVIN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (110204, N'ICA', N'CHINCHA', N'CHINCHA BAJA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (110205, N'ICA', N'CHINCHA', N'EL CARMEN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (110206, N'ICA', N'CHINCHA', N'GROCIO PRADO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (110207, N'ICA', N'CHINCHA', N'PUEBLO NUEVO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (110208, N'ICA', N'CHINCHA', N'SAN JUAN DE YANAC')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (110209, N'ICA', N'CHINCHA', N'SAN PEDRO DE HUACARPANA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (110210, N'ICA', N'CHINCHA', N'SUNAMPE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (110211, N'ICA', N'CHINCHA', N'TAMBO DE MORA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (110301, N'ICA', N'NAZCA', N'NAZCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (110302, N'ICA', N'NAZCA', N'CHANGUILLO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (110303, N'ICA', N'NAZCA', N'EL INGENIO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (110304, N'ICA', N'NAZCA', N'MARCONA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (110305, N'ICA', N'NAZCA', N'VISTA ALEGRE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (110401, N'ICA', N'PALPA', N'PALPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (110402, N'ICA', N'PALPA', N'LLIPATA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (110403, N'ICA', N'PALPA', N'RIO GRANDE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (110404, N'ICA', N'PALPA', N'SANTA CRUZ')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (110405, N'ICA', N'PALPA', N'TIBILLO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (110501, N'ICA', N'PISCO', N'PISCO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (110502, N'ICA', N'PISCO', N'HUANCANO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (110503, N'ICA', N'PISCO', N'HUMAY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (110504, N'ICA', N'PISCO', N'INDEPENDENCIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (110505, N'ICA', N'PISCO', N'PARACAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (110506, N'ICA', N'PISCO', N'SAN ANDRES')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (110507, N'ICA', N'PISCO', N'SAN CLEMENTE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (110508, N'ICA', N'PISCO', N'TUPAC AMARU INCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120101, N'JUNIN', N'HUANCAYO', N'HUANCAYO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120104, N'JUNIN', N'HUANCAYO', N'CARHUACALLANGA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120105, N'JUNIN', N'HUANCAYO', N'CHACAPAMPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120106, N'JUNIN', N'HUANCAYO', N'CHICCHE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120107, N'JUNIN', N'HUANCAYO', N'CHILCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120108, N'JUNIN', N'HUANCAYO', N'CHONGOS ALTO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120111, N'JUNIN', N'HUANCAYO', N'CHUPURO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120112, N'JUNIN', N'HUANCAYO', N'COLCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120113, N'JUNIN', N'HUANCAYO', N'CULLHUAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120114, N'JUNIN', N'HUANCAYO', N'EL TAMBO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120116, N'JUNIN', N'HUANCAYO', N'HUACRAPUQUIO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120117, N'JUNIN', N'HUANCAYO', N'HUALHUAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120119, N'JUNIN', N'HUANCAYO', N'HUANCAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120120, N'JUNIN', N'HUANCAYO', N'HUASICANCHA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120121, N'JUNIN', N'HUANCAYO', N'HUAYUCACHI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120122, N'JUNIN', N'HUANCAYO', N'INGENIO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120124, N'JUNIN', N'HUANCAYO', N'PARIAHUANCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120125, N'JUNIN', N'HUANCAYO', N'PILCOMAYO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120126, N'JUNIN', N'HUANCAYO', N'PUCARA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120127, N'JUNIN', N'HUANCAYO', N'QUICHUAY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120128, N'JUNIN', N'HUANCAYO', N'QUILCAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120129, N'JUNIN', N'HUANCAYO', N'SAN AGUSTIN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120130, N'JUNIN', N'HUANCAYO', N'SAN JERONIMO DE TUNAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120132, N'JUNIN', N'HUANCAYO', N'SAÑO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120133, N'JUNIN', N'HUANCAYO', N'SAPALLANGA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120134, N'JUNIN', N'HUANCAYO', N'SICAYA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120135, N'JUNIN', N'HUANCAYO', N'SANTO DOMINGO DE ACOBAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120136, N'JUNIN', N'HUANCAYO', N'VIQUES')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120201, N'JUNIN', N'CONCEPCION', N'CONCEPCION')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120202, N'JUNIN', N'CONCEPCION', N'ACO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120203, N'JUNIN', N'CONCEPCION', N'ANDAMARCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120204, N'JUNIN', N'CONCEPCION', N'CHAMBARA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120205, N'JUNIN', N'CONCEPCION', N'COCHAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120206, N'JUNIN', N'CONCEPCION', N'COMAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120207, N'JUNIN', N'CONCEPCION', N'HEROINAS TOLEDO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120208, N'JUNIN', N'CONCEPCION', N'MANZANARES')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120209, N'JUNIN', N'CONCEPCION', N'MARISCAL CASTILLA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120210, N'JUNIN', N'CONCEPCION', N'MATAHUASI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120211, N'JUNIN', N'CONCEPCION', N'MITO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120212, N'JUNIN', N'CONCEPCION', N'NUEVE DE JULIO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120213, N'JUNIN', N'CONCEPCION', N'ORCOTUNA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120214, N'JUNIN', N'CONCEPCION', N'SAN JOSE DE QUERO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120215, N'JUNIN', N'CONCEPCION', N'SANTA ROSA DE OCOPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120301, N'JUNIN', N'CHANCHAMAYO', N'CHANCHAMAYO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120302, N'JUNIN', N'CHANCHAMAYO', N'PERENE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120303, N'JUNIN', N'CHANCHAMAYO', N'PICHANAQUI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120304, N'JUNIN', N'CHANCHAMAYO', N'SAN LUIS DE SHUARO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120305, N'JUNIN', N'CHANCHAMAYO', N'SAN RAMON')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120306, N'JUNIN', N'CHANCHAMAYO', N'VITOC')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120401, N'JUNIN', N'JAUJA', N'JAUJA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120402, N'JUNIN', N'JAUJA', N'ACOLLA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120403, N'JUNIN', N'JAUJA', N'APATA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120404, N'JUNIN', N'JAUJA', N'ATAURA')
GO
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120405, N'JUNIN', N'JAUJA', N'CANCHAYLLO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120406, N'JUNIN', N'JAUJA', N'CURICACA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120407, N'JUNIN', N'JAUJA', N'EL MANTARO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120408, N'JUNIN', N'JAUJA', N'HUAMALI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120409, N'JUNIN', N'JAUJA', N'HUARIPAMPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120410, N'JUNIN', N'JAUJA', N'HUERTAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120411, N'JUNIN', N'JAUJA', N'JANJAILLO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120412, N'JUNIN', N'JAUJA', N'JULCAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120413, N'JUNIN', N'JAUJA', N'LEONOR ORDOÑEZ')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120414, N'JUNIN', N'JAUJA', N'LLOCLLAPAMPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120415, N'JUNIN', N'JAUJA', N'MARCO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120416, N'JUNIN', N'JAUJA', N'MASMA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120417, N'JUNIN', N'JAUJA', N'MASMA CHICCHE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120418, N'JUNIN', N'JAUJA', N'MOLINOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120419, N'JUNIN', N'JAUJA', N'MONOBAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120420, N'JUNIN', N'JAUJA', N'MUQUI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120421, N'JUNIN', N'JAUJA', N'MUQUIYAUYO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120422, N'JUNIN', N'JAUJA', N'PACA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120423, N'JUNIN', N'JAUJA', N'PACCHA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120424, N'JUNIN', N'JAUJA', N'PANCAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120425, N'JUNIN', N'JAUJA', N'PARCO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120426, N'JUNIN', N'JAUJA', N'POMACANCHA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120427, N'JUNIN', N'JAUJA', N'RICRAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120428, N'JUNIN', N'JAUJA', N'SAN LORENZO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120429, N'JUNIN', N'JAUJA', N'SAN PEDRO DE CHUNAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120430, N'JUNIN', N'JAUJA', N'SAUSA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120431, N'JUNIN', N'JAUJA', N'SINCOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120432, N'JUNIN', N'JAUJA', N'TUNAN MARCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120433, N'JUNIN', N'JAUJA', N'YAULI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120434, N'JUNIN', N'JAUJA', N'YAUYOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120501, N'JUNIN', N'JUNIN', N'JUNIN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120502, N'JUNIN', N'JUNIN', N'CARHUAMAYO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120503, N'JUNIN', N'JUNIN', N'ONDORES')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120504, N'JUNIN', N'JUNIN', N'ULCUMAYO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120601, N'JUNIN', N'SATIPO', N'SATIPO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120602, N'JUNIN', N'SATIPO', N'COVIRIALI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120603, N'JUNIN', N'SATIPO', N'LLAYLLA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120604, N'JUNIN', N'SATIPO', N'MAZAMARI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120605, N'JUNIN', N'SATIPO', N'PAMPA HERMOSA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120606, N'JUNIN', N'SATIPO', N'PANGOA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120607, N'JUNIN', N'SATIPO', N'RIO NEGRO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120608, N'JUNIN', N'SATIPO', N'RIO TAMBO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120609, N'JUNIN', N'SATIPO', N'VIZCATAN DEL ENE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120701, N'JUNIN', N'TARMA', N'TARMA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120702, N'JUNIN', N'TARMA', N'ACOBAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120703, N'JUNIN', N'TARMA', N'HUARICOLCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120704, N'JUNIN', N'TARMA', N'HUASAHUASI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120705, N'JUNIN', N'TARMA', N'LA UNION')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120706, N'JUNIN', N'TARMA', N'PALCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120707, N'JUNIN', N'TARMA', N'PALCAMAYO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120708, N'JUNIN', N'TARMA', N'SAN PEDRO DE CAJAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120709, N'JUNIN', N'TARMA', N'TAPO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120801, N'JUNIN', N'YAULI', N'LA OROYA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120802, N'JUNIN', N'YAULI', N'CHACAPALPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120803, N'JUNIN', N'YAULI', N'HUAY-HUAY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120804, N'JUNIN', N'YAULI', N'MARCAPOMACOCHA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120805, N'JUNIN', N'YAULI', N'MOROCOCHA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120806, N'JUNIN', N'YAULI', N'PACCHA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120807, N'JUNIN', N'YAULI', N'SANTA BARBARA DE CARHUACAYAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120808, N'JUNIN', N'YAULI', N'SANTA ROSA DE SACCO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120809, N'JUNIN', N'YAULI', N'SUITUCANCHA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120810, N'JUNIN', N'YAULI', N'YAULI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120901, N'JUNIN', N'CHUPACA', N'CHUPACA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120902, N'JUNIN', N'CHUPACA', N'AHUAC')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120903, N'JUNIN', N'CHUPACA', N'CHONGOS BAJO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120904, N'JUNIN', N'CHUPACA', N'HUACHAC')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120905, N'JUNIN', N'CHUPACA', N'HUAMANCACA CHICO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120906, N'JUNIN', N'CHUPACA', N'SAN JUAN DE YSCOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120907, N'JUNIN', N'CHUPACA', N'SAN JUAN DE JARPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120908, N'JUNIN', N'CHUPACA', N'TRES DE DICIEMBRE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (120909, N'JUNIN', N'CHUPACA', N'YANACANCHA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130101, N'LA LIBERTAD', N'TRUJILLO', N'TRUJILLO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130102, N'LA LIBERTAD', N'TRUJILLO', N'EL PORVENIR')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130103, N'LA LIBERTAD', N'TRUJILLO', N'FLORENCIA DE MORA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130104, N'LA LIBERTAD', N'TRUJILLO', N'HUANCHACO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130105, N'LA LIBERTAD', N'TRUJILLO', N'LA ESPERANZA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130106, N'LA LIBERTAD', N'TRUJILLO', N'LAREDO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130107, N'LA LIBERTAD', N'TRUJILLO', N'MOCHE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130108, N'LA LIBERTAD', N'TRUJILLO', N'POROTO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130109, N'LA LIBERTAD', N'TRUJILLO', N'SALAVERRY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130110, N'LA LIBERTAD', N'TRUJILLO', N'SIMBAL')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130111, N'LA LIBERTAD', N'TRUJILLO', N'VICTOR LARCO HERRERA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130201, N'LA LIBERTAD', N'ASCOPE', N'ASCOPE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130202, N'LA LIBERTAD', N'ASCOPE', N'CHICAMA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130203, N'LA LIBERTAD', N'ASCOPE', N'CHOCOPE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130204, N'LA LIBERTAD', N'ASCOPE', N'MAGDALENA DE CAO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130205, N'LA LIBERTAD', N'ASCOPE', N'PAIJAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130206, N'LA LIBERTAD', N'ASCOPE', N'RAZURI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130207, N'LA LIBERTAD', N'ASCOPE', N'SANTIAGO DE CAO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130208, N'LA LIBERTAD', N'ASCOPE', N'CASA GRANDE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130301, N'LA LIBERTAD', N'BOLIVAR', N'BOLIVAR')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130302, N'LA LIBERTAD', N'BOLIVAR', N'BAMBAMARCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130303, N'LA LIBERTAD', N'BOLIVAR', N'CONDORMARCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130304, N'LA LIBERTAD', N'BOLIVAR', N'LONGOTEA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130305, N'LA LIBERTAD', N'BOLIVAR', N'UCHUMARCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130306, N'LA LIBERTAD', N'BOLIVAR', N'UCUNCHA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130401, N'LA LIBERTAD', N'CHEPEN', N'CHEPEN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130402, N'LA LIBERTAD', N'CHEPEN', N'PACANGA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130403, N'LA LIBERTAD', N'CHEPEN', N'PUEBLO NUEVO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130501, N'LA LIBERTAD', N'JULCAN', N'JULCAN')
GO
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130502, N'LA LIBERTAD', N'JULCAN', N'CALAMARCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130503, N'LA LIBERTAD', N'JULCAN', N'CARABAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130504, N'LA LIBERTAD', N'JULCAN', N'HUASO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130601, N'LA LIBERTAD', N'OTUZCO', N'OTUZCO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130602, N'LA LIBERTAD', N'OTUZCO', N'AGALLPAMPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130604, N'LA LIBERTAD', N'OTUZCO', N'CHARAT')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130605, N'LA LIBERTAD', N'OTUZCO', N'HUARANCHAL')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130606, N'LA LIBERTAD', N'OTUZCO', N'LA CUESTA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130608, N'LA LIBERTAD', N'OTUZCO', N'MACHE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130610, N'LA LIBERTAD', N'OTUZCO', N'PARANDAY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130611, N'LA LIBERTAD', N'OTUZCO', N'SALPO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130613, N'LA LIBERTAD', N'OTUZCO', N'SINSICAP')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130614, N'LA LIBERTAD', N'OTUZCO', N'USQUIL')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130701, N'LA LIBERTAD', N'PACASMAYO', N'SAN PEDRO DE LLOC')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130702, N'LA LIBERTAD', N'PACASMAYO', N'GUADALUPE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130703, N'LA LIBERTAD', N'PACASMAYO', N'JEQUETEPEQUE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130704, N'LA LIBERTAD', N'PACASMAYO', N'PACASMAYO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130705, N'LA LIBERTAD', N'PACASMAYO', N'SAN JOSE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130801, N'LA LIBERTAD', N'PATAZ', N'TAYABAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130802, N'LA LIBERTAD', N'PATAZ', N'BULDIBUYO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130803, N'LA LIBERTAD', N'PATAZ', N'CHILLIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130804, N'LA LIBERTAD', N'PATAZ', N'HUANCASPATA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130805, N'LA LIBERTAD', N'PATAZ', N'HUAYLILLAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130806, N'LA LIBERTAD', N'PATAZ', N'HUAYO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130807, N'LA LIBERTAD', N'PATAZ', N'ONGON')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130808, N'LA LIBERTAD', N'PATAZ', N'PARCOY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130809, N'LA LIBERTAD', N'PATAZ', N'PATAZ')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130810, N'LA LIBERTAD', N'PATAZ', N'PIAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130811, N'LA LIBERTAD', N'PATAZ', N'SANTIAGO DE CHALLAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130812, N'LA LIBERTAD', N'PATAZ', N'TAURIJA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130813, N'LA LIBERTAD', N'PATAZ', N'URPAY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130901, N'LA LIBERTAD', N'SANCHEZ CARRION', N'HUAMACHUCO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130902, N'LA LIBERTAD', N'SANCHEZ CARRION', N'CHUGAY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130903, N'LA LIBERTAD', N'SANCHEZ CARRION', N'COCHORCO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130904, N'LA LIBERTAD', N'SANCHEZ CARRION', N'CURGOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130905, N'LA LIBERTAD', N'SANCHEZ CARRION', N'MARCABAL')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130906, N'LA LIBERTAD', N'SANCHEZ CARRION', N'SANAGORAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130907, N'LA LIBERTAD', N'SANCHEZ CARRION', N'SARIN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (130908, N'LA LIBERTAD', N'SANCHEZ CARRION', N'SARTIMBAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (131001, N'LA LIBERTAD', N'SANTIAGO DE CHUCO', N'SANTIAGO DE CHUCO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (131002, N'LA LIBERTAD', N'SANTIAGO DE CHUCO', N'ANGASMARCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (131003, N'LA LIBERTAD', N'SANTIAGO DE CHUCO', N'CACHICADAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (131004, N'LA LIBERTAD', N'SANTIAGO DE CHUCO', N'MOLLEBAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (131005, N'LA LIBERTAD', N'SANTIAGO DE CHUCO', N'MOLLEPATA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (131006, N'LA LIBERTAD', N'SANTIAGO DE CHUCO', N'QUIRUVILCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (131007, N'LA LIBERTAD', N'SANTIAGO DE CHUCO', N'SANTA CRUZ DE CHUCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (131008, N'LA LIBERTAD', N'SANTIAGO DE CHUCO', N'SITABAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (131101, N'LA LIBERTAD', N'GRAN CHIMU', N'CASCAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (131102, N'LA LIBERTAD', N'GRAN CHIMU', N'LUCMA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (131103, N'LA LIBERTAD', N'GRAN CHIMU', N'MARMOT')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (131104, N'LA LIBERTAD', N'GRAN CHIMU', N'SAYAPULLO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (131201, N'LA LIBERTAD', N'VIRU', N'VIRU')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (131202, N'LA LIBERTAD', N'VIRU', N'CHAO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (131203, N'LA LIBERTAD', N'VIRU', N'GUADALUPITO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (140101, N'LAMBAYEQUE', N'CHICLAYO', N'CHICLAYO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (140102, N'LAMBAYEQUE', N'CHICLAYO', N'CHONGOYAPE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (140103, N'LAMBAYEQUE', N'CHICLAYO', N'ETEN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (140104, N'LAMBAYEQUE', N'CHICLAYO', N'ETEN PUERTO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (140105, N'LAMBAYEQUE', N'CHICLAYO', N'JOSE LEONARDO ORTIZ')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (140106, N'LAMBAYEQUE', N'CHICLAYO', N'LA VICTORIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (140107, N'LAMBAYEQUE', N'CHICLAYO', N'LAGUNAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (140108, N'LAMBAYEQUE', N'CHICLAYO', N'MONSEFU')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (140109, N'LAMBAYEQUE', N'CHICLAYO', N'NUEVA ARICA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (140110, N'LAMBAYEQUE', N'CHICLAYO', N'OYOTUN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (140111, N'LAMBAYEQUE', N'CHICLAYO', N'PICSI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (140112, N'LAMBAYEQUE', N'CHICLAYO', N'PIMENTEL')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (140113, N'LAMBAYEQUE', N'CHICLAYO', N'REQUE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (140114, N'LAMBAYEQUE', N'CHICLAYO', N'SANTA ROSA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (140115, N'LAMBAYEQUE', N'CHICLAYO', N'SAÑA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (140116, N'LAMBAYEQUE', N'CHICLAYO', N'CAYALTI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (140117, N'LAMBAYEQUE', N'CHICLAYO', N'PATAPO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (140118, N'LAMBAYEQUE', N'CHICLAYO', N'POMALCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (140119, N'LAMBAYEQUE', N'CHICLAYO', N'PUCALA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (140120, N'LAMBAYEQUE', N'CHICLAYO', N'TUMAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (140201, N'LAMBAYEQUE', N'FERREÑAFE', N'FERREÑAFE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (140202, N'LAMBAYEQUE', N'FERREÑAFE', N'CAÑARIS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (140203, N'LAMBAYEQUE', N'FERREÑAFE', N'INCAHUASI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (140204, N'LAMBAYEQUE', N'FERREÑAFE', N'MANUEL ANTONIO MESONES MURO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (140205, N'LAMBAYEQUE', N'FERREÑAFE', N'PITIPO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (140206, N'LAMBAYEQUE', N'FERREÑAFE', N'PUEBLO NUEVO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (140301, N'LAMBAYEQUE', N'LAMBAYEQUE', N'LAMBAYEQUE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (140302, N'LAMBAYEQUE', N'LAMBAYEQUE', N'CHOCHOPE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (140303, N'LAMBAYEQUE', N'LAMBAYEQUE', N'ILLIMO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (140304, N'LAMBAYEQUE', N'LAMBAYEQUE', N'JAYANCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (140305, N'LAMBAYEQUE', N'LAMBAYEQUE', N'MOCHUMI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (140306, N'LAMBAYEQUE', N'LAMBAYEQUE', N'MORROPE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (140307, N'LAMBAYEQUE', N'LAMBAYEQUE', N'MOTUPE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (140308, N'LAMBAYEQUE', N'LAMBAYEQUE', N'OLMOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (140309, N'LAMBAYEQUE', N'LAMBAYEQUE', N'PACORA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (140310, N'LAMBAYEQUE', N'LAMBAYEQUE', N'SALAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (140311, N'LAMBAYEQUE', N'LAMBAYEQUE', N'SAN JOSE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (140312, N'LAMBAYEQUE', N'LAMBAYEQUE', N'TUCUME')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150101, N'LIMA', N'LIMA', N'LIMA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150102, N'LIMA', N'LIMA', N'ANCON')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150103, N'LIMA', N'LIMA', N'ATE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150104, N'LIMA', N'LIMA', N'BARRANCO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150105, N'LIMA', N'LIMA', N'BREÑA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150106, N'LIMA', N'LIMA', N'CARABAYLLO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150107, N'LIMA', N'LIMA', N'CHACLACAYO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150108, N'LIMA', N'LIMA', N'CHORRILLOS')
GO
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150109, N'LIMA', N'LIMA', N'CIENEGUILLA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150110, N'LIMA', N'LIMA', N'COMAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150111, N'LIMA', N'LIMA', N'EL AGUSTINO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150112, N'LIMA', N'LIMA', N'INDEPENDENCIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150113, N'LIMA', N'LIMA', N'JESUS MARIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150114, N'LIMA', N'LIMA', N'LA MOLINA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150115, N'LIMA', N'LIMA', N'LA VICTORIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150116, N'LIMA', N'LIMA', N'LINCE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150117, N'LIMA', N'LIMA', N'LOS OLIVOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150118, N'LIMA', N'LIMA', N'LURIGANCHO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150119, N'LIMA', N'LIMA', N'LURIN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150120, N'LIMA', N'LIMA', N'MAGDALENA DEL MAR')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150121, N'LIMA', N'LIMA', N'PUEBLO LIBRE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150122, N'LIMA', N'LIMA', N'MIRAFLORES')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150123, N'LIMA', N'LIMA', N'PACHACAMAC')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150124, N'LIMA', N'LIMA', N'PUCUSANA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150125, N'LIMA', N'LIMA', N'PUENTE PIEDRA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150126, N'LIMA', N'LIMA', N'PUNTA HERMOSA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150127, N'LIMA', N'LIMA', N'PUNTA NEGRA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150128, N'LIMA', N'LIMA', N'RIMAC')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150129, N'LIMA', N'LIMA', N'SAN BARTOLO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150130, N'LIMA', N'LIMA', N'SAN BORJA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150131, N'LIMA', N'LIMA', N'SAN ISIDRO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150132, N'LIMA', N'LIMA', N'SAN JUAN DE LURIGANCHO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150133, N'LIMA', N'LIMA', N'SAN JUAN DE MIRAFLORES')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150134, N'LIMA', N'LIMA', N'SAN LUIS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150135, N'LIMA', N'LIMA', N'SAN MARTIN DE PORRES')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150136, N'LIMA', N'LIMA', N'SAN MIGUEL')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150137, N'LIMA', N'LIMA', N'SANTA ANITA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150138, N'LIMA', N'LIMA', N'SANTA MARIA DEL MAR')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150139, N'LIMA', N'LIMA', N'SANTA ROSA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150140, N'LIMA', N'LIMA', N'SANTIAGO DE SURCO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150141, N'LIMA', N'LIMA', N'SURQUILLO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150142, N'LIMA', N'LIMA', N'VILLA EL SALVADOR')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150143, N'LIMA', N'LIMA', N'VILLA MARIA DEL TRIUNFO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150144, N'LIMA', N'LIMA', N'SANTA MARIA DE HUACHIPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150201, N'LIMA', N'BARRANCA', N'BARRANCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150202, N'LIMA', N'BARRANCA', N'PARAMONGA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150203, N'LIMA', N'BARRANCA', N'PATIVILCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150204, N'LIMA', N'BARRANCA', N'SUPE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150205, N'LIMA', N'BARRANCA', N'SUPE PUERTO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150301, N'LIMA', N'CAJATAMBO', N'CAJATAMBO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150302, N'LIMA', N'CAJATAMBO', N'COPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150303, N'LIMA', N'CAJATAMBO', N'GORGOR')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150304, N'LIMA', N'CAJATAMBO', N'HUANCAPON')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150305, N'LIMA', N'CAJATAMBO', N'MANAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150401, N'LIMA', N'CANTA', N'CANTA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150402, N'LIMA', N'CANTA', N'ARAHUAY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150403, N'LIMA', N'CANTA', N'HUAMANTANGA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150404, N'LIMA', N'CANTA', N'HUAROS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150405, N'LIMA', N'CANTA', N'LACHAQUI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150406, N'LIMA', N'CANTA', N'SAN BUENAVENTURA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150407, N'LIMA', N'CANTA', N'SANTA ROSA DE QUIVES')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150501, N'LIMA', N'CAÑETE', N'SAN VICENTE DE CAÑETE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150502, N'LIMA', N'CAÑETE', N'ASIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150503, N'LIMA', N'CAÑETE', N'CALANGO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150504, N'LIMA', N'CAÑETE', N'CERRO AZUL')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150505, N'LIMA', N'CAÑETE', N'CHILCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150506, N'LIMA', N'CAÑETE', N'COAYLLO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150507, N'LIMA', N'CAÑETE', N'IMPERIAL')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150508, N'LIMA', N'CAÑETE', N'LUNAHUANA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150509, N'LIMA', N'CAÑETE', N'MALA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150510, N'LIMA', N'CAÑETE', N'NUEVO IMPERIAL')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150511, N'LIMA', N'CAÑETE', N'PACARAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150512, N'LIMA', N'CAÑETE', N'QUILMANA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150513, N'LIMA', N'CAÑETE', N'SAN ANTONIO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150514, N'LIMA', N'CAÑETE', N'SAN LUIS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150515, N'LIMA', N'CAÑETE', N'SANTA CRUZ DE FLORES')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150516, N'LIMA', N'CAÑETE', N'ZUÑIGA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150601, N'LIMA', N'HUARAL', N'HUARAL')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150602, N'LIMA', N'HUARAL', N'ATAVILLOS ALTO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150603, N'LIMA', N'HUARAL', N'ATAVILLOS BAJO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150604, N'LIMA', N'HUARAL', N'AUCALLAMA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150605, N'LIMA', N'HUARAL', N'CHANCAY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150606, N'LIMA', N'HUARAL', N'IHUARI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150607, N'LIMA', N'HUARAL', N'LAMPIAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150608, N'LIMA', N'HUARAL', N'PACARAOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150609, N'LIMA', N'HUARAL', N'SAN MIGUEL DE ACOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150610, N'LIMA', N'HUARAL', N'SANTA CRUZ DE ANDAMARCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150611, N'LIMA', N'HUARAL', N'SUMBILCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150612, N'LIMA', N'HUARAL', N'VEINTISIETE DE NOVIEMBRE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150701, N'LIMA', N'HUAROCHIRI', N'MATUCANA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150702, N'LIMA', N'HUAROCHIRI', N'ANTIOQUIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150703, N'LIMA', N'HUAROCHIRI', N'CALLAHUANCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150704, N'LIMA', N'HUAROCHIRI', N'CARAMPOMA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150705, N'LIMA', N'HUAROCHIRI', N'CHICLA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150706, N'LIMA', N'HUAROCHIRI', N'CUENCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150707, N'LIMA', N'HUAROCHIRI', N'HUACHUPAMPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150708, N'LIMA', N'HUAROCHIRI', N'HUANZA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150709, N'LIMA', N'HUAROCHIRI', N'HUAROCHIRI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150710, N'LIMA', N'HUAROCHIRI', N'LAHUAYTAMBO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150711, N'LIMA', N'HUAROCHIRI', N'LANGA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150712, N'LIMA', N'HUAROCHIRI', N'LARAOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150713, N'LIMA', N'HUAROCHIRI', N'MARIATANA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150714, N'LIMA', N'HUAROCHIRI', N'RICARDO PALMA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150715, N'LIMA', N'HUAROCHIRI', N'SAN ANDRES DE TUPICOCHA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150716, N'LIMA', N'HUAROCHIRI', N'SAN ANTONIO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150717, N'LIMA', N'HUAROCHIRI', N'SAN BARTOLOME')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150718, N'LIMA', N'HUAROCHIRI', N'SAN DAMIAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150719, N'LIMA', N'HUAROCHIRI', N'SAN JUAN DE IRIS')
GO
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150720, N'LIMA', N'HUAROCHIRI', N'SAN JUAN DE TANTARANCHE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150721, N'LIMA', N'HUAROCHIRI', N'SAN LORENZO DE QUINTI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150722, N'LIMA', N'HUAROCHIRI', N'SAN MATEO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150723, N'LIMA', N'HUAROCHIRI', N'SAN MATEO DE OTAO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150724, N'LIMA', N'HUAROCHIRI', N'SAN PEDRO DE CASTA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150725, N'LIMA', N'HUAROCHIRI', N'SAN PEDRO DE HUANCAYRE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150726, N'LIMA', N'HUAROCHIRI', N'SANGALLAYA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150727, N'LIMA', N'HUAROCHIRI', N'SANTA CRUZ DE COCACHACRA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150728, N'LIMA', N'HUAROCHIRI', N'SANTA EULALIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150729, N'LIMA', N'HUAROCHIRI', N'SANTIAGO DE ANCHUCAYA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150730, N'LIMA', N'HUAROCHIRI', N'SANTIAGO DE TUNA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150731, N'LIMA', N'HUAROCHIRI', N'SANTO DOMINGO DE LOS OLLEROS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150732, N'LIMA', N'HUAROCHIRI', N'SURCO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150801, N'LIMA', N'HUAURA', N'HUACHO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150802, N'LIMA', N'HUAURA', N'AMBAR')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150803, N'LIMA', N'HUAURA', N'CALETA DE CARQUIN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150804, N'LIMA', N'HUAURA', N'CHECRAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150805, N'LIMA', N'HUAURA', N'HUALMAY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150806, N'LIMA', N'HUAURA', N'HUAURA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150807, N'LIMA', N'HUAURA', N'LEONCIO PRADO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150808, N'LIMA', N'HUAURA', N'PACCHO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150809, N'LIMA', N'HUAURA', N'SANTA LEONOR')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150810, N'LIMA', N'HUAURA', N'SANTA MARIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150811, N'LIMA', N'HUAURA', N'SAYAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150812, N'LIMA', N'HUAURA', N'VEGUETA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150901, N'LIMA', N'OYON', N'OYON')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150902, N'LIMA', N'OYON', N'ANDAJES')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150903, N'LIMA', N'OYON', N'CAUJUL')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150904, N'LIMA', N'OYON', N'COCHAMARCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150905, N'LIMA', N'OYON', N'NAVAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (150906, N'LIMA', N'OYON', N'PACHANGARA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (151001, N'LIMA', N'YAUYOS', N'YAUYOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (151002, N'LIMA', N'YAUYOS', N'ALIS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (151003, N'LIMA', N'YAUYOS', N'AYAUCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (151004, N'LIMA', N'YAUYOS', N'AYAVIRI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (151005, N'LIMA', N'YAUYOS', N'AZANGARO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (151006, N'LIMA', N'YAUYOS', N'CACRA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (151007, N'LIMA', N'YAUYOS', N'CARANIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (151008, N'LIMA', N'YAUYOS', N'CATAHUASI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (151009, N'LIMA', N'YAUYOS', N'CHOCOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (151010, N'LIMA', N'YAUYOS', N'COCHAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (151011, N'LIMA', N'YAUYOS', N'COLONIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (151012, N'LIMA', N'YAUYOS', N'HONGOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (151013, N'LIMA', N'YAUYOS', N'HUAMPARA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (151014, N'LIMA', N'YAUYOS', N'HUANCAYA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (151015, N'LIMA', N'YAUYOS', N'HUANGASCAR')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (151016, N'LIMA', N'YAUYOS', N'HUANTAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (151017, N'LIMA', N'YAUYOS', N'HUAÑEC')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (151018, N'LIMA', N'YAUYOS', N'LARAOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (151019, N'LIMA', N'YAUYOS', N'LINCHA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (151020, N'LIMA', N'YAUYOS', N'MADEAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (151021, N'LIMA', N'YAUYOS', N'MIRAFLORES')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (151022, N'LIMA', N'YAUYOS', N'OMAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (151023, N'LIMA', N'YAUYOS', N'PUTINZA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (151024, N'LIMA', N'YAUYOS', N'QUINCHES')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (151025, N'LIMA', N'YAUYOS', N'QUINOCAY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (151026, N'LIMA', N'YAUYOS', N'SAN JOAQUIN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (151027, N'LIMA', N'YAUYOS', N'SAN PEDRO DE PILAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (151028, N'LIMA', N'YAUYOS', N'TANTA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (151029, N'LIMA', N'YAUYOS', N'TAURIPAMPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (151030, N'LIMA', N'YAUYOS', N'TOMAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (151031, N'LIMA', N'YAUYOS', N'TUPE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (151032, N'LIMA', N'YAUYOS', N'VIÑAC')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (151033, N'LIMA', N'YAUYOS', N'VITIS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160101, N'LORETO', N'MAYNAS', N'IQUITOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160102, N'LORETO', N'MAYNAS', N'ALTO NANAY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160103, N'LORETO', N'MAYNAS', N'FERNANDO LORES')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160104, N'LORETO', N'MAYNAS', N'INDIANA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160105, N'LORETO', N'MAYNAS', N'LAS AMAZONAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160106, N'LORETO', N'MAYNAS', N'MAZAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160107, N'LORETO', N'MAYNAS', N'NAPO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160108, N'LORETO', N'MAYNAS', N'PUNCHANA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160109, N'LORETO', N'MAYNAS', N'PUTUMAYO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160110, N'LORETO', N'MAYNAS', N'TORRES CAUSANA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160112, N'LORETO', N'MAYNAS', N'BELEN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160113, N'LORETO', N'MAYNAS', N'SAN JUAN BAUTISTA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160114, N'LORETO', N'MAYNAS', N'TENIENTE MANUEL CLAVERO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160201, N'LORETO', N'ALTO AMAZONAS', N'YURIMAGUAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160202, N'LORETO', N'ALTO AMAZONAS', N'BALSAPUERTO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160205, N'LORETO', N'ALTO AMAZONAS', N'JEBEROS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160206, N'LORETO', N'ALTO AMAZONAS', N'LAGUNAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160210, N'LORETO', N'ALTO AMAZONAS', N'SANTA CRUZ')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160211, N'LORETO', N'ALTO AMAZONAS', N'TENIENTE CESAR LOPEZ ROJAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160301, N'LORETO', N'LORETO', N'NAUTA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160302, N'LORETO', N'LORETO', N'PARINARI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160303, N'LORETO', N'LORETO', N'TIGRE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160304, N'LORETO', N'LORETO', N'TROMPETEROS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160305, N'LORETO', N'LORETO', N'URARINAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160401, N'LORETO', N'MARISCAL RAMON CASTILLA', N'RAMON CASTILLA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160402, N'LORETO', N'MARISCAL RAMON CASTILLA', N'PEBAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160403, N'LORETO', N'MARISCAL RAMON CASTILLA', N'YAVARI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160404, N'LORETO', N'MARISCAL RAMON CASTILLA', N'SAN PABLO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160501, N'LORETO', N'REQUENA', N'REQUENA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160502, N'LORETO', N'REQUENA', N'ALTO TAPICHE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160503, N'LORETO', N'REQUENA', N'CAPELO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160504, N'LORETO', N'REQUENA', N'EMILIO SAN MARTIN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160505, N'LORETO', N'REQUENA', N'MAQUIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160506, N'LORETO', N'REQUENA', N'PUINAHUA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160507, N'LORETO', N'REQUENA', N'SAQUENA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160508, N'LORETO', N'REQUENA', N'SOPLIN')
GO
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160509, N'LORETO', N'REQUENA', N'TAPICHE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160510, N'LORETO', N'REQUENA', N'JENARO HERRERA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160511, N'LORETO', N'REQUENA', N'YAQUERANA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160601, N'LORETO', N'UCAYALI', N'CONTAMANA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160602, N'LORETO', N'UCAYALI', N'INAHUAYA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160603, N'LORETO', N'UCAYALI', N'PADRE MARQUEZ')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160604, N'LORETO', N'UCAYALI', N'PAMPA HERMOSA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160605, N'LORETO', N'UCAYALI', N'SARAYACU')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160606, N'LORETO', N'UCAYALI', N'VARGAS GUERRA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160701, N'LORETO', N'DATEM DEL MARAÑON', N'BARRANCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160702, N'LORETO', N'DATEM DEL MARAÑON', N'CAHUAPANAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160703, N'LORETO', N'DATEM DEL MARAÑON', N'MANSERICHE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160704, N'LORETO', N'DATEM DEL MARAÑON', N'MORONA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160705, N'LORETO', N'DATEM DEL MARAÑON', N'PASTAZA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160706, N'LORETO', N'DATEM DEL MARAÑON', N'ANDOAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160801, N'LORETO', N'PUTUMAYO', N'PUTUMAYO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160802, N'LORETO', N'PUTUMAYO', N'ROSA PANDURO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160803, N'LORETO', N'PUTUMAYO', N'TENIENTE MANUEL CLAVERO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (160804, N'LORETO', N'PUTUMAYO', N'YAGUAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (170101, N'MADRE DE DIOS', N'TAMBOPATA', N'TAMBOPATA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (170102, N'MADRE DE DIOS', N'TAMBOPATA', N'INAMBARI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (170103, N'MADRE DE DIOS', N'TAMBOPATA', N'LAS PIEDRAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (170104, N'MADRE DE DIOS', N'TAMBOPATA', N'LABERINTO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (170201, N'MADRE DE DIOS', N'MANU', N'MANU')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (170202, N'MADRE DE DIOS', N'MANU', N'FITZCARRALD')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (170203, N'MADRE DE DIOS', N'MANU', N'MADRE DE DIOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (170204, N'MADRE DE DIOS', N'MANU', N'HUEPETUHE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (170301, N'MADRE DE DIOS', N'TAHUAMANU', N'IÑAPARI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (170302, N'MADRE DE DIOS', N'TAHUAMANU', N'IBERIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (170303, N'MADRE DE DIOS', N'TAHUAMANU', N'TAHUAMANU')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (180101, N'MOQUEGUA', N'MARISCAL NIETO', N'MOQUEGUA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (180102, N'MOQUEGUA', N'MARISCAL NIETO', N'CARUMAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (180103, N'MOQUEGUA', N'MARISCAL NIETO', N'CUCHUMBAYA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (180104, N'MOQUEGUA', N'MARISCAL NIETO', N'SAMEGUA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (180105, N'MOQUEGUA', N'MARISCAL NIETO', N'SAN CRISTOBAL')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (180106, N'MOQUEGUA', N'MARISCAL NIETO', N'TORATA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (180199, N'MOQUEGUA', N'MARISCAL NIETO', N'SAN ANTONIO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (180201, N'MOQUEGUA', N'GENERAL SANCHEZ CERRO', N'OMATE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (180202, N'MOQUEGUA', N'GENERAL SANCHEZ CERRO', N'CHOJATA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (180203, N'MOQUEGUA', N'GENERAL SANCHEZ CERRO', N'COALAQUE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (180204, N'MOQUEGUA', N'GENERAL SANCHEZ CERRO', N'ICHUÑA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (180205, N'MOQUEGUA', N'GENERAL SANCHEZ CERRO', N'LA CAPILLA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (180206, N'MOQUEGUA', N'GENERAL SANCHEZ CERRO', N'LLOQUE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (180207, N'MOQUEGUA', N'GENERAL SANCHEZ CERRO', N'MATALAQUE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (180208, N'MOQUEGUA', N'GENERAL SANCHEZ CERRO', N'PUQUINA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (180209, N'MOQUEGUA', N'GENERAL SANCHEZ CERRO', N'QUINISTAQUILLAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (180210, N'MOQUEGUA', N'GENERAL SANCHEZ CERRO', N'UBINAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (180211, N'MOQUEGUA', N'GENERAL SANCHEZ CERRO', N'YUNGA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (180301, N'MOQUEGUA', N'ILO', N'ILO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (180302, N'MOQUEGUA', N'ILO', N'EL ALGARROBAL')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (180303, N'MOQUEGUA', N'ILO', N'PACOCHA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (190101, N'PASCO', N'PASCO', N'CHAUPIMARCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (190102, N'PASCO', N'PASCO', N'HUACHON')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (190103, N'PASCO', N'PASCO', N'HUARIACA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (190104, N'PASCO', N'PASCO', N'HUAYLLAY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (190105, N'PASCO', N'PASCO', N'NINACACA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (190106, N'PASCO', N'PASCO', N'PALLANCHACRA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (190107, N'PASCO', N'PASCO', N'PAUCARTAMBO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (190108, N'PASCO', N'PASCO', N'SAN FRANCISCO DE ASIS DE YARUSYACAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (190109, N'PASCO', N'PASCO', N'SIMON BOLIVAR')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (190110, N'PASCO', N'PASCO', N'TICLACAYAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (190111, N'PASCO', N'PASCO', N'TINYAHUARCO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (190112, N'PASCO', N'PASCO', N'VICCO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (190113, N'PASCO', N'PASCO', N'YANACANCHA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (190201, N'PASCO', N'DANIEL ALCIDES CARRION', N'YANAHUANCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (190202, N'PASCO', N'DANIEL ALCIDES CARRION', N'CHACAYAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (190203, N'PASCO', N'DANIEL ALCIDES CARRION', N'GOYLLARISQUIZGA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (190204, N'PASCO', N'DANIEL ALCIDES CARRION', N'PAUCAR')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (190205, N'PASCO', N'DANIEL ALCIDES CARRION', N'SAN PEDRO DE PILLAO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (190206, N'PASCO', N'DANIEL ALCIDES CARRION', N'SANTA ANA DE TUSI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (190207, N'PASCO', N'DANIEL ALCIDES CARRION', N'TAPUC')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (190208, N'PASCO', N'DANIEL ALCIDES CARRION', N'VILCABAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (190301, N'PASCO', N'OXAPAMPA', N'OXAPAMPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (190302, N'PASCO', N'OXAPAMPA', N'CHONTABAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (190303, N'PASCO', N'OXAPAMPA', N'HUANCABAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (190304, N'PASCO', N'OXAPAMPA', N'PALCAZU')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (190305, N'PASCO', N'OXAPAMPA', N'POZUZO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (190306, N'PASCO', N'OXAPAMPA', N'PUERTO BERMUDEZ')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (190307, N'PASCO', N'OXAPAMPA', N'VILLA RICA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (190308, N'PASCO', N'OXAPAMPA', N'CONSTITUCION')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200101, N'PIURA', N'PIURA', N'PIURA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200104, N'PIURA', N'PIURA', N'CASTILLA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200105, N'PIURA', N'PIURA', N'CATACAOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200107, N'PIURA', N'PIURA', N'CURA MORI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200108, N'PIURA', N'PIURA', N'EL TALLAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200109, N'PIURA', N'PIURA', N'LA ARENA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200110, N'PIURA', N'PIURA', N'LA UNION')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200111, N'PIURA', N'PIURA', N'LAS LOMAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200114, N'PIURA', N'PIURA', N'TAMBO GRANDE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200115, N'PIURA', N'PIURA', N'VEINTISEIS DE OCTUBRE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200201, N'PIURA', N'AYABACA', N'AYABACA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200202, N'PIURA', N'AYABACA', N'FRIAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200203, N'PIURA', N'AYABACA', N'JILILI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200204, N'PIURA', N'AYABACA', N'LAGUNAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200205, N'PIURA', N'AYABACA', N'MONTERO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200206, N'PIURA', N'AYABACA', N'PACAIPAMPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200207, N'PIURA', N'AYABACA', N'PAIMAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200208, N'PIURA', N'AYABACA', N'SAPILLICA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200209, N'PIURA', N'AYABACA', N'SICCHEZ')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200210, N'PIURA', N'AYABACA', N'SUYO')
GO
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200301, N'PIURA', N'HUANCABAMBA', N'HUANCABAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200302, N'PIURA', N'HUANCABAMBA', N'CANCHAQUE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200303, N'PIURA', N'HUANCABAMBA', N'EL CARMEN DE LA FRONTERA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200304, N'PIURA', N'HUANCABAMBA', N'HUARMACA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200305, N'PIURA', N'HUANCABAMBA', N'LALAQUIZ')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200306, N'PIURA', N'HUANCABAMBA', N'SAN MIGUEL DE EL FAIQUE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200307, N'PIURA', N'HUANCABAMBA', N'SONDOR')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200308, N'PIURA', N'HUANCABAMBA', N'SONDORILLO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200401, N'PIURA', N'MORROPON', N'CHULUCANAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200402, N'PIURA', N'MORROPON', N'BUENOS AIRES')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200403, N'PIURA', N'MORROPON', N'CHALACO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200404, N'PIURA', N'MORROPON', N'LA MATANZA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200405, N'PIURA', N'MORROPON', N'MORROPON')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200406, N'PIURA', N'MORROPON', N'SALITRAL')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200407, N'PIURA', N'MORROPON', N'SAN JUAN DE BIGOTE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200408, N'PIURA', N'MORROPON', N'SANTA CATALINA DE MOSSA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200409, N'PIURA', N'MORROPON', N'SANTO DOMINGO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200410, N'PIURA', N'MORROPON', N'YAMANGO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200501, N'PIURA', N'PAITA', N'PAITA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200502, N'PIURA', N'PAITA', N'AMOTAPE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200503, N'PIURA', N'PAITA', N'ARENAL')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200504, N'PIURA', N'PAITA', N'COLAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200505, N'PIURA', N'PAITA', N'LA HUACA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200506, N'PIURA', N'PAITA', N'TAMARINDO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200507, N'PIURA', N'PAITA', N'VICHAYAL')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200601, N'PIURA', N'SULLANA', N'SULLANA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200602, N'PIURA', N'SULLANA', N'BELLAVISTA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200603, N'PIURA', N'SULLANA', N'IGNACIO ESCUDERO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200604, N'PIURA', N'SULLANA', N'LANCONES')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200605, N'PIURA', N'SULLANA', N'MARCAVELICA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200606, N'PIURA', N'SULLANA', N'MIGUEL CHECA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200607, N'PIURA', N'SULLANA', N'QUERECOTILLO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200608, N'PIURA', N'SULLANA', N'SALITRAL')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200701, N'PIURA', N'TALARA', N'PARIÑAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200702, N'PIURA', N'TALARA', N'EL ALTO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200703, N'PIURA', N'TALARA', N'LA BREA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200704, N'PIURA', N'TALARA', N'LOBITOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200705, N'PIURA', N'TALARA', N'LOS ORGANOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200706, N'PIURA', N'TALARA', N'MANCORA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200801, N'PIURA', N'SECHURA', N'SECHURA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200802, N'PIURA', N'SECHURA', N'BELLAVISTA DE LA UNION')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200803, N'PIURA', N'SECHURA', N'BERNAL')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200804, N'PIURA', N'SECHURA', N'CRISTO NOS VALGA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200805, N'PIURA', N'SECHURA', N'VICE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (200806, N'PIURA', N'SECHURA', N'RINCONADA LLICUAR')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210101, N'PUNO', N'PUNO', N'PUNO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210102, N'PUNO', N'PUNO', N'ACORA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210103, N'PUNO', N'PUNO', N'AMANTANI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210104, N'PUNO', N'PUNO', N'ATUNCOLLA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210105, N'PUNO', N'PUNO', N'CAPACHICA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210106, N'PUNO', N'PUNO', N'CHUCUITO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210107, N'PUNO', N'PUNO', N'COATA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210108, N'PUNO', N'PUNO', N'HUATA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210109, N'PUNO', N'PUNO', N'MAÑAZO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210110, N'PUNO', N'PUNO', N'PAUCARCOLLA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210111, N'PUNO', N'PUNO', N'PICHACANI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210112, N'PUNO', N'PUNO', N'PLATERIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210113, N'PUNO', N'PUNO', N'SAN ANTONIO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210114, N'PUNO', N'PUNO', N'TIQUILLACA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210115, N'PUNO', N'PUNO', N'VILQUE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210201, N'PUNO', N'AZANGARO', N'AZANGARO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210202, N'PUNO', N'AZANGARO', N'ACHAYA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210203, N'PUNO', N'AZANGARO', N'ARAPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210204, N'PUNO', N'AZANGARO', N'ASILLO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210205, N'PUNO', N'AZANGARO', N'CAMINACA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210206, N'PUNO', N'AZANGARO', N'CHUPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210207, N'PUNO', N'AZANGARO', N'JOSE DOMINGO CHOQUEHUANCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210208, N'PUNO', N'AZANGARO', N'MUÑANI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210209, N'PUNO', N'AZANGARO', N'POTONI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210210, N'PUNO', N'AZANGARO', N'SAMAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210211, N'PUNO', N'AZANGARO', N'SAN ANTON')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210212, N'PUNO', N'AZANGARO', N'SAN JOSE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210213, N'PUNO', N'AZANGARO', N'SAN JUAN DE SALINAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210214, N'PUNO', N'AZANGARO', N'SANTIAGO DE PUPUJA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210215, N'PUNO', N'AZANGARO', N'TIRAPATA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210301, N'PUNO', N'CARABAYA', N'MACUSANI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210302, N'PUNO', N'CARABAYA', N'AJOYANI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210303, N'PUNO', N'CARABAYA', N'AYAPATA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210304, N'PUNO', N'CARABAYA', N'COASA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210305, N'PUNO', N'CARABAYA', N'CORANI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210306, N'PUNO', N'CARABAYA', N'CRUCERO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210307, N'PUNO', N'CARABAYA', N'ITUATA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210308, N'PUNO', N'CARABAYA', N'OLLACHEA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210309, N'PUNO', N'CARABAYA', N'SAN GABAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210310, N'PUNO', N'CARABAYA', N'USICAYOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210401, N'PUNO', N'CHUCUITO', N'JULI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210402, N'PUNO', N'CHUCUITO', N'DESAGUADERO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210403, N'PUNO', N'CHUCUITO', N'HUACULLANI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210404, N'PUNO', N'CHUCUITO', N'KELLUYO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210405, N'PUNO', N'CHUCUITO', N'PISACOMA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210406, N'PUNO', N'CHUCUITO', N'POMATA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210407, N'PUNO', N'CHUCUITO', N'ZEPITA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210501, N'PUNO', N'EL COLLAO', N'ILAVE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210502, N'PUNO', N'EL COLLAO', N'CAPAZO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210503, N'PUNO', N'EL COLLAO', N'PILCUYO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210504, N'PUNO', N'EL COLLAO', N'SANTA ROSA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210505, N'PUNO', N'EL COLLAO', N'CONDURIRI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210601, N'PUNO', N'HUANCANE', N'HUANCANE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210602, N'PUNO', N'HUANCANE', N'COJATA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210603, N'PUNO', N'HUANCANE', N'HUATASANI')
GO
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210604, N'PUNO', N'HUANCANE', N'INCHUPALLA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210605, N'PUNO', N'HUANCANE', N'PUSI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210606, N'PUNO', N'HUANCANE', N'ROSASPATA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210607, N'PUNO', N'HUANCANE', N'TARACO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210608, N'PUNO', N'HUANCANE', N'VILQUE CHICO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210701, N'PUNO', N'LAMPA', N'LAMPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210702, N'PUNO', N'LAMPA', N'CABANILLA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210703, N'PUNO', N'LAMPA', N'CALAPUJA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210704, N'PUNO', N'LAMPA', N'NICASIO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210705, N'PUNO', N'LAMPA', N'OCUVIRI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210706, N'PUNO', N'LAMPA', N'PALCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210707, N'PUNO', N'LAMPA', N'PARATIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210708, N'PUNO', N'LAMPA', N'PUCARA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210709, N'PUNO', N'LAMPA', N'SANTA LUCIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210710, N'PUNO', N'LAMPA', N'VILAVILA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210801, N'PUNO', N'MELGAR', N'AYAVIRI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210802, N'PUNO', N'MELGAR', N'ANTAUTA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210803, N'PUNO', N'MELGAR', N'CUPI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210804, N'PUNO', N'MELGAR', N'LLALLI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210805, N'PUNO', N'MELGAR', N'MACARI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210806, N'PUNO', N'MELGAR', N'NUÑOA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210807, N'PUNO', N'MELGAR', N'ORURILLO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210808, N'PUNO', N'MELGAR', N'SANTA ROSA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210809, N'PUNO', N'MELGAR', N'UMACHIRI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210901, N'PUNO', N'MOHO', N'MOHO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210902, N'PUNO', N'MOHO', N'CONIMA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210903, N'PUNO', N'MOHO', N'HUAYRAPATA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (210904, N'PUNO', N'MOHO', N'TILALI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (211001, N'PUNO', N'SAN ANTONIO DE PUTINA', N'PUTINA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (211002, N'PUNO', N'SAN ANTONIO DE PUTINA', N'ANANEA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (211003, N'PUNO', N'SAN ANTONIO DE PUTINA', N'PEDRO VILCA APAZA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (211004, N'PUNO', N'SAN ANTONIO DE PUTINA', N'QUILCAPUNCU')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (211005, N'PUNO', N'SAN ANTONIO DE PUTINA', N'SINA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (211101, N'PUNO', N'SAN ROMAN', N'JULIACA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (211102, N'PUNO', N'SAN ROMAN', N'CABANA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (211103, N'PUNO', N'SAN ROMAN', N'CABANILLAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (211104, N'PUNO', N'SAN ROMAN', N'CARACOTO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (211105, N'PUNO', N'SAN ROMAN', N'SAN MIGUEL')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (211201, N'PUNO', N'SANDIA', N'SANDIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (211202, N'PUNO', N'SANDIA', N'CUYOCUYO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (211203, N'PUNO', N'SANDIA', N'LIMBANI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (211204, N'PUNO', N'SANDIA', N'PATAMBUCO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (211205, N'PUNO', N'SANDIA', N'PHARA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (211206, N'PUNO', N'SANDIA', N'QUIACA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (211207, N'PUNO', N'SANDIA', N'SAN JUAN DEL ORO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (211208, N'PUNO', N'SANDIA', N'YANAHUAYA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (211209, N'PUNO', N'SANDIA', N'ALTO INAMBARI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (211210, N'PUNO', N'SANDIA', N'SAN PEDRO DE PUTINA PUNCO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (211301, N'PUNO', N'YUNGUYO', N'YUNGUYO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (211302, N'PUNO', N'YUNGUYO', N'ANAPIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (211303, N'PUNO', N'YUNGUYO', N'COPANI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (211304, N'PUNO', N'YUNGUYO', N'CUTURAPI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (211305, N'PUNO', N'YUNGUYO', N'OLLARAYA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (211306, N'PUNO', N'YUNGUYO', N'TINICACHI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (211307, N'PUNO', N'YUNGUYO', N'UNICACHI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220101, N'SAN MARTIN', N'MOYOBAMBA', N'MOYOBAMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220102, N'SAN MARTIN', N'MOYOBAMBA', N'CALZADA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220103, N'SAN MARTIN', N'MOYOBAMBA', N'HABANA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220104, N'SAN MARTIN', N'MOYOBAMBA', N'JEPELACIO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220105, N'SAN MARTIN', N'MOYOBAMBA', N'SORITOR')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220106, N'SAN MARTIN', N'MOYOBAMBA', N'YANTALO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220201, N'SAN MARTIN', N'BELLAVISTA', N'BELLAVISTA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220202, N'SAN MARTIN', N'BELLAVISTA', N'ALTO BIAVO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220203, N'SAN MARTIN', N'BELLAVISTA', N'BAJO BIAVO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220204, N'SAN MARTIN', N'BELLAVISTA', N'HUALLAGA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220205, N'SAN MARTIN', N'BELLAVISTA', N'SAN PABLO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220206, N'SAN MARTIN', N'BELLAVISTA', N'SAN RAFAEL')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220301, N'SAN MARTIN', N'EL DORADO', N'SAN JOSE DE SISA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220302, N'SAN MARTIN', N'EL DORADO', N'AGUA BLANCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220303, N'SAN MARTIN', N'EL DORADO', N'SAN MARTIN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220304, N'SAN MARTIN', N'EL DORADO', N'SANTA ROSA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220305, N'SAN MARTIN', N'EL DORADO', N'SHATOJA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220401, N'SAN MARTIN', N'HUALLAGA', N'SAPOSOA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220402, N'SAN MARTIN', N'HUALLAGA', N'ALTO SAPOSOA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220403, N'SAN MARTIN', N'HUALLAGA', N'EL ESLABON')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220404, N'SAN MARTIN', N'HUALLAGA', N'PISCOYACU')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220405, N'SAN MARTIN', N'HUALLAGA', N'SACANCHE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220406, N'SAN MARTIN', N'HUALLAGA', N'TINGO DE SAPOSOA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220501, N'SAN MARTIN', N'LAMAS', N'LAMAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220502, N'SAN MARTIN', N'LAMAS', N'ALONSO DE ALVARADO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220503, N'SAN MARTIN', N'LAMAS', N'BARRANQUITA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220504, N'SAN MARTIN', N'LAMAS', N'CAYNARACHI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220505, N'SAN MARTIN', N'LAMAS', N'CUÑUMBUQUI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220506, N'SAN MARTIN', N'LAMAS', N'PINTO RECODO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220507, N'SAN MARTIN', N'LAMAS', N'RUMISAPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220508, N'SAN MARTIN', N'LAMAS', N'SAN ROQUE DE CUMBAZA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220509, N'SAN MARTIN', N'LAMAS', N'SHANAO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220510, N'SAN MARTIN', N'LAMAS', N'TABALOSOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220511, N'SAN MARTIN', N'LAMAS', N'ZAPATERO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220601, N'SAN MARTIN', N'MARISCAL CACERES', N'JUANJUI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220602, N'SAN MARTIN', N'MARISCAL CACERES', N'CAMPANILLA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220603, N'SAN MARTIN', N'MARISCAL CACERES', N'HUICUNGO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220604, N'SAN MARTIN', N'MARISCAL CACERES', N'PACHIZA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220605, N'SAN MARTIN', N'MARISCAL CACERES', N'PAJARILLO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220701, N'SAN MARTIN', N'PICOTA', N'PICOTA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220702, N'SAN MARTIN', N'PICOTA', N'BUENOS AIRES')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220703, N'SAN MARTIN', N'PICOTA', N'CASPISAPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220704, N'SAN MARTIN', N'PICOTA', N'PILLUANA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220705, N'SAN MARTIN', N'PICOTA', N'PUCACACA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220706, N'SAN MARTIN', N'PICOTA', N'SAN CRISTOBAL')
GO
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220707, N'SAN MARTIN', N'PICOTA', N'SAN HILARION')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220708, N'SAN MARTIN', N'PICOTA', N'SHAMBOYACU')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220709, N'SAN MARTIN', N'PICOTA', N'TINGO DE PONASA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220710, N'SAN MARTIN', N'PICOTA', N'TRES UNIDOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220801, N'SAN MARTIN', N'RIOJA', N'RIOJA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220802, N'SAN MARTIN', N'RIOJA', N'AWAJUN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220803, N'SAN MARTIN', N'RIOJA', N'ELIAS SOPLIN VARGAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220804, N'SAN MARTIN', N'RIOJA', N'NUEVA CAJAMARCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220805, N'SAN MARTIN', N'RIOJA', N'PARDO MIGUEL')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220806, N'SAN MARTIN', N'RIOJA', N'POSIC')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220807, N'SAN MARTIN', N'RIOJA', N'SAN FERNANDO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220808, N'SAN MARTIN', N'RIOJA', N'YORONGOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220809, N'SAN MARTIN', N'RIOJA', N'YURACYACU')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220901, N'SAN MARTIN', N'SAN MARTIN', N'TARAPOTO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220902, N'SAN MARTIN', N'SAN MARTIN', N'ALBERTO LEVEAU')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220903, N'SAN MARTIN', N'SAN MARTIN', N'CACATACHI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220904, N'SAN MARTIN', N'SAN MARTIN', N'CHAZUTA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220905, N'SAN MARTIN', N'SAN MARTIN', N'CHIPURANA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220906, N'SAN MARTIN', N'SAN MARTIN', N'EL PORVENIR')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220907, N'SAN MARTIN', N'SAN MARTIN', N'HUIMBAYOC')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220908, N'SAN MARTIN', N'SAN MARTIN', N'JUAN GUERRA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220909, N'SAN MARTIN', N'SAN MARTIN', N'LA BANDA DE SHILCAYO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220910, N'SAN MARTIN', N'SAN MARTIN', N'MORALES')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220911, N'SAN MARTIN', N'SAN MARTIN', N'PAPAPLAYA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220912, N'SAN MARTIN', N'SAN MARTIN', N'SAN ANTONIO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220913, N'SAN MARTIN', N'SAN MARTIN', N'SAUCE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (220914, N'SAN MARTIN', N'SAN MARTIN', N'SHAPAJA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (221001, N'SAN MARTIN', N'TOCACHE', N'TOCACHE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (221002, N'SAN MARTIN', N'TOCACHE', N'NUEVO PROGRESO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (221003, N'SAN MARTIN', N'TOCACHE', N'POLVORA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (221004, N'SAN MARTIN', N'TOCACHE', N'SHUNTE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (221005, N'SAN MARTIN', N'TOCACHE', N'UCHIZA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (221006, N'SAN MARTIN', N'TOCACHE', N'SANTA LUCIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (230101, N'TACNA', N'TACNA', N'TACNA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (230102, N'TACNA', N'TACNA', N'ALTO DE LA ALIANZA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (230103, N'TACNA', N'TACNA', N'CALANA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (230104, N'TACNA', N'TACNA', N'CIUDAD NUEVA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (230105, N'TACNA', N'TACNA', N'INCLAN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (230106, N'TACNA', N'TACNA', N'PACHIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (230107, N'TACNA', N'TACNA', N'PALCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (230108, N'TACNA', N'TACNA', N'POCOLLAY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (230109, N'TACNA', N'TACNA', N'SAMA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (230110, N'TACNA', N'TACNA', N'CORONEL GREGORIO ALBARRACIN LANCHIP')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (230111, N'TACNA', N'TACNA', N'LA YARADA LOS PALOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (230201, N'TACNA', N'CANDARAVE', N'CANDARAVE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (230202, N'TACNA', N'CANDARAVE', N'CAIRANI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (230203, N'TACNA', N'CANDARAVE', N'CAMILACA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (230204, N'TACNA', N'CANDARAVE', N'CURIBAYA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (230205, N'TACNA', N'CANDARAVE', N'HUANUARA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (230206, N'TACNA', N'CANDARAVE', N'QUILAHUANI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (230301, N'TACNA', N'JORGE BASADRE', N'LOCUMBA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (230302, N'TACNA', N'JORGE BASADRE', N'ILABAYA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (230303, N'TACNA', N'JORGE BASADRE', N'ITE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (230401, N'TACNA', N'TARATA', N'TARATA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (230402, N'TACNA', N'TARATA', N'CHUCATAMANI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (230403, N'TACNA', N'TARATA', N'ESTIQUE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (230404, N'TACNA', N'TARATA', N'ESTIQUE-PAMPA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (230405, N'TACNA', N'TARATA', N'SITAJARA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (230406, N'TACNA', N'TARATA', N'SUSAPAYA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (230407, N'TACNA', N'TARATA', N'TARUCACHI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (230408, N'TACNA', N'TARATA', N'TICACO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (240101, N'TUMBES', N'TUMBES', N'TUMBES')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (240102, N'TUMBES', N'TUMBES', N'CORRALES')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (240103, N'TUMBES', N'TUMBES', N'LA CRUZ')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (240104, N'TUMBES', N'TUMBES', N'PAMPAS DE HOSPITAL')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (240105, N'TUMBES', N'TUMBES', N'SAN JACINTO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (240106, N'TUMBES', N'TUMBES', N'SAN JUAN DE LA VIRGEN')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (240201, N'TUMBES', N'CONTRALMIRANTE VILLAR', N'ZORRITOS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (240202, N'TUMBES', N'CONTRALMIRANTE VILLAR', N'CASITAS')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (240203, N'TUMBES', N'CONTRALMIRANTE VILLAR', N'CANOAS DE PUNTA SAL')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (240301, N'TUMBES', N'ZARUMILLA', N'ZARUMILLA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (240302, N'TUMBES', N'ZARUMILLA', N'AGUAS VERDES')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (240303, N'TUMBES', N'ZARUMILLA', N'MATAPALO')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (240304, N'TUMBES', N'ZARUMILLA', N'PAPAYAL')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (250101, N'UCAYALI', N'CORONEL PORTILLO', N'CALLERIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (250102, N'UCAYALI', N'CORONEL PORTILLO', N'CAMPOVERDE')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (250103, N'UCAYALI', N'CORONEL PORTILLO', N'IPARIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (250104, N'UCAYALI', N'CORONEL PORTILLO', N'MASISEA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (250105, N'UCAYALI', N'CORONEL PORTILLO', N'YARINACOCHA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (250106, N'UCAYALI', N'CORONEL PORTILLO', N'NUEVA REQUENA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (250107, N'UCAYALI', N'CORONEL PORTILLO', N'MANANTAY')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (250201, N'UCAYALI', N'ATALAYA', N'RAYMONDI')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (250202, N'UCAYALI', N'ATALAYA', N'SEPAHUA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (250203, N'UCAYALI', N'ATALAYA', N'TAHUANIA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (250204, N'UCAYALI', N'ATALAYA', N'YURUA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (250301, N'UCAYALI', N'PADRE ABAD', N'PADRE ABAD')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (250302, N'UCAYALI', N'PADRE ABAD', N'IRAZOLA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (250303, N'UCAYALI', N'PADRE ABAD', N'CURIMANA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (250304, N'UCAYALI', N'PADRE ABAD', N'NESHUYA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (250305, N'UCAYALI', N'PADRE ABAD', N'ALEXANDER VON HUMBOLDT')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (250306, N'UCAYALI', N'PADRE ABAD', N'HUIPOCA')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (250307, N'UCAYALI', N'PADRE ABAD', N'BOQUERON')
INSERT [dbo].[UBIGEO] ([idUbigeo], [DEPARTAMENTO], [PROVINCIA], [DISTRITO]) VALUES (250401, N'UCAYALI', N'PURUS', N'PURUS')
GO
ALTER TABLE [dbo].[CLIENTE] ADD  DEFAULT (getdate()) FOR [fecha]
GO
ALTER TABLE [dbo].[INVENTARIO] ADD  CONSTRAINT [DF__INVENTARI__fecha__5629CD9C]  DEFAULT (getdate()) FOR [fechaRegistro]
GO
ALTER TABLE [dbo].[PROVEEDOR] ADD  DEFAULT (getdate()) FOR [fecha]
GO
ALTER TABLE [dbo].[TRABAJADOR] ADD  DEFAULT (getdate()) FOR [fechaRegistro]
GO
ALTER TABLE [dbo].[CLIENTE]  WITH CHECK ADD  CONSTRAINT [FK__CLIENTE__idUbige__4D94879B] FOREIGN KEY([idUbigeo])
REFERENCES [dbo].[UBIGEO] ([idUbigeo])
GO
ALTER TABLE [dbo].[CLIENTE] CHECK CONSTRAINT [FK__CLIENTE__idUbige__4D94879B]
GO
ALTER TABLE [dbo].[DETALLE_ANIMAL]  WITH CHECK ADD  CONSTRAINT [FK_DETALLE_ANIMAL_ANIMAL] FOREIGN KEY([idAnimal])
REFERENCES [dbo].[ANIMAL] ([idAnimal])
GO
ALTER TABLE [dbo].[DETALLE_ANIMAL] CHECK CONSTRAINT [FK_DETALLE_ANIMAL_ANIMAL]
GO
ALTER TABLE [dbo].[DETALLE_ANIMAL]  WITH CHECK ADD  CONSTRAINT [FK_DETALLE_ANIMAL_CORTE_ANIMAL] FOREIGN KEY([idCorteAnim])
REFERENCES [dbo].[CORTE_ANIMAL] ([idCorteAnim])
GO
ALTER TABLE [dbo].[DETALLE_ANIMAL] CHECK CONSTRAINT [FK_DETALLE_ANIMAL_CORTE_ANIMAL]
GO
ALTER TABLE [dbo].[DETALLE_INVENTARIO]  WITH CHECK ADD  CONSTRAINT [FK_DETALLE_INVENTARIO_INVENTARIO] FOREIGN KEY([idInv])
REFERENCES [dbo].[INVENTARIO] ([idInv])
GO
ALTER TABLE [dbo].[DETALLE_INVENTARIO] CHECK CONSTRAINT [FK_DETALLE_INVENTARIO_INVENTARIO]
GO
ALTER TABLE [dbo].[DETALLE_INVENTARIO]  WITH CHECK ADD  CONSTRAINT [FK_DETALLE_INVENTARIO_LOTE_PRODUCTO] FOREIGN KEY([idLotProd])
REFERENCES [dbo].[LOTE_PRODUCTO] ([idLoteProd])
GO
ALTER TABLE [dbo].[DETALLE_INVENTARIO] CHECK CONSTRAINT [FK_DETALLE_INVENTARIO_LOTE_PRODUCTO]
GO
ALTER TABLE [dbo].[DETALLE_VENTA]  WITH CHECK ADD  CONSTRAINT [FK_DETALLE_VENTA_INVENTARIO] FOREIGN KEY([idInv])
REFERENCES [dbo].[INVENTARIO] ([idInv])
GO
ALTER TABLE [dbo].[DETALLE_VENTA] CHECK CONSTRAINT [FK_DETALLE_VENTA_INVENTARIO]
GO
ALTER TABLE [dbo].[DETALLE_VENTA]  WITH CHECK ADD  CONSTRAINT [FK_DETALLE_VENTA_ORDEN_VENTA] FOREIGN KEY([idOrdVen])
REFERENCES [dbo].[ORDEN_VENTA] ([idOrdVen])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DETALLE_VENTA] CHECK CONSTRAINT [FK_DETALLE_VENTA_ORDEN_VENTA]
GO
ALTER TABLE [dbo].[INGRESO_MP]  WITH CHECK ADD  CONSTRAINT [FK__INGRESO_M__idOrd__5535A963] FOREIGN KEY([idOrdCom])
REFERENCES [dbo].[ORDEN_COMPRA] ([idOrdCom])
GO
ALTER TABLE [dbo].[INGRESO_MP] CHECK CONSTRAINT [FK__INGRESO_M__idOrd__5535A963]
GO
ALTER TABLE [dbo].[LOTE_PRODUCTO]  WITH CHECK ADD  CONSTRAINT [FK_LOTE_PRODUCTO_DETALLE_ANIMAL] FOREIGN KEY([idDetAnim])
REFERENCES [dbo].[DETALLE_ANIMAL] ([idDetAnim])
GO
ALTER TABLE [dbo].[LOTE_PRODUCTO] CHECK CONSTRAINT [FK_LOTE_PRODUCTO_DETALLE_ANIMAL]
GO
ALTER TABLE [dbo].[LOTE_PRODUCTO]  WITH CHECK ADD  CONSTRAINT [FK_LOTE_PRODUCTO_INGRESO_MP] FOREIGN KEY([idIngresoMP])
REFERENCES [dbo].[INGRESO_MP] ([idMP])
GO
ALTER TABLE [dbo].[LOTE_PRODUCTO] CHECK CONSTRAINT [FK_LOTE_PRODUCTO_INGRESO_MP]
GO
ALTER TABLE [dbo].[ORDEN_COMPRA]  WITH CHECK ADD  CONSTRAINT [FK__ORDEN_COM__idPro__5AEE82B9] FOREIGN KEY([idProv])
REFERENCES [dbo].[PROVEEDOR] ([idProv])
GO
ALTER TABLE [dbo].[ORDEN_COMPRA] CHECK CONSTRAINT [FK__ORDEN_COM__idPro__5AEE82B9]
GO
ALTER TABLE [dbo].[ORDEN_COMPRA]  WITH CHECK ADD  CONSTRAINT [FK_ORDEN_COMPRA_MEDIO_PAGO] FOREIGN KEY([idMedPago])
REFERENCES [dbo].[MEDIO_PAGO] ([idMedPago])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ORDEN_COMPRA] CHECK CONSTRAINT [FK_ORDEN_COMPRA_MEDIO_PAGO]
GO
ALTER TABLE [dbo].[ORDEN_COMPRA]  WITH CHECK ADD  CONSTRAINT [FK_ORDEN_COMPRA_REQUERIMIENTO_COMPRA] FOREIGN KEY([idReqComp])
REFERENCES [dbo].[REQUERIMIENTO_COMPRA] ([idReqComp])
GO
ALTER TABLE [dbo].[ORDEN_COMPRA] CHECK CONSTRAINT [FK_ORDEN_COMPRA_REQUERIMIENTO_COMPRA]
GO
ALTER TABLE [dbo].[ORDEN_VENTA]  WITH CHECK ADD  CONSTRAINT [FK__ORDEN_VEN__idCli__628FA481] FOREIGN KEY([idCli])
REFERENCES [dbo].[CLIENTE] ([idCli])
GO
ALTER TABLE [dbo].[ORDEN_VENTA] CHECK CONSTRAINT [FK__ORDEN_VEN__idCli__628FA481]
GO
ALTER TABLE [dbo].[ORDEN_VENTA]  WITH CHECK ADD  CONSTRAINT [FK_ORDEN_VENTA_MEDIO_PAGO] FOREIGN KEY([idMedPago])
REFERENCES [dbo].[MEDIO_PAGO] ([idMedPago])
GO
ALTER TABLE [dbo].[ORDEN_VENTA] CHECK CONSTRAINT [FK_ORDEN_VENTA_MEDIO_PAGO]
GO
ALTER TABLE [dbo].[PROVEEDOR]  WITH CHECK ADD  CONSTRAINT [FK__PROVEEDOR__idAni__60A75C0F] FOREIGN KEY([idAnimal])
REFERENCES [dbo].[ANIMAL] ([idAnimal])
GO
ALTER TABLE [dbo].[PROVEEDOR] CHECK CONSTRAINT [FK__PROVEEDOR__idAni__60A75C0F]
GO
ALTER TABLE [dbo].[PROVEEDOR]  WITH CHECK ADD  CONSTRAINT [FK__PROVEEDOR__idUbi__619B8048] FOREIGN KEY([idUbigeo])
REFERENCES [dbo].[UBIGEO] ([idUbigeo])
GO
ALTER TABLE [dbo].[PROVEEDOR] CHECK CONSTRAINT [FK__PROVEEDOR__idUbi__619B8048]
GO
ALTER TABLE [dbo].[REQUERIMIENTO_COMPRA]  WITH CHECK ADD  CONSTRAINT [FK_RequerimientoCompra_Inventario] FOREIGN KEY([idInv])
REFERENCES [dbo].[INVENTARIO] ([idInv])
GO
ALTER TABLE [dbo].[REQUERIMIENTO_COMPRA] CHECK CONSTRAINT [FK_RequerimientoCompra_Inventario]
GO
ALTER TABLE [dbo].[TRABAJADOR]  WITH CHECK ADD  CONSTRAINT [FK__TRABAJADO__idUbi__4AB81AF0] FOREIGN KEY([idUbigeo])
REFERENCES [dbo].[UBIGEO] ([idUbigeo])
GO
ALTER TABLE [dbo].[TRABAJADOR] CHECK CONSTRAINT [FK__TRABAJADO__idUbi__4AB81AF0]
GO
ALTER TABLE [dbo].[TRABAJADOR]  WITH CHECK ADD  CONSTRAINT [FK_TRABAJADOR_ROL] FOREIGN KEY([idRol])
REFERENCES [dbo].[ROL] ([idRol])
GO
ALTER TABLE [dbo].[TRABAJADOR] CHECK CONSTRAINT [FK_TRABAJADOR_ROL]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarPrecioXUnidad]    Script Date: 6/07/2024 10:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarPrecioXUnidad]
    @idInv INT,
    @nuevoPrecio DECIMAL(14, 2)
AS
BEGIN
    -- Comienza la transacción
    BEGIN TRANSACTION;

    -- Intenta actualizar el precio
    BEGIN TRY
        UPDATE dbo.INVENTARIO
        SET precioXunidad = @nuevoPrecio
        WHERE idInv = @idInv;

        -- Si todo está bien, confirma la transacción
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        -- Si hay algún error, deshace la transacción
        ROLLBACK TRANSACTION;

        -- Lanza el error para que pueda ser manejado externamente si es necesario
        THROW;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [dbo].[AtenderOrdenCompraYRegistrarIngreso]    Script Date: 6/07/2024 10:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AtenderOrdenCompraYRegistrarIngreso]
    @idOrdCom BIGINT,
    @cantidad INT,
    @estado BIT,
    @descripcion VARCHAR(30)
AS
BEGIN
    DECLARE @resultado INT;

    -- Comenzar una transacción
    BEGIN TRANSACTION;

    BEGIN TRY
        -- Verificar si la orden de compra existe y puede ser atendida
        IF EXISTS (SELECT 1 FROM ORDEN_COMPRA WHERE idOrdCom = @idOrdCom AND estado = 1)
        BEGIN
            -- Actualizar el estado de la orden de compra a atendido (false)
            UPDATE ORDEN_COMPRA
            SET estado = 0
            WHERE idOrdCom = @idOrdCom;

            -- Insertar el registro de ingreso de materia prima
            INSERT INTO INGRESO_MP (idOrdCom, cantidad, estado, descripcion)
            VALUES (@idOrdCom, @cantidad, @estado, @descripcion);

            -- Establecer resultado exitoso
            SET @resultado = 1;
        END
        ELSE
        BEGIN
            -- Establecer resultado fallido si la orden de compra no existe o no puede ser atendida
            SET @resultado = 0;
        END

        -- Confirmar la transacción
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        -- Revertir la transacción en caso de error
        ROLLBACK TRANSACTION;

        -- Establecer resultado fallido
        SET @resultado = 0;
    END CATCH

    -- Retornar el resultado
    SELECT @resultado AS Resultado;
END;
GO
/****** Object:  StoredProcedure [dbo].[BuscarCliente]    Script Date: 6/07/2024 10:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BuscarCliente]
(
    @numeroDoc BIGINT
)
AS
BEGIN
    SELECT * 
    FROM Cliente
    WHERE numeroDoc = @numeroDoc;
END
GO
/****** Object:  StoredProcedure [dbo].[BuscarClienteBoleta]    Script Date: 6/07/2024 10:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[BuscarClienteBoleta]
    @idCli int
AS
BEGIN
    SELECT idCli, numeroDoc,CONCAT(nombCli, ' ', apellCli) as nombComp, direccion, idUbigeo, tipoDoc  FROM dbo.CLIENTE
    WHERE idCli = @idCli
END
GO
/****** Object:  StoredProcedure [dbo].[BuscarClientePorDocumento]    Script Date: 6/07/2024 10:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarClientePorDocumento]
    @tipoDoc NVARCHAR(50),
    @numeroDoc BIGINT = NULL
AS
BEGIN
    SELECT idCli,CONCAT(nombCli, ' ', apellCli) as nombComp, tipoDoc, numeroDoc  FROM dbo.CLIENTE
    WHERE tipoDoc = @tipoDoc
    AND (@numeroDoc IS NULL OR numeroDoc = @numeroDoc);
END
GO
/****** Object:  StoredProcedure [dbo].[BuscarClientePorTipoDoc]    Script Date: 6/07/2024 10:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarClientePorTipoDoc]
    @TipoDoc NVARCHAR(50),
    @Busqueda NVARCHAR(100)
AS
BEGIN
    IF @TipoDoc = 'DNI'
    BEGIN
        SELECT *
        FROM CLIENTE
        WHERE tipoDoc = 'DNI' AND (numeroDoc = @Busqueda OR nombCli LIKE '%' + @Busqueda + '%' OR apellCli LIKE '%' + @Busqueda + '%');
    END
    ELSE IF @TipoDoc = 'RUC'
    BEGIN
        SELECT *
        FROM CLIENTE
        WHERE tipoDoc = 'RUC' AND (numeroDoc = @Busqueda OR nombCli LIKE '%' + @Busqueda + '%');
    END
END

GO
/****** Object:  StoredProcedure [dbo].[BuscarDetalleAnimal]    Script Date: 6/07/2024 10:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarDetalleAnimal]
    @tipoAnimal NVARCHAR(50),
    @tipoCorte NVARCHAR(50)
AS
BEGIN
    SELECT DA.idDetAnim 
    FROM DETALLE_ANIMAL DA
    INNER JOIN ANIMAL A ON DA.idAnimal = A.idAnimal
    INNER JOIN CORTE_ANIMAL CA ON DA.idCorteAnim = CA.idCorteAnim
    WHERE A.especie = @tipoAnimal AND CA.descCorteAnim = @tipoCorte
END
GO
/****** Object:  StoredProcedure [dbo].[BuscarIdUbigeo]    Script Date: 6/07/2024 10:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[BuscarIdUbigeo]
	@idUbigeo int
AS
BEGIN
    SET NOCOUNT ON;
    SELECT *
    FROM UBIGEO
    WHERE idUbigeo = @idUbigeo
END


GO
/****** Object:  StoredProcedure [dbo].[BuscarIngresoMP]    Script Date: 6/07/2024 10:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarIngresoMP]
    @idMP INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT cantidad, descripcion
    FROM ingreso_mp
    WHERE idMP = @idMP;
END;
GO
/****** Object:  StoredProcedure [dbo].[BuscarInventario]    Script Date: 6/07/2024 10:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarInventario]
    @descripcion NVARCHAR(30)  -- Cambia el tipo de dato según la longitud máxima de la descripción
AS
BEGIN
    SET NOCOUNT ON;

    SELECT idInv, stock, descripcion 
    FROM INVENTARIO
    WHERE descripcion LIKE '%' + @descripcion + '%';  -- Búsqueda por descripción que contenga la cadena especificada
END;
GO
/****** Object:  StoredProcedure [dbo].[BuscarInventarioPorDescripcion]    Script Date: 6/07/2024 10:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarInventarioPorDescripcion]
    @descripcion NVARCHAR(30)
AS
BEGIN
    SELECT idInv, descripcion, precioXunidad, stock
    FROM dbo.INVENTARIO
    WHERE descripcion LIKE '%' + @descripcion + '%';
END
GO
/****** Object:  StoredProcedure [dbo].[BuscarMateriaPPorDescripcion]    Script Date: 6/07/2024 10:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarMateriaPPorDescripcion]
    @descripcion VARCHAR(30)
AS
BEGIN
    SELECT idMP, idOrdCom, cantidad, estado, descripcion
    FROM INGRESO_MP
    WHERE descripcion LIKE '%' + @descripcion + '%'
      AND estado = 1
END
GO
/****** Object:  StoredProcedure [dbo].[BuscarProveedor]    Script Date: 6/07/2024 10:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarProveedor]
    @nombProv VARCHAR(100) = NULL,
    @ruc BIGINT = NULL,
    @fecha DATE = NULL
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        p.idProv,
        a.especie,
        p.idUbigeo,
        p.nombProv,
        p.estado,
        p.fecha,
        p.direccion,
        p.telefono,
        p.ruc
    FROM 
        PROVEEDOR p
    JOIN 
        ANIMAL a ON p.idAnimal = a.idAnimal
    WHERE 
        (p.nombProv LIKE '%' + @nombProv + '%' OR @nombProv IS NULL)
        AND (p.ruc = @ruc OR @ruc IS NULL)
        AND (CONVERT(DATE, p.fecha) = @fecha OR @fecha IS NULL)
	ORDER BY fecha DESC;
END
GO
/****** Object:  StoredProcedure [dbo].[BuscarTrabajadores]    Script Date: 6/07/2024 10:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarTrabajadores]
    @idRol int = NULL,
    @nombTrab VARCHAR(30) = NULL,
    @fechaRegistro DATETIME = NULL,
	@numDoc	int	=	null
AS
BEGIN
    SET NOCOUNT ON;

    SELECT *
    FROM TRABAJADOR
    WHERE (idRol = @idRol OR @idRol IS NULL)
	  and (numDoc = @numDoc or @numDoc is null)
      AND (nombTrab LIKE '%' + @nombTrab + '%' OR @nombTrab IS NULL)
      AND (CONVERT(DATE, fechaRegistro) = CONVERT(DATE, @fechaRegistro) OR @fechaRegistro IS NULL)
    ORDER BY fechaRegistro DESC;
END
GO
/****** Object:  StoredProcedure [dbo].[BuscarUbigeo]    Script Date: 6/07/2024 10:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[BuscarUbigeo]
    @Departamento VARCHAR(50) = NULL,
    @Provincia VARCHAR(50) = NULL,
    @Distrito VARCHAR(50) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    SELECT *
    FROM UBIGEO
    WHERE (@Departamento IS NULL OR departamento LIKE '%' + @Departamento + '%')
      AND (@Provincia IS NULL OR provincia LIKE '%' + @Provincia + '%')
      AND (@Distrito IS NULL OR distrito LIKE '%' + @Distrito + '%')
END
select DEPARTAMENTO from UBIGEO
group by DEPARTAMENTO

GO
/****** Object:  StoredProcedure [dbo].[CheckDescriptionExists]    Script Date: 6/07/2024 10:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CheckDescriptionExists]
    @descripcion VARCHAR(30)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @Count INT;
    DECLARE @PrecioDecimal DECIMAL(14, 2);  -- Ajusta la precisión según el tipo de datos de tu columna de precio

    -- Verificar si la descripción existe y obtener el precio por unidad si existe
    SELECT @Count = COUNT(*), @PrecioDecimal = MAX(precioXunidad)
    FROM INVENTARIO 
    WHERE descripcion = @descripcion;

    -- Si se encontró la descripción, retornar el contador y el precio por unidad
    IF @Count > 0
    BEGIN
        SELECT @Count AS CountDescription, @PrecioDecimal AS PrecioUnidad;
    END
    ELSE
    BEGIN
        -- Si no se encontró la descripción, podrías retornar algún valor por defecto o NULL para el precio
        SELECT @Count AS CountDescription, NULL AS PrecioUnidad;
    END
END
GO
/****** Object:  StoredProcedure [dbo].[CortesPorEspecie]    Script Date: 6/07/2024 10:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CortesPorEspecie]
    @especie NVARCHAR(50)
AS
BEGIN
    SELECT d.idDetAnim, c.descCorteAnim AS desCorte
    FROM DETALLE_ANIMAL d
    INNER JOIN CORTE_ANIMAL c ON d.idCorteAnim = c.idCorteAnim
    INNER JOIN ANIMAL a ON d.idAnimal = a.idAnimal
    WHERE a.especie = @especie;
END
GO
/****** Object:  StoredProcedure [dbo].[DeshabilitarCliente]    Script Date: 6/07/2024 10:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeshabilitarCliente]
    @ClienteID INT
AS
BEGIN
    -- Iniciar una transacción
    BEGIN TRANSACTION;

    BEGIN TRY
        -- Verificar si el cliente ya está deshabilitado
        IF EXISTS (SELECT 1 FROM CLIENTE WHERE idCli = @ClienteID AND estado = 0)
        BEGIN
            -- Si el cliente ya está deshabilitado, lanzar un mensaje
            THROW 50001, 'El cliente ya está deshabilitado.', 1;
        END

        -- Actualizar el estado del cliente a false
        UPDATE CLIENTE
        SET estado = 0 -- Asumiendo que 'estado' es de tipo bit o booleano, 0 es false y 1 es true
        WHERE idCli = @ClienteID AND estado = 1; -- Solo actualizar si el cliente está activo

        -- Comprobar si la actualización afectó alguna fila
        IF @@ROWCOUNT = 0
        BEGIN
            -- Si no se actualizó ninguna fila (porque el cliente ya estaba deshabilitado), lanzar un error
            THROW 50000, 'Cliente no encontrado o ya está deshabilitado.', 1;
        END

        -- Si todo va bien, confirmar la transacción
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        -- En caso de error, deshacer la transacción
        ROLLBACK TRANSACTION;

        -- Rethrow the error to be handled outside the procedure if necessary
        THROW;
    END CATCH
END;

GO
/****** Object:  StoredProcedure [dbo].[DeshabilitarMateriaPrima]    Script Date: 6/07/2024 10:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeshabilitarMateriaPrima]
    @idMP INT
AS
BEGIN
    SET NOCOUNT ON; -- Evita la cuenta de filas afectadas por SELECT

    DECLARE @Resultado INT;

    -- Verificar si la materia prima está habilitada
    IF EXISTS (SELECT 1 FROM INGRESO_MP WHERE idMP = @idMP AND estado = 1)
    BEGIN
        -- Actualizar estado a deshabilitado
        UPDATE INGRESO_MP
        SET estado = 0
        WHERE idMP = @idMP;

        SET @Resultado = 1; -- Indica que se deshabilitó correctamente
    END
    ELSE
    BEGIN
        SET @Resultado = 0; -- Indica que ya estaba deshabilitado
    END

    -- Devolver el resultado
    SELECT @Resultado AS Resultado;
END
GO
/****** Object:  StoredProcedure [dbo].[DeshabilitarProveedor]    Script Date: 6/07/2024 10:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeshabilitarProveedor]
    @idProv INT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM PROVEEDOR WHERE idProv = @idProv AND estado = 1) -- Asumiendo que 1 representa habilitado
    BEGIN
        UPDATE PROVEEDOR
        SET estado = 0 -- Asumiendo que 0 representa deshabilitado
        WHERE idProv = @idProv;
        
        SELECT 1 AS Resultado; -- Indica que se deshabilitó
    END
    ELSE
    BEGIN
        SELECT 0 AS Resultado; -- Indica que ya estaba deshabilitado
    END
END
GO
/****** Object:  StoredProcedure [dbo].[EditarAnimal]    Script Date: 6/07/2024 10:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[EditarAnimal]
    @idAnimal INT,
    @especie NVARCHAR(20)
AS
BEGIN
    UPDATE ANIMAL
    SET especie = @especie
    WHERE idAnimal = @idAnimal;
END
GO
/****** Object:  StoredProcedure [dbo].[Editarcliente]    Script Date: 6/07/2024 10:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Editarcliente]
(
@idCli int,
@nombCli nvarchar(100),
@apellCli nvarchar(50),
@tipoCliente nvarchar(50),
@tipoDoc nvarchar(50),
@numeroDoc bigint,
@idUbigeo int,
@telefono bigint,
@Estado bit,
@direccion nvarchar(100),
@fecha date
)
as
begin
 update CLIENTE set

 nombCli = @nombCli,
 apellCli = @apellCli,
 tipoCliente = @tipoCliente,
 tipoDoc = @tipoDoc,
 numeroDoc = @numeroDoc,
 idUbigeo = @idUbigeo,
 telefono = @telefono,
 estado = @estado,
 direccion = @direccion,
 fecha = @fecha
 where idCli = @idCli
end
GO
/****** Object:  StoredProcedure [dbo].[EditarCorte]    Script Date: 6/07/2024 10:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EditarCorte]
    @idCorteAnim INT,
    @descCorteAnim NVARCHAR(30)
AS
BEGIN
    UPDATE CORTE_ANIMAL
    SET descCorteAnim = @descCorteAnim
    WHERE idCorteAnim = @idCorteAnim;
END
GO
/****** Object:  StoredProcedure [dbo].[EditarMateriaP]    Script Date: 6/07/2024 10:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[EditarMateriaP]
(
@idMP int,
@idOrdCom bigint,
@cantidad int
)
as
begin
 update	INGRESO_MP	set

 idOrdCom = @idOrdCom,
 cantidad = @cantidad
 
 where idMP = @idMP
end
GO
/****** Object:  StoredProcedure [dbo].[EditarMedPago]    Script Date: 6/07/2024 10:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[EditarMedPago]
(
@idMedPago int,
@descMedPag nvarchar(30)
)
as
begin
 update MEDIO_PAGO set

 descMedPag = @descMedPag
 
 where idMedPago = @idMedPago
end
GO
/****** Object:  StoredProcedure [dbo].[EditarProveedor]    Script Date: 6/07/2024 10:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[EditarProveedor]
(
@idProv int,
@idAnimal int,
@idUbigeo int,
@nombProv nvarchar(50),
@estado bit,
@fecha date,
@direccion nvarchar(100),
@telefono bigint,
@ruc bigint
)
as
begin
 update PROVEEDOR set

 idAnimal = @idAnimal,
 idUbigeo = @idUbigeo,
 nombProv = @nombProv,
 estado = @estado,
 fecha = @fecha,
 direccion = @direccion,
 telefono = @telefono,
 ruc = @ruc

 where idProv = @idProv
end
GO
/****** Object:  StoredProcedure [dbo].[EditarRqCompra]    Script Date: 6/07/2024 10:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[EditarRqCompra]
(
@idReqComp bigint,
@desReqComp varchar(100),
@cantidad int,
@estado bit,
@idInv int
)
as
begin
 update REQUERIMIENTO_COMPRA set

 desReqComp = @desReqComp,
 cantidad = @cantidad,
 estado = @estado,
 idInv  = @idInv
 
 where idReqComp = @idReqComp
end
GO
/****** Object:  StoredProcedure [dbo].[EditarTrabajador]    Script Date: 6/07/2024 10:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[EditarTrabajador]
(
@idTrab bigint,
@idRol int,
@idUbigeo int,
@nombTrab nvarchar(30),
@estado bit,
@usuario nvarchar (20),
@contraseña nvarchar (30),
@fechaRegistro datetime,
@numDoc	int
)
as
begin
 update TRABAJADOR set

 idRol =	@idRol,
 idUbigeo = @idUbigeo,
 nombTrab = @nombTrab,
 estado = @estado,
 usuario=@usuario,
 contraseña=@contraseña,
 fechaRegistro=@fechaRegistro,
 numDoc=@numDoc

 where idTrab = @idTrab
end
GO
/****** Object:  StoredProcedure [dbo].[EliminarAnimal]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[EliminarAnimal]
(
    @idAnimal int
)
AS
BEGIN
    DELETE FROM ANIMAL
    WHERE idAnimal = @idAnimal;
END
GO
/****** Object:  StoredProcedure [dbo].[EliminarCorte]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[EliminarCorte]
(
    @idCorteAnim BIGINT
)
AS
BEGIN
    DELETE FROM CORTE_ANIMAL
    WHERE idCorteAnim = @idCorteAnim;
END
GO
/****** Object:  StoredProcedure [dbo].[EliminarDetalleAnimal]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE       PROCEDURE [dbo].[EliminarDetalleAnimal]
(
    @idDetAnim int
)
AS
BEGIN
    DELETE FROM DETALLE_ANIMAL
    WHERE idDetAnim = @idDetAnim;
END
GO
/****** Object:  StoredProcedure [dbo].[EliminarTrabajador]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarTrabajador]
(
    @idTrab BIGINT
)
AS
BEGIN
    DELETE FROM TRABAJADOR
    WHERE idTrab = @idTrab;
END
GO
/****** Object:  StoredProcedure [dbo].[InsertarAnimal]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[InsertarAnimal]
    @especie nvarchar(20)
AS
BEGIN
    INSERT INTO ANIMAL(especie) 
    VALUES (@especie)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertarCliente]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarCliente]
    @nombCli NVARCHAR(100),
    @apellCli NVARCHAR(50),
    @tipoCliente NVARCHAR(50),
    @tipoDoc NVARCHAR(50),
    @numeroDoc BIGINT,
    @idUbigeo INT,
    @telefono BIGINT,
    @estado BIT,
    @direccion NVARCHAR(100),
    @fecha DATE
AS
BEGIN
    INSERT INTO dbo.CLIENTE (nombCli, apellCli, tipoCliente, tipoDoc, numeroDoc, idUbigeo, telefono, estado, direccion, fecha)
    VALUES (@nombCli, @apellCli, @tipoCliente, @tipoDoc, @numeroDoc, @idUbigeo, @telefono, @estado, @direccion, @fecha);
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertarCorte]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarCorte]
    @descCorteAnim nvarchar(30)
AS
BEGIN
    INSERT INTO CORTE_ANIMAL(descCorteAnim) 
    VALUES (@descCorteAnim)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertarDetalleVentas]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE     PROCEDURE [dbo].[InsertarDetalleVentas]
    @idOrdVen bigint,
	@idInv int,
	@cantidad int,
	@precioUnitario numeric(14,2),
	@subTotal numeric(14,2)
AS
BEGIN
    INSERT INTO DETALLE_VENTA(idOrdVen, idInv, cantidad, precioUnitario, subTotal) 
    VALUES (@idOrdVen, @idInv, @cantidad, @precioUnitario, @subTotal)

END
GO
/****** Object:  StoredProcedure [dbo].[InsertarDetAnim]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     PROCEDURE [dbo].[InsertarDetAnim]
    @idAnimal int,
	@idCorteAnim int
AS
BEGIN
    INSERT INTO DETALLE_ANIMAL(idAnimal, idCorteAnim) 
    VALUES (@idAnimal, @idCorteAnim)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertarInventario]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarInventario]
    @stock INT,
    @fechaRegistro DATETIME,
    @precioXunidad DECIMAL(14, 2),
    @descripcion NVARCHAR(30)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO INVENTARIO (stock, fechaRegistro, precioXunidad, descripcion)
    VALUES (@stock, @fechaRegistro, @precioXunidad, @descripcion);
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertarLoteProducto]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarLoteProducto]
    @idDetAnim INT,
    @idIngresoMP BIGINT,
    @descripcion NVARCHAR(MAX)
AS
BEGIN
    -- Verificar si el idDetAnim ya existe en LOTE_PRODUCTO
    IF EXISTS (SELECT 1 FROM LOTE_PRODUCTO WHERE idDetAnim = @idDetAnim)
    BEGIN
        -- Si existe, retornamos un código de error
        RETURN -1;
    END

    -- Si no existe, procedemos con la inserción
    INSERT INTO LOTE_PRODUCTO (idDetAnim, idIngresoMP, descripcion)
    VALUES (@idDetAnim, @idIngresoMP, @descripcion);

    RETURN 0;
END
GO
/****** Object:  StoredProcedure [dbo].[InsertarOrdenCompra]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarOrdenCompra]
    @idMedPago INT,
    @idProv INT,
    @idReqComp bigint null,
    @cantidad INT,
    @monto NUMERIC(14, 2),
    @montoTotal NUMERIC(14, 2),
    @fechaRegistro DATETIME,
    @descripcion NVARCHAR(50),
    @estado BIT
AS
BEGIN
    INSERT INTO ORDEN_COMPRA (idMedPago, idProv, idReqComp, cantidad, monto, montoTotal, fechaRegistro, descripcion, estado)
    VALUES (@idMedPago, @idProv, @idReqComp, @cantidad, @monto, @montoTotal, @fechaRegistro, @descripcion, @estado);
END
GO
/****** Object:  StoredProcedure [dbo].[InsertarOrdenVentaVisa]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarOrdenVentaVisa]
@idOrdVen INT,
@purchaseNumber nvarchar(12),
@cadenaJson ntext,
@id int output
AS
BEGIN
	insert into ORDEN_VENTA_VISA (idOrdVen, purchaseNumber, cadenaJson)
	values (@idOrdVen, @purchaseNumber, @cadenaJson);

	set @id = 1;
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertarProveedor]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[InsertarProveedor]
    @idAnimal int,
    @idUbigeo int,
    @nombProv nvarchar(50),
    @estado bit,
    @fecha date,
    @direccion nvarchar(100),
    @telefono bigint,
    @ruc bigint
AS
BEGIN
    INSERT INTO PROVEEDOR(idAnimal,idUbigeo,nombProv,estado,fecha,direccion,telefono,ruc) 
    VALUES (@idAnimal,@idUbigeo,@nombProv,@estado,@fecha,@direccion,@telefono,@ruc)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertarRqCompra]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarRqCompra]
    @desReqComp NVARCHAR(100),
    @cantidad INT,
    @estado BIT,
    @idInv INT
AS
BEGIN
    INSERT INTO REQUERIMIENTO_COMPRA (desReqComp, cantidad, estado, idInv)
    VALUES (@desReqComp, @cantidad, @estado, @idInv);
END
GO
/****** Object:  StoredProcedure [dbo].[InsertarTrabajador]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[InsertarTrabajador]
    @idRol int,
    @idUbigeo int,
    @nombTrab nvarchar(30),
    @estado bit,
    @usuario nvarchar(20),
    @contraseña nvarchar(30),
    @fecharegistro datetime,
    @numDoc int
AS
BEGIN
    INSERT INTO TRABAJADOR(idRol,idUbigeo,nombTrab,estado,usuario,contraseña,fecharegistro,numDoc) 
    VALUES (@idRol,@idUbigeo,@nombTrab,@estado,@usuario,@contraseña,@fecharegistro,@numDoc)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertarVenta]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE   PROCEDURE [dbo].[InsertarVenta]
    @idMedPago int,
	@idCli int,
	@cantidad int,
	@montoTotal numeric(14,2),
	@fechaRegistro datetime,
	@idOrdVen int output
AS
BEGIN
    INSERT INTO ORDEN_VENTA(idMedPago, idCli, cantidad, montoTotal, fechaRegistro) 
    VALUES (@idMedPago, @idCli, @cantidad, @montoTotal, @fechaRegistro)

	SET @idOrdVen = SCOPE_IDENTITY()
END
GO
/****** Object:  StoredProcedure [dbo].[ListarAnimal]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListarAnimal]
AS
BEGIN
    SELECT * FROM dbo.ANIMAL;
END;
GO
/****** Object:  StoredProcedure [dbo].[ListarCliente]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListarCliente]
AS
BEGIN
    SELECT * FROM dbo.CLIENTE;
END;
GO
/****** Object:  StoredProcedure [dbo].[ListarClienteResumido]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE   PROCEDURE [dbo].[ListarClienteResumido]
AS
BEGIN
    SELECT idCli,CONCAT(nombCli, ' ', apellCli) as nombComp, tipoDoc, numeroDoc  FROM dbo.CLIENTE;
END;
GO
/****** Object:  StoredProcedure [dbo].[ListarCompra]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListarCompra]
AS
BEGIN
    SELECT 
        o.idOrdCom,
        m.descMedPag,
        p.nombProv,
        o.idReqComp,
        o.cantidad,
        o.monto,
        o.montoTotal,
        o.fechaRegistro,
        o.descripcion
    FROM 
        dbo.ORDEN_COMPRA o
    INNER JOIN 
        dbo.MEDIO_PAGO m ON o.idMedPago = m.idMedPago
    INNER JOIN
        dbo.PROVEEDOR p ON o.idProv = p.idProv;
END;
GO
/****** Object:  StoredProcedure [dbo].[ListarCorte]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListarCorte]
AS
BEGIN
    SELECT *
    FROM dbo.CORTE_ANIMAL
END;
GO
/****** Object:  StoredProcedure [dbo].[ListarDepartamentos]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE     PROCEDURE [dbo].[ListarDepartamentos]
AS
BEGIN
    SELECT DISTINCT DEPARTAMENTO FROM UBIGEO
END;
GO
/****** Object:  StoredProcedure [dbo].[ListarDetAnimEspecifico]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE     PROCEDURE [dbo].[ListarDetAnimEspecifico]
    @idAnimal INT
AS
BEGIN
    SELECT da.idDetAnim, an.especie, ca.descCorteAnim 
	FROM DETALLE_ANIMAL da 
	inner join ANIMAL an on da.idAnimal = an.idAnimal 
	inner join CORTE_ANIMAL ca on da.idCorteAnim = ca.idCorteAnim 
	where da.idAnimal = @idAnimal
END
GO
/****** Object:  StoredProcedure [dbo].[ListarDistritos]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE         PROCEDURE [dbo].[ListarDistritos]
    @PROVINCIA nvarchar(100)
AS
BEGIN
    SELECT DISTINCT DISTRITO FROM UBIGEO
	Where PROVINCIA = @PROVINCIA
END
GO
/****** Object:  StoredProcedure [dbo].[ListarInventario]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListarInventario]
AS
BEGIN
    SELECT * FROM dbo.INVENTARIO;
END;
GO
/****** Object:  StoredProcedure [dbo].[ListarInventarioVenta]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE       PROCEDURE [dbo].[ListarInventarioVenta]
AS
BEGIN
    SELECT idInv, descripcion, precioXunidad, stock
	FROM INVENTARIO
END
GO
/****** Object:  StoredProcedure [dbo].[ListarLoteProducto]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListarLoteProducto]
AS
BEGIN
    SELECT * FROM dbo.LOTE_PRODUCTO;
END
GO
/****** Object:  StoredProcedure [dbo].[ListarLoteProductoConDescripciones]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListarLoteProductoConDescripciones]
AS
BEGIN
    SELECT 
    LOTE_PRODUCTO.idLoteProd,
    LOTE_PRODUCTO.descripcion AS LoteDescripcion,
    LOTE_PRODUCTO.idIngresoMP,
    ANIMAL.especie AS TipoAnimal,
    CORTE_ANIMAL.descCorteAnim AS TipoCorte,
	LOTE_PRODUCTO.stock,
	LOTE_PRODUCTO.fechaRegistro
FROM 
    LOTE_PRODUCTO
JOIN 
    DETALLE_ANIMAL ON LOTE_PRODUCTO.idDetAnim = DETALLE_ANIMAL.idDetAnim
JOIN 
    ANIMAL ON DETALLE_ANIMAL.idAnimal = ANIMAL.idAnimal
JOIN 
    CORTE_ANIMAL ON DETALLE_ANIMAL.idCorteAnim = CORTE_ANIMAL.idCorteAnim;

END;
GO
/****** Object:  StoredProcedure [dbo].[ListarMateriaP]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListarMateriaP]
AS
BEGIN
    SELECT * FROM dbo.INGRESO_MP;
END;
GO
/****** Object:  StoredProcedure [dbo].[ListarMateriaPrimaActiva]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListarMateriaPrimaActiva]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        idMP,
        idOrdCom,
        cantidad,
        estado,
        descripcion
    FROM 
        INGRESO_MP
    WHERE 
        estado = 1;
END
GO
/****** Object:  StoredProcedure [dbo].[ListarMedioPago]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[ListarMedioPago]
AS
BEGIN
    SELECT * FROM dbo.MEDIO_PAGO;
END;
GO
/****** Object:  StoredProcedure [dbo].[ListarOrdenesCompraActivas]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListarOrdenesCompraActivas]
AS
BEGIN
    SELECT idOrdCom, cantidad, fechaRegistro, descripcion, estado
    FROM ORDEN_COMPRA
    WHERE estado = 'true';
END;
GO
/****** Object:  StoredProcedure [dbo].[ListarProveedor]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListarProveedor]
AS
BEGIN
    SELECT 
        p.idProv,
        e.especie,
        p.idUbigeo,
        p.nombProv,
        p.estado,
        p.fecha,
        p.direccion,
        p.telefono,
        p.ruc
    FROM 
        dbo.PROVEEDOR p
    INNER JOIN 
        dbo.ANIMAL e ON p.idAnimal = e.idAnimal;
END;
GO
/****** Object:  StoredProcedure [dbo].[ListarProvincias]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE       PROCEDURE [dbo].[ListarProvincias]
    @DEPARTAMENTO nvarchar(100)
AS
BEGIN
    SELECT DISTINCT PROVINCIA FROM UBIGEO
	Where DEPARTAMENTO = @DEPARTAMENTO
END
GO
/****** Object:  StoredProcedure [dbo].[ListarRol]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[ListarRol]
AS
BEGIN
    SELECT * FROM dbo.ROL;
END;
GO
/****** Object:  StoredProcedure [dbo].[ListarRqCompra]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListarRqCompra]
AS
BEGIN
    SELECT * FROM dbo.REQUERIMIENTO_COMPRA;
END
GO
/****** Object:  StoredProcedure [dbo].[ListarRqCompraEstadoActivo]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListarRqCompraEstadoActivo]
AS
BEGIN
    SELECT idReqComp, desReqComp, cantidad, estado, idInv
    FROM REQUERIMIENTO_COMPRA
    WHERE estado = 1;
END;
GO
/****** Object:  StoredProcedure [dbo].[ListarTrabajador]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ListarTrabajador]
AS
BEGIN
    SELECT * FROM dbo.TRABAJADOR;
END;
GO
/****** Object:  StoredProcedure [dbo].[ListarUbigeo]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ListarUbigeo]
AS
BEGIN
    SELECT * FROM dbo.UBIGEO;
END;
GO
/****** Object:  StoredProcedure [dbo].[ListarUsuario]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListarUsuario]
AS
BEGIN
    SELECT * FROM dbo.CREDENCIALES;
END;
GO
/****** Object:  StoredProcedure [dbo].[ListarVenta]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListarVenta]
AS
BEGIN
    SELECT * FROM dbo.ORDEN_VENTA;
END;
GO
/****** Object:  StoredProcedure [dbo].[ObtenerCantidadMateriaPrima]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ObtenerCantidadMateriaPrima]
    @Id INT,
    @Cantidad INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT @Cantidad = cantidad
    FROM INGRESO_MP
    WHERE idMP = @Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[ObtenerUbigeo]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE           PROCEDURE [dbo].[ObtenerUbigeo]
    @PROVINCIA nvarchar(100),
	@DEPARTAMENTO nvarchar(100),
	@DISTRITO nvarchar(100)
AS
BEGIN
    SELECT idUbigeo FROM UBIGEO
	Where PROVINCIA = @PROVINCIA AND DEPARTAMENTO = @DEPARTAMENTO AND DISTRITO = @DISTRITO
END
GO
/****** Object:  StoredProcedure [dbo].[ReduceMaterial]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ReduceMaterial]
    @idMP INT,
    @cantidad INT
AS
BEGIN
    -- Inicia una transacción
    BEGIN TRANSACTION;

    BEGIN TRY
        -- Resta la cantidad de materia prima en INGRESO_MP
        UPDATE INGRESO_MP
        SET cantidad = cantidad - @cantidad
        WHERE idMP = @idMP;

        -- Verifica que la cantidad no sea negativa
        IF (SELECT cantidad FROM INGRESO_MP WHERE idMP = @idMP) < 0
        BEGIN
            -- Revierte la transacción si la cantidad es negativa
            ROLLBACK TRANSACTION;
            THROW 50000, 'Cantidad de materia prima insuficiente', 1;
        END

        -- Confirma la transacción
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        -- Revierte la transacción en caso de error
        ROLLBACK TRANSACTION;
        -- Lanza el error
        THROW;
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [dbo].[RegistrarInventarioYLote]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RegistrarInventarioYLote]
@stock INT,
@fechaRegistro DATETIME,
@precioXunidad DECIMAL(14, 2),
@descripcionInventario NVARCHAR(30),
@idDetAnim INT,
@idIngresoMP INT,
@descripcionLote NVARCHAR(30),
@StockLote INT,
@FechaRegistroLote DATETIME
AS
BEGIN
    BEGIN TRY
        -- Comenzar una transacción
        BEGIN TRANSACTION;

        -- Declarar una variable para el ID del inventario
        DECLARE @idInv INT;
        DECLARE @resultCode INT;

        -- Verificar si la descripción del inventario ya existe
        SELECT @idInv = idInv FROM INVENTARIO WHERE descripcion = @descripcionInventario;

        IF @idInv IS NOT NULL
        BEGIN
            -- Si la descripción existe, actualizar el stock existente
            UPDATE INVENTARIO
            SET stock = stock + @stock, 
                fechaRegistro = @fechaRegistro,
                precioXunidad = @precioXunidad
            WHERE idInv = @idInv;

            -- Indicar que se actualizó un inventario existente
            SET @resultCode = 1;
        END
        ELSE
        BEGIN
            -- Si la descripción no existe, insertar un nuevo registro en la tabla INVENTARIO
            INSERT INTO INVENTARIO (stock, fechaRegistro, precioXunidad, descripcion)
            VALUES (@stock, @fechaRegistro, @precioXunidad, @descripcionInventario);

            -- Obtener el ID del inventario recién insertado
            SET @idInv = SCOPE_IDENTITY();

            -- Indicar que se insertó un nuevo inventario
            SET @resultCode = 2;
        END

        -- Paso 2: Insertar en la tabla LOTE_PRODUCTO
        INSERT INTO LOTE_PRODUCTO (idDetAnim, idIngresoMP, descripcion, stock, fechaRegistro)
        VALUES (@idDetAnim, @idIngresoMP, @descripcionLote, @StockLote, @FechaRegistroLote);

        -- Obtener el ID del lote de producto recién insertado
        DECLARE @idLoteProd INT;
        SET @idLoteProd = SCOPE_IDENTITY();

        -- Paso 3: Insertar en la tabla DETALLE_INVENTARIO
        INSERT INTO DETALLE_INVENTARIO (idInv, idLotProd)
        VALUES (@idInv, @idLoteProd);

        -- Confirmar la transacción
        COMMIT TRANSACTION;

        -- Devolver el código de resultado
        SELECT @resultCode AS ResultCode;
    END TRY
    BEGIN CATCH
        -- Si ocurre un error, revertir la transacción
        ROLLBACK TRANSACTION;

        -- Lanzar el error capturado
        DECLARE @ErrorMessage NVARCHAR(4000);
        DECLARE @ErrorSeverity INT;
        DECLARE @ErrorState INT;

        SELECT 
            @ErrorMessage = ERROR_MESSAGE(),
            @ErrorSeverity = ERROR_SEVERITY(),
            @ErrorState = ERROR_STATE();

        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH
END;
GO
/****** Object:  StoredProcedure [dbo].[reporteCompras]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[reporteCompras]
(
    @fecha1 DATE,
    @fecha2 DATE
)AS
BEGIN
    SELECT 
        o.idOrdCom,
        m.descMedPag,
        p.nombProv,
        rc.desReqComp,
        o.cantidad,
        o.monto,
        o.montoTotal,
        o.fechaRegistro,
        o.descripcion
    FROM 
        dbo.ORDEN_COMPRA o
    INNER JOIN 
        dbo.MEDIO_PAGO m ON o.idMedPago = m.idMedPago
    INNER JOIN
        dbo.PROVEEDOR p ON o.idProv = p.idProv
	left join
		dbo.REQUERIMIENTO_COMPRA rc on o.idReqComp=rc.idReqComp
	WHERE 
        o.fechaRegistro BETWEEN @fecha1 AND @fecha2;
END
GO
/****** Object:  StoredProcedure [dbo].[reporteVentas]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[reporteVentas](
@fecha1 date,
@fecha2 date
)
as begin select 
		o.idOrdVen,
		m.descMedPag,
		c.nombCli,
		o.cantidad,
		o.montoTotal,
		o.fechaRegistro
 from 
	ORDEN_VENTA o
	INNER JOIN 
    dbo.MEDIO_PAGO m ON o.idMedPago = m.idMedPago
	INNER JOIN
    dbo.CLIENTE c ON o.idCli = c.idCli
 where fechaRegistro between @fecha1 and @fecha2
end
GO
/****** Object:  StoredProcedure [dbo].[RequerimientosInvConStockBajo]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RequerimientosInvConStockBajo]
AS
BEGIN
    SELECT idInv, stock, descripcion
    FROM Inventario
    WHERE stock <= 10;
END
GO
/****** Object:  StoredProcedure [dbo].[RestarStock]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   procedure [dbo].[RestarStock]
@idInv int,
@cant int

as
begin
	update INVENTARIO
	set stock = stock - @cant
	where idInv = @idInv
end
GO
/****** Object:  StoredProcedure [dbo].[UpdateStockAndReduceMaterial]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateStockAndReduceMaterial]
    @idMP INT,
    @idInv INT,
    @cantidad INT
AS
BEGIN
    -- Inicia una transacción
    BEGIN TRANSACTION;

    BEGIN TRY
        -- Resta la cantidad de materia prima en INGRESO_MP
        UPDATE INGRESO_MP
        SET cantidad = cantidad - @cantidad
        WHERE idMP = @idMP;

        -- Aumenta el stock en INVENTARIO
        UPDATE INVENTARIO
        SET stock = stock + @cantidad
        WHERE idInv = @idInv;

        -- Verifica que la cantidad no sea negativa
        IF (SELECT cantidad FROM INGRESO_MP WHERE idMP = @idMP) < 0
        BEGIN
            -- Revierte la transacción si la cantidad es negativa
            ROLLBACK TRANSACTION;
            THROW 50000, 'Cantidad de materia prima insuficiente', 1;
        END

        -- Confirma la transacción
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        -- Revierte la transacción en caso de error
        ROLLBACK TRANSACTION;
        -- Lanza el error
        THROW;
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [dbo].[VerificarYActualizarRequerimiento]    Script Date: 6/07/2024 10:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[VerificarYActualizarRequerimiento]
    @idReqComp BIGINT,
    @actualizado BIT OUTPUT
AS
BEGIN
    -- Inicializar el valor de salida
    SET @actualizado = 0;

    -- Comenzar una transacción
    BEGIN TRANSACTION;

    -- Verificar si el registro existe
    IF EXISTS (SELECT 1 FROM dbo.REQUERIMIENTO_COMPRA WHERE idReqComp = @idReqComp)
    BEGIN
        -- Actualizar el estado a false (0) si se encuentra el registro
        UPDATE dbo.REQUERIMIENTO_COMPRA
        SET estado = 0
        WHERE idReqComp = @idReqComp;

        -- Establecer el valor de salida a 1 (true)
        SET @actualizado = 1;
    END

    -- Confirmar la transacción
    COMMIT TRANSACTION;
END;
GO
