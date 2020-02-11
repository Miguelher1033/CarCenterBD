USE [master]
GO
/****** Object:  Database [CAR_CENTER]    Script Date: 10/02/2020 10:57:13 p.m. ******/
CREATE DATABASE [CAR_CENTER]
GO 
USE [CAR_CENTER]
GO
/****** Object:  Table [dbo].[CLIENTES]    Script Date: 10/02/2020 10:57:13 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENTES](
	[tipo_documento] [varchar](2) NOT NULL,
	[documento] [int] NOT NULL,
	[primer_nombre] [varchar](30) NOT NULL,
	[segundo_nombre] [varchar](30) NOT NULL,
	[primer_apellido] [varchar](30) NOT NULL,
	[segundo_apellido] [varchar](30) NOT NULL,
	[celular] [varchar](10) NOT NULL,
	[direccion] [varchar](200) NOT NULL,
	[email] [varchar](100) NOT NULL,
 CONSTRAINT [CLIENTES_PK] PRIMARY KEY CLUSTERED 
(
	[tipo_documento] ASC,
	[documento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DESCUENTOS]    Script Date: 10/02/2020 10:57:13 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DESCUENTOS](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](150) NOT NULL,
	[activo] [bit] NOT NULL,
	[porcentaje] [tinyint] NULL,
 CONSTRAINT [DESCUENTOS_PK] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DETALLES_X_FACTURA]    Script Date: 10/02/2020 10:57:13 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DETALLES_X_FACTURA](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[codigo_factura] [int] NOT NULL,
	[codigo_mantenimiento] [int] NOT NULL,
 CONSTRAINT [DETALLES_X_FACTURA_PK] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FACTURAS]    Script Date: 10/02/2020 10:57:13 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FACTURAS](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[estado] [tinyint] NULL,
	[cli_documento] [int] NOT NULL,
	[cli_tipo_documento] [varchar](2) NOT NULL,
	[fecha_pago] [datetime] NULL,
	[valor_sin_iva] [money] NULL,
	[valor_iva] [money] NULL,
	[valor_total] [nchar](10) NULL,
 CONSTRAINT [FACTURAS_PK] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FOTOS]    Script Date: 10/02/2020 10:57:13 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FOTOS](
	[codigo] [int] NOT NULL,
	[ruta] [varchar](200) NOT NULL,
	[cod_mantenimineto] [int] NOT NULL,
 CONSTRAINT [FOTOS_PK] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MANTENIMIENTOS]    Script Date: 10/02/2020 10:57:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MANTENIMIENTOS](
	[codigo] [int] NOT NULL,
	[estado] [int] NOT NULL,
	[cod_placa] [varchar](6) NOT NULL,
	[fecha] [date] NOT NULL,
	[mec_documento] [int] NOT NULL,
	[mec_tipo_documento] [varchar](2) NOT NULL,
 CONSTRAINT [MTOS_PK] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MARCAS]    Script Date: 10/02/2020 10:57:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MARCAS](
	[codigo] [int] NOT NULL,
	[nombre_marca] [varchar](30) NOT NULL,
 CONSTRAINT [MARCAS_PK] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MECANICOS]    Script Date: 10/02/2020 10:57:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MECANICOS](
	[tipo_documento] [varchar](2) NOT NULL,
	[documento] [int] NOT NULL,
	[primer_nombre] [varchar](30) NOT NULL,
	[segundo_nombre] [varchar](30) NOT NULL,
	[primer_apellido] [varchar](30) NOT NULL,
	[segundo_apellido] [varchar](30) NOT NULL,
	[celular] [varchar](10) NOT NULL,
	[direccion] [varchar](200) NOT NULL,
	[email] [varchar](100) NULL,
	[estado] [char](1) NOT NULL,
 CONSTRAINT [MECANICOS_PK] PRIMARY KEY CLUSTERED 
(
	[tipo_documento] ASC,
	[documento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[REPUESTOS]    Script Date: 10/02/2020 10:57:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[REPUESTOS](
	[codigo] [int] NOT NULL,
	[nombre_repuesto] [varchar](100) NOT NULL,
	[precio_unitario] [numeric](18, 2) NOT NULL,
	[unidades_inventario] [int] NOT NULL,
	[proveedor] [varchar](200) NULL,
 CONSTRAINT [REPUESTOS_PK] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[REPUESTOS_X_MANTENIMIENTOS]    Script Date: 10/02/2020 10:57:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[REPUESTOS_X_MANTENIMIENTOS](
	[codigo] [int] NOT NULL,
	[unidades] [int] NOT NULL,
	[tiempo_estimado] [int] NULL,
	[cod_mantenimiento] [int] NOT NULL,
	[cod_repuesto] [int] NOT NULL,
	[codigo_descuento] [int] NULL,
 CONSTRAINT [REP_X_MTOS_PK] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SERVICIOS]    Script Date: 10/02/2020 10:57:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SERVICIOS](
	[codigo] [int] NOT NULL,
	[nombre_servicio] [varchar](100) NOT NULL,
	[precio] [numeric](18, 2) NOT NULL,
 CONSTRAINT [SERVICIOS_PK] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SERVICIOS_X_MANTANIMIENTOS]    Script Date: 10/02/2020 10:57:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SERVICIOS_X_MANTANIMIENTOS](
	[codigo] [int] NOT NULL,
	[tiempo_estimado] [int] NOT NULL,
	[cod_servicio] [int] NOT NULL,
	[cod_mantenimiento] [int] NOT NULL,
	[codigo_descuento] [int] NULL,
 CONSTRAINT [SERVICIOS_X_MTOS_PK] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VEHICULOS]    Script Date: 10/02/2020 10:57:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VEHICULOS](
	[placa] [varchar](6) NOT NULL,
	[color] [varchar](30) NOT NULL,
	[cod_marca] [int] NOT NULL,
	[cli_documento] [int] NOT NULL,
	[cli_tipo_documento] [varchar](2) NOT NULL,
 CONSTRAINT [VEHICULOS_PK] PRIMARY KEY CLUSTERED 
(
	[placa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DESCUENTOS] ADD  CONSTRAINT [DF__DESCUENTO__activo]  DEFAULT ((1)) FOR [activo]
GO
ALTER TABLE [dbo].[DESCUENTOS] ADD  CONSTRAINT [DF__DESCUENTO__porcentaje_min]  DEFAULT ((0)) FOR [porcentaje]
GO
ALTER TABLE [dbo].[DETALLES_X_FACTURA]  WITH CHECK ADD  CONSTRAINT [DETALLES_FACTURAS_FK] FOREIGN KEY([codigo_factura])
REFERENCES [dbo].[FACTURAS] ([codigo])
GO
ALTER TABLE [dbo].[DETALLES_X_FACTURA] CHECK CONSTRAINT [DETALLES_FACTURAS_FK]
GO
ALTER TABLE [dbo].[DETALLES_X_FACTURA]  WITH CHECK ADD  CONSTRAINT [DETALLES_MANTENIMIENTOS_FK] FOREIGN KEY([codigo_mantenimiento])
REFERENCES [dbo].[MANTENIMIENTOS] ([codigo])
GO
ALTER TABLE [dbo].[DETALLES_X_FACTURA] CHECK CONSTRAINT [DETALLES_MANTENIMIENTOS_FK]
GO
ALTER TABLE [dbo].[FACTURAS]  WITH CHECK ADD  CONSTRAINT [FACTURAS_CLIENTES_FK] FOREIGN KEY([cli_tipo_documento], [cli_documento])
REFERENCES [dbo].[CLIENTES] ([tipo_documento], [documento])
GO
ALTER TABLE [dbo].[FACTURAS] CHECK CONSTRAINT [FACTURAS_CLIENTES_FK]
GO
ALTER TABLE [dbo].[FOTOS]  WITH CHECK ADD  CONSTRAINT [FOTOS_MAN_FK] FOREIGN KEY([cod_mantenimineto])
REFERENCES [dbo].[MANTENIMIENTOS] ([codigo])
GO
ALTER TABLE [dbo].[FOTOS] CHECK CONSTRAINT [FOTOS_MAN_FK]
GO
ALTER TABLE [dbo].[MANTENIMIENTOS]  WITH CHECK ADD  CONSTRAINT [MAN_VEHICULOS_FK] FOREIGN KEY([cod_placa])
REFERENCES [dbo].[VEHICULOS] ([placa])
GO
ALTER TABLE [dbo].[MANTENIMIENTOS] CHECK CONSTRAINT [MAN_VEHICULOS_FK]
GO
ALTER TABLE [dbo].[MANTENIMIENTOS]  WITH CHECK ADD  CONSTRAINT [MANTENIMIENTOS_MECANICOS_FK] FOREIGN KEY([mec_tipo_documento], [mec_documento])
REFERENCES [dbo].[MECANICOS] ([tipo_documento], [documento])
GO
ALTER TABLE [dbo].[MANTENIMIENTOS] CHECK CONSTRAINT [MANTENIMIENTOS_MECANICOS_FK]
GO
ALTER TABLE [dbo].[REPUESTOS_X_MANTENIMIENTOS]  WITH CHECK ADD  CONSTRAINT [REP_MAN_REP_FK] FOREIGN KEY([cod_repuesto])
REFERENCES [dbo].[REPUESTOS] ([codigo])
GO
ALTER TABLE [dbo].[REPUESTOS_X_MANTENIMIENTOS] CHECK CONSTRAINT [REP_MAN_REP_FK]
GO
ALTER TABLE [dbo].[REPUESTOS_X_MANTENIMIENTOS]  WITH CHECK ADD  CONSTRAINT [REP_X_MTOS_MAN_FK] FOREIGN KEY([cod_mantenimiento])
REFERENCES [dbo].[MANTENIMIENTOS] ([codigo])
GO
ALTER TABLE [dbo].[REPUESTOS_X_MANTENIMIENTOS] CHECK CONSTRAINT [REP_X_MTOS_MAN_FK]
GO
ALTER TABLE [dbo].[REPUESTOS_X_MANTENIMIENTOS]  WITH CHECK ADD  CONSTRAINT [REPUESTOS_X_MANTENIMIENTOS_DESCUENTOS_FK] FOREIGN KEY([codigo_descuento])
REFERENCES [dbo].[DESCUENTOS] ([codigo])
GO
ALTER TABLE [dbo].[REPUESTOS_X_MANTENIMIENTOS] CHECK CONSTRAINT [REPUESTOS_X_MANTENIMIENTOS_DESCUENTOS_FK]
GO
ALTER TABLE [dbo].[SERVICIOS_X_MANTANIMIENTOS]  WITH CHECK ADD  CONSTRAINT [SER_X_MAN_MAN_FK] FOREIGN KEY([cod_mantenimiento])
REFERENCES [dbo].[MANTENIMIENTOS] ([codigo])
GO
ALTER TABLE [dbo].[SERVICIOS_X_MANTANIMIENTOS] CHECK CONSTRAINT [SER_X_MAN_MAN_FK]
GO
ALTER TABLE [dbo].[SERVICIOS_X_MANTANIMIENTOS]  WITH CHECK ADD  CONSTRAINT [SER_X_MAN_SER_FK] FOREIGN KEY([cod_servicio])
REFERENCES [dbo].[SERVICIOS] ([codigo])
GO
ALTER TABLE [dbo].[SERVICIOS_X_MANTANIMIENTOS] CHECK CONSTRAINT [SER_X_MAN_SER_FK]
GO
ALTER TABLE [dbo].[SERVICIOS_X_MANTANIMIENTOS]  WITH CHECK ADD  CONSTRAINT [SERVICIOS_X_MANTANIMIENTOS_DESCUENTOS_FK] FOREIGN KEY([codigo_descuento])
REFERENCES [dbo].[DESCUENTOS] ([codigo])
GO
ALTER TABLE [dbo].[SERVICIOS_X_MANTANIMIENTOS] CHECK CONSTRAINT [SERVICIOS_X_MANTANIMIENTOS_DESCUENTOS_FK]
GO
ALTER TABLE [dbo].[VEHICULOS]  WITH CHECK ADD  CONSTRAINT [VEHICULOS_CLIENTES_FK] FOREIGN KEY([cli_tipo_documento], [cli_documento])
REFERENCES [dbo].[CLIENTES] ([tipo_documento], [documento])
GO
ALTER TABLE [dbo].[VEHICULOS] CHECK CONSTRAINT [VEHICULOS_CLIENTES_FK]
GO
ALTER TABLE [dbo].[VEHICULOS]  WITH CHECK ADD  CONSTRAINT [VEHICULOS_MARCAS_FK] FOREIGN KEY([cod_marca])
REFERENCES [dbo].[MARCAS] ([codigo])
GO
ALTER TABLE [dbo].[VEHICULOS] CHECK CONSTRAINT [VEHICULOS_MARCAS_FK]
GO
ALTER TABLE [dbo].[DESCUENTOS]  WITH CHECK ADD  CONSTRAINT [CK_valida_porcentaje_max] CHECK  (([porcentaje]<=(100)))
GO
ALTER TABLE [dbo].[DESCUENTOS] CHECK CONSTRAINT [CK_valida_porcentaje_max]
GO
/****** Object:  StoredProcedure [dbo].[ACTUALIZAR_CLIENTE]    Script Date: 10/02/2020 10:57:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ACTUALIZAR_CLIENTE]
@tipo_documento VARCHAR(2),
@documento INT,
@primer_nombre VARCHAR(30),
@primer_apellido VARCHAR(30),
@segundo_nombre VARCHAR(30),
@segundo_apellido VARCHAR(30),
@celular VARCHAR(10),
@direccion VARCHAR(200),
@email VARCHAR(100)

AS

UPDATE CLIENTES SET
 [primer_nombre] = @primer_nombre,
 [segundo_nombre] = @segundo_nombre,
 [primer_apellido] = @primer_apellido,
 [segundo_apellido] = @segundo_apellido,
 [celular] = @celular,
 [direccion] = @direccion,
 [email] = @email
WHERE
 [tipo_documento] =@tipo_documento 
 AND [documento] = @documento
GO
/****** Object:  StoredProcedure [dbo].[CONSULTAR_CLIENTE]    Script Date: 10/02/2020 10:57:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CONSULTAR_CLIENTE]
@tipo_documento VARCHAR(2),
@documento INT

AS

SELECT [tipo_documento]
      ,[documento]
      ,[primer_nombre]
      ,[segundo_nombre]
      ,[primer_apellido]
      ,[segundo_apellido]
      ,[celular]
      ,[direccion]
      ,[email]
FROM  CLIENTES
WHERE [tipo_documento] =@tipo_documento 
 AND [documento] = @documento
GO
/****** Object:  StoredProcedure [dbo].[ELIMINAR_CLIENTE]    Script Date: 10/02/2020 10:57:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ELIMINAR_CLIENTE]
@tipo_documento VARCHAR(2),
@documento INT

AS

DELETE FROM CLIENTES
WHERE
 [tipo_documento] =@tipo_documento 
 AND [documento] = @documento
GO
/****** Object:  StoredProcedure [dbo].[INSERTAR_CLIENTE]    Script Date: 10/02/2020 10:57:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[INSERTAR_CLIENTE]
@tipo_documento VARCHAR(2),
@documento INT,
@primer_nombre VARCHAR(30),
@primer_apellido VARCHAR(30),
@segundo_nombre VARCHAR(30),
@segundo_apellido VARCHAR(30),
@celular VARCHAR(10),
@direccion VARCHAR(200),
@email VARCHAR(100)

AS

INSERT INTO CLIENTES (
 [tipo_documento],
 [documento],
 [primer_nombre],
 [segundo_nombre],
 [primer_apellido],
 [segundo_apellido],
 [celular],
 [direccion],
 [email])
VALUES(
 @tipo_documento, 
 @documento,
 @primer_nombre,
 @primer_apellido, 
 @segundo_nombre, 
 @segundo_apellido, 
 @celular, 
 @direccion, 
 @email  )
GO
USE [master]
GO
ALTER DATABASE [CAR_CENTER] SET  READ_WRITE 
GO
