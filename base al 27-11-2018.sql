USE [BCVE]
GO
/****** Object:  User [backup]    Script Date: 27/11/2018 17:39:47 ******/
CREATE USER [backup] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [DEUS\Administrator]    Script Date: 27/11/2018 17:39:47 ******/
CREATE USER [DEUS\Administrator] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [IIS APPPOOL\DefaultAppPool]    Script Date: 27/11/2018 17:39:47 ******/
CREATE USER [IIS APPPOOL\DefaultAppPool] FOR LOGIN [IIS APPPOOL\DefaultAppPool] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [DEUS\Administrator]
GO
ALTER ROLE [db_owner] ADD MEMBER [IIS APPPOOL\DefaultAppPool]
GO
/****** Object:  Table [dbo].[Tbl_ano_opera]    Script Date: 27/11/2018 17:39:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_ano_opera](
	[codigo] [nvarchar](10) NOT NULL,
	[descripcion] [nvarchar](150) NOT NULL,
	[estado] [nvarchar](2) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Aporte_Capital]    Script Date: 27/11/2018 17:39:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Aporte_Capital](
	[codigo] [nvarchar](2) NOT NULL,
	[descripcion] [nvarchar](150) NOT NULL,
	[estado] [nvarchar](2) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_bcvaut]    Script Date: 27/11/2018 17:39:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_bcvaut](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_gestion] [nvarchar](50) NOT NULL,
	[id_casabolsa] [nvarchar](50) NOT NULL,
	[id_resolu] [nvarchar](50) NOT NULL,
	[numero_resu] [nvarchar](50) NOT NULL,
	[fecha_envio] [nvarchar](50) NULL,
	[resumen_resu] [nvarchar](max) NOT NULL,
	[cod_usu] [nvarchar](50) NOT NULL,
	[fecha_grabacion] [nvarchar](50) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Ben_Final]    Script Date: 27/11/2018 17:39:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Ben_Final](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Num_Contrato] [nvarchar](50) NOT NULL,
	[Cod_Cliente] [nvarchar](50) NOT NULL,
	[sexo] [nvarchar](50) NOT NULL,
	[nombre1] [nvarchar](150) NOT NULL,
	[nombre2] [nvarchar](150) NOT NULL,
	[apellido1] [nvarchar](150) NOT NULL,
	[apellido2] [nvarchar](150) NOT NULL,
	[tipo_inver] [nvarchar](50) NOT NULL,
	[tipo_identif] [nvarchar](50) NOT NULL,
	[num_identif] [nvarchar](50) NOT NULL,
	[fecha_emi] [nvarchar](50) NOT NULL,
	[fecha_venci] [nvarchar](50) NOT NULL,
	[RTN] [nvarchar](50) NOT NULL,
	[nacionalidad] [nvarchar](50) NOT NULL,
	[estado_civil] [nvarchar](50) NOT NULL,
	[fecha_nacimiento] [nvarchar](50) NOT NULL,
	[lugar_nacimiento] [nvarchar](150) NOT NULL,
	[pais_naci] [nvarchar](50) NOT NULL,
	[depto_naci] [nvarchar](50) NOT NULL,
	[muni_naci] [nvarchar](50) NOT NULL,
	[ciudad_naci] [nvarchar](150) NOT NULL,
	[direccion_completa] [nvarchar](250) NOT NULL,
	[telefono] [nvarchar](50) NOT NULL,
	[celular] [nvarchar](50) NOT NULL,
	[pais_residencia] [nvarchar](50) NOT NULL,
	[depto_residencia] [nvarchar](50) NOT NULL,
	[muni_residencia] [nvarchar](50) NOT NULL,
	[ciudad_residencia] [nvarchar](50) NOT NULL,
	[correo_elec] [nvarchar](100) NOT NULL,
	[lugar_trabajo] [nvarchar](200) NOT NULL,
	[correo_trabajo] [nvarchar](50) NOT NULL,
	[profesion] [nvarchar](250) NOT NULL,
	[cargo] [nvarchar](250) NOT NULL,
	[ingreso_mensual] [nvarchar](50) NOT NULL,
	[direccion_trabajo] [nvarchar](250) NOT NULL,
	[pais_trabajo] [nvarchar](50) NOT NULL,
	[depto_trabajo] [nvarchar](50) NOT NULL,
	[muni_trabajo] [nvarchar](50) NOT NULL,
	[ciudad_trabajo] [nvarchar](150) NOT NULL,
	[tele_oficina] [nvarchar](50) NOT NULL,
	[antiguedad_labora] [nvarchar](50) NOT NULL,
	[exon_fiscal] [nvarchar](50) NOT NULL,
	[pers_pep] [nvarchar](50) NOT NULL,
	[cargo_publico] [nvarchar](200) NOT NULL,
	[activi_desig] [nvarchar](50) NOT NULL,
	[num_resgistro] [nvarchar](50) NOT NULL,
	[fecha_inscripcion] [nvarchar](50) NOT NULL,
	[usuario_graba] [nvarchar](50) NOT NULL,
	[fecha_graba] [datetime] NOT NULL,
	[usuario_veri] [nvarchar](50) NOT NULL,
	[fecha_verifica] [datetime] NOT NULL,
	[codigo_pais] [nvarchar](50) NOT NULL,
	[casa_bolsa] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Colocaciones]    Script Date: 27/11/2018 17:39:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Colocaciones](
	[idColocacion] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[numeroContrato] [nvarchar](50) NULL,
	[numeroEmision] [nvarchar](50) NULL,
	[idTipoPersona] [numeric](18, 0) NULL,
	[codigoInversionistaTitular] [nvarchar](50) NULL,
	[identidadInversionestaTitular] [nvarchar](50) NULL,
	[nombreInversionistaTitular] [nvarchar](50) NULL,
	[nombreInversionistaCopropietario] [nvarchar](250) NULL,
	[identidadCopropietario] [nvarchar](50) NULL,
	[rtn] [nvarchar](50) NULL,
	[nombreRepresentanteLegal] [nvarchar](250) NULL,
	[nombreFirmasAutorizadas] [nvarchar](250) NULL,
	[idTransferenciaValoresExtranjeros] [numeric](18, 0) NULL,
	[valorNominal] [numeric](18, 6) NULL,
	[fechaColocacion] [date] NULL,
	[fechaVencimiento] [date] NULL,
	[redencionAnticipada] [nvarchar](50) NULL,
	[idTipotasa] [nvarchar](50) NULL,
	[idBaseCalculo] [numeric](18, 0) NULL,
	[diapagoInteres] [numeric](18, 0) NULL,
	[idFrecuenciaPago] [numeric](18, 0) NULL,
	[amortiza] [char](1) NULL,
	[idFrecuenciaAmortizacion] [numeric](18, 0) NULL,
	[fechaPrimerCupon] [date] NULL,
	[fechaPagoUltimoCupon] [date] NULL,
	[fechaAgrego] [datetime] NULL,
	[estadoColocacion] [numeric](18, 0) NULL,
	[fechaModifico] [date] NULL,
	[usuarioAgrego] [nvarchar](50) NULL,
	[usuarioModifico] [nvarchar](50) NULL,
	[nomCompletoComprador] [nvarchar](100) NULL,
	[bancoComercialComprador] [nvarchar](100) NULL,
	[numCuentaAfectarComprador] [nvarchar](50) NULL,
	[nomCompletoVendedor] [nvarchar](100) NULL,
	[bancoComercialVendedor] [nvarchar](50) NULL,
	[cuentaAfectarVendedor] [nvarchar](50) NULL,
	[porcentajeComision] [numeric](18, 4) NULL,
	[numeroBoleta] [nvarchar](50) NULL,
	[cantidadValores] [numeric](18, 0) NULL,
	[tasa] [numeric](18, 4) NULL,
	[tipoServicioComVenValor] [bit] NULL,
	[tipoServicioComVenExt] [bit] NULL,
	[tipoServicioAdmCartera] [bit] NULL,
	[tipoServicioAsesoriaInver] [bit] NULL,
	[tipoServicioVenExtPais] [bit] NULL,
	[tipoServicioCustodia] [bit] NULL,
	[tipotipoServicioOtra] [bit] NULL,
	[tipoServicioOtraDescrip] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tbl_Colocaciones] PRIMARY KEY CLUSTERED 
(
	[idColocacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Comisiones]    Script Date: 27/11/2018 17:39:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Comisiones](
	[codigo] [numeric](18, 0) NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
	[Porcentaje] [numeric](18, 4) NOT NULL,
	[estado] [numeric](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_conocimiento_inver]    Script Date: 27/11/2018 17:39:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_conocimiento_inver](
	[codigo] [nvarchar](2) NOT NULL,
	[descripcion] [nvarchar](150) NOT NULL,
	[estado] [nvarchar](2) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_deptomuni]    Script Date: 27/11/2018 17:39:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_deptomuni](
	[CODDEP] [nvarchar](50) NULL,
	[CODMUN] [nvarchar](50) NULL,
	[DESDEPMUN] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_deptos]    Script Date: 27/11/2018 17:39:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_deptos](
	[codigo] [nchar](10) NOT NULL,
	[descripcion] [nvarchar](150) NOT NULL,
	[estado] [nchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Derechos_Patrimoniales]    Script Date: 27/11/2018 17:39:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Derechos_Patrimoniales](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[fechaInicialCalculo] [nvarchar](50) NULL,
	[fechaFinalCalculo] [nvarchar](50) NULL,
	[tipoPago] [int] NOT NULL,
	[contrato] [nvarchar](50) NOT NULL,
	[numeroEmision] [nvarchar](50) NOT NULL,
	[codigoInversionestaTitular] [nvarchar](50) NOT NULL,
	[fechaPrimerCupon] [date] NOT NULL,
	[fechaUltimoCupon] [date] NOT NULL,
	[numeroDiasApagar] [int] NOT NULL,
	[serieTramo] [nvarchar](50) NOT NULL,
	[monto] [numeric](18, 4) NOT NULL,
	[fechaPago] [date] NOT NULL,
	[montoPagar] [numeric](18, 4) NOT NULL,
	[impuestoRetenido] [numeric](18, 4) NOT NULL,
	[totalPAgar] [numeric](18, 4) NOT NULL,
	[usuarioAgrego] [nvarchar](50) NOT NULL,
	[fechaAgrego] [datetime] NOT NULL,
	[montoConfirmacionTotalPagar] [numeric](18, 4) NOT NULL,
 CONSTRAINT [PK_Tbl_DerechosPatrimoniales] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_detallepagoreci]    Script Date: 27/11/2018 17:39:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_detallepagoreci](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_gestion] [nvarchar](50) NOT NULL,
	[fechaavisopago] [nvarchar](50) NOT NULL,
	[fechalimitepago] [nvarchar](50) NOT NULL,
	[recibede] [nvarchar](150) NOT NULL,
	[cod_formapago] [nvarchar](50) NOT NULL,
	[numero_refe] [nvarchar](50) NOT NULL,
	[fecha_pago] [nvarchar](50) NOT NULL,
	[cod_tipo_moneda] [nvarchar](50) NOT NULL,
	[tipocambio] [nvarchar](50) NOT NULL,
	[valorrecibo] [nvarchar](150) NOT NULL,
	[cod_nobanco] [nvarchar](50) NOT NULL,
	[valorletras] [nvarchar](max) NOT NULL,
	[cod_conceptopago] [nvarchar](50) NOT NULL,
	[fecha_grabacion] [nvarchar](50) NOT NULL,
	[cod_usu] [nvarchar](50) NOT NULL,
	[estadorecibo] [nvarchar](50) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Emisiones]    Script Date: 27/11/2018 17:39:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Emisiones](
	[idEmision] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[numeroContrato] [nvarchar](50) NULL,
	[nombre] [nvarchar](150) NULL,
	[monto] [numeric](18, 4) NULL,
	[valorporSerie] [numeric](18, 4) NULL,
	[codigoIsin] [nvarchar](50) NULL,
	[monedaId] [nvarchar](50) NULL,
	[fechaEmision] [nvarchar](50) NULL,
	[fechaVencimiento] [nvarchar](50) NULL,
	[periodicidadCupones] [nvarchar](50) NULL,
	[redencionAnticipada] [nvarchar](50) NULL,
	[tasa] [nvarchar](50) NULL,
	[numeroSerie] [nvarchar](50) NULL,
	[numeroTramos] [nvarchar](50) NULL,
	[valorNominal] [numeric](18, 4) NULL,
	[montoColocado] [numeric](18, 4) NULL,
	[disponibleEmision] [numeric](18, 4) NULL,
	[idcomisiones] [numeric](18, 0) NULL,
	[numeroResolucionCNBS] [nvarchar](50) NULL,
	[fechaResolucionCNBS] [nvarchar](50) NULL,
	[numeroResolucionBCV] [nvarchar](50) NULL,
	[fechaResolucionBCV] [nvarchar](50) NULL,
	[codformarepre] [nvarchar](50) NULL,
	[tipoinstru] [nvarchar](50) NULL,
	[idEstado] [numeric](18, 0) NULL,
	[tipoTasa] [nvarchar](50) NULL,
	[usuarioAgrego] [nvarchar](50) NULL,
	[fechaAgrego] [nvarchar](50) NULL,
	[usuarioModifico] [nvarchar](50) NULL,
	[fechaModifico] [nvarchar](50) NULL,
	[codigoUsic] [nvarchar](50) NULL,
	[calificacionInicialEmision] [nvarchar](50) NULL,
	[idcalificador] [nvarchar](50) NULL,
	[tipoarmorti] [nvarchar](50) NULL,
	[amortiperiodi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Emisiones] PRIMARY KEY CLUSTERED 
(
	[idEmision] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Entrega_Libre_Pago]    Script Date: 27/11/2018 17:39:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Entrega_Libre_Pago](
	[idEntregaLibrePago] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[fecha] [date] NULL,
	[codigoIsin] [nvarchar](50) NULL,
	[numeroOperacionBCV] [nvarchar](50) NULL,
	[fechaSecion] [date] NULL,
	[codigoDepositanteSedente] [nvarchar](50) NULL,
	[codigoDepositanteCesionario] [nvarchar](50) NULL,
	[nombreTitular] [nvarchar](50) NULL,
	[nombreNuevoTitular] [nvarchar](50) NULL,
	[numeroCuentaCedente] [nvarchar](50) NULL,
	[CantidadValores] [numeric](18, 0) NULL,
	[valorNominal] [numeric](18, 2) NULL,
	[estado] [numeric](18, 0) NULL,
	[numeroEmision] [nvarchar](50) NULL,
	[numeroColocacionAfectar] [nvarchar](50) NULL,
	[usuarioAgrego] [nvarchar](50) NULL,
	[fechaAgrego] [datetime] NULL,
	[usuarioModifico] [nvarchar](50) NULL,
	[fechaModifico] [datetime] NULL,
	[numeroBoleta] [nvarchar](50) NULL,
	[ip] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_estado_proceso]    Script Date: 27/11/2018 17:39:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_estado_proceso](
	[codigo] [nvarchar](50) NOT NULL,
	[descripcion] [nvarchar](50) NOT NULL,
	[estado] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_estadocivil]    Script Date: 27/11/2018 17:39:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_estadocivil](
	[codigo] [nchar](10) NOT NULL,
	[descripcion] [nvarchar](50) NOT NULL,
	[estado] [nchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_estadofinalsolici]    Script Date: 27/11/2018 17:39:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_estadofinalsolici](
	[codigo] [nchar](2) NOT NULL,
	[descripcionestado] [nvarchar](50) NOT NULL,
	[detalle] [nvarchar](150) NOT NULL,
	[estado] [nvarchar](10) NOT NULL,
	[fecha_ingreso] [date] NOT NULL,
	[fecha_modi] [date] NOT NULL,
	[usuario] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_FATCA]    Script Date: 27/11/2018 17:39:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_FATCA](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Num_Contrato] [nvarchar](50) NOT NULL,
	[Cod_Cliente] [nvarchar](50) NOT NULL,
	[nombre] [nvarchar](250) NOT NULL,
	[tipo_id] [nvarchar](50) NOT NULL,
	[num_ide] [nvarchar](50) NOT NULL,
	[num_emis] [nvarchar](50) NOT NULL,
	[num_venci] [nvarchar](50) NOT NULL,
	[num_ident_contri] [nvarchar](50) NOT NULL,
	[lugar_naci] [nvarchar](150) NOT NULL,
	[Pais_Ciudadania] [nvarchar](100) NOT NULL,
	[Dire_Perman] [nvarchar](250) NOT NULL,
	[Ciudad_Poblacion] [nvarchar](250) NOT NULL,
	[correo] [nvarchar](150) NOT NULL,
	[ciudad_poblacion1] [nvarchar](250) NOT NULL,
	[num_ident_extran] [nvarchar](50) NOT NULL,
	[fecha_naci] [nvarchar](50) NOT NULL,
	[texto1] [nvarchar](100) NOT NULL,
	[texto2] [nvarchar](20) NOT NULL,
	[texto3] [nvarchar](20) NOT NULL,
	[texto4] [nvarchar](100) NOT NULL,
	[texto5] [nvarchar](250) NOT NULL,
	[usuario_graba] [nvarchar](50) NOT NULL,
	[fecha_graba] [datetime] NOT NULL,
	[usuario_veri] [nvarchar](50) NOT NULL,
	[fecha_verifica] [datetime] NOT NULL,
	[codigo_pais] [nvarchar](50) NOT NULL,
	[casa_bolsa] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_fautorizacion]    Script Date: 27/11/2018 17:39:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_fautorizacion](
	[codigo] [nvarchar](2) NOT NULL,
	[descripcion] [nvarchar](10) NOT NULL,
	[estado] [nvarchar](2) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Firmas_Autorizadas]    Script Date: 27/11/2018 17:39:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Firmas_Autorizadas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pnfa21_numcontrato] [nvarchar](150) NOT NULL,
	[pnfa21_codcliente] [nvarchar](150) NOT NULL,
	[pnfa21_nombre] [nvarchar](150) NOT NULL,
	[pnfa21_tipo_autorizaion] [nvarchar](2) NOT NULL,
	[pnfa21_fid] [nvarchar](50) NOT NULL,
	[pnfa21_fnum_id] [nvarchar](50) NOT NULL,
	[usuario_graba] [nvarchar](50) NOT NULL,
	[fecha_graba] [datetime] NOT NULL,
	[usuario_veri] [nvarchar](50) NOT NULL,
	[fecha_verifica] [datetime] NOT NULL,
	[codigo_pais] [nvarchar](50) NOT NULL,
	[casa_bolsa] [nvarchar](50) NOT NULL,
	[estado_registro] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_generales]    Script Date: 27/11/2018 17:39:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_generales](
	[codigo_pais] [nchar](10) NOT NULL,
	[nombrecompleto] [nvarchar](150) NOT NULL,
	[siglas] [nvarchar](50) NOT NULL,
	[id] [nvarchar](50) NOT NULL,
	[direccion] [nvarchar](max) NULL,
	[telefono] [nvarchar](150) NULL,
	[estado] [nchar](1) NOT NULL,
	[fecha_graba] [date] NOT NULL,
	[usuario_graba] [nvarchar](50) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Ingreso_Mensual]    Script Date: 27/11/2018 17:39:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Ingreso_Mensual](
	[codigo] [nvarchar](2) NOT NULL,
	[descripcion] [nvarchar](150) NOT NULL,
	[estado] [nvarchar](2) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_interes_amortiza]    Script Date: 27/11/2018 17:39:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_interes_amortiza](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fecha_solicituf] [nvarchar](50) NOT NULL,
	[cod_depositante] [nvarchar](50) NOT NULL,
	[tipo_gestion] [nvarchar](50) NOT NULL,
	[tipo_periodicidad] [nvarchar](50) NOT NULL,
	[dia_fecha] [nvarchar](50) NOT NULL,
	[mes_fecha] [nvarchar](50) NOT NULL,
	[fecha] [nvarchar](50) NOT NULL,
	[estado] [nvarchar](50) NOT NULL,
	[usuario] [nvarchar](50) NOT NULL,
	[fecha_graba] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Mandato_Legal]    Script Date: 27/11/2018 17:39:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Mandato_Legal](
	[idMandatoLegal] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[nombreTitular] [nvarchar](100) NULL,
	[identidadTitular] [nvarchar](20) NULL,
	[rtnTitular] [nvarchar](20) NULL,
	[nombreBeneficiario] [nvarchar](100) NULL,
	[identidadBeneficiario] [nvarchar](20) NULL,
	[rtnBeneficiario] [nvarchar](20) NULL,
	[numeroCuentaCedente] [nvarchar](50) NULL,
	[numeroCuentaCesionario] [nvarchar](50) NULL,
	[cantidadValores] [numeric](18, 0) NULL,
	[valorNominal] [numeric](18, 2) NULL,
	[estado] [numeric](18, 0) NULL,
	[numeroEmision] [nvarchar](50) NULL,
	[numeroColocacionAfectar] [nvarchar](50) NULL,
	[usuarioAgrego] [nvarchar](50) NULL,
	[fechaAgrego] [datetime] NULL,
	[usuarioModifico] [nvarchar](50) NULL,
	[fechaModifico] [datetime] NULL,
	[numeroBoleta] [nvarchar](50) NULL,
	[codigoCliente] [nvarchar](50) NULL,
	[ip] [nvarchar](50) NULL,
	[numeroOperacionBCV] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_masoli]    Script Date: 27/11/2018 17:39:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_masoli](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fechasoli] [nvarchar](50) NOT NULL,
	[numcontrato] [nvarchar](50) NOT NULL,
	[pnombre0] [nvarchar](150) NOT NULL,
	[snombre0] [nvarchar](150) NOT NULL,
	[papellido0] [nvarchar](150) NOT NULL,
	[sapellido0] [nvarchar](150) NOT NULL,
	[objetivosocial] [nvarchar](150) NOT NULL,
	[tipo_soli] [nvarchar](50) NOT NULL,
	[tipo_id] [nvarchar](50) NOT NULL,
	[numero_id] [nvarchar](50) NOT NULL,
	[tipo_sector] [nvarchar](50) NOT NULL,
	[telefono] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[direccion] [nvarchar](250) NOT NULL,
	[cod_pais_list] [nvarchar](50) NOT NULL,
	[le_nombrecompleto] [nvarchar](250) NOT NULL,
	[le_fechanaci] [nvarchar](50) NOT NULL,
	[le_cargo] [nvarchar](150) NOT NULL,
	[le_tipo_id] [nvarchar](50) NOT NULL,
	[le_id] [nvarchar](50) NOT NULL,
	[exclu_estado_firma] [nvarchar](50) NOT NULL,
	[exclu_estado_sello] [nvarchar](50) NOT NULL,
	[exclu_estado_solici] [nvarchar](50) NOT NULL,
	[exclu_observaciones] [nvarchar](250) NOT NULL,
	[usuario_graba] [nvarchar](50) NOT NULL,
	[fecha_graba] [datetime] NOT NULL,
	[usuario_veri] [nvarchar](50) NOT NULL,
	[fecha_verifica] [datetime] NOT NULL,
	[codigo_pais] [nvarchar](50) NOT NULL,
	[casa_bolsa] [nvarchar](50) NOT NULL,
	[estado_registro] [nvarchar](50) NOT NULL,
	[cod_depto] [nvarchar](50) NOT NULL,
	[cod_muni] [nvarchar](50) NOT NULL,
	[nombre_estado] [nvarchar](150) NOT NULL,
	[nombre_ciudad] [nvarchar](150) NOT NULL,
	[codigocliente] [nvarchar](50) NOT NULL,
	[pnfa21_tipoid] [nvarchar](50) NOT NULL,
	[pnfa21_numeroid] [nvarchar](50) NOT NULL,
	[pnfa21_pnombre] [nvarchar](150) NOT NULL,
	[pnfa21_snombre] [nvarchar](150) NOT NULL,
	[pnfa21_papellido] [nvarchar](150) NOT NULL,
	[pnfa21_sapellido] [nvarchar](150) NOT NULL,
	[pnfa21_tiposexo] [nvarchar](50) NOT NULL,
	[pnfa21_fechanac] [nvarchar](50) NOT NULL,
	[pnfa21_lugarnaci] [nvarchar](150) NOT NULL,
	[pnfa21_direccioncomple] [nvarchar](250) NOT NULL,
	[pnfa21_numtele] [nvarchar](50) NOT NULL,
	[pnfa21_numcelular] [nvarchar](50) NOT NULL,
	[pnfa21_correoelect] [nvarchar](50) NOT NULL,
	[pnfa21_estadocivil] [nvarchar](50) NOT NULL,
	[pnfa21_codnacionalidad] [nvarchar](50) NOT NULL,
	[pnfa21_cargodesempe] [nvarchar](150) NOT NULL,
	[pnfa21_nombrebenefinal] [nvarchar](150) NOT NULL,
	[pnfa21_exoisr] [nvarchar](50) NOT NULL,
	[pnfa21_internmediario] [nvarchar](50) NOT NULL,
	[pnfa21_personpep] [nvarchar](50) NOT NULL,
	[pnfa21_nombreconyugue] [nvarchar](150) NOT NULL,
	[pnfa21_idconyugue] [nvarchar](50) NOT NULL,
	[pnfa21_fecnacconyugue] [nvarchar](50) NOT NULL,
	[pnfa21_lugartrabajo] [nvarchar](50) NOT NULL,
	[pnfa21_correotrabrajo] [nvarchar](50) NOT NULL,
	[pnfa21_ocupaoficio] [nvarchar](50) NOT NULL,
	[pnfa21_posicargo] [nvarchar](50) NOT NULL,
	[pnfa21_antiguedad] [nvarchar](50) NOT NULL,
	[pnfa21_direcciontrabajo] [nvarchar](150) NOT NULL,
	[pnfa21_teletrabajo] [nvarchar](50) NOT NULL,
	[pnfa21_formmancomunada] [nvarchar](50) NOT NULL,
	[pnfa21_tiposexocopro] [nvarchar](50) NOT NULL,
	[pnfa21_nacionalidadcopro] [nvarchar](50) NOT NULL,
	[pnfa21_pnombrecopro] [nvarchar](50) NOT NULL,
	[pnfa21_snombrecopro] [nvarchar](50) NOT NULL,
	[pnfa21_papellidocopro] [nvarchar](50) NOT NULL,
	[pnfa21_sapellidocopro] [nvarchar](50) NOT NULL,
	[pnfa21_tipodicopro] [nvarchar](50) NOT NULL,
	[pnfa21_idcopro] [nvarchar](50) NOT NULL,
	[pnfa21_fechanacicopro] [nvarchar](50) NOT NULL,
	[pnfa21_lugarnacicopro] [nvarchar](150) NOT NULL,
	[pnfa21_telcopro] [nvarchar](50) NOT NULL,
	[pnfa21_celcopro] [nvarchar](50) NOT NULL,
	[pnfa21_correocopro] [nvarchar](50) NOT NULL,
	[pnfa21_lugartrabajocopro] [nvarchar](150) NOT NULL,
	[pnfa21_posicargocopro] [nvarchar](150) NOT NULL,
	[pnfa21_direccioncopro] [nvarchar](150) NOT NULL,
	[pnfa21_cargodesempecopro] [nvarchar](150) NOT NULL,
	[pnfa21_exoisrcopro] [nvarchar](50) NOT NULL,
	[pnfa21_pepcopro] [nvarchar](50) NOT NULL,
	[pnfa21_objetivoinversion] [nvarchar](150) NOT NULL,
	[pnfa21_naturalezainversion] [nvarchar](150) NOT NULL,
	[pnfa21_aplica] [nvarchar](50) NOT NULL,
	[pnfa21_nombrenegocio] [nvarchar](150) NOT NULL,
	[pnfa21_tiporubro] [nvarchar](50) NOT NULL,
	[pnfa21_rangoactivo] [nvarchar](50) NOT NULL,
	[pnfa21_rangopasivo] [nvarchar](50) NOT NULL,
	[pnfa21_rangopatrimonio] [nvarchar](50) NOT NULL,
	[pnfa21_rangoingresos] [nvarchar](50) NOT NULL,
	[pnfa21_rangogastos] [nvarchar](50) NOT NULL,
	[pnfa21_copiaidtitular] [nvarchar](50) NOT NULL,
	[pnfa21_copiaidcopropie] [nvarchar](50) NOT NULL,
	[pnfa21_copiaidapoderado] [nvarchar](50) NOT NULL,
	[pnfa21_copiartntitular] [nvarchar](50) NOT NULL,
	[pnfa21_copiartncopro] [nvarchar](50) NOT NULL,
	[pnfa21_copiartnapodelegal] [nvarchar](50) NOT NULL,
	[pnfa21_refebancacomer] [nvarchar](50) NOT NULL,
	[pnfa21_copiarecibopubli] [nvarchar](50) NOT NULL,
	[pnfa21_poderreprese] [nvarchar](50) NOT NULL,
	[pnfa21_tinversionista] [nvarchar](50) NOT NULL,
	[pnfa21_emision] [nvarchar](50) NOT NULL,
	[pnfa21_vencimiento] [nvarchar](50) NOT NULL,
	[pnfa21_RTN] [nvarchar](50) NOT NULL,
	[pnfa21_ingreso_mensual] [nvarchar](50) NOT NULL,
	[pnfa21_act_desiganda] [nvarchar](150) NOT NULL,
	[pnfa21_registro] [nvarchar](150) NOT NULL,
	[pnfa21_fecha_inscrip] [nvarchar](50) NOT NULL,
	[pnfa21_coinversionista] [nvarchar](50) NOT NULL,
	[pnfa21_coemision] [nvarchar](50) NOT NULL,
	[pnfa21_covencimiento] [nvarchar](50) NOT NULL,
	[pnfa21_coRTN] [nvarchar](50) NOT NULL,
	[pnfa21_copais] [nvarchar](50) NOT NULL,
	[pnfa21_coestado] [nvarchar](100) NOT NULL,
	[pnfa21_comunicipio] [nvarchar](100) NOT NULL,
	[pnfa21_cociudad] [nvarchar](50) NOT NULL,
	[pnfa21_coingreso_mensual] [nvarchar](50) NOT NULL,
	[pnfa21_cointermediario] [nvarchar](50) NOT NULL,
	[pnfa21_act_desig] [nvarchar](150) NOT NULL,
	[pnfa21_coregistro] [nvarchar](150) NOT NULL,
	[pnfa21_cofecha_inscripcion] [nvarchar](50) NOT NULL,
	[pnfa21_conom_conyugue] [nvarchar](150) NOT NULL,
	[pnfa21_connumide] [nvarchar](50) NOT NULL,
	[pnfa21_perfil_inver] [nvarchar](50) NOT NULL,
	[pnfa21_mon_prom_inver] [nvarchar](50) NOT NULL,
	[pnfa21_serv_casa] [nvarchar](50) NOT NULL,
	[pnfa21_serv_detalle] [nvarchar](50) NOT NULL,
	[pnfa21_serv_mant] [nvarchar](50) NOT NULL,
	[pnfa21_prese_mant] [nvarchar](50) NOT NULL,
	[pnfa21_obten_ingreso] [nvarchar](50) NOT NULL,
	[pnfa21_ganan_tra] [nvarchar](50) NOT NULL,
	[pnfa21_aume_capi] [nvarchar](50) NOT NULL,
	[pnfa21_especulacion] [nvarchar](50) NOT NULL,
	[pnfa21_otro] [nvarchar](50) NOT NULL,
	[pnfa21_hori_1] [nvarchar](50) NOT NULL,
	[pnfa21_hori_5] [nvarchar](50) NOT NULL,
	[pnfa21_hori_10] [nvarchar](50) NOT NULL,
	[pnfa21_hori_20] [nvarchar](50) NOT NULL,
	[pnfa21_hori_mayor20] [nvarchar](50) NOT NULL,
	[pnfa21_tole_riesgo] [nvarchar](50) NOT NULL,
	[pnfa21_cono_inversion] [nvarchar](50) NOT NULL,
	[pnfa21_cert_deposito] [nvarchar](50) NOT NULL,
	[pnfa21_letras] [nvarchar](50) NOT NULL,
	[pnfa21_pagare_papel] [nvarchar](50) NOT NULL,
	[pnfa21_bonos] [nvarchar](50) NOT NULL,
	[pnfa21_fondos_mutuos] [nvarchar](50) NOT NULL,
	[pnfa21_fondos_inver] [nvarchar](50) NOT NULL,
	[pnfa21_reportos] [nvarchar](50) NOT NULL,
	[pnfa21_acciones] [nvarchar](50) NOT NULL,
	[pnfa21_futuros] [nvarchar](50) NOT NULL,
	[pnfa21_opciones] [nvarchar](50) NOT NULL,
	[pnfa21_com_ven_valor] [nvarchar](50) NOT NULL,
	[pnfa21_com_ven_ext] [nvarchar](50) NOT NULL,
	[pnfa21_com_ven_cust] [nvarchar](50) NOT NULL,
	[pnfa21_adm_cartera] [nvarchar](50) NOT NULL,
	[pnfa21_per_otra] [nvarchar](50) NOT NULL,
	[pnfa21_otradescrip] [nvarchar](150) NOT NULL,
	[pnfa21_asesoria_inver] [nvarchar](50) NOT NULL,
	[pnfa21_com_ven_ext_pais] [nvarchar](50) NOT NULL,
	[pnfa21_serv_custodia] [nvarchar](50) NOT NULL,
	[pnfa21_aport_capital] [nvarchar](50) NOT NULL,
	[pnfa21_num_transaccion] [nvarchar](100) NOT NULL,
	[pnfa21_moneda_inver] [nvarchar](50) NOT NULL,
	[pnfa21_monto_alta] [nvarchar](100) NOT NULL,
	[pnfa21_monto_bajo] [nvarchar](100) NOT NULL,
	[pnfa21_recurso_inver] [nvarchar](50) NOT NULL,
	[pnfa21_recurso_observa] [nvarchar](150) NOT NULL,
	[pnfa21_origen_recurso] [nvarchar](50) NOT NULL,
	[pnfa21_origen_detalle] [nvarchar](150) NOT NULL,
	[pnfa21_paisnaci] [nvarchar](150) NOT NULL,
	[pnfa21_depnaci] [nvarchar](150) NOT NULL,
	[pnfa21_muninaci] [nvarchar](150) NOT NULL,
	[pnfa21_estanaci] [nvarchar](150) NOT NULL,
	[pnfa21_ciudanaci] [nvarchar](150) NOT NULL,
	[pnfa21_paisresi] [nvarchar](150) NOT NULL,
	[pnfa21_depresi] [nvarchar](150) NOT NULL,
	[pnfa21_muniresi] [nvarchar](150) NOT NULL,
	[pnfa21_estaresi] [nvarchar](150) NOT NULL,
	[pnfa21_ciudaresi] [nvarchar](150) NOT NULL,
	[pnfa21_paislabo] [nvarchar](150) NOT NULL,
	[pnfa21_deplabo] [nvarchar](150) NOT NULL,
	[pnfa21_munilabo] [nvarchar](150) NOT NULL,
	[pnfa21_estalabo] [nvarchar](150) NOT NULL,
	[pnfa21_ciudalabo] [nvarchar](150) NOT NULL,
	[pnfa21_paiscop] [nvarchar](150) NOT NULL,
	[pnfa21_depcop] [nvarchar](150) NOT NULL,
	[pnfa21_municop] [nvarchar](150) NOT NULL,
	[pnfa21_estacop] [nvarchar](150) NOT NULL,
	[pnfa21_ciudacop] [nvarchar](150) NOT NULL,
	[pnfa21_pacoresi] [nvarchar](150) NOT NULL,
	[pnfa21_depcores] [nvarchar](150) NOT NULL,
	[pnfa21_municore] [nvarchar](150) NOT NULL,
	[pnfa21_estacores] [nvarchar](150) NOT NULL,
	[pnfa21_ciudacores] [nvarchar](150) NOT NULL,
	[pnfa21_estacivilco] [nvarchar](50) NOT NULL,
	[pnfa21_correlectr] [nvarchar](150) NOT NULL,
	[pnfa21_oficiocop] [nvarchar](200) NOT NULL,
	[pjfa22_razonsocial] [nvarchar](150) NOT NULL,
	[pjfa22_actividadprinci] [nvarchar](150) NOT NULL,
	[pjfa22_fechaconstitu] [nvarchar](50) NOT NULL,
	[pjfa22__tomo] [nvarchar](50) NOT NULL,
	[pjfa22_folio] [nvarchar](50) NOT NULL,
	[pjfa22_numeroregistro] [nvarchar](50) NOT NULL,
	[pjfa22_rtn] [nvarchar](50) NOT NULL,
	[pjfa22_paisconstitucion] [nvarchar](50) NOT NULL,
	[pjfa22_tipoinversionista] [nvarchar](50) NOT NULL,
	[pjfa22_permisoperacion] [nvarchar](50) NOT NULL,
	[pjfa22_direccioncompleta] [nvarchar](150) NOT NULL,
	[pjfa22_correo] [nvarchar](50) NOT NULL,
	[pjfa22_numerocelular] [nvarchar](50) NOT NULL,
	[pjfa22_domiciliosociedad] [nvarchar](150) NOT NULL,
	[pjfa22_numerofax] [nvarchar](50) NOT NULL,
	[pjfa22_direccionprincipal] [nvarchar](150) NOT NULL,
	[pjfa22_numeroagencias] [nvarchar](50) NOT NULL,
	[pjfa22_numerotelefonos] [nvarchar](150) NOT NULL,
	[pjfa22_antiguedadempresa] [nvarchar](50) NOT NULL,
	[pjfa22_exoisr] [nvarchar](50) NOT NULL,
	[pjfa22_nombreapode] [nvarchar](50) NOT NULL,
	[pjfa22_tipoidapode] [nvarchar](50) NOT NULL,
	[pjfa22_tipoidnumeroapode] [nvarchar](50) NOT NULL,
	[pjfa22_nacionalidadapode] [nvarchar](50) NOT NULL,
	[pjfa22_lugarnacimientoapode] [nvarchar](150) NOT NULL,
	[pjfa22_fechanacimientoapode] [nvarchar](50) NOT NULL,
	[pjfa22_telefonoapode] [nvarchar](50) NOT NULL,
	[pjfa22_tiposexo] [nvarchar](50) NOT NULL,
	[pjfa22_celularapode] [nvarchar](50) NOT NULL,
	[pjfa22_direccionresiapode] [nvarchar](50) NOT NULL,
	[pjfa22_telefonoresiapode] [nvarchar](50) NOT NULL,
	[pjfa22_profesionapode] [nvarchar](50) NOT NULL,
	[pjfa22_exoisrapode] [nvarchar](50) NOT NULL,
	[pjfa22_pepapode] [nvarchar](50) NOT NULL,
	[pjfa22_objetivoinversion] [nvarchar](150) NOT NULL,
	[pjfa22_origenrecurso] [nvarchar](150) NOT NULL,
	[pjfa22_tiporubro] [nvarchar](50) NOT NULL,
	[pjfa22_rangoactivo] [nvarchar](50) NOT NULL,
	[pjfa22_rangopasivo] [nvarchar](50) NOT NULL,
	[pjfa22_patrimonio] [nvarchar](50) NOT NULL,
	[pjfa22_ingresos] [nvarchar](50) NOT NULL,
	[pjfa22_gastos] [nvarchar](50) NOT NULL,
	[pjfa22_refenombrecompleto] [nvarchar](150) NOT NULL,
	[pjfa22_refecontacto] [nvarchar](150) NOT NULL,
	[pjfa22_refenumerotel] [nvarchar](50) NOT NULL,
	[pjfa22_escrituraconstitu] [nvarchar](50) NOT NULL,
	[pjfa22_copiartn] [nvarchar](50) NOT NULL,
	[pjfa22_copiarecibopubli] [nvarchar](50) NOT NULL,
	[pjfa22_reformaconstitucion] [nvarchar](50) NOT NULL,
	[pjfa22_identidartnapode] [nvarchar](50) NOT NULL,
	[pjfa22_constabancarefe] [nvarchar](50) NOT NULL,
	[pjfa22_poderepre] [nvarchar](50) NOT NULL,
	[pjfa22_copiaidautori] [nvarchar](50) NOT NULL,
	[exclu_refebancaria] [nvarchar](50) NOT NULL,
	[exclu_refepersonal] [nvarchar](50) NOT NULL,
	[exclu_documserviciopublico] [nvarchar](50) NOT NULL,
	[exclu_numerortn] [nvarchar](50) NOT NULL,
	[exclu_conocidopor] [nvarchar](150) NOT NULL,
	[exclu_oficumpli_listanacional] [nvarchar](50) NOT NULL,
	[exclu_oficumpli_listainter] [nvarchar](50) NOT NULL,
	[estaper] [nvarchar](50) NOT NULL,
	[montoaplicar] [nvarchar](150) NOT NULL,
	[pjfa22_copais] [nvarchar](50) NOT NULL,
	[pjfa22_estado] [nvarchar](100) NOT NULL,
	[pjfa22_municipio] [nvarchar](100) NOT NULL,
	[pjfa22_ciudad] [nvarchar](100) NOT NULL,
	[pjfa22_gru_finan] [nvarchar](50) NOT NULL,
	[pjfa22_nom_grup] [nvarchar](150) NOT NULL,
	[pjfa22_act_desig] [nvarchar](50) NOT NULL,
	[pjfa22_coregistro] [nvarchar](150) NOT NULL,
	[pjfa22_cofecha_inscripcion] [nvarchar](50) NOT NULL,
	[pjfa22_cargo] [nvarchar](150) NOT NULL,
	[pjfa22_tiemp_labo] [nvarchar](50) NOT NULL,
	[pjfa22_perfil_inver] [nvarchar](50) NOT NULL,
	[pjfa22_mon_prom_inver] [nvarchar](50) NOT NULL,
	[pjfa22_serv_casa] [nvarchar](50) NOT NULL,
	[pjfa22_serv_detalle] [nvarchar](150) NOT NULL,
	[pjfa22_prese_mant] [nvarchar](50) NOT NULL,
	[pjfa22_obten_ingreso] [nvarchar](50) NOT NULL,
	[pjfa22_ganan_tra] [nvarchar](50) NOT NULL,
	[pjfa22_especulacion] [nvarchar](50) NOT NULL,
	[pjfa22_otro] [nvarchar](50) NOT NULL,
	[pjfa22_hori_1] [nvarchar](50) NOT NULL,
	[pjfa22_hori_5] [nvarchar](50) NOT NULL,
	[pjfa22_hori_10] [nvarchar](50) NOT NULL,
	[pjfa22_hori_20] [nvarchar](50) NOT NULL,
	[pjfa22_hori_mayor20] [nvarchar](50) NOT NULL,
	[pjfa22_tole_riesgo] [nvarchar](50) NOT NULL,
	[pjfa22_cono_inversion] [nvarchar](50) NOT NULL,
	[pjfa22_cert_deposito] [nvarchar](50) NOT NULL,
	[pjfa22_letras] [nvarchar](50) NOT NULL,
	[pjfa22_pagare_papel] [nvarchar](50) NOT NULL,
	[pjfa22_bonos] [nvarchar](50) NOT NULL,
	[pjfa22_fondos_mutuos] [nvarchar](50) NOT NULL,
	[pjfa22_fondos_inver] [nvarchar](50) NOT NULL,
	[pjfa22_reportos] [nvarchar](50) NOT NULL,
	[pjfa22_acciones] [nvarchar](50) NOT NULL,
	[pjfa22_futuros] [nvarchar](50) NOT NULL,
	[pjfa22_opciones] [nvarchar](50) NOT NULL,
	[pjfa22_com_ven_valor] [nvarchar](50) NOT NULL,
	[pjfa22_com_ven_ext] [nvarchar](50) NOT NULL,
	[pjfa22_adm_cartera] [nvarchar](50) NOT NULL,
	[pjfa22_per_otra] [nvarchar](50) NOT NULL,
	[pjfa22_otradescrip] [nvarchar](150) NOT NULL,
	[pjfa22_asesoria_inver] [nvarchar](50) NOT NULL,
	[pjfa22_com_ven_ext_pais] [nvarchar](50) NOT NULL,
	[pjfa22_serv_custodia] [nvarchar](50) NOT NULL,
	[pjfa22_aport_capital] [nvarchar](50) NOT NULL,
	[pjfa22_moneda_inver] [nvarchar](50) NOT NULL,
	[pjfa22_monto_alta] [nvarchar](100) NOT NULL,
	[pjfa22_monto_bajo] [nvarchar](100) NOT NULL,
	[pjfa22_recurso_inver] [nvarchar](50) NOT NULL,
	[pjfa22_recurso_observa] [nvarchar](150) NOT NULL,
	[pja22_origen_recurso] [nvarchar](50) NOT NULL,
	[pjfa22_origen_detalle] [nvarchar](150) NOT NULL,
	[pjfa22_apre_capital] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_monedas]    Script Date: 27/11/2018 17:39:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_monedas](
	[codigo] [nvarchar](10) NOT NULL,
	[descripcion] [nvarchar](150) NOT NULL,
	[estado] [nchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_monto_prom_inver]    Script Date: 27/11/2018 17:39:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_monto_prom_inver](
	[codigo] [nvarchar](2) NOT NULL,
	[descripcion] [nvarchar](150) NOT NULL,
	[estado] [nvarchar](2) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_MovimientoTasas]    Script Date: 27/11/2018 17:39:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_MovimientoTasas](
	[idTasa] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[numeroEmision] [nchar](50) NOT NULL,
	[fechaInicialRevision] [date] NULL,
	[fechaFinalRevision] [date] NULL,
	[tasaNominal] [numeric](18, 4) NULL,
	[fechaAgrego] [date] NULL,
	[tasaReferenciaUtilizada] [nvarchar](50) NULL,
	[tasaAnterior] [numeric](18, 4) NULL,
	[tasaNueva] [numeric](18, 4) NULL,
	[fechaCambio] [date] NULL,
	[usuarioAgrego] [nchar](50) NULL,
 CONSTRAINT [PK_tbl_MovimientoTasas] PRIMARY KEY CLUSTERED 
(
	[idTasa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_nacionalidad]    Script Date: 27/11/2018 17:39:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_nacionalidad](
	[codigo] [nchar](10) NOT NULL,
	[descripcion] [nvarchar](150) NOT NULL,
	[estado] [nchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_orden_compra]    Script Date: 27/11/2018 17:39:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_orden_compra](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tiporden_compra] [nvarchar](50) NOT NULL,
	[fechsoli] [nvarchar](50) NOT NULL,
	[fechliq] [nvarchar](50) NOT NULL,
	[TipOper] [nvarchar](50) NOT NULL,
	[cod_dep_dir] [nvarchar](250) NOT NULL,
	[cod_dep_ind] [nvarchar](250) NOT NULL,
	[nom_completo] [nvarchar](250) NOT NULL,
	[ban_comercial] [nvarchar](250) NOT NULL,
	[num_cuenta] [nvarchar](50) NOT NULL,
	[nom_comp_razon] [nvarchar](250) NOT NULL,
	[emisor] [nvarchar](250) NOT NULL,
	[codigo_isin] [nvarchar](50) NOT NULL,
	[codmoneda] [nvarchar](50) NOT NULL,
	[cant_valores] [nvarchar](50) NOT NULL,
	[vn_valor] [nvarchar](50) NOT NULL,
	[tasa_nominal] [nvarchar](50) NOT NULL,
	[rendimiento] [nvarchar](50) NOT NULL,
	[preciotransado] [nvarchar](50) NOT NULL,
	[mone_liqui] [nvarchar](50) NOT NULL,
	[Plazo] [nvarchar](50) NOT NULL,
	[usuario_graba] [nvarchar](250) NOT NULL,
	[fecha_graba] [datetime] NOT NULL,
	[usuario_veri] [nvarchar](50) NOT NULL,
	[fecha_verifica] [datetime] NOT NULL,
	[codigo_pais] [nvarchar](50) NOT NULL,
	[casa_bolsa] [nvarchar](50) NOT NULL,
	[ban_come_ven] [nvarchar](250) NOT NULL,
	[num_cuen_ven] [nvarchar](50) NOT NULL,
	[valor_tranzado] [nvarchar](50) NOT NULL,
	[num_boleta] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Orden_Judicial]    Script Date: 27/11/2018 17:39:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Orden_Judicial](
	[idOrdenJudicial] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[nombreTitular] [nvarchar](100) NULL,
	[identidadTitular] [nvarchar](20) NULL,
	[rtnTitular] [nvarchar](20) NULL,
	[nombreBeneficiario] [nvarchar](100) NULL,
	[identidadBeneficiario] [nvarchar](20) NULL,
	[rtnBeneficiario] [nvarchar](20) NULL,
	[numeroCuentaCedente] [nvarchar](50) NULL,
	[numeroCuentaCesionario] [nvarchar](50) NULL,
	[cantidadValores] [numeric](18, 0) NULL,
	[valorNominal] [numeric](18, 2) NULL,
	[estado] [numeric](18, 0) NULL,
	[numeroEmision] [nvarchar](50) NULL,
	[numeroColocacionAfectar] [nvarchar](50) NULL,
	[usuarioAgrego] [nvarchar](50) NULL,
	[fechaAgrego] [datetime] NULL,
	[usuarioModifico] [nvarchar](50) NULL,
	[fechaModifico] [datetime] NULL,
	[numeroBoleta] [nvarchar](50) NULL,
	[codigoCliente] [nvarchar](50) NULL,
	[ip] [nvarchar](50) NULL,
	[numeroOperacionBCV] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_origen_recurso]    Script Date: 27/11/2018 17:39:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_origen_recurso](
	[codigo] [nvarchar](2) NOT NULL,
	[descripcion] [nvarchar](250) NOT NULL,
	[estado] [nvarchar](2) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_otorum]    Script Date: 27/11/2018 17:39:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_otorum](
	[id] [int] NOT NULL,
	[usuario] [varchar](50) NOT NULL,
	[nombre_usuario] [varchar](50) NOT NULL,
	[Identidad] [varchar](13) NOT NULL,
	[contrasena] [varchar](max) NOT NULL,
	[correo_usu] [nvarchar](50) NOT NULL,
	[correo_auto] [nvarchar](50) NOT NULL,
	[cod_perfil] [nvarchar](50) NOT NULL,
	[codigo_cb] [nvarchar](50) NOT NULL,
	[conexion] [varchar](50) NOT NULL,
	[intentos] [varchar](2) NOT NULL,
	[bloqueo] [varchar](2) NOT NULL,
	[nivel_acceso] [nvarchar](2) NOT NULL,
	[estado] [varchar](50) NOT NULL,
	[fecha_creacion] [varchar](50) NOT NULL,
	[usuario_creador] [varchar](50) NOT NULL,
	[fecha_modificacion] [varchar](50) NOT NULL,
	[usuario_modificador] [varchar](50) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_otorum_perf]    Script Date: 27/11/2018 17:39:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_otorum_perf](
	[id] [int] NOT NULL,
	[codigo] [nvarchar](50) NOT NULL,
	[sigla] [nvarchar](50) NOT NULL,
	[descripcion] [nvarchar](150) NOT NULL,
	[fechagrab] [nvarchar](50) NOT NULL,
	[usugraba] [nvarchar](50) NOT NULL,
	[fechamodi] [nvarchar](50) NOT NULL,
	[usumodi] [nchar](10) NOT NULL,
	[estado_perf] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_paises]    Script Date: 27/11/2018 17:39:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_paises](
	[codigo] [nchar](10) NOT NULL,
	[pais] [nvarchar](550) NOT NULL,
	[capital] [nvarchar](550) NOT NULL,
	[continente] [nvarchar](250) NOT NULL,
	[estado] [nchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_parametros]    Script Date: 27/11/2018 17:39:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_parametros](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [nvarchar](50) NOT NULL,
	[valor] [nvarchar](50) NOT NULL,
	[estado] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_parentesco]    Script Date: 27/11/2018 17:39:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_parentesco](
	[codigo] [nchar](10) NOT NULL,
	[descripcion] [nvarchar](200) NOT NULL,
	[estado] [nchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Partida]    Script Date: 27/11/2018 17:39:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Partida](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[numeroPartida] [numeric](18, 0) NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
	[fecha] [date] NOT NULL,
	[usuarioAgrego] [nvarchar](50) NOT NULL,
	[fechaAgrego] [datetime] NOT NULL,
	[usuarioModifico] [nvarchar](50) NULL,
	[fechaModifico] [datetime] NULL,
	[contrato] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tbl_Partida] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_partida_Detalle]    Script Date: 27/11/2018 17:39:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_partida_Detalle](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[numeroPartida] [numeric](18, 0) NOT NULL,
	[cuenta] [numeric](18, 0) NOT NULL,
	[montoDebe] [numeric](18, 4) NULL,
	[montoHaber] [numeric](18, 4) NULL,
	[usuarioAgrego] [nvarchar](50) NOT NULL,
	[fechaAgrego] [datetime] NOT NULL,
	[UsuarioModifico] [nvarchar](50) NULL,
	[fechaModifico] [datetime] NULL,
	[descripcion] [nvarchar](50) NULL,
	[contrato] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tbl_partida_Detalle] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_PEP]    Script Date: 27/11/2018 17:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_PEP](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[numcontrato] [nvarchar](50) NOT NULL,
	[codigocliente] [nvarchar](50) NOT NULL,
	[nombre1] [nvarchar](250) NOT NULL,
	[nombre2] [nvarchar](250) NOT NULL,
	[apellido1] [nvarchar](250) NOT NULL,
	[apellido2] [nvarchar](250) NOT NULL,
	[posi_cargo] [nvarchar](250) NOT NULL,
	[porc_de_empresa] [nvarchar](50) NOT NULL,
	[nombre_empresa] [nvarchar](250) NOT NULL,
	[nac_pre_3_poderes] [nvarchar](50) NOT NULL,
	[extr_pre_3_poderes] [nvarchar](50) NOT NULL,
	[consa_prim_grado] [nvarchar](50) NOT NULL,
	[consa_seg_grado] [nvarchar](50) NOT NULL,
	[afin_prim_grado] [nvarchar](50) NOT NULL,
	[afin_seg_grado] [nvarchar](50) NOT NULL,
	[usuario_graba] [nvarchar](50) NOT NULL,
	[fecha_graba] [datetime] NOT NULL,
	[usuario_veri] [nvarchar](50) NOT NULL,
	[fecha_verifica] [datetime] NOT NULL,
	[codigo_pais] [nvarchar](50) NOT NULL,
	[casa_bolsa] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_PEP_Rel_consa]    Script Date: 27/11/2018 17:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_PEP_Rel_consa](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pnfa21_numcontrato] [nvarchar](50) NOT NULL,
	[pnfa21_codcliente] [nvarchar](50) NOT NULL,
	[pnfa21_nombrecompleto] [nvarchar](250) NOT NULL,
	[pnfa21_codparestes] [nvarchar](50) NOT NULL,
	[pnfa21_identidad] [nvarchar](50) NOT NULL,
	[pnfa21_domicilio] [nvarchar](250) NOT NULL,
	[usuario_graba] [nvarchar](50) NOT NULL,
	[fecha_graba] [datetime] NOT NULL,
	[usuario_veri] [nvarchar](50) NOT NULL,
	[fecha_verifica] [datetime] NOT NULL,
	[codigo_pais] [nvarchar](50) NOT NULL,
	[casa_bolsa] [nvarchar](50) NOT NULL,
	[estado_registro] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_perfil_inver]    Script Date: 27/11/2018 17:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_perfil_inver](
	[codigo] [nvarchar](2) NOT NULL,
	[descripcion] [nvarchar](50) NOT NULL,
	[estado] [nvarchar](2) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_PJ_consejoadm]    Script Date: 27/11/2018 17:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_PJ_consejoadm](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[numcontrato] [nvarchar](50) NOT NULL,
	[pjfa22_nombre] [nvarchar](150) NOT NULL,
	[pjfa22_tipoid] [nchar](10) NOT NULL,
	[pjfa22_numeroid] [nvarchar](50) NOT NULL,
	[pjfa22_cargo] [nvarchar](150) NOT NULL,
	[pjfa22_personapep] [nchar](10) NOT NULL,
	[usuario_graba] [nvarchar](50) NOT NULL,
	[fecha_graba] [date] NOT NULL,
	[usuario_veri] [nvarchar](50) NOT NULL,
	[fecha_verifica] [date] NOT NULL,
	[codigo_pais] [nchar](10) NOT NULL,
	[casa_bolsa] [nchar](10) NOT NULL,
	[estado_registro] [nchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_PJ_estrupropie]    Script Date: 27/11/2018 17:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_PJ_estrupropie](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[numcontrato] [nvarchar](50) NOT NULL,
	[pjfa22_nombre] [nvarchar](150) NOT NULL,
	[pjfa22_nacionalidad] [nchar](10) NOT NULL,
	[pjfa22_numeroacciones] [nchar](10) NOT NULL,
	[pjfa22_tipoid] [nchar](10) NOT NULL,
	[pjfa22_numeroid] [nvarchar](50) NOT NULL,
	[pjfa22_porcentajepartici] [nchar](10) NOT NULL,
	[pjfa22_direcciondomi] [nvarchar](150) NOT NULL,
	[pjfa22_personapep] [nchar](10) NOT NULL,
	[usuario_graba] [nvarchar](50) NOT NULL,
	[fecha_graba] [datetime] NOT NULL,
	[usuario_veri] [nvarchar](50) NOT NULL,
	[fecha_verifica] [datetime] NOT NULL,
	[codigo_pais] [nchar](10) NOT NULL,
	[casa_bolsa] [nchar](10) NOT NULL,
	[estado_registro] [nchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_PN_bene]    Script Date: 27/11/2018 17:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_PN_bene](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pnfa21_numcontrato] [nvarchar](50) NOT NULL,
	[pnfa21_codcliente] [nvarchar](50) NOT NULL,
	[pnfa21_nombrecompleto] [nvarchar](150) NOT NULL,
	[pnfa21_codparestes] [nvarchar](50) NOT NULL,
	[pnfa21_porcentaje] [nvarchar](50) NOT NULL,
	[usuario_graba] [nvarchar](50) NOT NULL,
	[fecha_graba] [datetime] NOT NULL,
	[usuario_veri] [nvarchar](50) NOT NULL,
	[fecha_verifica] [datetime] NOT NULL,
	[codigo_pais] [nvarchar](50) NOT NULL,
	[casa_bolsa] [nvarchar](50) NOT NULL,
	[estado_registro] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_PN_refe]    Script Date: 27/11/2018 17:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_PN_refe](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[numcontrato] [nvarchar](50) NOT NULL,
	[pnfa21_numcontrato] [nvarchar](50) NOT NULL,
	[pnfa21_nombrecompleto] [nvarchar](150) NOT NULL,
	[pnfa21_nombrecontacto] [nvarchar](150) NOT NULL,
	[pnfa21_numerotelefono] [nvarchar](50) NOT NULL,
	[usuario_graba] [nvarchar](50) NOT NULL,
	[fecha_graba] [datetime] NOT NULL,
	[usuario_veri] [nvarchar](50) NOT NULL,
	[fecha_verifica] [datetime] NOT NULL,
	[codigo_pais] [nchar](10) NOT NULL,
	[casa_bolsa] [nchar](10) NOT NULL,
	[estado_registro] [nchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Puestos_Bolsa]    Script Date: 27/11/2018 17:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Puestos_Bolsa](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sigla] [nvarchar](50) NOT NULL,
	[nombrecasa] [nvarchar](150) NOT NULL,
	[direccion] [nvarchar](250) NOT NULL,
	[num_tel] [nvarchar](50) NOT NULL,
	[num_fax] [nvarchar](50) NOT NULL,
	[num_apartado] [nvarchar](50) NOT NULL,
	[nombre_gerente] [nvarchar](150) NOT NULL,
	[correo_gerente] [nvarchar](50) NOT NULL,
	[estado] [nvarchar](50) NOT NULL,
	[coord_x_space] [nvarchar](50) NOT NULL,
	[coord_y_space] [nvarchar](50) NOT NULL,
	[coord_z_space] [nvarchar](50) NOT NULL,
	[cod_swift] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_rangos]    Script Date: 27/11/2018 17:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_rangos](
	[codigo] [nchar](10) NOT NULL,
	[descripcion] [nvarchar](250) NOT NULL,
	[estado] [nchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_recurso_inver]    Script Date: 27/11/2018 17:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_recurso_inver](
	[codigo] [nvarchar](2) NOT NULL,
	[descripcion] [nvarchar](250) NOT NULL,
	[estado] [nvarchar](2) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_sector_listadoadicional]    Script Date: 27/11/2018 17:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_sector_listadoadicional](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_gestion] [nvarchar](50) NOT NULL,
	[id_sector] [nvarchar](50) NOT NULL,
	[id_casabolsa] [nvarchar](50) NOT NULL,
	[cod_usur] [nvarchar](50) NOT NULL,
	[id_tipoinfo] [nvarchar](50) NOT NULL,
	[descripcion] [nvarchar](150) NOT NULL,
	[id_estadoactual] [nvarchar](50) NOT NULL,
	[fecha_grabacion] [nvarchar](50) NOT NULL,
	[estado_reg] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_sector_publico]    Script Date: 27/11/2018 17:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_sector_publico](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_gestion] [nvarchar](50) NOT NULL,
	[opc1_1] [nvarchar](50) NOT NULL,
	[opc1_2] [nvarchar](50) NOT NULL,
	[opc2_1] [nvarchar](50) NOT NULL,
	[opc2_2] [nvarchar](50) NOT NULL,
	[opc2_3] [nvarchar](50) NOT NULL,
	[opc2_4] [nvarchar](50) NOT NULL,
	[opc2_5] [nvarchar](50) NOT NULL,
	[opc2_6] [nvarchar](50) NOT NULL,
	[opc2_7] [nvarchar](50) NOT NULL,
	[opc2_8] [nvarchar](50) NOT NULL,
	[opc3_1] [nvarchar](50) NOT NULL,
	[opc3_2] [nvarchar](50) NOT NULL,
	[opc3_3] [nvarchar](50) NOT NULL,
	[opc3_4] [nvarchar](50) NOT NULL,
	[opc3_5] [nvarchar](50) NOT NULL,
	[opc3_6] [nvarchar](50) NOT NULL,
	[opc3_7] [nvarchar](50) NOT NULL,
	[opc3_8] [nvarchar](50) NOT NULL,
	[opc3_9] [nvarchar](50) NOT NULL,
	[opc3_10] [nvarchar](50) NOT NULL,
	[opc3_11] [nvarchar](50) NOT NULL,
	[opc4_1] [nvarchar](50) NOT NULL,
	[opc4_2] [nvarchar](50) NOT NULL,
	[opc5_1] [nvarchar](50) NOT NULL,
	[opc5_2] [nvarchar](50) NOT NULL,
	[opc6_1] [nvarchar](50) NOT NULL,
	[opc6_2] [nvarchar](50) NOT NULL,
	[opc7_1] [nvarchar](50) NOT NULL,
	[opc7_2] [nvarchar](50) NOT NULL,
	[opc8_1] [nvarchar](50) NOT NULL,
	[opc8_2] [nvarchar](50) NOT NULL,
	[opc9_1] [nvarchar](50) NOT NULL,
	[opc9_2] [nvarchar](50) NOT NULL,
	[opc10_1] [nvarchar](50) NOT NULL,
	[opc10_2] [nvarchar](50) NOT NULL,
	[opc11_1] [nvarchar](50) NOT NULL,
	[SEPRI14_1] [nvarchar](50) NOT NULL,
	[SEPRI14_2] [nvarchar](50) NOT NULL,
	[SEPRI2_1] [nvarchar](50) NOT NULL,
	[SEPRI2_2] [nvarchar](50) NOT NULL,
	[SEPRI3_1] [nvarchar](50) NOT NULL,
	[SEPRI3_2] [nvarchar](50) NOT NULL,
	[SEPRI4_1] [nvarchar](50) NOT NULL,
	[SEPRI4_2] [nvarchar](50) NOT NULL,
	[SEPRI5_1] [nvarchar](50) NOT NULL,
	[SEPRI5_2] [nvarchar](50) NOT NULL,
	[SEPRI5_3] [nvarchar](50) NOT NULL,
	[SEPRI5_4] [nvarchar](50) NOT NULL,
	[SEPRI6_1] [nvarchar](50) NOT NULL,
	[SEPRI6_2] [nvarchar](50) NOT NULL,
	[FDI11_1] [nvarchar](50) NOT NULL,
	[FDI11_2] [nvarchar](50) NOT NULL,
	[FDI10_1] [nvarchar](50) NOT NULL,
	[FDI10_2] [nvarchar](50) NOT NULL,
	[FDI9_1] [nvarchar](50) NOT NULL,
	[FDI9_2] [nvarchar](50) NOT NULL,
	[FDI8_1] [nvarchar](50) NOT NULL,
	[FDI8_2] [nvarchar](50) NOT NULL,
	[FDI4_1] [nvarchar](50) NOT NULL,
	[FDI4_2] [nvarchar](50) NOT NULL,
	[FDI3_1] [nvarchar](50) NOT NULL,
	[FDI3_2] [nvarchar](50) NOT NULL,
	[id_sector] [nvarchar](50) NOT NULL,
	[cod_usu] [nvarchar](50) NOT NULL,
	[casabolsa] [nvarchar](50) NOT NULL,
	[fecha_grabacion] [nvarchar](50) NOT NULL,
	[estado_revision] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_sexo]    Script Date: 27/11/2018 17:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_sexo](
	[codigo] [nchar](10) NOT NULL,
	[descripcion] [nvarchar](50) NOT NULL,
	[estado] [nchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_soliregistro]    Script Date: 27/11/2018 17:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_soliregistro](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fechasolicitud] [nvarchar](50) NOT NULL,
	[coddeposidirecto] [nvarchar](50) NOT NULL,
	[razonsocial] [nvarchar](150) NOT NULL,
	[domiciliolegal] [nvarchar](150) NOT NULL,
	[fechaconstitu] [nvarchar](50) NOT NULL,
	[paisorigen] [nvarchar](50) NOT NULL,
	[codsectorecono] [nvarchar](50) NOT NULL,
	[codactivecono] [nvarchar](50) NOT NULL,
	[codcentrocustodia] [nvarchar](50) NOT NULL,
	[principalproducto] [nvarchar](150) NOT NULL,
	[capitalsocilasub] [numeric](18, 6) NOT NULL,
	[capitalsolpagado] [numeric](18, 6) NOT NULL,
	[capitalsolsubs] [numeric](18, 6) NOT NULL,
	[capitalsocialpagadola] [numeric](18, 6) NOT NULL,
	[sectorindu] [nvarchar](50) NOT NULL,
	[sectorfina] [nvarchar](50) NOT NULL,
	[sectorfonpen] [nvarchar](50) NOT NULL,
	[codigoisin] [nvarchar](50) NOT NULL,
	[tipoinstru] [nvarchar](50) NOT NULL,
	[fechaemi] [nvarchar](50) NOT NULL,
	[fechavenci] [nvarchar](50) NOT NULL,
	[codformarepre] [nvarchar](50) NOT NULL,
	[codmoneda] [nvarchar](50) NOT NULL,
	[valornominal] [numeric](18, 6) NOT NULL,
	[montoemi] [numeric](18, 6) NOT NULL,
	[montocoloca] [numeric](18, 6) NOT NULL,
	[interesaplicable] [nvarchar](50) NOT NULL,
	[codtipointerest] [nvarchar](50) NOT NULL,
	[fechapagointer] [nvarchar](50) NOT NULL,
	[mecanismonegocia] [nvarchar](50) NOT NULL,
	[tienefrma] [nvarchar](50) NOT NULL,
	[tienesellos] [nvarchar](50) NOT NULL,
	[datosrecepbcv] [nvarchar](50) NOT NULL,
	[inclusello] [nvarchar](50) NOT NULL,
	[codinterno] [nvarchar](50) NOT NULL,
	[observaciones] [nvarchar](max) NOT NULL,
	[estadosolici] [nvarchar](50) NOT NULL,
	[estadoproceso] [nvarchar](50) NOT NULL,
	[codusuario] [nvarchar](50) NOT NULL,
	[fechagrabacion] [datetime] NOT NULL,
	[equipocliente] [nvarchar](150) NOT NULL,
	[codcb] [nvarchar](50) NOT NULL,
	[valid_interes] [nvarchar](50) NOT NULL,
	[tipo_periodi] [nvarchar](50) NOT NULL,
	[notifecha] [nvarchar](50) NULL,
	[fechalimipag] [nvarchar](50) NULL,
	[estadopag] [nvarchar](50) NULL,
	[registrado_bcvn] [nvarchar](50) NULL,
	[fecharegbcvsis] [nvarchar](50) NULL,
	[tipoarmorti] [nvarchar](50) NULL,
	[amortiperiodi] [nvarchar](50) NULL,
	[fechaamorti] [nvarchar](50) NULL,
	[fechapago1] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tbl_soliregistro] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Sucesion_Division]    Script Date: 27/11/2018 17:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Sucesion_Division](
	[idSucesionDivision] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[numeroCuentaTitular] [nvarchar](50) NULL,
	[numeroOperacionBCV] [nvarchar](50) NULL,
	[fechaSucesionDivision] [date] NULL,
	[numeroCuentaCedente] [nvarchar](50) NULL,
	[numeroCuentaCesionario] [nvarchar](50) NULL,
	[cantidadValores] [numeric](18, 0) NULL,
	[valorNominal] [numeric](18, 0) NULL,
	[nombreTitilarOriginal] [nvarchar](100) NULL,
	[nombreNuevoTitular] [nvarchar](100) NULL,
	[identidad] [nvarchar](20) NULL,
	[nacionalidad] [nvarchar](50) NULL,
	[telefono] [nvarchar](20) NULL,
	[estado] [numeric](18, 0) NULL,
	[numeroEmision] [nvarchar](50) NULL,
	[numeroColocacion] [nvarchar](50) NULL,
	[numeroBoleta] [nvarchar](50) NULL,
	[usuarioAgrego] [nvarchar](50) NULL,
	[fechaAgrego] [datetime] NULL,
	[usuarioModifico] [nvarchar](50) NULL,
	[fechaModifico] [datetime] NULL,
	[codigoCliente] [nvarchar](50) NULL,
	[ip] [nvarchar](50) NULL,
	[fechaSolicitud] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_tipo_act_econo]    Script Date: 27/11/2018 17:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_tipo_act_econo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codigo] [nvarchar](50) NOT NULL,
	[descripcion] [nvarchar](150) NOT NULL,
	[codigo_sectoreco] [nvarchar](50) NOT NULL,
	[estado] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_tipo_bancos]    Script Date: 27/11/2018 17:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_tipo_bancos](
	[codigo] [nvarchar](50) NOT NULL,
	[descripcion] [nvarchar](250) NOT NULL,
	[estado] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_tipo_calificador]    Script Date: 27/11/2018 17:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_tipo_calificador](
	[codigo] [numeric](18, 0) IDENTITY(0,1) NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
	[Calificacion] [nvarchar](50) NOT NULL,
	[estado] [numeric](18, 0) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_tipo_conceptopago]    Script Date: 27/11/2018 17:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_tipo_conceptopago](
	[codigo] [nvarchar](50) NOT NULL,
	[descripcion] [nchar](250) NOT NULL,
	[estado] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_tipo_depositaria]    Script Date: 27/11/2018 17:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_tipo_depositaria](
	[id] [int] NOT NULL,
	[codigo] [nvarchar](50) NOT NULL,
	[descripcion] [nvarchar](150) NOT NULL,
	[detalle] [nvarchar](250) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[direccion] [nvarchar](150) NOT NULL,
	[codpais] [nvarchar](50) NOT NULL,
	[estado] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_tipo_formapago]    Script Date: 27/11/2018 17:39:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_tipo_formapago](
	[codigo] [nvarchar](50) NOT NULL,
	[descripcion] [nvarchar](150) NOT NULL,
	[estado] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_tipo_formareprese]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_tipo_formareprese](
	[codigo] [nvarchar](50) NOT NULL,
	[descripcion] [nvarchar](150) NOT NULL,
	[estado] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_tipo_identificacion]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_tipo_identificacion](
	[codigo] [nchar](2) NOT NULL,
	[descripcion] [nvarchar](50) NOT NULL,
	[estado] [nchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_tipo_instrumento]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_tipo_instrumento](
	[codigo] [nvarchar](50) NOT NULL,
	[descripcion] [nvarchar](150) NOT NULL,
	[estado] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_tipo_interes]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_tipo_interes](
	[codigo] [nvarchar](50) NOT NULL,
	[descripcion] [nvarchar](150) NOT NULL,
	[estado] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_tipo_inversionista]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_tipo_inversionista](
	[codigo] [nchar](10) NOT NULL,
	[descripcion] [nvarchar](150) NOT NULL,
	[estado] [nchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_tipo_mecanismo_nego]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_tipo_mecanismo_nego](
	[codigo] [nvarchar](50) NOT NULL,
	[descripcion] [nvarchar](150) NOT NULL,
	[estado] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Tipo_Operacion]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Tipo_Operacion](
	[codigo] [nchar](10) NULL,
	[descripcion] [nvarchar](50) NULL,
	[estado] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_tipo_perfgestion]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_tipo_perfgestion](
	[codigo] [nvarchar](50) NOT NULL,
	[descripcion] [nvarchar](50) NOT NULL,
	[estado] [nchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_tipo_periodicidad]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_tipo_periodicidad](
	[codigo] [nvarchar](50) NOT NULL,
	[descripcion] [nvarchar](50) NOT NULL,
	[valor] [nvarchar](50) NULL,
	[estado] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_tipo_rubro]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_tipo_rubro](
	[codigo] [nchar](10) NOT NULL,
	[descripcion] [nvarchar](250) NOT NULL,
	[estado] [nchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_tipo_sectoeco]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_tipo_sectoeco](
	[codigo] [nchar](2) NOT NULL,
	[descripcion] [nvarchar](150) NOT NULL,
	[estado] [nchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_tipo_solicitante]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_tipo_solicitante](
	[codigo] [nchar](10) NULL,
	[descripcion] [nvarchar](50) NULL,
	[estado] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Tolerancia_riesgo]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Tolerancia_riesgo](
	[codigo] [nvarchar](2) NOT NULL,
	[descripcion] [nvarchar](150) NOT NULL,
	[estado] [nvarchar](2) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Transacciones_Intereses]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Transacciones_Intereses](
	[idTransaccion] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[numeroContrato] [varchar](50) NOT NULL,
	[tasa] [numeric](18, 4) NOT NULL,
	[monto] [numeric](18, 4) NOT NULL,
	[interesDiario] [numeric](18, 4) NOT NULL,
	[fechaCalculo] [date] NOT NULL,
	[fechaHoraGenero] [datetime] NULL,
 CONSTRAINT [PK_Tbl_Transacciones_Intereses] PRIMARY KEY CLUSTERED 
(
	[idTransaccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_workflow]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_workflow](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fechaenvio] [datetime] NOT NULL,
	[idsolicitud] [nvarchar](50) NOT NULL,
	[codusur] [nvarchar](50) NOT NULL,
	[codestado] [nvarchar](50) NOT NULL,
	[codestadoreque] [nvarchar](50) NOT NULL,
	[emaildesti] [nvarchar](50) NOT NULL,
	[codusudestino] [nvarchar](50) NOT NULL,
	[observaciones] [nvarchar](150) NOT NULL,
	[fecharecepcion] [datetime] NOT NULL,
	[estadoworkflow] [nvarchar](50) NOT NULL,
	[nombremaquina] [nvarchar](150) NOT NULL,
	[estadoreg] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Tbl_Emisiones] ADD  CONSTRAINT [DF_Tbl_Emisiones_tasa]  DEFAULT ((0)) FOR [tasa]
GO
/****** Object:  StoredProcedure [dbo].[CARGA_WORFLOW]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CARGA_WORFLOW]
	-- Add the parameters for the stored procedure here
      @id nvarchar(50),
      @id_cod nvarchar(50),
      @id_acceso nvarchar(50),
      @id_CB  nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
IF @id ='1' and @id_cod='Z'  -- AUTOZACIONES CASA DE BOLSA
	
		IF @id_acceso=99
				SELECT			     
				  a.fechaenvio
				  ,a.idsolicitud
				  ,a.codusur
				  ,c.descripcionestado as codestado
				  ,b.descripcion as codestadoreque
				   ,d.descripcion  as codusudestino --a.codusudestino
				  ,case a.estadoworkflow  when 1 then 'En espera de lectura' WHEN 2 THEN 'Ya fue Leido' WHEN 3 THEN 'Notificado' WHEN 4 THEN 'Atendido'  END as estadoworkflow
				  ,a.fecharecepcion
			      
			  FROM [BCVE].[dbo].[Tbl_workflow] a,BCVE.dbo.Tbl_estado_proceso b,[BCVE].[dbo].[Tbl_estadofinalsolici] c,Tbl_tipo_perfgestion d
			  where a.codestadoreque=b.codigo and
					c.codigo=a.codestado and b.codigo=1 AND a.estadoreg='1' and a.codusudestino= d.codigo
		     ORDER BY a.id
		ELSE
			SELECT
		
				  a.fechaenvio
				  ,a.idsolicitud
				  ,a.codusur
				  ,c.descripcionestado as codestado
				  ,b.descripcion as codestadoreque
				   ,e.descripcion  as codusudestino --a.codusudestino
				  ,case a.estadoworkflow  when 1 then 'En espera de lectura' WHEN 2 THEN 'Ya fue Leido' WHEN 3 THEN 'Notificado' WHEN 4 THEN 'Atendido'  END as estadoworkflow
				  ,a.fecharecepcion
			      
			  FROM [BCVE].[dbo].[Tbl_workflow] a,BCVE.dbo.Tbl_estado_proceso b,[BCVE].[dbo].[Tbl_estadofinalsolici] c, Tbl_soliregistro d,Tbl_tipo_perfgestion e
			  where a.codestadoreque=b.codigo and
					c.codigo=a.codestado and b.codigo=1 AND a.estadoreg='1' and a.idsolicitud=d.id and d.codcb=@id_CB and a.codusudestino= e.codigo
	                ORDER BY a.id
	

ELSE
		IF @id ='2'  -- SEGUIMIENTO DE LAS GESTIONES
			IF @id_acceso=99
				SELECT
			     
				  a.fechaenvio
				  ,a.idsolicitud
				  ,a.codusur
				  ,c.descripcionestado as codestado
				  ,b.descripcion as codestadoreque
				  ,d.descripcion  as codusudestino --a.codusudestino
				  ,case a.estadoworkflow  when 1 then 'En espera de lectura' WHEN 2 THEN 'Ya fue Leido' WHEN 3 THEN 'Notificado' WHEN 4 THEN 'Atendido' END as estadoworkflow
				  ,a.fecharecepcion
			      
			  FROM [BCVE].[dbo].[Tbl_workflow] a,BCVE.dbo.Tbl_estado_proceso b,[BCVE].[dbo].[Tbl_estadofinalsolici] c,Tbl_tipo_perfgestion d
			  where a.codestadoreque=b.codigo and
					c.codigo=a.codestado and a.codusudestino= d.codigo and rtrim(ltrim(a.idsolicitud))=@id_cod
					ORDER BY a.id
			ELSE	

			SELECT		     
				  a.fechaenvio
				  ,a.idsolicitud
				  ,a.codusur
				  ,c.descripcionestado as codestado
				  ,b.descripcion as codestadoreque
				  ,d.descripcion  as codusudestino --a.codusudestino
				  ,case a.estadoworkflow  when 1 then 'En espera de lectura' WHEN 2 THEN 'Ya fue Leido' WHEN 3 THEN 'Notificado' WHEN 4 THEN 'Atendido'  END as estadoworkflow
				  ,a.fecharecepcion
			      
			  FROM [BCVE].[dbo].[Tbl_workflow] a,BCVE.dbo.Tbl_estado_proceso b,[BCVE].[dbo].[Tbl_estadofinalsolici] c,Tbl_tipo_perfgestion d, Tbl_soliregistro e
			  where a.codestadoreque=b.codigo and
				c.codigo=a.codestado and a.codusudestino= d.codigo and rtrim(ltrim(a.idsolicitud))=@id_cod and a.idsolicitud=e.id and e.codcb=@id_CB 
   
					ORDER BY a.id


	 IF @id ='7'	-- GESTIONES PARA EL AUTORIZADOR BCV		
					SELECT
				  a.fechaenvio
				  ,a.idsolicitud
				  ,a.codusur
				  ,c.descripcionestado as codestado
				  ,b.descripcion as codestadoreque
				  ,d.descripcion  as codusudestino --a.codusudestino
				  ,case a.estadoworkflow  when 1 then 'En espera de lectura' WHEN 2 THEN 'Ya fue Leido' WHEN 3 THEN 'Notificado' WHEN 4 THEN 'Atendido' END as estadoworkflow
				  ,a.fecharecepcion
			      ,f.sigla
			  FROM [BCVE].[dbo].[Tbl_workflow] a,BCVE.dbo.Tbl_estado_proceso b,[BCVE].[dbo].[Tbl_estadofinalsolici] c, Tbl_tipo_perfgestion d, Tbl_soliregistro e, Tbl_Puestos_Bolsa f
			  where a.codestadoreque=b.codigo and
					c.codigo=a.codestado and a.estadoreg=1 and a.codestadoreque=7 and a.codusudestino= d.codigo and a.idsolicitud=e.id and e.codcb=f.id
	                ORDER BY a.id
 IF @id ='8'	-- Departamento de Operaciones lista para el pago de registro	
				--SELECT
				--  a.fechaenvio
				--  ,a.idsolicitud
				--  ,a.codusur
				--  ,c.descripcionestado as codestado
				--  ,b.descripcion as codestadoreque
				--  ,d.descripcion  as codusudestino --a.codusudestino
				--  ,case a.estadoworkflow  when 1 then 'En espera de lectura' WHEN 2 THEN 'Ya fue Leido' WHEN 3 THEN 'Notificado' WHEN 4 THEN 'Atendido' END as estadoworkflow
				--  ,a.fecharecepcion
			 --     ,f.sigla
			 -- FROM [BCVE].[dbo].[Tbl_workflow] a,BCVE.dbo.Tbl_estado_proceso b,[BCVE].[dbo].[Tbl_estadofinalsolici] c, Tbl_tipo_perfgestion d, Tbl_soliregistro e, Tbl_Puestos_Bolsa f
			 -- where a.codestadoreque=b.codigo and
				--	c.codigo=a.codestado and a.estadoreg=1 and a.codestadoreque=8 and a.codusudestino= d.codigo and a.idsolicitud=e.id and e.codcb=f.id
	   --             ORDER BY a.id
	          	SELECT
				  a.fechaenvio
				  ,a.idsolicitud
				  ,a.codusur
				  ,c.descripcionestado as codestado
				  ,b.descripcion as codestadoreque
				  ,d.descripcion  as codusudestino --a.codusudestino
				  ,case a.estadoworkflow  when 1 then 'En espera de lectura' WHEN 2 THEN 'Ya fue Leido' WHEN 3 THEN 'Notificado' WHEN 4 THEN 'Atendido' END as estadoworkflow
				  ,a.fecharecepcion
			      ,f.sigla
			      
			  FROM Tbl_workflow a,Tbl_estado_proceso b,Tbl_estadofinalsolici c, Tbl_tipo_perfgestion d, Tbl_soliregistro e, Tbl_Puestos_Bolsa f, Tbl_soliregistro g
			  
			  where a.codestadoreque=b.codigo and
					c.codigo=a.codestado and a.estadoreg=1 and a.codestadoreque=8 and a.codusudestino= d.codigo and a.idsolicitud=e.id and e.codcb=f.id
	                AND g.id=a.idsolicitud AND g.estadopag=0 AND len(ltrim(rtrim(g.notifecha)))>0 AND len(ltrim(rtrim(g.fechalimipag)))>0
	         
	          ORDER BY a.id



 IF @id ='9'	-- Departamento de Operaciones, carga detalle de datos
 
		
		    SELECT
				  a.fechaenvio
				  ,a.idsolicitud
				  ,a.codusur
				  ,c.descripcionestado as codestado
				  ,b.descripcion as codestadoreque
				  ,d.descripcion  as codusudestino --a.codusudestino
				  ,case a.estadoworkflow  when 1 then 'En espera de lectura' WHEN 2 THEN 'Ya fue Leido' WHEN 3 THEN 'Notificado' WHEN 4 THEN 'Atendido' END as estadoworkflow
				  ,a.fecharecepcion
			      ,f.sigla
			      
			  FROM Tbl_workflow a,Tbl_estado_proceso b,Tbl_estadofinalsolici c, Tbl_tipo_perfgestion d, Tbl_soliregistro e, Tbl_Puestos_Bolsa f, Tbl_soliregistro g
			  
			  where a.codestadoreque=b.codigo and
					c.codigo=a.codestado and a.estadoreg=1 and a.codestadoreque=9 and a.codusudestino= d.codigo and a.idsolicitud=e.id and e.codcb=f.id
	                AND g.id=a.idsolicitud AND g.estadopag=1 AND len(ltrim(rtrim(g.notifecha)))>0 AND len(ltrim(rtrim(g.fechalimipag)))>0 AND G.estadopag=1 and g.registrado_bcvn=0
	         
	          ORDER BY a.id


IF @ID='10'
	         SELECT a.id,a.codigoisin,a.fechaemi,a.fechavenci,a.codmoneda,a.valornominal,a.montoemi,a.montocoloca,a.interesaplicable,a.codtipointerest,a.fechapagointer,a.codcb,a.valid_interes,a.tipo_periodi,a.tipoarmorti,a.amortiperiodi,a.fechaamorti,a.mecanismonegocia,a.tipoinstru,a.codformarepre,b.sigla,a.razonsocial
	         FROM dbo.Tbl_soliregistro a, Tbl_Puestos_Bolsa b
	         WHERE a.id=@id_cod AND a.codcb=b.id


	   ELSE  -- GESTIONES PARA EL OFICIAL DE CUMPLIMIENTO

				SELECT
				  a.fechaenvio
				  ,a.idsolicitud
				  ,a.codusur
				  ,c.descripcionestado as codestado
				  ,b.descripcion as codestadoreque
				  ,d.descripcion  as codusudestino --a.codusudestino
				  ,case a.estadoworkflow  when 1 then 'En espera de lectura' WHEN 2 THEN 'Ya fue Leido' WHEN 3 THEN 'Notificado' WHEN 4 THEN 'Atendido' END as estadoworkflow
				  ,a.fecharecepcion
			      ,f.sigla
			  FROM [BCVE].[dbo].[Tbl_workflow] a,BCVE.dbo.Tbl_estado_proceso b,[BCVE].[dbo].[Tbl_estadofinalsolici] c, Tbl_tipo_perfgestion d, Tbl_soliregistro e, Tbl_Puestos_Bolsa f
			  where a.codestadoreque=b.codigo and
					c.codigo=a.codestado and a.estadoreg=1 and a.codestadoreque=6 and a.codusudestino= d.codigo and a.idsolicitud=e.id and e.codcb=f.id
	                ORDER BY a.id


					

END
GO
/****** Object:  StoredProcedure [dbo].[CARGA_WORFLOW1]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[CARGA_WORFLOW1]
	-- Add the parameters for the stored procedure here
      @id nvarchar(50),
      @id_cod nvarchar(50),
      @id_acceso nvarchar(50),
      @id_CB  nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
IF @id ='1' and @id_cod='Z'  -- AUTOZACIONES CASA DE BOLSA
	
		IF @id_acceso=99
				SELECT			     
				  a.fechaenvio
				  ,a.idsolicitud
				  ,a.codusur
				  ,c.descripcionestado as codestado
				  ,b.descripcion as codestadoreque
				   ,d.descripcion  as codusudestino --a.codusudestino
				  ,case a.estadoworkflow  when 1 then 'En espera de lectura' WHEN 2 THEN 'Ya fue Leido' WHEN 3 THEN 'Notificado' WHEN 4 THEN 'Atendido'  END as estadoworkflow
				  ,a.fecharecepcion
			      
			  FROM [BCVE].[dbo].[Tbl_workflow] a,BCVE.dbo.Tbl_estado_proceso b,[BCVE].[dbo].[Tbl_estadofinalsolici] c,Tbl_tipo_perfgestion d
			  where a.codestadoreque=b.codigo and
					c.codigo=a.codestado and b.codigo=1 AND a.estadoreg='1' and a.codusudestino= d.codigo
		     ORDER BY a.id
		ELSE
			SELECT
			     
				  a.fechaenvio
				  ,a.idsolicitud
				  ,a.codusur
				  ,c.descripcionestado as codestado
				  ,b.descripcion as codestadoreque
				   ,e.descripcion  as codusudestino --a.codusudestino
				  ,case a.estadoworkflow  when 1 then 'En espera de lectura' WHEN 2 THEN 'Ya fue Leido' WHEN 3 THEN 'Notificado' WHEN 4 THEN 'Atendido'  END as estadoworkflow
				  ,a.fecharecepcion
			      
			  FROM [BCVE].[dbo].[Tbl_workflow] a,BCVE.dbo.Tbl_estado_proceso b,[BCVE].[dbo].[Tbl_estadofinalsolici] c, Tbl_soliregistro d,Tbl_tipo_perfgestion e
			  where a.codestadoreque=b.codigo and
					c.codigo=a.codestado and b.codigo=1 AND a.estadoreg='1' and a.idsolicitud=d.id and a.idsolicitud=@id_CB and a.codusudestino= e.codigo
	                ORDER BY a.id
	
ELSE
		IF @id ='2'  -- SEGUIMIENTO DE LAS GESTIONES
			IF @id_acceso=99
				SELECT
			     
				  a.fechaenvio
				  ,a.idsolicitud
				  ,a.codusur
				  ,c.descripcionestado as codestado
				  ,b.descripcion as codestadoreque
				  ,d.descripcion  as codusudestino --a.codusudestino
				  ,case a.estadoworkflow  when 1 then 'En espera de lectura' WHEN 2 THEN 'Ya fue Leido' WHEN 3 THEN 'Notificado' WHEN 4 THEN 'Atendido' END as estadoworkflow
				  ,a.fecharecepcion
			      
			  FROM [BCVE].[dbo].[Tbl_workflow] a,BCVE.dbo.Tbl_estado_proceso b,[BCVE].[dbo].[Tbl_estadofinalsolici] c,Tbl_tipo_perfgestion d
			  where a.codestadoreque=b.codigo and
					c.codigo=a.codestado and a.codusudestino= d.codigo and rtrim(ltrim(a.idsolicitud))=@id_cod
					ORDER BY a.id
			ELSE	

			  SELECT		     
				  a.fechaenvio
				  ,a.idsolicitud
				  ,a.codusur
				  ,c.descripcionestado as codestado
				  ,b.descripcion as codestadoreque
				  ,d.descripcion  as codusudestino --a.codusudestino
				  ,case a.estadoworkflow  when 1 then 'En espera de lectura' WHEN 2 THEN 'Ya fue Leido' WHEN 3 THEN 'Notificado' WHEN 4 THEN 'Atendido'  END as estadoworkflow
				  ,a.fecharecepcion
			      
			  FROM [BCVE].[dbo].[Tbl_workflow] a,BCVE.dbo.Tbl_estado_proceso b,[BCVE].[dbo].[Tbl_estadofinalsolici] c,Tbl_tipo_perfgestion d, Tbl_soliregistro e
			  where a.codestadoreque=b.codigo and
					c.codigo=a.codestado and a.codusudestino= d.codigo and rtrim(ltrim(a.idsolicitud))=@id_cod and a.idsolicitud=e.id and a.idsolicitud=@id_CB 
					ORDER BY a.id

	 IF @id ='7'	-- GESTIONES PARA EL AUTORIZADOR BCV		
					SELECT
				  a.fechaenvio
				  ,a.idsolicitud
				  ,a.codusur
				  ,c.descripcionestado as codestado
				  ,b.descripcion as codestadoreque
				  ,d.descripcion  as codusudestino --a.codusudestino
				  ,case a.estadoworkflow  when 1 then 'En espera de lectura' WHEN 2 THEN 'Ya fue Leido' WHEN 3 THEN 'Notificado' WHEN 4 THEN 'Atendido' END as estadoworkflow
				  ,a.fecharecepcion
			      ,f.sigla
			  FROM [BCVE].[dbo].[Tbl_workflow] a,BCVE.dbo.Tbl_estado_proceso b,[BCVE].[dbo].[Tbl_estadofinalsolici] c, Tbl_tipo_perfgestion d, Tbl_soliregistro e, Tbl_Puestos_Bolsa f
			  where a.codestadoreque=b.codigo and
					c.codigo=a.codestado and a.estadoreg=1 and a.codestadoreque=7 and a.codusudestino= d.codigo and a.idsolicitud=e.id and e.codcb=f.id
	                ORDER BY a.id
 IF @id ='8'	-- Departamento de Operaciones		
					SELECT
				  a.fechaenvio
				  ,a.idsolicitud
				  ,a.codusur
				  ,c.descripcionestado as codestado
				  ,b.descripcion as codestadoreque
				  ,d.descripcion  as codusudestino --a.codusudestino
				  ,case a.estadoworkflow  when 1 then 'En espera de lectura' WHEN 2 THEN 'Ya fue Leido' WHEN 3 THEN 'Notificado' WHEN 4 THEN 'Atendido' END as estadoworkflow
				  ,a.fecharecepcion
			      ,f.sigla
			  FROM [BCVE].[dbo].[Tbl_workflow] a,BCVE.dbo.Tbl_estado_proceso b,[BCVE].[dbo].[Tbl_estadofinalsolici] c, Tbl_tipo_perfgestion d, Tbl_soliregistro e, Tbl_Puestos_Bolsa f
			  where a.codestadoreque=b.codigo and
					c.codigo=a.codestado and a.estadoreg=1 and a.codestadoreque=8 and a.codusudestino= d.codigo and a.idsolicitud=e.id and e.codcb=f.id
	                ORDER BY a.id

 IF @id ='9'	-- Departamento de Operaciones, carga detalle de datos
 
				 SELECT a.id,a.codigoisin,a.fechaemi,a.fechavenci,a.codmoneda,a.valornominal,a.montoemi,a.montocoloca,a.interesaplicable,a.codtipointerest,a.fechapagointer,a.codcb,valid_interes,tipo_periodi 
				  FROM dbo.Tbl_soliregistro a
				  WHERE a.id=@id_cod--@id
		

	   ELSE  -- GESTIONES PARA EL OFICIAL DE CUMPLIMIENTO

				SELECT
				  a.fechaenvio
				  ,a.idsolicitud
				  ,a.codusur
				  ,c.descripcionestado as codestado
				  ,b.descripcion as codestadoreque
				  ,d.descripcion  as codusudestino --a.codusudestino
				  ,case a.estadoworkflow  when 1 then 'En espera de lectura' WHEN 2 THEN 'Ya fue Leido' WHEN 3 THEN 'Notificado' WHEN 4 THEN 'Atendido' END as estadoworkflow
				  ,a.fecharecepcion
			      ,f.sigla
			  FROM [BCVE].[dbo].[Tbl_workflow] a,BCVE.dbo.Tbl_estado_proceso b,[BCVE].[dbo].[Tbl_estadofinalsolici] c, Tbl_tipo_perfgestion d, Tbl_masoli e, Tbl_Puestos_Bolsa f
			  where a.codestadoreque=b.codigo and
					c.codigo=a.codestado and a.estadoreg=1 and a.codestadoreque=6 and a.codusudestino= d.codigo and a.idsolicitud=e.numcontrato and e.casa_bolsa=f.id
	          ORDER BY a.id


					

END
GO
/****** Object:  StoredProcedure [dbo].[DEVOLU_COMPRA]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DEVOLU_COMPRA]
	-- Add the parameters for the stored procedure here
	@Id nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	--SELECT id, fechasoli, numcontrato, nombrecompleto, tipo_soli, tipo_id, numero_id, tipo_sector, telefono, email, direccion, cod_pais_list, cod_depto,cod_muni,le_nombrecompleto,nombre_estado,nombre_ciudad,exclu_oficumpli_listanacional,exclu_oficumpli_listainter, le_fechanaci, le_cargo, le_tipo_id, le_id, exclu_estado_firma, exclu_estado_sello, exclu_estado_solici, exclu_observaciones, usuario_graba, fecha_graba, usuario_veri, fecha_verifica, codigo_pais, casa_bolsa, estado_registro
   -- FROM dbo.Tbl_masoli
   SELECT * 
   FROM dbo.Tbl_orden_compra
   WHERE RTRIM(LTRIM(id)) =RTRIM(LTRIM(@Id))
END
GO
/****** Object:  StoredProcedure [dbo].[DEVOLU_CONSUCONTRATO]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DEVOLU_CONSUCONTRATO]
	-- Add the parameters for the stored procedure here
	@numcontrato nvarchar(250)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	--SELECT id, fechasoli, numcontrato, nombrecompleto, tipo_soli, tipo_id, numero_id, tipo_sector, telefono, email, direccion, cod_pais_list, cod_depto,cod_muni,le_nombrecompleto,nombre_estado,nombre_ciudad,exclu_oficumpli_listanacional,exclu_oficumpli_listainter, le_fechanaci, le_cargo, le_tipo_id, le_id, exclu_estado_firma, exclu_estado_sello, exclu_estado_solici, exclu_observaciones, usuario_graba, fecha_graba, usuario_veri, fecha_verifica, codigo_pais, casa_bolsa, estado_registro
   -- FROM dbo.Tbl_masoli
   SELECT id, fechasoli, numcontrato, pnombre0,snombre0,papellido0,sapellido0,objetivosocial, tipo_soli, tipo_id, numero_id, tipo_sector, telefono, email, direccion, cod_pais_list, le_nombrecompleto, le_fechanaci, le_cargo, le_tipo_id, le_id, exclu_estado_firma, exclu_estado_sello, exclu_estado_solici, exclu_observaciones, usuario_graba, fecha_graba, usuario_veri, fecha_verifica, codigo_pais, casa_bolsa, estado_registro, cod_depto, cod_muni, nombre_estado, nombre_ciudad, codigocliente, pnfa21_tipoid, pnfa21_numeroid, pnfa21_pnombre, pnfa21_snombre, pnfa21_papellido, pnfa21_sapellido, pnfa21_tiposexo, pnfa21_fechanac, pnfa21_lugarnaci, pnfa21_direccioncomple, pnfa21_numtele, pnfa21_numcelular, pnfa21_correoelect, pnfa21_estadocivil, pnfa21_codnacionalidad, pnfa21_cargodesempe, pnfa21_nombrebenefinal, pnfa21_exoisr, pnfa21_internmediario, pnfa21_personpep, pnfa21_nombreconyugue, pnfa21_idconyugue, pnfa21_fecnacconyugue, pnfa21_lugartrabajo, pnfa21_correotrabrajo, pnfa21_ocupaoficio, pnfa21_posicargo, pnfa21_antiguedad, pnfa21_direcciontrabajo, pnfa21_teletrabajo, pnfa21_formmancomunada, pnfa21_tiposexocopro, pnfa21_nacionalidadcopro, pnfa21_pnombrecopro, pnfa21_snombrecopro, pnfa21_papellidocopro, pnfa21_sapellidocopro, pnfa21_tipodicopro, pnfa21_idcopro, pnfa21_fechanacicopro, pnfa21_lugarnacicopro, pnfa21_telcopro, pnfa21_celcopro, pnfa21_correocopro, pnfa21_lugartrabajocopro, pnfa21_posicargocopro, pnfa21_direccioncopro, pnfa21_cargodesempecopro, pnfa21_exoisrcopro, pnfa21_pepcopro, pnfa21_objetivoinversion, pnfa21_naturalezainversion, pnfa21_aplica, pnfa21_nombrenegocio, pnfa21_tiporubro, pnfa21_rangoactivo, pnfa21_rangopasivo, pnfa21_rangopatrimonio, pnfa21_rangoingresos, pnfa21_rangogastos, pnfa21_copiaidtitular, pnfa21_copiaidcopropie, pnfa21_copiaidapoderado, pnfa21_copiartntitular, pnfa21_copiartncopro, pnfa21_copiartnapodelegal, pnfa21_refebancacomer, pnfa21_copiarecibopubli, pnfa21_poderreprese,
    pnfa21_tinversionista
      ,pnfa21_emision
      ,pnfa21_vencimiento
      ,pnfa21_RTN
      ,pnfa21_ingreso_mensual
      ,pnfa21_act_desiganda
      ,pnfa21_registro
      ,pnfa21_fecha_inscrip
      ,pnfa21_coinversionista
      ,pnfa21_coemision
      ,pnfa21_covencimiento
      ,pnfa21_coRTN
      ,pnfa21_copais
      ,pnfa21_coestado
      ,pnfa21_comunicipio
      ,pnfa21_cociudad
      ,pnfa21_coingreso_mensual
      ,pnfa21_cointermediario
      ,pnfa21_act_desig
      ,pnfa21_coregistro
      ,pnfa21_cofecha_inscripcion
      ,pnfa21_conom_conyugue
      ,pnfa21_connumide
      ,pnfa21_perfil_inver
      ,pnfa21_mon_prom_inver
      ,pnfa21_serv_casa
      ,pnfa21_serv_detalle
      ,pnfa21_serv_mant
      ,pnfa21_prese_mant
      ,pnfa21_obten_ingreso
      ,pnfa21_ganan_tra
	  ,pnfa21_aume_capi
	  ,pnfa21_especulacion
      ,pnfa21_otro
      ,pnfa21_hori_1
      ,pnfa21_hori_5
      ,pnfa21_hori_10
      ,pnfa21_hori_20
      ,pnfa21_hori_mayor20
      ,pnfa21_tole_riesgo
      ,pnfa21_cono_inversion
      ,pnfa21_cert_deposito
      ,pnfa21_letras
      ,pnfa21_pagare_papel
      ,pnfa21_bonos
      ,pnfa21_fondos_mutuos
      ,pnfa21_fondos_inver
      ,pnfa21_reportos
      ,pnfa21_acciones
      ,pnfa21_futuros
      ,pnfa21_opciones
      ,pnfa21_com_ven_valor
      ,pnfa21_com_ven_ext
      ,pnfa21_com_ven_cust
      ,pnfa21_adm_cartera
      ,pnfa21_per_otra
      ,pnfa21_otradescrip
	  ,pnfa21_asesoria_inver
	  ,pnfa21_com_ven_ext_pais
	  ,pnfa21_serv_custodia
      ,pnfa21_aport_capital
      ,pnfa21_num_transaccion
      ,pnfa21_moneda_inver
      ,pnfa21_monto_alta
      ,pnfa21_monto_bajo
      ,pnfa21_recurso_inver
      ,pnfa21_recurso_observa
      ,pnfa21_origen_recurso
      ,pnfa21_origen_detalle,
	   pnfa21_paisnaci,
       pnfa21_depnaci,
       pnfa21_muninaci,
       pnfa21_estanaci,
       pnfa21_ciudanaci,
       pnfa21_paisresi ,
       pnfa21_depresi ,
       pnfa21_muniresi ,
       pnfa21_estaresi,
	   pnfa21_ciudaresi,
       pnfa21_paislabo,
       pnfa21_deplabo,
       pnfa21_munilabo,
       pnfa21_estalabo,
       pnfa21_ciudalabo,
       pnfa21_paiscop ,
       pnfa21_depcop ,
       pnfa21_municop,
       pnfa21_estacop,
       pnfa21_ciudacop,
       pnfa21_pacoresi,
       pnfa21_depcores,
       pnfa21_municore,
       pnfa21_estacores,
       pnfa21_ciudacores,
       pnfa21_estacivilco,
       pnfa21_correlectr,
       pnfa21_oficiocop,

	pjfa22_razonsocial, pjfa22_actividadprinci, pjfa22_fechaconstitu, pjfa22__tomo, pjfa22_folio, pjfa22_numeroregistro, pjfa22_rtn, pjfa22_paisconstitucion, pjfa22_tipoinversionista, pjfa22_permisoperacion, pjfa22_direccioncompleta, pjfa22_correo, pjfa22_numerocelular, pjfa22_domiciliosociedad, pjfa22_numerofax, pjfa22_direccionprincipal, pjfa22_numeroagencias, pjfa22_numerotelefonos, pjfa22_antiguedadempresa, pjfa22_exoisr, pjfa22_nombreapode, pjfa22_tipoidapode, pjfa22_tipoidnumeroapode, pjfa22_nacionalidadapode, pjfa22_lugarnacimientoapode, pjfa22_fechanacimientoapode, pjfa22_telefonoapode, pjfa22_tiposexo, pjfa22_celularapode, pjfa22_direccionresiapode, pjfa22_telefonoresiapode, pjfa22_profesionapode, pjfa22_exoisrapode, pjfa22_pepapode, pjfa22_objetivoinversion, pjfa22_origenrecurso, pjfa22_tiporubro, pjfa22_rangoactivo, pjfa22_rangopasivo, pjfa22_patrimonio, pjfa22_ingresos, pjfa22_gastos, pjfa22_refenombrecompleto, pjfa22_refecontacto, pjfa22_refenumerotel, pjfa22_escrituraconstitu, pjfa22_copiartn, pjfa22_copiarecibopubli, pjfa22_reformaconstitucion, pjfa22_identidartnapode, pjfa22_constabancarefe, pjfa22_poderepre, pjfa22_copiaidautori, exclu_refebancaria, exclu_refepersonal, exclu_documserviciopublico, exclu_numerortn, exclu_conocidopor, exclu_oficumpli_listanacional, exclu_oficumpli_listainter,
    pjfa22_copais,
            pjfa22_estado,
			pjfa22_municipio,
			pjfa22_ciudad ,
			pjfa22_gru_finan,
			pjfa22_nom_grup,
			pjfa22_act_desig,
			pjfa22_coregistro,
			pjfa22_cofecha_inscripcion,
			pjfa22_cargo,
			pjfa22_tiemp_labo,
			pjfa22_perfil_inver,
			pjfa22_mon_prom_inver,
			pjfa22_serv_casa,
			pjfa22_serv_detalle,
			pjfa22_prese_mant,
			pjfa22_obten_ingreso,
			pjfa22_ganan_tra,
			pjfa22_especulacion,
			pjfa22_otro,
			pjfa22_hori_1,
			pjfa22_hori_5,
			pjfa22_hori_10,
			pjfa22_hori_20,
			pjfa22_hori_mayor20,
			pjfa22_tole_riesgo,
			pjfa22_cono_inversion,
			pjfa22_cert_deposito,
			pjfa22_letras,
 			pjfa22_pagare_papel,
			pjfa22_bonos,
			pjfa22_fondos_mutuos,
			pjfa22_fondos_inver,
			pjfa22_reportos,
			pjfa22_acciones,
			pjfa22_futuros,
			pjfa22_opciones,
			pjfa22_com_ven_valor,
			pjfa22_com_ven_ext,
			pjfa22_adm_cartera,
			pjfa22_per_otra,
			pjfa22_otradescrip,
			pjfa22_asesoria_inver,
			pjfa22_com_ven_ext_pais,
			pjfa22_serv_custodia,
			pjfa22_aport_capital ,
			pjfa22_moneda_inver ,
			pjfa22_monto_alta ,
			pjfa22_monto_bajo ,
			pjfa22_recurso_inver ,
			pjfa22_recurso_observa ,
			pja22_origen_recurso ,
			pjfa22_origen_detalle,
			pjfa22_apre_capital
   FROM dbo.Tbl_MASOLI
   WHERE RTRIM(LTRIM(numcontrato)) =RTRIM(LTRIM(@numcontrato))
END
GO
/****** Object:  StoredProcedure [dbo].[DEVOLU_CONSUPEP]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DEVOLU_CONSUPEP]
	-- Add the parameters for the stored procedure here
	@numcontrato nvarchar(250)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    
SELECT *
FROM dbo.Tbl_PEP
WHERE RTRIM(LTRIM(numcontrato)) =RTRIM(LTRIM(@numcontrato))
END
GO
/****** Object:  StoredProcedure [dbo].[DEVOLU_FATCA]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DEVOLU_FATCA]
	-- Add the parameters for the stored procedure here
	@id nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    
SELECT *
FROM dbo.Tbl_FATCA
WHERE RTRIM(LTRIM(id)) =RTRIM(LTRIM(@id))
END
GO
/****** Object:  StoredProcedure [dbo].[DEVOLU_Final]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DEVOLU_Final]
	-- Add the parameters for the stored procedure here
	@id nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    
SELECT *
FROM dbo.Tbl_Ben_Final
WHERE RTRIM(LTRIM(id)) =RTRIM(LTRIM(@id))
END
GO
/****** Object:  StoredProcedure [dbo].[sp__grabar_sectpublico]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp__grabar_sectpublico]
	-- Add the parameters for the stored procedure here
	
@id_gestion  nvarchar(50), 
@opc1_1      nvarchar(50), 
@opc1_2      nvarchar(50), 
@opc2_1      nvarchar(50), 
@opc2_2      nvarchar(50), 
@opc2_3      nvarchar(50), 
@opc2_4      nvarchar(50), 
@opc2_5      nvarchar(50), 
@opc2_6      nvarchar(50), 
@opc2_7      nvarchar(50), 
@opc2_8      nvarchar(50), 
@opc3_1      nvarchar(50), 
@opc3_2      nvarchar(50), 
@opc3_3      nvarchar(50), 
@opc3_4      nvarchar(50), 
@opc3_5      nvarchar(50), 
@opc3_6      nvarchar(50), 
@opc3_7      nvarchar(50), 
@opc3_8      nvarchar(50), 
@opc3_9      nvarchar(50), 
@opc3_10     nvarchar(50), 
@opc3_11     nvarchar(50), 
@opc4_1      nvarchar(50), 
@opc4_2      nvarchar(50), 
@opc5_1      nvarchar(50), 
@opc5_2      nvarchar(50), 
@opc6_1      nvarchar(50), 
@opc6_2      nvarchar(50), 
@opc7_1      nvarchar(50), 
@opc7_2      nvarchar(50), 
@opc8_1      nvarchar(50), 
@opc8_2      nvarchar(50), 
@opc9_1      nvarchar(50), 
@opc9_2      nvarchar(50), 
@opc10_1     nvarchar(50), 
@opc10_2     nvarchar(50), 
@opc11_1     nvarchar(50), 

-- sector privado
@SEPRI14_1     nvarchar(50), 
@SEPRI14_2     nvarchar(50), 
@SEPRI2_1     nvarchar(50), 
@SEPRI2_2     nvarchar(50), 
@SEPRI3_1     nvarchar(50), 
@SEPRI3_2     nvarchar(50), 
@SEPRI4_1     nvarchar(50), 
@SEPRI4_2     nvarchar(50), 
@SEPRI5_1     nvarchar(50), 
@SEPRI5_2     nvarchar(50), 
@SEPRI5_3     nvarchar(50), 
@SEPRI5_4     nvarchar(50), 
@SEPRI6_1     nvarchar(50), 
@SEPRI6_2     nvarchar(50), 


-- fondos de inversión

@FDI11_1     nvarchar(50), 
@FDI11_2     nvarchar(50), 
@FDI10_1     nvarchar(50), 
@FDI10_2     nvarchar(50), 
@FDI9_1     nvarchar(50), 
@FDI9_2     nvarchar(50), 
@FDI8_1     nvarchar(50), 
@FDI8_2     nvarchar(50), 
@FDI4_1     nvarchar(50), 
@FDI4_2     nvarchar(50), 
@FDI3_1     nvarchar(50), 
@FDI3_2     nvarchar(50),

@id_sector  nvarchar(50),
@cod_usu     nvarchar(50), 
@casabolsa   nvarchar(50),
@estado_revision nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

INSERT INTO dbo.Tbl_sector_publico (id_gestion, opc1_1, opc1_2, opc2_1, opc2_2, opc2_3, opc2_4, opc2_5, opc2_6, opc2_7, opc2_8, opc3_1, opc3_2, opc3_3, opc3_4, opc3_5, opc3_6, opc3_7, opc3_8, opc3_9, opc3_10, opc3_11, opc4_1, opc4_2, opc5_1, opc5_2, opc6_1, opc6_2, opc7_1, opc7_2, opc8_1, opc8_2, opc9_1, opc9_2, opc10_1, opc10_2, opc11_1, SEPRI14_1, SEPRI14_2, SEPRI2_1, SEPRI2_2, SEPRI3_1, SEPRI3_2, SEPRI4_1, SEPRI4_2, SEPRI5_1, SEPRI5_2, SEPRI5_3, SEPRI5_4, SEPRI6_1, SEPRI6_2, FDI11_1, FDI11_2, FDI10_1, FDI10_2, FDI9_1, FDI9_2, FDI8_1, FDI8_2, FDI4_1, FDI4_2, FDI3_1, FDI3_2, id_sector,cod_usu, casabolsa, fecha_grabacion, estado_revision)
VALUES (@id_gestion, @opc1_1, @opc1_2, @opc2_1, @opc2_2, @opc2_3, @opc2_4, @opc2_5, @opc2_6, @opc2_7, @opc2_8, @opc3_1, @opc3_2, @opc3_3, @opc3_4, @opc3_5, @opc3_6, @opc3_7, @opc3_8, @opc3_9, @opc3_10, @opc3_11, @opc4_1, @opc4_2, @opc5_1, @opc5_2, @opc6_1, @opc6_2, @opc7_1, @opc7_2, @opc8_1, @opc8_2, @opc9_1, @opc9_2, @opc10_1, @opc10_2, @opc11_1, @sepri14_1, @sepri14_2, @sepri2_1, @sepri2_2, @sepri3_1, @sepri3_2, @sepri4_1, @sepri4_2, @sepri5_1, @sepri5_2, @sepri5_3, @sepri5_4, @sepri6_1, @sepri6_2, @fdi11_1, @fdi11_2, @fdi10_1, @fdi10_2, @fdi9_1, @fdi9_2, @fdi8_1, @fdi8_2, @fdi4_1, @fdi4_2, @fdi3_1, @fdi3_2,@id_sector, @cod_usu, @casabolsa,  CONVERT(VARCHAR,getdate(),109), @estado_revision)
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp__tipo_solicitud_ingreso]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp__tipo_solicitud_ingreso]
	-- Add the parameters for the stored procedure here
     @descripcionestado nvarchar(50),
	 @detalle   nvarchar(150),
	 @estado     nvarchar(10),
	 @fecha      nvarchar(50),
	 @usuario    nvarchar(50),
	 @proceso    nvarchar(50),
	 @codigo     nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
 IF (@proceso= 1) -- graba el registro por primera vez
        BEGIN 
            -- Insert statements for procedure here
          INSERT INTO dbo.Tbl_estadofinalsolici (codigo, descripcionestado, detalle, estado, fecha_ingreso, fecha_modi, usuario)
         VALUES ((select COUNT(*)+1 from dbo.Tbl_estadofinalsolici), @descripcionestado, @detalle, @estado, CONVERT(VARCHAR,getdate(),109), CONVERT(VARCHAR,getdate(),109), @usuario)
        END

IF (@proceso= 2) -- actualiza el registro 
        BEGIN 

		UPDATE dbo.Tbl_estadofinalsolici
		SET 
			descripcionestado = @descripcionestado,
			detalle = @detalle,
			estado = @estado,
			fecha_modi = CONVERT(VARCHAR,getdate(),109),
			usuario = @usuario
		WHERE codigo=@codigo
       END
END
GO
/****** Object:  StoredProcedure [dbo].[SP__tolerancia_riesgo]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP__tolerancia_riesgo] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(LTRIM(codigo)) as codigo, rtrim(LTRIM(descripcion)) as descripcion
	FROM Tbl_Tolerancia_riesgo
	WHERE estado=1
	ORDER BY codigo ASC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_actuali_regsoli]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_actuali_regsoli] 
	-- Add the parameters for the stored procedure here

	@id nvarchar(50)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	

		  UPDATE dbo.Tbl_soliregistro
		SET registrado_bcvn = '1',
		    fecharegbcvsis = FORMAT ( getdate(), 'd', 'en-gb' )
		WHERE id =@id

END
GO
/****** Object:  StoredProcedure [dbo].[sp_actuali_soliregistro_autoribcv]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_actuali_soliregistro_autoribcv]
	-- Add the parameters for the stored procedure here

	@id_soli   nvarchar(50),
	@estadosolici nvarchar(50),
	@estadoproceso nvarchar(50),
	@observaciones nvarchar(500)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
		UPDATE dbo.Tbl_soliregistro
		SET 
			estadosolici = @estadosolici
			, estadoproceso = @estadoproceso
			,observaciones = @observaciones
		 WHERE id = @id_soli

END
GO
/****** Object:  StoredProcedure [dbo].[sp_actuali_workflow_read]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_actuali_workflow_read] 
	-- Add the parameters for the stored procedure here
	@id nvarchar(50),
	@estadoworkflow nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
	  -- Insert statements for procedure here
     if @estadoworkflow=1 -- EN ESPERA DE LECTURA
		UPDATE dbo.Tbl_workflow
		SET 
		fecharecepcion = CONVERT(VARCHAR,getdate(),109),
		estadoworkflow = '1'
		--estadoreg= '1'
	   WHERE rtrim(ltrim(idsolicitud))=@id and estadoreg= '1'
    
    if @estadoworkflow=2  -- YA FUE LEIDO
		UPDATE dbo.Tbl_workflow
		SET 
		fecharecepcion = CONVERT(VARCHAR,getdate(),109),
		estadoworkflow = '2'
		--estadoreg= '1'
	   WHERE rtrim(ltrim(idsolicitud))=@id and estadoreg= '1'
ELSE

 if @estadoworkflow=3  -- RECHAZADO
		UPDATE dbo.Tbl_workflow
		SET 
		fecharecepcion = CONVERT(VARCHAR,getdate(),109),
		--estadoworkflow = '3',
		estadoreg= '0'
	   WHERE rtrim(ltrim(idsolicitud))=@id and estadoreg= '1'

  if @estadoworkflow=4   --- ATENDIDO
		UPDATE dbo.Tbl_workflow
		SET 
		fecharecepcion = CONVERT(VARCHAR,getdate(),109),
		estadoworkflow = '4',
		estadoreg='0'
	   WHERE rtrim(ltrim(idsolicitud))=@id and estadoreg= '1'
    
  if @estadoworkflow=5  --- ATENDIDO 
		UPDATE dbo.Tbl_workflow
		SET 
		fecharecepcion = CONVERT(VARCHAR,getdate(),109),
		estadoworkflow = '4',
		estadoreg='0'
	   WHERE rtrim(ltrim(idsolicitud))=@id and estadoreg= '1'

	 

	   if @estadoworkflow=6  --- RECHAZO por FC
		UPDATE dbo.Tbl_workflow
		SET 
		fecharecepcion = CONVERT(VARCHAR,getdate(),109),
		estadoworkflow = '3',
		estadoreg='0'
	   WHERE rtrim(ltrim(idsolicitud))=@id and estadoreg= '1'

	  if @estadoworkflow=7  --- ATENDIDO por AUTORIZADOR BCV
		UPDATE dbo.Tbl_workflow
		SET 
		fecharecepcion = CONVERT(VARCHAR,getdate(),109),
		estadoworkflow = '4',
		estadoreg='0'
	   WHERE rtrim(ltrim(idsolicitud))=@id and estadoreg= '1'

     if @estadoworkflow=8  --- RECHAZO POR EL AUTORIZADOR DE LA BCV
		UPDATE dbo.Tbl_workflow
		SET 
		fecharecepcion = CONVERT(VARCHAR,getdate(),109),
		estadoworkflow = '4',
		estadoreg='0'
	   WHERE rtrim(ltrim(idsolicitud))=@id and estadoreg= '1'


	  if @estadoworkflow=9  --- ATENDIDO por OPERACIONES EN LE REGISTRO DEL PAGO
	  UPDATE dbo.Tbl_workflow
		SET 
		fecharecepcion = CONVERT(VARCHAR,getdate(),109),
		estadoworkflow = '4',
		estadoreg='0'
	   WHERE rtrim(ltrim(idsolicitud))=@id and estadoreg= '1'

END
GO
/****** Object:  StoredProcedure [dbo].[SP_actualiza_notipago]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_actualiza_notipago]
	-- Add the parameters for the stored procedure here
	 @id           nvarchar(50),
	 @estadopago   nvarchar(50),
	 @notifecha    nvarchar(50), 
	 @fechalimipag nvarchar(50),
	 @flag         nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	if @flag =1 -- actualiza el registro principal cuando es autorizado por BCV
		UPDATE dbo.Tbl_soliregistro
		SET estadopag = @estadopago,
			notifecha=@notifecha,
			fechalimipag=@fechalimipag
		WHERE id = @id 

	if @flag =2 -- actualiza el registro principal cuando se registra el pago
		UPDATE dbo.Tbl_soliregistro
		SET estadopag = '1'
		WHERE id = @id 

	if @flag =3 -- actualiza el registro principal cuando se registra la anulación
		UPDATE dbo.Tbl_soliregistro
		SET estadopag = '2'
		WHERE id = @id 

END
GO
/****** Object:  StoredProcedure [dbo].[sp_actualiza_soli_devulu]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_actualiza_soli_devulu]
	-- Add the parameters for the stored procedure here

	@idsolicitud  nvarchar(50),
	@codusur nvarchar(50),
	@observaciones nvarchar(50),
	@estadoproceso nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
UPDATE dbo.Tbl_soliregistro
SET 
	observaciones = @observaciones,
     estadoproceso = @estadoproceso
WHERE id = @idsolicitud AND codusuario = @codusur

END
GO
/****** Object:  StoredProcedure [dbo].[SP_ano_opera]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ano_opera] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(LTRIM(codigo)) as codigo, rtrim(LTRIM(descripcion)) as descripcion
	FROM Tbl_ano_opera
	WHERE estado=1
	ORDER BY codigo ASC
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Aporte_Capital]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Aporte_Capital] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(LTRIM(codigo)) as codigo, rtrim(LTRIM(descripcion)) as descripcion
	FROM Tbl_Aporte_Capital
	WHERE estado=1
	ORDER BY codigo ASC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_ano_opera]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_busca_ano_opera]
	-- Add the parameters for the stored procedure here
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT codigo as Codigo, descripcion as Descripcion, CASE When estado = 0 THEN 'Inactivo' When estado = 1 THEN 'Activo'   End  as Estado
	from Tbl_ano_opera where codigo <> 0
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_aporte_capi]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_busca_aporte_capi]
	-- Add the parameters for the stored procedure here
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT codigo as Codigo, descripcion as Descripcion, CASE When estado = 0 THEN 'Inactivo' When estado = 1 THEN 'Activo'   End  as Estado
	from Tbl_Aporte_Capital where codigo <> 0
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_bene]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_busca_bene]
	-- Add the parameters for the stored procedure here
	 @numcontrato nvarchar(250),
	 @codigocliente nvarchar(250),
	@nombrecliente nvarchar(250)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * 
	from Tbl_PN_bene
	where ltrim(rtrim(pnfa21_numcontrato))= ltrim(rtrim(@numcontrato)) and
	ltrim(rtrim(pnfa21_codcliente))= ltrim(rtrim(@codigocliente))    
	 and ltrim(rtrim(pnfa21_nombrecompleto))= ltrim(rtrim(@nombrecliente))
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_bene_codipare]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_busca_bene_codipare]
	-- Add the parameters for the stored procedure here
	 @numcontrato nvarchar(250),
	 @codigocliente nvarchar(250),
	@nombrecliente nvarchar(250)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(ltrim(pnfa21_codparestes)) as parentesco
	from Tbl_PN_bene
	where ltrim(rtrim(pnfa21_numcontrato))= ltrim(rtrim(@numcontrato)) and
	ltrim(rtrim(pnfa21_codcliente))= ltrim(rtrim(@codigocliente))    
	 and ltrim(rtrim(pnfa21_nombrecompleto))= ltrim(rtrim(@nombrecliente))
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_codigo_estado]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_busca_codigo_estado]
	-- Add the parameters for the stored procedure here
	 @codigo nchar(2)
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(ltrim(estado)) as Estado
	from Tbl_tipo_sectoeco
	where ltrim(rtrim(codigo))= ltrim(rtrim(@codigo)) 
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_codigo_estadoanopera]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_busca_codigo_estadoanopera]
	-- Add the parameters for the stored procedure here
	 @codigo nchar(10)
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(ltrim(estado)) as Estado
	from Tbl_ano_opera
	where ltrim(rtrim(codigo))= ltrim(rtrim(@codigo)) 
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_codigo_estadoaporte]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_busca_codigo_estadoaporte]
	-- Add the parameters for the stored procedure here
	 @codigo nchar(10)
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(ltrim(estado)) as Estado
	from Tbl_Aporte_Capital
	where ltrim(rtrim(codigo))= ltrim(rtrim(@codigo)) 
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_codigo_estadocpago]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_busca_codigo_estadocpago]
	-- Add the parameters for the stored procedure here
	 @codigo nvarchar(50)
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(ltrim(estado)) as Estado
	from Tbl_tipo_conceptopago
	where ltrim(rtrim(codigo))= ltrim(rtrim(@codigo)) 
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_codigo_estadofauto]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_busca_codigo_estadofauto]
	-- Add the parameters for the stored procedure here
	 @codigo nchar(10)
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(ltrim(estado)) as Estado
	from Tbl_fautorizacion
	where ltrim(rtrim(codigo))= ltrim(rtrim(@codigo)) 
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_codigo_estadofpago]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_busca_codigo_estadofpago]
	-- Add the parameters for the stored procedure here
	 @codigo nvarchar(50)
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(ltrim(estado)) as Estado
	from Tbl_tipo_formapago
	where ltrim(rtrim(codigo))= ltrim(rtrim(@codigo)) 
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_codigo_estadoIDE]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_busca_codigo_estadoIDE]
	-- Add the parameters for the stored procedure here
	 @codigo nchar(2)
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(ltrim(estado)) as Estado
	from Tbl_tipo_identificacion
	where ltrim(rtrim(codigo))= ltrim(rtrim(@codigo)) 
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_codigo_estadoimensual]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_busca_codigo_estadoimensual]
	-- Add the parameters for the stored procedure here
	 @codigo nchar(10)
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(ltrim(estado)) as Estado
	from Tbl_Ingreso_Mensual
	where ltrim(rtrim(codigo))= ltrim(rtrim(@codigo)) 
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_codigo_estadoinstr]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_busca_codigo_estadoinstr]
	-- Add the parameters for the stored procedure here
	 @codigo nvarchar(50)
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(ltrim(estado)) as Estado
	from Tbl_tipo_instrumento
	where ltrim(rtrim(codigo))= ltrim(rtrim(@codigo)) 
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_codigo_estadointe]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_busca_codigo_estadointe]
	-- Add the parameters for the stored procedure here
	 @codigo nvarchar(50)
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(ltrim(estado)) as Estado
	from Tbl_tipo_interes
	where ltrim(rtrim(codigo))= ltrim(rtrim(@codigo)) 
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_codigo_estadoinve]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_busca_codigo_estadoinve]
	-- Add the parameters for the stored procedure here
	 @codigo nchar(10)
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(ltrim(estado)) as Estado
	from Tbl_tipo_inversionista
	where ltrim(rtrim(codigo))= ltrim(rtrim(@codigo)) 
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_codigo_estadomoneda]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_busca_codigo_estadomoneda]
	-- Add the parameters for the stored procedure here
	 @codigo nchar(10)
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(ltrim(estado)) as Estado
	from Tbl_monedas
	where ltrim(rtrim(codigo))= ltrim(rtrim(@codigo)) 
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_codigo_estadopare]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_busca_codigo_estadopare]
	-- Add the parameters for the stored procedure here
	 @codigo nchar(10)
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(ltrim(estado)) as Estado
	from Tbl_parentesco
	where ltrim(rtrim(codigo))= ltrim(rtrim(@codigo)) 
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_codigo_estadoperinver]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_busca_codigo_estadoperinver]
	-- Add the parameters for the stored procedure here
	 @codigo nchar(10)
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(ltrim(estado)) as Estado
	from Tbl_perfil_inver
	where ltrim(rtrim(codigo))= ltrim(rtrim(@codigo)) 
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_codigo_estadorepre]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_busca_codigo_estadorepre]
	-- Add the parameters for the stored procedure here
	 @codigo nvarchar(50)
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(ltrim(estado)) as Estado
	from Tbl_tipo_formareprese
	where ltrim(rtrim(codigo))= ltrim(rtrim(@codigo)) 
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_codigo_estadoRUBRO]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_busca_codigo_estadoRUBRO]
	-- Add the parameters for the stored procedure here
	 @codigo nchar(10)
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(ltrim(estado)) as Estado
	from Tbl_tipo_rubro
	where ltrim(rtrim(codigo))= ltrim(rtrim(@codigo)) 
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_codigo_estadosoli]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_busca_codigo_estadosoli]
	-- Add the parameters for the stored procedure here
	 @codigo nchar(10)
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(ltrim(estado)) as Estado
	from Tbl_tipo_solicitante
	where ltrim(rtrim(codigo))= ltrim(rtrim(@codigo)) 
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_codigo_estadotoper]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_busca_codigo_estadotoper]
	-- Add the parameters for the stored procedure here
	 @codigo nchar(10)
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(ltrim(estado)) as Estado
	from Tbl_Tipo_Operacion
	where ltrim(rtrim(codigo))= ltrim(rtrim(@codigo)) 
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_codigo_estadotriesgo]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_busca_codigo_estadotriesgo]
	-- Add the parameters for the stored procedure here
	 @codigo nchar(10)
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(ltrim(estado)) as Estado
	from Tbl_Tolerancia_riesgo
	where ltrim(rtrim(codigo))= ltrim(rtrim(@codigo)) 
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_codigo_idfirma]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_busca_codigo_idfirma]
	-- Add the parameters for the stored procedure here
	 @numcontrato nvarchar(250),
	@nombrecliente nvarchar(250)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(ltrim(pnfa21_fid)) as Tipo_Id
	from Tbl_Firmas_Autorizadas
	where ltrim(rtrim(pnfa21_numcontrato))= ltrim(rtrim(@numcontrato))     
	 and ltrim(rtrim(pnfa21_nombre))= ltrim(rtrim(@nombrecliente))
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_cono_inver]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_busca_cono_inver]
	-- Add the parameters for the stored procedure here
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT codigo as Codigo, descripcion as Descripcion, CASE When estado = 0 THEN 'Inactivo' When estado = 1 THEN 'Activo'   End  as Estado
	from Tbl_conocimiento_inver where codigo <> 0
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_conse_adm]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_busca_conse_adm]
	-- Add the parameters for the stored procedure here 
	@IDCONSE nvarchar(50), 
	@numcontrato nvarchar(250),
	@pjfa22_nombre nvarchar(250)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * 
	from Tbl_PJ_consejoadm
	where ltrim(rtrim(Id))= ltrim(rtrim(@IDCONSE)) and ltrim(rtrim(numcontrato))= ltrim(rtrim(@numcontrato)) and
	ltrim(rtrim(@pjfa22_nombre))= ltrim(rtrim(@pjfa22_nombre))     
	 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_cpago]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_busca_cpago]
	-- Add the parameters for the stored procedure here
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT codigo as Codigo, descripcion as Descripcion, CASE When estado = 0 THEN 'Inactivo' When estado = 1 THEN 'Activo'   End  as Estado
	from Tbl_tipo_conceptopago where codigo <> 0
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_estru_codid]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_busca_estru_codid]
	-- Add the parameters for the stored procedure here
	 @numcontrato nvarchar(250),
	@nombrecliente nvarchar(250)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(ltrim(pjfa22_tipoid)) as Tipo_Id
	from Tbl_PJ_estrupropie
	where ltrim(rtrim(numcontrato))= ltrim(rtrim(@numcontrato))     
	 and ltrim(rtrim(pjfa22_nombre))= ltrim(rtrim(@nombrecliente))
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_estru_propi]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_busca_estru_propi]
	-- Add the parameters for the stored procedure here  
	@IDESTRU nvarchar(50),
	@numcontrato nvarchar(250),
	@pjfa22_nombre nvarchar(250)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * 
	from Tbl_PJ_estrupropie
	where ltrim(rtrim(Id))= ltrim(rtrim(@IDESTRU)) and ltrim(rtrim(numcontrato))= ltrim(rtrim(@numcontrato)) and
	ltrim(rtrim(@pjfa22_nombre))= ltrim(rtrim(@pjfa22_nombre))    
	 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_fauto_codifirma]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_busca_fauto_codifirma]
	-- Add the parameters for the stored procedure here
	 @numcontrato nvarchar(150),
	 @codigocliente nvarchar(150),
	@nombrecliente nvarchar(150)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(ltrim(pnfa21_tipo_autorizaion)) as [Firma]
	from Tbl_Firmas_Autorizadas
	where ltrim(rtrim(pnfa21_numcontrato))= ltrim(rtrim(@numcontrato)) and
	ltrim(rtrim(pnfa21_codcliente))= ltrim(rtrim(@codigocliente))    
	 and ltrim(rtrim(pnfa21_nombre))= ltrim(rtrim(@nombrecliente))
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_firma_auto]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_busca_firma_auto]
	-- Add the parameters for the stored procedure here
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT codigo as Codigo, descripcion as Descripcion, CASE When estado = 0 THEN 'Inactivo' When estado = 1 THEN 'Activo'   End  as Estado
	from Tbl_fautorizacion where codigo <> 0
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_firma_autorizacion]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_busca_firma_autorizacion]
	-- Add the parameters for the stored procedure here
	 @numcontrato nvarchar(150),
	 @codigocliente nvarchar(150),
	 @nombrecliente nvarchar(150)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * 
	from Tbl_Firmas_Autorizadas
	where ltrim(rtrim(pnfa21_numcontrato))= ltrim(rtrim(@numcontrato)) and
	ltrim(rtrim(pnfa21_codcliente))= ltrim(rtrim(@codigocliente))    
	 and ltrim(rtrim(pnfa21_nombre))= ltrim(rtrim(@nombrecliente))
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_fpago]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_busca_fpago]
	-- Add the parameters for the stored procedure here
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT codigo as Codigo, descripcion as Descripcion, CASE When estado = 0 THEN 'Inactivo' When estado = 1 THEN 'Activo'   End  as Estado
	from Tbl_tipo_formapago where codigo <> 0
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_identifi]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_busca_identifi]
	-- Add the parameters for the stored procedure here
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT codigo as Codigo, descripcion as Descripcion, CASE When estado = 0 THEN 'Inactivo' When estado = 1 THEN 'Activo'   End  as Estado
	from Tbl_tipo_identificacion where codigo <> 0
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_BUSCA_IDGES_PAGO]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_BUSCA_IDGES_PAGO]
	-- Add the parameters for the stored procedure here
	 @idgestion nvarchar(150),
	 @idflag nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	  IF @idflag=0  -- CARGA TODO
	      select * from Tbl_detallepagoreci where id=@idgestion

	IF @idflag=1  -- BUSCAR POR CÓDIGO DE GESTIÓN
		SELECT a.id, a.id_gestion,c.sigla ,a.fechaavisopago, a.fechalimitepago,a.fecha_pago, e.descripcion AS formapago,d.descripcion AS moneda,  CASE  a.estadorecibo  WHEN 1 THEN 'PAGADO' WHEN 2 THEN 'ANULADO' END AS estado,a.cod_usu,a.fecha_grabacion
		FROM dbo.Tbl_detallepagoreci a, Tbl_soliregistro b, Tbl_Puestos_Bolsa c, Tbl_monedas d, Tbl_tipo_formapago e
		WHERE a.id_gestion=@idgestion AND a.id_gestion=b.id AND b.codcb=c.id AND a.cod_tipo_moneda=d.codigo AND a.cod_formapago=e.codigo
        ORDER BY a.id desc
		 
    IF @idflag=2  -- BUSCAR FECHA LIMITE DE PAGO

      	SELECT a.id, a.id_gestion,c.sigla ,a.fechaavisopago, a.fechalimitepago,a.fecha_pago, e.descripcion AS formapago,d.descripcion AS moneda,  CASE  a.estadorecibo  WHEN 1 THEN 'PAGADO' WHEN 2 THEN 'ANULADO' END AS estado,a.cod_usu,a.fecha_grabacion
		FROM dbo.Tbl_detallepagoreci a, Tbl_soliregistro b, Tbl_Puestos_Bolsa c, Tbl_monedas d, Tbl_tipo_formapago e
		WHERE RTRIM(LTRIM(a.fechaavisopago))=LTRIM(RTRIM(@idgestion)) AND a.id_gestion=b.id AND b.codcb=c.id AND a.cod_tipo_moneda=d.codigo AND a.cod_formapago=e.codigo
		ORDER BY a.id desc

     IF @idflag=3 -- BUSCAR CASA DE BOLSA
	    SELECT a.id, a.id_gestion,c.sigla ,a.fechaavisopago, a.fechalimitepago,a.fecha_pago, e.descripcion AS formapago,d.descripcion AS moneda,  CASE  a.estadorecibo  WHEN 1 THEN 'PAGADO' WHEN 2 THEN 'ANULADO' END AS estado,a.cod_usu,a.fecha_grabacion
		FROM dbo.Tbl_detallepagoreci a, Tbl_soliregistro b, Tbl_Puestos_Bolsa c, Tbl_monedas d, Tbl_tipo_formapago e
		WHERE RTRIM(LTRIM(c.id))=LTRIM(RTRIM(@idgestion)) AND a.id_gestion=b.id AND b.codcb=c.id AND a.cod_tipo_moneda=d.codigo AND a.cod_formapago=e.codigo
		ORDER BY a.id desc

	  IF @idflag=4 -- BUSCAR FORMA DE PAGO
	    SELECT a.id, a.id_gestion,c.sigla ,a.fechaavisopago, a.fechalimitepago,a.fecha_pago, e.descripcion AS formapago,d.descripcion AS moneda,  CASE  a.estadorecibo  WHEN 1 THEN 'PAGADO' WHEN 2 THEN 'ANULADO' END AS estado,a.cod_usu,a.fecha_grabacion
		FROM dbo.Tbl_detallepagoreci a, Tbl_soliregistro b, Tbl_Puestos_Bolsa c, Tbl_monedas d, Tbl_tipo_formapago e
		WHERE RTRIM(LTRIM(a.cod_formapago))=LTRIM(RTRIM(@idgestion)) AND a.id_gestion=b.id AND b.codcb=c.id AND a.cod_tipo_moneda=d.codigo AND a.cod_formapago=e.codigo
		ORDER BY a.id desc

	  IF @idflag=5 -- BUSCAR FECHA DE PAGO
	    SELECT a.id, a.id_gestion,c.sigla ,a.fechaavisopago, a.fechalimitepago,a.fecha_pago, e.descripcion AS formapago,d.descripcion AS moneda,  CASE  a.estadorecibo  WHEN 1 THEN 'PAGADO' WHEN 2 THEN 'ANULADO' END AS estado,a.cod_usu,a.fecha_grabacion
		FROM dbo.Tbl_detallepagoreci a, Tbl_soliregistro b, Tbl_Puestos_Bolsa c, Tbl_monedas d, Tbl_tipo_formapago e
		WHERE RTRIM(LTRIM(a.fecha_pago))=LTRIM(RTRIM(@idgestion)) AND a.id_gestion=b.id AND b.codcb=c.id AND a.cod_tipo_moneda=d.codigo AND a.cod_formapago=e.codigo
	    ORDER BY a.id desc

	  IF @idflag=6 -- ESTADO DE RECIBO
	    SELECT a.id, a.id_gestion,c.sigla ,a.fechaavisopago, a.fechalimitepago,a.fecha_pago, e.descripcion AS formapago,d.descripcion AS moneda,  CASE  a.estadorecibo  WHEN 1 THEN 'PAGADO' WHEN 2 THEN 'ANULADO' END AS estado,a.cod_usu,a.fecha_grabacion
		FROM dbo.Tbl_detallepagoreci a, Tbl_soliregistro b, Tbl_Puestos_Bolsa c, Tbl_monedas d, Tbl_tipo_formapago e
		WHERE RTRIM(LTRIM(a.estadorecibo))=LTRIM(RTRIM(@idgestion)) AND a.id_gestion=b.id AND b.codcb=c.id AND a.cod_tipo_moneda=d.codigo AND a.cod_formapago=e.codigo
		ORDER BY a.id desc

      IF @idflag=7 -- TIPO DE MONEDA
	    SELECT a.id, a.id_gestion,c.sigla ,a.fechaavisopago, a.fechalimitepago,a.fecha_pago, e.descripcion AS formapago,d.descripcion AS moneda,  CASE  a.estadorecibo  WHEN 1 THEN 'PAGADO' WHEN 2 THEN 'ANULADO' END AS estado,a.cod_usu,a.fecha_grabacion
		FROM dbo.Tbl_detallepagoreci a, Tbl_soliregistro b, Tbl_Puestos_Bolsa c, Tbl_monedas d, Tbl_tipo_formapago e
		WHERE RTRIM(LTRIM(a.cod_tipo_moneda))=LTRIM(RTRIM(@idgestion)) AND a.id_gestion=b.id AND b.codcb=c.id AND a.cod_tipo_moneda=d.codigo AND a.cod_formapago=e.codigo
		ORDER BY a.id desc

	  IF @idflag=8  -- ANULA EL RECIBO	
		UPDATE dbo.Tbl_detallepagoreci
		SET estadorecibo = '2'
		WHERE id = LTRIM(RTRIM(@idgestion))

		IF @idflag=9 -- TIPO DE MONEDA
	    SELECT a.id, a.id_gestion,c.sigla ,a.fechaavisopago, a.fechalimitepago,a.fecha_pago, e.descripcion AS formapago,d.descripcion AS moneda,  CASE  a.estadorecibo  WHEN 1 THEN 'PAGADO' WHEN 2 THEN 'ANULADO' END AS estado,a.cod_usu,a.fecha_grabacion
		FROM dbo.Tbl_detallepagoreci a, Tbl_soliregistro b, Tbl_Puestos_Bolsa c, Tbl_monedas d, Tbl_tipo_formapago e
		WHERE RTRIM(LTRIM(a.id))=LTRIM(RTRIM(@idgestion)) AND a.id_gestion=b.id AND b.codcb=c.id AND a.cod_tipo_moneda=d.codigo AND a.cod_formapago=e.codigo

END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_ingre_mens]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_busca_ingre_mens]
	-- Add the parameters for the stored procedure here
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT codigo as Codigo, descripcion as Descripcion, CASE When estado = 0 THEN 'Inactivo' When estado = 1 THEN 'Activo'   End  as Estado
	from Tbl_Ingreso_Mensual where codigo <> 0
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_instrumento]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_busca_instrumento]
	-- Add the parameters for the stored procedure here
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT codigo as Codigo, descripcion as Descripcion, CASE When estado = 0 THEN 'Inactivo' When estado = 1 THEN 'Activo'   End  as Estado
	from Tbl_tipo_instrumento where codigo <> 0
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_interes]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_busca_interes]
	-- Add the parameters for the stored procedure here
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT codigo as Codigo, descripcion as Descripcion, CASE When estado = 0 THEN 'Inactivo' When estado = 1 THEN 'Activo'   End  as Estado
	from Tbl_tipo_interes where codigo <> 0
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_inver]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_busca_inver]
	-- Add the parameters for the stored procedure here
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT codigo as Codigo, descripcion as Descripcion, CASE When estado = 0 THEN 'Inactivo' When estado = 1 THEN 'Activo'   End  as Estado
	from Tbl_tipo_inversionista where codigo <> 0
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_moneda]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_busca_moneda]
	-- Add the parameters for the stored procedure here
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT codigo as Codigo, descripcion as Descripcion, CASE When estado = 0 THEN 'Inactivo' When estado = 1 THEN 'Activo'   End  as Estado
	from Tbl_monedas where codigo <> 0
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_parentesco]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_busca_parentesco]
	-- Add the parameters for the stored procedure here
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT codigo as Codigo, descripcion as Descripcion, CASE When estado = 0 THEN 'Inactivo' When estado = 1 THEN 'Activo'   End  as Estado
	from Tbl_parentesco where codigo <> 0
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_PEP_codipare]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_busca_PEP_codipare]
	-- Add the parameters for the stored procedure here
	 @numcontrato nvarchar(250),
	 @codigocliente nvarchar(250),
	@nombrecliente nvarchar(250)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(ltrim(pnfa21_codparestes)) as parentesco
	from Tbl_PEP_Rel_consa
	where ltrim(rtrim(pnfa21_numcontrato))= ltrim(rtrim(@numcontrato)) and
	ltrim(rtrim(pnfa21_codcliente))= ltrim(rtrim(@codigocliente))    
	 and ltrim(rtrim(pnfa21_nombrecompleto))= ltrim(rtrim(@nombrecliente))
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_PEP_Rel]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_busca_PEP_Rel]
	-- Add the parameters for the stored procedure here
	 @numcontrato nvarchar(250),
	 @codigocliente nvarchar(250),
	@nombrecliente nvarchar(250)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * 
	from Tbl_PEP_Rel_consa
	where ltrim(rtrim(pnfa21_numcontrato))= ltrim(rtrim(@numcontrato)) and
	ltrim(rtrim(pnfa21_codcliente))= ltrim(rtrim(@codigocliente))    
	 and ltrim(rtrim(pnfa21_nombrecompleto))= ltrim(rtrim(@nombrecliente))
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_per_inver]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_busca_per_inver]
	-- Add the parameters for the stored procedure here
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT codigo as Codigo, descripcion as Descripcion, CASE When estado = 0 THEN 'Inactivo' When estado = 1 THEN 'Activo'   End  as Estado
	from Tbl_perfil_inver where codigo <> 0
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_rangos]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_busca_rangos]
	-- Add the parameters for the stored procedure here
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT codigo as Codigo, descripcion as Descripcion, CASE When estado = 0 THEN 'Inactivo' When estado = 1 THEN 'Activo'   End  as Estado
	from Tbl_rangos where codigo <> 0
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_REFE]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[sp_busca_REFE]
	-- Add the parameters for the stored procedure here
	 @numcontrato nvarchar(250),
	 @codigocliente nvarchar(250),
	@nombrecliente nvarchar(250)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * 
	from Tbl_PN_refe
	where ltrim(rtrim(numcontrato))= ltrim(rtrim(@numcontrato)) and
	ltrim(rtrim(pnfa21_numcontrato))= ltrim(rtrim(@codigocliente))    
	 and ltrim(rtrim(pnfa21_nombrecompleto))= ltrim(rtrim(@nombrecliente))
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_representante]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_busca_representante]
	-- Add the parameters for the stored procedure here
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT codigo as Codigo, descripcion as Descripcion, CASE When estado = 0 THEN 'Inactivo' When estado = 1 THEN 'Activo'   End  as Estado
	from Tbl_tipo_formareprese where codigo <> 0
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_rubro]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_busca_rubro]
	-- Add the parameters for the stored procedure here
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT codigo as Codigo, descripcion as Descripcion, CASE When estado = 0 THEN 'Inactivo' When estado = 1 THEN 'Activo'   End  as Estado
	from Tbl_tipo_rubro where codigo <> 0
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_SECTORECO]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_busca_SECTORECO]
	-- Add the parameters for the stored procedure here
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT codigo as Codigo, descripcion as Descripcion, CASE When estado = 0 THEN 'Inactivo' When estado = 1 THEN 'Activo'   End  as Estado
	from Tbl_tipo_sectoeco where codigo <> 0
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_solicitante]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_busca_solicitante]
	-- Add the parameters for the stored procedure here
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT codigo as Codigo, descripcion as Descripcion, CASE When estado = 0 THEN 'Inactivo' When estado = 1 THEN 'Activo'   End  as Estado
	from Tbl_tipo_solicitante where codigo <> 0
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_busca_tole_riesgo]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_busca_tole_riesgo]
	-- Add the parameters for the stored procedure here
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT codigo as Codigo, descripcion as Descripcion, CASE When estado = 0 THEN 'Inactivo' When estado = 1 THEN 'Activo'   End  as Estado
	from Tbl_Tolerancia_riesgo where codigo <> 0
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_buscar_cliente]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_buscar_cliente]
	-- Add the parameters for the stored procedure here
	@nivelAcceso nvarchar(50),
	@codigoClinete nvarchar(50)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
IF @nivelAcceso =99
	

	select 
numero_id,
(select descripcion from Tbl_nacionalidad where codigo=pnfa21_codnacionalidad) as nacionalidad,
telefono, 
pnombre0,
snombre0,
papellido0,
sapellido0,
pjfa22_rtn
 from Tbl_masoli                
	  where codigocliente =@codigoClinete
 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_buscar_ordenCompra]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[sp_buscar_ordenCompra]
	-- Add the parameters for the stored procedure here
	@nivelAcceso nvarchar(50),
	@numeroBoleta nvarchar(50)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
IF @nivelAcceso =99
	SELECT  
		  *
	  FROM [BCVE].[dbo].[Tbl_orden_compra]
	  where num_boleta =@numeroBoleta
 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_carga_bene]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_carga_bene]
	-- Add the parameters for the stored procedure here
	 @pnfa21_numcontrato nvarchar(250),
	 @pnfa21_codcliente nvarchar(250),
	 @casabolsa  nvarchar(50),
	  @codigopais  nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT id as [Id], pnfa21_numcontrato as [Número de contrato], pnfa21_codcliente as [Código de cliente], pnfa21_nombrecompleto as [Nombre del cliente],pnfa21_porcentaje as [% de participación]
	from Tbl_PN_bene
	where ltrim(rtrim(pnfa21_numcontrato))= ltrim(rtrim(@pnfa21_numcontrato)) and
	ltrim(rtrim(pnfa21_codcliente))= ltrim(rtrim(@pnfa21_codcliente))    
	and estado_registro='P' and rtrim(ltrim(casa_bolsa)) =rtrim(ltrim(@casabolsa)) 
	and rtrim(ltrim(codigo_pais))=rtrim(ltrim(@codigopais))
END
GO
/****** Object:  StoredProcedure [dbo].[SP_carga_casa]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_carga_casa]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT id, sigla
    FROM dbo.Tbl_Puestos_Bolsa
     WHERE estado=1
	ORDER BY id ASC
END

GO
/****** Object:  StoredProcedure [dbo].[sp_CARGA_CONS_FUEVA]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CARGA_CONS_FUEVA]
	-- Add the parameters for the stored procedure here
	 @flag nvarchar(50),
	 @id nvarchar(50)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
	if @flag=1 -- búsqueda por código
	    SELECT a.id , id_gestion,  b.descripcion AS sector, c.sigla, a.fecha_grabacion, CASE a.estado_revision WHEN 2 THEN 'Aprobado' WHEN 1 THEN 'No Aprobado' END AS ESTADO
        FROM dbo.Tbl_sector_publico a, Tbl_tipo_sectoeco b, Tbl_Puestos_Bolsa c
        WHERE a.id_sector=b.codigo AND a.casabolsa=c.id AND a.id_gestion=@id

   if @flag=2 -- búsqueda por sector
        SELECT a.id , id_gestion,  b.descripcion AS sector, c.sigla, a.fecha_grabacion, CASE a.estado_revision WHEN 2 THEN 'Aprobado' WHEN 1 THEN 'No Aprobado' END AS ESTADO
        FROM dbo.Tbl_sector_publico a, Tbl_tipo_sectoeco b, Tbl_Puestos_Bolsa c
        WHERE a.id_sector=b.codigo AND a.casabolsa=c.id AND a.id_sector=@id


    if @flag=3 -- búsqueda por estado
	    SELECT a.id , id_gestion,  b.descripcion AS sector, c.sigla, a.fecha_grabacion, CASE a.estado_revision WHEN 2 THEN 'Aprobado' WHEN 1 THEN 'No Aprobado' END AS ESTADO
        FROM dbo.Tbl_sector_publico a, Tbl_tipo_sectoeco b, Tbl_Puestos_Bolsa c
        WHERE a.id_sector=b.codigo AND a.casabolsa=c.id AND a.estado_revision=@id

   if @flag=4  -- reconstruye toda la data.
       SELECT  id_gestion, opc1_1, opc1_2, opc2_1, opc2_2, opc2_3, opc2_4, opc2_5, opc2_6, opc2_7, opc2_8, opc3_1, opc3_2, opc3_3, opc3_4, opc3_5, opc3_6, opc3_7, opc3_8, opc3_9, opc3_10, opc3_11, opc4_1, opc4_2, opc5_1, opc5_2, opc6_1, opc6_2, opc7_1, opc7_2, opc8_1, opc8_2, opc9_1, opc9_2, opc10_1, opc10_2, opc11_1, SEPRI14_1, SEPRI14_2, SEPRI2_1, SEPRI2_2, SEPRI3_1, SEPRI3_2, SEPRI4_1, SEPRI4_2, SEPRI5_1, SEPRI5_2, SEPRI5_3, SEPRI5_4, SEPRI6_1, SEPRI6_2, FDI11_1, FDI11_2, FDI10_1, FDI10_2, FDI9_1, FDI9_2, FDI8_1, FDI8_2, FDI4_1, FDI4_2, FDI3_1, FDI3_2, id_sector, cod_usu, casabolsa, fecha_grabacion, estado_revision
       FROM dbo.Tbl_sector_publico
	   where id=@id

 END

GO
/****** Object:  StoredProcedure [dbo].[sp_CARGA_CONS_VEING]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CARGA_CONS_VEING]
	-- Add the parameters for the stored procedure here
	@id nvarchar(50),
	@idflag nvarchar(50)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    
 if @idflag=1  -- búsqueda por código
   
		SELECT a.id 
			  ,a.fechasolicitud 
			  ,upper(a.coddeposidirecto) as coddeposidirecto
			  ,b.pais--a.paisorigen as [Nomnbre del País]
			   ,upper(a.codigoisin)  as codigoisin
			  ,e.descripcion as tipoinstru --a.tipoinstru 
			  ,a.fechaemi 
			  ,a.fechavenci 
			  ,a.valornominal 
			   ,c.descripcionestado--a.estadosolici as Estado
			 -- ,case a.estadoproceso when 2 then 'Aprodada' WHEN 3 then 'Rechazada' end as estadoproceso
			  ,d.descripcion as estadoproceso
			  ,a.codusuario 
		  FROM Tbl_soliregistro a, Tbl_paises b, Tbl_estadofinalsolici c, Tbl_estado_proceso d,Tbl_tipo_instrumento e
		  where a.paisorigen=b.codigo and a.estadosolici=c.codigo and a.estadoproceso= d.codigo and RTRIM(LTRIM(a.id)) =@id and
		  a.tipoinstru =e.codigo
 else
	 
	 if @idflag=2  -- búsqueda por estado del proceso
	
			SELECT a.id 
			  ,a.fechasolicitud 
			  ,upper(a.coddeposidirecto ) as coddeposidirecto
			  ,b.pais--a.paisorigen as [Nomnbre del País]
			   ,upper(a.codigoisin) as codigoisin
			   ,e.descripcion as tipoinstru --a.tipoinstru 
			  ,a.fechaemi 
			  ,a.fechavenci 
			  ,a.valornominal 
			   ,c.descripcionestado--a.estadosolici as Estado
			 -- ,case a.estadoproceso when 2 then 'Aprodada' WHEN 3 then 'Rechazada' end as estadoproceso
			  ,d.descripcion as estadoproceso
			  ,a.codusuario 
		  FROM Tbl_soliregistro a, Tbl_paises b, Tbl_estadofinalsolici c, Tbl_estado_proceso d,Tbl_tipo_instrumento e
		  where a.paisorigen=b.codigo and a.estadosolici=c.codigo and a.estadoproceso= d.codigo and RTRIM(LTRIM(a.estadoproceso)) =@id and
		  a.tipoinstru =e.codigo

	else
		 if @idflag=3  -- búsqueda por estado del proceso
	
			SELECT a.id 
			  ,a.fechasolicitud 
			  ,upper(a.coddeposidirecto) as  coddeposidirecto
			  ,b.pais--a.paisorigen as [Nomnbre del País]
			   ,upper(a.codigoisin) as   codigoisin
			   ,e.descripcion as tipoinstru --a.tipoinstru 
			  ,a.fechaemi 
			  ,a.fechavenci 
			  ,a.valornominal 
			   ,c.descripcionestado--a.estadosolici as Estado
			 -- ,case a.estadoproceso when 2 then 'Aprodada' WHEN 3 then 'Rechazada' end as estadoproceso
			  ,d.descripcion as estadoproceso
			  ,a.codusuario 
		  FROM Tbl_soliregistro a, Tbl_paises b, Tbl_estadofinalsolici c, Tbl_estado_proceso d, Tbl_tipo_instrumento e
			  where a.paisorigen=b.codigo and a.estadosolici=c.codigo and a.estadoproceso= d.codigo and SUBSTRING(a.fechasolicitud,1,10) =@id  and
		  a.tipoinstru =e.codigo

	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_carga_conse_adm]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_carga_conse_adm]
	-- Add the parameters for the stored procedure here
	 @numcontrato nvarchar(250),
	 @pjfa22_nombre nvarchar(250),
	 @casabolsa  nvarchar(50),
	  @codigopais  nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT id as [Id], numcontrato as [Número de contrato], pjfa22_nombre as [Nombre], 
    CASE When pjfa22_tipoid = 1 THEN 'Identidad' When pjfa22_tipoid = 2 THEN 'RTN' else 'Pasaporte'  End as [Tipo_Id],
	pjfa22_numeroid as [N° Id],pjfa22_cargo as [Cargo], 
	CASE When pjfa22_personapep = 1 THEN 'SI' else 'NO'  End as [PEP´S]
	from Tbl_PJ_consejoadm
	where ltrim(rtrim(numcontrato))= ltrim(rtrim(@numcontrato)) and
	ltrim(rtrim(@pjfa22_nombre))= ltrim(rtrim(@pjfa22_nombre))    
	and estado_registro='P' and rtrim(ltrim(casa_bolsa)) =rtrim(ltrim(@casabolsa)) 
	and rtrim(ltrim(codigo_pais))=rtrim(ltrim(@codigopais))
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CARGA_CONSU_REGEMIS]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

CREATE PROCEDURE [dbo].[SP_CARGA_CONSU_REGEMIS] 
	-- Add the parameters for the stored procedure here
	@flag nvarchar(50),
	@id  nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	if @flag='1' -- busca por código de solicitud 
	    SELECT a.id 
  			  ,a.fechasolicitud 
			  ,upper(a.coddeposidirecto) as coddeposidirecto
   			   ,upper(a.codigoisin)  as codigoisin
			  ,e.descripcion as tipoinstru 
			  ,a.fechaemi 
			  ,a.fechavenci 
			  ,a.codusuario 
		  FROM Tbl_soliregistro a,Tbl_estado_proceso d,Tbl_tipo_instrumento e
		  where RTRIM(LTRIM(a.id))=@id and a.estadoproceso= d.codigo  and
		  a.tipoinstru =e.codigo AND a.registrado_bcvn=1 AND a.estadopag=1
		    ORDER BY a.id desc

	if @flag='2'  -- busca por código ISIN
	     SELECT a.id 
  			  ,a.fechasolicitud 
			  ,upper(a.coddeposidirecto) as coddeposidirecto
   			   ,upper(a.codigoisin)  as codigoisin
			  ,e.descripcion as tipoinstru 
			  ,a.fechaemi 
			  ,a.fechavenci 
			  ,a.codusuario 
		  FROM Tbl_soliregistro a,   Tbl_estado_proceso d,Tbl_tipo_instrumento e
		  where RTRIM(LTRIM(upper(a.codigoisin)))LIKE '%' + upper(@id) + '%' and a.estadoproceso= d.codigo  and
		  a.tipoinstru =e.codigo AND a.registrado_bcvn=1 AND a.estadopag=1
		    ORDER BY a.id desc

	if @flag='3'  -- busca por fecha de emisión

        SELECT a.id 
  			  ,a.fechasolicitud 
			  ,upper(a.coddeposidirecto) as coddeposidirecto
   			   ,upper(a.codigoisin)  as codigoisin
			  ,e.descripcion as tipoinstru 
			  ,a.fechaemi 
			  ,a.fechavenci 
			  ,a.codusuario 
		  FROM Tbl_soliregistro a,   Tbl_estado_proceso d,Tbl_tipo_instrumento e
		  where RTRIM(LTRIM(a.fechaemi ))=@id and a.estadoproceso= d.codigo  and
		  a.tipoinstru =e.codigo AND a.registrado_bcvn=1 AND a.estadopag=1
		    ORDER BY a.id desc

END
GO
/****** Object:  StoredProcedure [dbo].[sp_carga_estruc_propie]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_carga_estruc_propie]
	-- Add the parameters for the stored procedure here
	 @numcontrato nvarchar(250),
	 @pjfa22_nombre nvarchar(250),
	 @casabolsa  nvarchar(50),
	  @codigopais  nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT id as [Id], numcontrato as [Número de contrato], pjfa22_nombre as [Nombre], pjfa22_nacionalidad as [Nacionalidad],pjfa22_numeroacciones as [N° Acciones]
	,CASE When pjfa22_tipoid = 1 THEN 'Identidad' When pjfa22_tipoid = 2 THEN 'RTN' else 'Pasaporte'  End as [Tipo_Id],
	pjfa22_numeroid as [N° Id],pjfa22_porcentajepartici as [% Participación],pjfa22_direcciondomi as [Dirección],
	CASE 
	When pjfa22_personapep = 1 THEN 'SI' else 'NO'  End as [PEP´S]
    from Tbl_PJ_estrupropie
	where ltrim(rtrim(numcontrato))= ltrim(rtrim(@numcontrato)) and
	ltrim(rtrim(@pjfa22_nombre))= ltrim(rtrim(@pjfa22_nombre))    
	and estado_registro='P' and rtrim(ltrim(casa_bolsa)) =rtrim(ltrim(@casabolsa)) 
	and rtrim(ltrim(codigo_pais))=rtrim(ltrim(@codigopais))
END
GO
/****** Object:  StoredProcedure [dbo].[sp_carga_fautorizacion]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_carga_fautorizacion]
	-- Add the parameters for the stored procedure here
	 @pnfa21_numcontrato nvarchar(150),
	 @pnfa21_codcliente nvarchar(150),
	 @casabolsa  nvarchar(50),
	  @codigopais  nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT id as [Id], pnfa21_numcontrato as [Número de contrato], pnfa21_codcliente as [Código de cliente], pnfa21_nombre as [Nombre del cliente],pnfa21_tipo_autorizaion as [Tipo de Autorización],
	 Case When pnfa21_fid = 1 THEN 'Identidad' When pnfa21_fid = 2 THEN 'RTN' else 'Pasaporte'  End as [Tipo_Id], pnfa21_fnum_id as [Número de Identidad]
	from Tbl_Firmas_Autorizadas
	where ltrim(rtrim(pnfa21_numcontrato))= ltrim(rtrim(@pnfa21_numcontrato)) and
	ltrim(rtrim(pnfa21_codcliente))= ltrim(rtrim(@pnfa21_codcliente))    
	and estado_registro='P' and rtrim(ltrim(casa_bolsa)) =rtrim(ltrim(@casabolsa)) 
	and rtrim(ltrim(codigo_pais))=rtrim(ltrim(@codigopais))
END
GO
/****** Object:  StoredProcedure [dbo].[sp_carga_fautorizacion_colocaciones]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_carga_fautorizacion_colocaciones]
	-- Add the parameters for the stored procedure here
	
	 @pnfa21_codcliente nvarchar(150)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT id as [Id], pnfa21_numcontrato as [Número de contrato], pnfa21_codcliente as [Código de cliente], pnfa21_nombre as [Nombre del cliente],pnfa21_tipo_autorizaion as [Tipo de Autorización],
	 Case When pnfa21_fid = 1 THEN 'Identidad' When pnfa21_fid = 2 THEN 'RTN' else 'Pasaporte'  End as [Tipo_Id], pnfa21_fnum_id as [Número de Identidad]
	from Tbl_Firmas_Autorizadas
	where 	ltrim(rtrim(pnfa21_codcliente))= ltrim(rtrim(@pnfa21_codcliente))    
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_carga_grid_reg_ve]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_carga_grid_reg_ve]
	-- Add the parameters for the stored procedure here
	@estado_reg   nvarchar(50), 
	@id_casabolsa    nvarchar(50),
	@id_gestion     nvarchar(50)
	--@cod_usur     nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
SELECT   case id_tipoinfo WHEN '1' THEN 'Legal'  WHEN '2' THEN 'Administrativa' WHEN '3' THEN 'Financiera' END AS tipoinfo, descripcion, case id_estadoactual WHEN '1' THEN 'Pendiente'  WHEN '2' THEN 'Entregado' END AS estadoactual, fecha_grabacion
FROM dbo.Tbl_sector_listadoadicional
WHERE id_casabolsa=@id_casabolsa AND estado_reg=@estado_reg AND id_gestion=@id_gestion --and cod_usur=@cod_usur
END
GO
/****** Object:  StoredProcedure [dbo].[sp_carga_pagorecibo]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_carga_pagorecibo]
	-- Add the parameters for the stored procedure here
	
	 @id_gestion nvarchar(250),
	 @cod_usu  nvarchar(50),
	 @flag  nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
	if @flag=1 --  carga lo grabado
	

		SELECT  a.id,a.id_gestion,e.sigla, c.descripcion AS formapago, a.numero_refe, a.fecha_pago, b.descripcion AS moneda, a.valorrecibo, a.fecha_grabacion
		FROM Tbl_detallepagoreci a, Tbl_monedas b, Tbl_tipo_formapago c, Tbl_soliregistro d, Tbl_Puestos_Bolsa e
		WHERE a.cod_tipo_moneda=b.codigo AND a.cod_formapago=c.codigo AND a.id_gestion=d.id 
		AND d.codcb=e.id AND  a.id_gestion =@id_gestion AND a.cod_usu=@cod_usu
		ORDER BY ID DESC
	
	 if @flag=2  -- reconstruye grid
	   
		SELECT id, id_gestion, fechaavisopago, fechalimitepago, recibede, cod_formapago, numero_refe, fecha_pago, cod_tipo_moneda, tipocambio, valorrecibo, cod_nobanco, valorletras, cod_conceptopago, fecha_grabacion,cod_formapago
		FROM Tbl_detallepagoreci
		WHERE id =@id_gestion AND cod_usu=@cod_usu
		ORDER BY ID DESC
	END
GO
/****** Object:  StoredProcedure [dbo].[SP_carga_parentesco]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[SP_carga_parentesco]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(LTRIM(codigo)) as codigo, rtrim(LTRIM(descripcion)) as descripcion
	FROM Tbl_parentesco
	WHERE estado=1
	ORDER BY codigo ASC
END

GO
/****** Object:  StoredProcedure [dbo].[sp_carga_PEP_Rel]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_carga_PEP_Rel]
	-- Add the parameters for the stored procedure here
	 @pnfa21_numcontrato nvarchar(250),
	 @pnfa21_codcliente nvarchar(250),
	 @casabolsa  nvarchar(50),
	  @codigopais  nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT id as [Id], pnfa21_numcontrato as [Número de contrato], pnfa21_codcliente as [Código de cliente], pnfa21_nombrecompleto as [Nombre del cliente],pnfa21_identidad as [Identidad], pnfa21_domicilio as [Domicilio]
	from Tbl_PEP_Rel_consa
	where ltrim(rtrim(pnfa21_numcontrato))= ltrim(rtrim(@pnfa21_numcontrato)) and
	ltrim(rtrim(pnfa21_codcliente))= ltrim(rtrim(@pnfa21_codcliente))    
	and estado_registro='P' and rtrim(ltrim(casa_bolsa)) =rtrim(ltrim(@casabolsa)) 
	and rtrim(ltrim(codigo_pais))=rtrim(ltrim(@codigopais))
END

GO
/****** Object:  StoredProcedure [dbo].[SP_carga_perf]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_carga_perf]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT codigo, sigla
    FROM Tbl_otorum_perf
    WHERE estado_perf=1
	ORDER BY id ASC
END

GO
/****** Object:  StoredProcedure [dbo].[SP_carga_porcentaje_comision]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_carga_porcentaje_comision]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT codigo as codigo, rtrim(LTRIM(descripcion)) as descripcion
	FROM Tbl_comisiones
	WHERE estado=1
	--ORDER BY codigo ASC
END
GO
/****** Object:  StoredProcedure [dbo].[SP_carga_rangos]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[SP_carga_rangos]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(LTRIM(codigo)) as codigo, rtrim(LTRIM(descripcion)) as descripcion
	FROM Tbl_rangos
	WHERE estado=1
	ORDER BY codigo ASC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_carga_refe]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_carga_refe]
	-- Add the parameters for the stored procedure here
	 @pnfa21_numcontrato nvarchar(250),
	 @pnfa21_codcliente nvarchar(250),
	 @casabolsa  nvarchar(50),
	 @codigopais  nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT id as [Id], numcontrato as [Número de contrato], pnfa21_numcontrato as [Código de cliente], pnfa21_nombrecompleto as [Nombre del cliente],pnfa21_nombrecontacto as [Contacto]
	,pnfa21_numerotelefono as [Telefono]
	from Tbl_PN_refe
	where ltrim(rtrim(numcontrato))= ltrim(rtrim(@pnfa21_numcontrato)) and
	ltrim(rtrim(pnfa21_numcontrato))= ltrim(rtrim(@pnfa21_codcliente))    
	and estado_registro='P' and rtrim(ltrim(casa_bolsa)) =rtrim(ltrim(@casabolsa)) 
	and rtrim(ltrim(codigo_pais))=rtrim(ltrim(@codigopais))
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CARGA_RESOLU]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_CARGA_RESOLU]
	-- Add the parameters for the stored procedure here
	 @flag nvarchar(50),
	 @id nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	IF @flag=0 -- para cargar la grid en modo consulta
		 SELECT a.id, a.id_gestion, b.sigla, CASE a.id_resolu WHEN '1' THEN 'Aprobada' WHEN '2' THEN 'No aprobada'END AS idresolu, a.numero_resu, a.fecha_envio, a.resumen_resu, a.fecha_grabacion
		FROM dbo.Tbl_bcvaut a, Tbl_Puestos_Bolsa b
		WHERE a.id_casabolsa=b.id
		ORDER BY a.fecha_grabacion desc
	
	if @flag=3 -- Para la pantalla de consulta

			  SELECT a.id, a.id_gestion, b.sigla, CASE a.id_resolu WHEN '1' THEN 'Aprobada' WHEN '2' THEN 'No aprobada'END AS idresolu, a.numero_resu, a.fecha_envio, a.resumen_resu, a.fecha_grabacion
				FROM dbo.Tbl_bcvaut a, Tbl_Puestos_Bolsa b
				WHERE a.id_resolu=@id
				ORDER BY a.fecha_grabacion desc

    IF @flag=4 -- PARA LA PANTALLA CONSULTA
	    	 SELECT a.id, a.id_gestion, b.sigla, CASE a.id_resolu WHEN '1' THEN 'Aprobada' WHEN '2' THEN 'No aprobada'END AS idresolu, a.numero_resu, a.fecha_envio, a.resumen_resu, a.fecha_grabacion
		     FROM dbo.Tbl_bcvaut a, Tbl_Puestos_Bolsa b
		     WHERE UPPER(RTRIM(LTRIM(a.numero_resu))) LIKE '%' + @id + '%'
		     ORDER BY a.fecha_grabacion desc
  
  IF @flag=5 -- PARA LA PANTALLA CONSULTA
	    	 SELECT a.id, a.id_gestion, b.sigla, CASE a.id_resolu WHEN '1' THEN 'Aprobada' WHEN '2' THEN 'No aprobada'END AS idresolu, a.numero_resu, a.fecha_envio, a.resumen_resu, a.fecha_grabacion
		     FROM dbo.Tbl_bcvaut a, Tbl_Puestos_Bolsa b
		     WHERE month(a.fecha_envio)=month (@id) AND year(a.fecha_envio)=year(@id) AND day(a.fecha_envio)=day(@id)
		     ORDER BY a.fecha_grabacion desc



	IF @flag=1
			SELECT 	id_resolu,numero_resu,resumen_resu
			FROM dbo.Tbl_bcvaut a
			WHERE A.id=@id
	ELSE    --- VERIFICA SI EXISTE PREVIAMENTE EL NÚMERO SE SOLICITUD
		    SELECT *
			FROM dbo.Tbl_bcvaut 
			WHERE id_gestion=@id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_carga_tipo_actividadecono]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_carga_tipo_actividadecono]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
SELECT codigo, descripcion
  FROM [BCVE].[dbo].tbl_tipo_act_econo
  where estado>0
 
  
END
GO
/****** Object:  StoredProcedure [dbo].[SP_carga_tipo_calificador]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[SP_carga_tipo_calificador]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(LTRIM(codigo)) as codigo, rtrim(LTRIM(descripcion)) as descripcion
	FROM Tbl_tipo_calificador
	WHERE estado=1
	--ORDER BY codigo ASC
END

GO
/****** Object:  StoredProcedure [dbo].[sp_carga_tipo_depositaria]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_carga_tipo_depositaria]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
SELECT codigo, descripcion
  FROM [BCVE].[dbo].tbl_tipo_depositaria
  where estado>0
  
END
GO
/****** Object:  StoredProcedure [dbo].[SP_carga_tipo_formareprese]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_carga_tipo_formareprese]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(LTRIM(codigo)) as codigo, rtrim(LTRIM(descripcion)) as descripcion
	FROM Tbl_tipo_formareprese
	WHERE estado=1
	--ORDER BY codigo ASC
END


GO
/****** Object:  StoredProcedure [dbo].[SP_carga_tipo_instrumento]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_carga_tipo_instrumento]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(LTRIM(codigo)) as codigo, rtrim(LTRIM(descripcion)) as descripcion
	FROM Tbl_tipo_instrumento
	WHERE estado=1
	--ORDER BY codigo ASC
END


GO
/****** Object:  StoredProcedure [dbo].[SP_carga_tipo_interes]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_carga_tipo_interes]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(LTRIM(codigo)) as codigo, rtrim(LTRIM(descripcion)) as descripcion
	FROM Tbl_tipo_interes
	WHERE estado=1
	--ORDER BY codigo ASC
END

GO
/****** Object:  StoredProcedure [dbo].[SP_carga_tipo_mercado_nego]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_carga_tipo_mercado_nego]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(LTRIM(codigo)) as codigo, rtrim(LTRIM(descripcion)) as descripcion
	FROM Tbl_tipo_mecanismo_nego
	WHERE estado=1
	--ORDER BY codigo ASC
END
GO
/****** Object:  StoredProcedure [dbo].[SP_carga_tipo_periodicidad]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_carga_tipo_periodicidad]
	-- Add the parameters for the stored procedure here
	 @flag nvarchar(50),
	  @id nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	if @flag=1
		SELECT rtrim(LTRIM(codigo)) as codigo, rtrim(LTRIM(descripcion)) as descripcion
		FROM Tbl_tipo_periodicidad
		WHERE estado=1
		ORDER BY codigo ASC
else
	    SELECT valor
		FROM Tbl_tipo_periodicidad
		WHERE estado=1 and codigo=@id
END
GO
/****** Object:  StoredProcedure [dbo].[SP_carga_tipo_solicitante]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[SP_carga_tipo_solicitante]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(LTRIM(codigo)) as codigo, rtrim(LTRIM(descripcion)) as descripcion
	FROM Tbl_tipo_solicitante
	WHERE estado=1
	--ORDER BY codigo ASC
END

GO
/****** Object:  StoredProcedure [dbo].[sp_carga_tipo_solicitud]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_carga_tipo_solicitud]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
SELECT codigo as [Código], descripcionestado as [Nombre del Tipo de Solicitud] , case estado when '1' then 'Activo' WHEN '2' THEN 'Inactivo' END as [Estado]
  FROM [BCVE].[dbo].[Tbl_estadofinalsolici]
  where rtrim(ltrim(codigo))>  0
   ORDER BY estado ASC
  
END
GO
/****** Object:  StoredProcedure [dbo].[sp_carga_tipo_solicitud_carga]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_carga_tipo_solicitud_carga]
	-- Add the parameters for the stored procedure here
     @codigo     nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select codigo, descripcionestado,detalle,estado 
	from dbo.Tbl_estadofinalsolici
	where rtrim(ltrim(codigo))=@codigo 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_carga_usudef]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_carga_usudef]
	-- Add the parameters for the stored procedure here
	@flag  nvarchar(50),
	@id    nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	

	if @flag=0
	
		
		SELECT a.id, a.usuario, a.nombre_usuario, a.Identidad,  a.correo_usu, a.cod_perfil, b.sigla AS casa,  CASE a.estado WHEN 1 THEN 'Activo' WHEN 2 THEN 'Inactivo' END AS estado
		FROM dbo.Tbl_otorum a, Tbl_Puestos_Bolsa b
		WHERE  a.codigo_cb=b.id
	

    if @flag=3
		
		select *
		FROM dbo.Tbl_otorum
		where id=@id 

END
GO
/****** Object:  StoredProcedure [dbo].[sp_cargadepto]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_cargadepto] 
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT ltrim(rtrim(codigo))as codigo, rtrim(ltrim(descripcion)) as descripcion
	 from tbl_deptos 
	where estado=1
	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Conocimiento_inver]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Conocimiento_inver]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(LTRIM(codigo)) as codigo, rtrim(LTRIM(descripcion)) as descripcion
	FROM Tbl_conocimiento_inver
	WHERE estado=1
	ORDER BY codigo ASC
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSU_COMPRA]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CONSU_COMPRA] 
	-- Add the parameters for the stored procedure here
	 @infovalor nvarchar(250),
	 @seleccion   nvarchar(2)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
		IF (@seleccion = 1) -- tipo de identificación
        BEGIN 
              SELECT id as [Id],  CASE When tiporden_compra = 1 THEN 'ExtraBursatil-Internacional' When tiporden_compra = 2 THEN 'Bursatil Internacional' else 'Bursatil Nacional'  End as [Tipo Orden de Compra] , fechsoli as [Fecha de solicitud], rtrim(ltrim(nom_completo)) AS [Nombre del Comprador] ,rtrim(ltrim(emisor)) as Emisor
              FROM Tbl_orden_compra  
	           WHERE rtrim(ltrim(tiporden_compra))= @infovalor
        END
	

		IF (@seleccion = 2) -- tipo de operación
        BEGIN 
              SELECT id as [Id],  CASE When a.tiporden_compra = 1 THEN 'ExtraBursatil-Internacional' When a.tiporden_compra = 2 THEN 'Bursatil Internacional' else 'Bursatil Nacional'  End as [Tipo Orden de Compra] , a.fechsoli as [Fecha de solicitud], rtrim(ltrim(a.nom_completo)) AS [Nombre del Comprador] ,rtrim(ltrim(a.emisor)) as [Emisor], rtrim(ltrim(b.descripcion)) as [Tipo Operacion]
              FROM Tbl_orden_compra a,Tbl_Tipo_Operacion b
	           WHERE rtrim(ltrim(a.TipOper))= @infovalor and a.TipOper=b.codigo
        END	
	
	   
        IF (@seleccion = 3) -- fecha de solicitud
        BEGIN 
              SELECT id as [Id], CASE When tiporden_compra = 1 THEN 'ExtraBursatil-Internacional' When tiporden_compra = 2 THEN 'Bursatil Internacional' else 'Bursatil Nacional'  End as [Tipo Orden de Compra] , fechsoli as [Fecha de solicitud], rtrim(ltrim(nom_completo)) AS [Nombre del Comprador] ,rtrim(ltrim(emisor)) as Emisor
              FROM Tbl_orden_compra
	           WHERE substring(fechsoli,7,4)=substring(@infovalor,7,4) AND substring(fechsoli,4,2)=substring(@infovalor,4,2) AND substring(fechsoli,1,2)=substring(fechsoli,1,2)
        END	


        


END
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSU_CONTRATO]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_CONSU_CONTRATO] 
	-- Add the parameters for the stored procedure here
	 @infovalor nvarchar(250),
	 @seleccion   nvarchar(2)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

 
	    IF (@seleccion = 1) -- número de contrato
        BEGIN 
              SELECT a.numcontrato as [Número de contrato],a.fechasoli as [Fecha de solicitud], rtrim(ltrim(b.descripcion)) AS [Tipo de solicitud] ,rtrim(ltrim(c.descripcion)) as Sector
              FROM Tbl_masoli a, Tbl_tipo_solicitante b, Tbl_tipo_sectoeco c
	           WHERE rtrim(ltrim(a.numcontrato))= @infovalor and a.tipo_soli=b.codigo and a.tipo_sector=c.codigo
       END
	
		IF (@seleccion = 2) -- tipo de identificación
        BEGIN 
              SELECT a.numcontrato as [Número de contrato],a.fechasoli as [Fecha de solicitud], rtrim(ltrim(b.descripcion)) AS [Tipo de solicitud] ,rtrim(ltrim(c.descripcion)) as Sector
              FROM Tbl_masoli a, Tbl_tipo_solicitante b, Tbl_tipo_sectoeco c
	           WHERE rtrim(ltrim(a.tipo_id))= @infovalor and a.tipo_soli=b.codigo and a.tipo_sector=c.codigo
        END
	

		IF (@seleccion = 3) -- tipo de solicitante
        BEGIN 
              SELECT a.numcontrato as [Número de contrato],a.fechasoli as [Fecha de solicitud], rtrim(ltrim(b.descripcion)) AS [Tipo de solicitud] ,rtrim(ltrim(c.descripcion)) as Sector
              FROM Tbl_masoli a, Tbl_tipo_solicitante b, Tbl_tipo_sectoeco c
	           WHERE rtrim(ltrim(a.tipo_soli))= @infovalor and a.tipo_soli=b.codigo and a.tipo_sector=c.codigo
        END	
	
	    IF (@seleccion = 4) -- tipo de sector económico
        BEGIN 
              SELECT a.numcontrato as [Número de contrato],a.fechasoli as [Fecha de solicitud], rtrim(ltrim(b.descripcion)) AS [Tipo de solicitud] ,rtrim(ltrim(c.descripcion)) as Sector
              FROM Tbl_masoli a, Tbl_tipo_solicitante b, Tbl_tipo_sectoeco c
	           WHERE rtrim(ltrim(a.tipo_sector))= @infovalor and a.tipo_soli=b.codigo and a.tipo_sector=c.codigo
        END	

        IF (@seleccion = 5) -- país
        BEGIN 
              SELECT a.numcontrato as [Número de contrato],a.fechasoli as [Fecha de solicitud], rtrim(ltrim(b.descripcion)) AS [Tipo de solicitud] ,rtrim(ltrim(c.descripcion)) as Sector
              FROM Tbl_masoli a, Tbl_tipo_solicitante b, Tbl_tipo_sectoeco c
	           WHERE rtrim(ltrim(a.cod_pais_list))= @infovalor and a.tipo_soli=b.codigo and a.tipo_sector=c.codigo
        END	

        IF (@seleccion = 6) -- fecha de solicitud
        BEGIN 
              SELECT a.numcontrato as [Número de contrato],a.fechasoli as [Fecha de solicitud], rtrim(ltrim(b.descripcion)) AS [Tipo de solicitud] ,rtrim(ltrim(c.descripcion)) as Sector
              FROM Tbl_masoli a, Tbl_tipo_solicitante b, Tbl_tipo_sectoeco c
	           WHERE a.tipo_soli=b.codigo and a.tipo_sector=c.codigo
	           AND substring(a.fechasoli,7,4)=substring(@infovalor,7,4) AND substring(a.fechasoli,4,2)=substring(@infovalor,4,2) AND substring(a.fechasoli,1,2)=substring(@infovalor,1,2)
        END	


        IF (@seleccion = 7) -- Estado solicitud
        BEGIN 
              SELECT a.numcontrato as [Número de contrato],a.fechasoli as [Fecha de solicitud], rtrim(ltrim(b.descripcion)) AS [Tipo de solicitud] ,rtrim(ltrim(c.descripcion)) as Sector
              FROM Tbl_masoli a, Tbl_tipo_solicitante b, Tbl_tipo_sectoeco c
	           WHERE rtrim(ltrim(a.exclu_estado_solici))= @infovalor and a.tipo_soli=b.codigo and a.tipo_sector=c.codigo
        END	




END
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSU_CONTRATOFormu]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_CONSU_CONTRATOFormu] 
	-- Add the parameters for the stored procedure here
	 @infovalor nvarchar(250),
	 @seleccion   nvarchar(2)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

 
	    IF (@seleccion = 1) -- número de contrato
        BEGIN 
              SELECT a.codigocliente as [Codigo de Cliente],a.numcontrato as [Número de contrato],a.fechasoli as [Fecha de solicitud], rtrim(ltrim(b.descripcion)) AS [Tipo de solicitud] ,rtrim(ltrim(c.descripcion)) as Sector
              FROM Tbl_masoli a, Tbl_tipo_solicitante b, Tbl_tipo_sectoeco c
	           WHERE rtrim(ltrim(a.numcontrato))= @infovalor and a.tipo_soli=b.codigo and a.tipo_sector=c.codigo
       END
	
		IF (@seleccion = 2) -- tipo de identificación
        BEGIN 
              SELECT a.codigocliente as [Codigo de Cliente], a.numcontrato as [Número de contrato],a.fechasoli as [Fecha de solicitud], rtrim(ltrim(b.descripcion)) AS [Tipo de solicitud] ,rtrim(ltrim(c.descripcion)) as Sector
              FROM Tbl_masoli a, Tbl_tipo_solicitante b, Tbl_tipo_sectoeco c
	           WHERE rtrim(ltrim(a.tipo_id))= @infovalor and a.tipo_soli=b.codigo and a.tipo_sector=c.codigo
        END
	

		IF (@seleccion = 3) -- tipo de solicitante
        BEGIN 
              SELECT a.codigocliente as [Codigo de Cliente], a.numcontrato as [Número de contrato],a.fechasoli as [Fecha de solicitud], rtrim(ltrim(b.descripcion)) AS [Tipo de solicitud] ,rtrim(ltrim(c.descripcion)) as Sector
              FROM Tbl_masoli a, Tbl_tipo_solicitante b, Tbl_tipo_sectoeco c
	           WHERE rtrim(ltrim(a.tipo_soli))= @infovalor and a.tipo_soli=b.codigo and a.tipo_sector=c.codigo
        END	
	
	    IF (@seleccion = 4) -- tipo de sector económico
        BEGIN 
              SELECT a.codigocliente as [Codigo de Cliente], a.numcontrato as [Número de contrato],a.fechasoli as [Fecha de solicitud], rtrim(ltrim(b.descripcion)) AS [Tipo de solicitud] ,rtrim(ltrim(c.descripcion)) as Sector
              FROM Tbl_masoli a, Tbl_tipo_solicitante b, Tbl_tipo_sectoeco c
	           WHERE rtrim(ltrim(a.tipo_sector))= @infovalor and a.tipo_soli=b.codigo and a.tipo_sector=c.codigo
        END	

        IF (@seleccion = 5) -- país
        BEGIN 
              SELECT a.codigocliente as [Codigo de Cliente], a.numcontrato as [Número de contrato],a.fechasoli as [Fecha de solicitud], rtrim(ltrim(b.descripcion)) AS [Tipo de solicitud] ,rtrim(ltrim(c.descripcion)) as Sector
              FROM Tbl_masoli a, Tbl_tipo_solicitante b, Tbl_tipo_sectoeco c
	           WHERE rtrim(ltrim(a.cod_pais_list))= @infovalor and a.tipo_soli=b.codigo and a.tipo_sector=c.codigo
        END	

        IF (@seleccion = 6) -- fecha de solicitud
        BEGIN 
              SELECT a.codigocliente as [Codigo de Cliente], a.numcontrato as [Número de contrato],a.fechasoli as [Fecha de solicitud], rtrim(ltrim(b.descripcion)) AS [Tipo de solicitud] ,rtrim(ltrim(c.descripcion)) as Sector
              FROM Tbl_masoli a, Tbl_tipo_solicitante b, Tbl_tipo_sectoeco c
	           WHERE a.tipo_soli=b.codigo and a.tipo_sector=c.codigo
	           AND substring(a.fechasoli,7,4)=substring(@infovalor,7,4) AND substring(a.fechasoli,4,2)=substring(@infovalor,4,2) AND substring(a.fechasoli,1,2)=substring(@infovalor,1,2)
        END	


        IF (@seleccion = 7) -- Estado solicitud
        BEGIN 
              SELECT a.codigocliente as [Codigo de Cliente], a.numcontrato as [Número de contrato],a.fechasoli as [Fecha de solicitud], rtrim(ltrim(b.descripcion)) AS [Tipo de solicitud] ,rtrim(ltrim(c.descripcion)) as Sector
              FROM Tbl_masoli a, Tbl_tipo_solicitante b, Tbl_tipo_sectoeco c
	           WHERE rtrim(ltrim(a.exclu_estado_solici))= @infovalor and a.tipo_soli=b.codigo and a.tipo_sector=c.codigo
        END	




END
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSU_FATCA]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_CONSU_FATCA] 
	-- Add the parameters for the stored procedure here
	 @infovalor nvarchar(250),
	 @seleccion   nvarchar(2)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

 
	    IF (@seleccion = 1) -- número de contrato
        BEGIN 
              SELECT a.Id as [Gestión],a.Num_Contrato as [Numero de Contrato],a.Cod_Cliente as [Codigo del Cliente],a.nombre as [Nombre]
              FROM Tbl_FATCA a
	           WHERE rtrim(ltrim(a.Num_Contrato))= @infovalor 
       END

	    IF (@seleccion = 2) -- número de contrato
        BEGIN 
              SELECT a.Id as [Gestión], a.Num_Contrato as [Numero de Contrato],a.Cod_Cliente as [Codigo del Cliente],a.nombre as [Nombre]
              FROM Tbl_FATCA a
	           WHERE rtrim(ltrim(a.Cod_Cliente))= @infovalor 
       END
	
		IF (@seleccion = 3) -- tipo de identificación
        BEGIN 
               SELECT a.Id as [Gestión], a.Num_Contrato as [Numero de Contrato],a.Cod_Cliente as [Codigo del Cliente],a.nombre as [Nombre]
              FROM Tbl_FATCA a
	           WHERE rtrim(ltrim(a.tipo_id))= @infovalor 
        END
	

		




END
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSU_FINAL]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_CONSU_FINAL] 
	-- Add the parameters for the stored procedure here
	 @infovalor nvarchar(250),
	 @seleccion   nvarchar(2)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

 
	    IF (@seleccion = 1) -- número de contrato
        BEGIN 
              SELECT a.Id as [Gestión],a.Num_Contrato as [Numero de Contrato],a.Cod_Cliente as [Codigo del Cliente],a.nombre1 as [Nombre]
              FROM Tbl_Ben_Final a
	           WHERE rtrim(ltrim(a.Num_Contrato))= @infovalor 
       END

	    IF (@seleccion = 2) -- número de contrato
        BEGIN 
              SELECT a.Id as [Gestión], a.Num_Contrato as [Numero de Contrato],a.Cod_Cliente as [Codigo del Cliente],a.nombre1 as [Nombre]
              FROM Tbl_Ben_Final a
	           WHERE rtrim(ltrim(a.Cod_Cliente))= @infovalor 
       END
	
		IF (@seleccion = 3) -- tipo de identificación
        BEGIN 
               SELECT a.Id as [Gestión], a.Num_Contrato as [Numero de Contrato],a.Cod_Cliente as [Codigo del Cliente],a.nombre1 as [Nombre]
              FROM Tbl_Ben_Final a
	           WHERE rtrim(ltrim(a.tipo_identif))= @infovalor 
        END
	

		




END
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSU_ID_REQUEADICIO]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_CONSU_ID_REQUEADICIO]
	-- Add the parameters for the stored procedure here
@id_sector   nvarchar(50),
@id_gestion  nvarchar(50),
@id_casabolsa nvarchar(50),
@cod_usur     nvarchar(50),
@id_tipoinfo  nvarchar(50),
@descripcion  nvarchar(50),
@id_estadoactual   nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
		select *
		from Tbl_sector_listadoadicional
		where rtrim(ltrim(id_sector))=@id_sector and rtrim(ltrim(id_gestion))=@id_gestion
		and ltrim(rtrim(id_casabolsa)) =@id_casabolsa and ltrim(rtrim(cod_usur)) =@cod_usur
		and ltrim(rtrim(id_tipoinfo))=@id_tipoinfo and ltrim(rtrim(@descripcion))=descripcion
		and ltrim(rtrim(id_estadoactual))=@id_estadoactual
END

GO
/****** Object:  StoredProcedure [dbo].[SP_CONSU_ID_REVISION_OF]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_CONSU_ID_REVISION_OF]
	-- Add the parameters for the stored procedure here
@id_sector   nvarchar(50),
@id_gestion  nvarchar(50),
@id_casabolsa nvarchar(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   IF @id_sector=1
		select *
		from Tbl_sector_publico
		where  rtrim(ltrim(id_gestion))=@id_gestion
		and ltrim(rtrim(casabolsa)) =@id_casabolsa 
		
		
END

GO
/****** Object:  StoredProcedure [dbo].[SP_CONSU_ID_SOLICIREG_VE]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_CONSU_ID_SOLICIREG_VE]
	-- Add the parameters for the stored procedure here
@coddeposidirecto nvarchar(50),
@codigoisin  nvarchar(50),
@codcb    nvarchar(50),
@nivel_acceso nvarchar(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   IF @nivel_acceso=99
 		select id
		from Tbl_soliregistro
		where rtrim(ltrim(coddeposidirecto))=@coddeposidirecto and rtrim(ltrim(codigoisin))=@codigoisin
   
    else
		select id
		from Tbl_soliregistro
		where rtrim(ltrim(coddeposidirecto))=@coddeposidirecto and rtrim(ltrim(codigoisin))=@codigoisin
		and ltrim(rtrim(codcb)) =@codcb
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSU_SOLICIREG_VE]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_CONSU_SOLICIREG_VE]
	-- Add the parameters for the stored procedure here
         @numidsolic nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
  SELECT *
  FROM [BCVE].[dbo].[Tbl_soliregistro]
  where coddeposidirecto=@numidsolic
  
END
GO
/****** Object:  StoredProcedure [dbo].[sp_consulta_idautorec]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_consulta_idautorec]
	-- Add the parameters for the stored procedure here
	
@id_gestion       nvarchar(50)
as

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here	
	SELECT id 
	FROM Tbl_bcvaut
	WHERE id_gestion=@id_gestion

END
GO
/****** Object:  StoredProcedure [dbo].[sp_consulta_idpagorec]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_consulta_idpagorec]
	-- Add the parameters for the stored procedure here
	
@id_gestion       nvarchar(50)
as

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here	
	SELECT id 
	FROM Tbl_detallepagoreci
	WHERE id_gestion=@id_gestion

END

GO
/****** Object:  StoredProcedure [dbo].[sp_datos_casas]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_datos_casas]
	-- Add the parameters for the stored procedure here
	 @flag     nvarchar(50),
	 @sigla      nvarchar(50),
	 @nombrecasa nvarchar(150),
	 @direccion  nvarchar(150),
	 @num_tel     nvarchar(50),
	 @num_fax     nvarchar(50),
	 @num_apartado  nvarchar(50),
	 @nombre_gerente nvarchar(150),
	 @correo_gerente nvarchar(50),
	 @estado         nvarchar(50),
	 @coord_x_space  nvarchar(50),
	 @coord_y_space  nvarchar(50),
	 @coord_z_space  nvarchar(50),
	 @cod_swift      nvarchar(50),
	 @id             nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

  if @flag =0 -- actualiza el registro principal del usuario por intentos fallidos
	SELECT id, sigla, nombrecasa, num_tel nombre_gerente, CASE estado WHEN 1 THEN 'Activa' WHEN 2 THEN 'Inactiva' END AS estado,cod_swift
     FROM dbo.Tbl_Puestos_Bolsa
    -- WHERE estado IN ('1','0')

  if @flag =1
         
		INSERT INTO dbo.Tbl_Puestos_Bolsa (sigla, nombrecasa, direccion, num_tel, num_fax, num_apartado, nombre_gerente, correo_gerente, estado, coord_x_space, coord_y_space, coord_z_space, cod_swift)
		VALUES (@sigla, @nombrecasa, @direccion, @num_tel, @num_fax, @num_apartado,  @nombre_gerente, @correo_gerente, @estado, '0', '0', '0', @cod_swift)

  if @flag =2
      
		UPDATE dbo.Tbl_Puestos_Bolsa
		SET 
			  sigla = @sigla
			, nombrecasa = @nombrecasa
			, direccion = @direccion
			, num_tel = @num_tel
			, num_fax = @num_fax
			, num_apartado = @num_apartado
			, nombre_gerente = @nombre_gerente
			, correo_gerente = @correo_gerente
			, estado = @estado
			, coord_x_space = 0
			, coord_y_space = 0
			, coord_z_space = 0
			, cod_swift = @cod_swift
		WHERE id =@id


	if @flag =3
		 SELECT *
         FROM Tbl_Puestos_Bolsa
         WHERE  id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_datos_perf]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_datos_perf]
	-- Add the parameters for the stored procedure here
	 @flag     nvarchar(50),
	 @sigla      nvarchar(50),
	 @codigo     nvarchar(50),
	 @descripcion  nvarchar(150),
	 @estado       nvarchar(50),
	 @id             nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

  if @flag =0 -- actualiza el registro principal del usuario por intentos fallidos

	  SELECT id, codigo, sigla, descripcion, fechagrab, usugraba, fechamodi, usumodi, case estado_perf WHEN 1 THEN 'Activo' WHEN 2 THEN 'Inactivo' END AS estado
	  FROM dbo.Tbl_otorum_perf


  if @flag =1
          
			INSERT INTO dbo.Tbl_otorum_perf (codigo, sigla, descripcion, fechagrab, usugraba, fechamodi, usumodi, estado_perf)
			VALUES (@codigo, @sigla, @descripcion, CONVERT(VARCHAR,getdate(),109), @id , CONVERT(VARCHAR,getdate(),109), @id , @estado)

	
  if @flag =2
     
		UPDATE dbo.Tbl_otorum_perf
		SET 
			sigla = @sigla,
			descripcion = @descripcion,
			fechamodi =CONVERT(VARCHAR,getdate(),109),
			usumodi = @id,
			estado_perf = @estado 
        where id=@id

	if @flag =3
		 SELECT *
         FROM dbo.Tbl_otorum_perf
         WHERE  id=@id
END

GO
/****** Object:  StoredProcedure [dbo].[sp_datos_solworkemai]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_datos_solworkemai]
	-- Add the parameters for the stored procedure here
	@flag nvarchar(50),
	@id nvarchar(50)
AS
BEGIN
	DECLARE @usuario nvarchar(50)
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
	if @flag=0
	      set @usuario= (SELECT codusuario FROM Tbl_soliregistro WHERE id=@id)
     
			SELECT id,correo_usu, correo_auto, cod_perfil, codigo_cb, nivel_acceso, estado
			FROM dbo.Tbl_otorum
			WHERE usuario=@usuario
  
 

END
GO
/****** Object:  StoredProcedure [dbo].[sp_datos_solworkemai1]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_datos_solworkemai1]
	-- Add the parameters for the stored procedure here

AS
BEGIN
	
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
	
	     -- set @usuario= (SELECT codusuario FROM Tbl_soliregistro WHERE id=@id)
   
         SELECT correo_usu as oficialcumpli
         FROM Tbl_otorum 
         WHERE estado=1 AND nivel_acceso=14

END
GO
/****** Object:  StoredProcedure [dbo].[sp_deptomuni]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_deptomuni] 
	-- Add the parameters for the stored procedure here

     @depto nvarchar(2)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT codmun as codigo, DESDEPMUN as descripcion     
    FROM [BCVE].[dbo].[Tbl_deptomuni]
    where rtrim(ltrim(CODDEP)) =@depto
	
END

GO
/****** Object:  StoredProcedure [dbo].[SP_ELIMINA_ANO_OPERA]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ELIMINA_ANO_OPERA]
	-- Add the parameters for the stored procedure here
   
   @codigo nchar(10)
   
   
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
DELETE  FROM dbo.Tbl_ano_opera
Where codigo = @codigo
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ELIMINA_APORTE]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ELIMINA_APORTE]
	-- Add the parameters for the stored procedure here
   
   @codigo nchar(10)
   
   
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
DELETE  FROM dbo.Tbl_Aporte_Capital
Where codigo = @codigo
END
GO
/****** Object:  StoredProcedure [dbo].[sp_elimina_bene]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[sp_elimina_bene]
	-- Add the parameters for the stored procedure here
	 @ID_BENE nvarchar(50)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE dbo.Tbl_PN_bene
    SET estado_registro = 'N'
    WHERE id =rtrim(ltrim(@ID_BENE))

END
GO
/****** Object:  StoredProcedure [dbo].[SP_ELIMINA_CONO_INVER]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ELIMINA_CONO_INVER]
	-- Add the parameters for the stored procedure here
   
   @codigo nchar(10)
   
   
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
DELETE  FROM dbo.Tbl_conocimiento_inver
Where codigo = @codigo
END
GO
/****** Object:  StoredProcedure [dbo].[sp_elimina_conse_adm]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_elimina_conse_adm]
	-- Add the parameters for the stored procedure here
	 @ID_CONSE nvarchar(50)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE dbo.Tbl_PJ_consejoadm
    SET estado_registro = 'N'
    WHERE id =rtrim(ltrim(@ID_CONSE))

END
GO
/****** Object:  StoredProcedure [dbo].[SP_ELIMINA_CPAGO]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ELIMINA_CPAGO]
	-- Add the parameters for the stored procedure here
   
   @codigo nvarchar(50)
   
   
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
DELETE  FROM dbo.Tbl_tipo_conceptopago
Where codigo = @codigo
END
GO
/****** Object:  StoredProcedure [dbo].[sp_elimina_estru_prop]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_elimina_estru_prop]
	-- Add the parameters for the stored procedure here
	 @ID_ESTRU nvarchar(50)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE dbo.Tbl_PJ_estrupropie
    SET estado_registro = 'N'
    WHERE id =rtrim(ltrim(@ID_ESTRU))

END
GO
/****** Object:  StoredProcedure [dbo].[SP_ELIMINA_FIRMA_AUTO]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SP_ELIMINA_FIRMA_AUTO]
	-- Add the parameters for the stored procedure here
   
   @codigo nchar(10)
   
   
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
DELETE  FROM dbo.Tbl_fautorizacion
Where codigo = @codigo
END
GO
/****** Object:  StoredProcedure [dbo].[sp_elimina_firma_autorizacion]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
	CREATE PROCEDURE [dbo].[sp_elimina_firma_autorizacion]
	-- Add the parameters for the stored procedure here
	 @ID nvarchar(50)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE dbo.Tbl_Firmas_Autorizadas
    SET estado_registro = 'N'
    WHERE id =rtrim(ltrim(@ID))

END
GO
/****** Object:  StoredProcedure [dbo].[SP_ELIMINA_FPAGO]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ELIMINA_FPAGO]
	-- Add the parameters for the stored procedure here
   
   @codigo nvarchar(50)
   
   
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
DELETE  FROM dbo.Tbl_tipo_formapago
Where codigo = @codigo
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ELIMINA_IDENTI]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ELIMINA_IDENTI]
	-- Add the parameters for the stored procedure here
   
   @codigo nchar(2)
   
   
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
DELETE  FROM dbo.Tbl_tipo_identificacion
Where codigo = @codigo
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ELIMINA_INGRE_MENS]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ELIMINA_INGRE_MENS]
	-- Add the parameters for the stored procedure here
   
   @codigo nchar(10)
   
   
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
DELETE  FROM dbo.Tbl_Ingreso_Mensual
Where codigo = @codigo
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ELIMINA_INSTRUMENTO]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ELIMINA_INSTRUMENTO]
	-- Add the parameters for the stored procedure here
   
   @codigo nvarchar(50)
   
   
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
DELETE  FROM dbo.Tbl_tipo_instrumento
Where codigo = @codigo
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ELIMINA_INTERES]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ELIMINA_INTERES]
	-- Add the parameters for the stored procedure here
   
   @codigo nvarchar(50)
   
   
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
DELETE  FROM dbo.Tbl_tipo_interes
Where codigo = @codigo
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ELIMINA_INVER]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ELIMINA_INVER]
	-- Add the parameters for the stored procedure here
   
   @codigo nchar(10)
   
   
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
DELETE  FROM dbo.Tbl_tipo_inversionista
Where codigo = @codigo
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ELIMINA_MONEDA]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ELIMINA_MONEDA]
	-- Add the parameters for the stored procedure here
   
   @codigo nvarchar(10)
   
   
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
DELETE  FROM dbo.Tbl_monedas
Where codigo = @codigo
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ELIMINA_PARENTESCO]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ELIMINA_PARENTESCO]
	-- Add the parameters for the stored procedure here
   
   @codigo nchar(10)
   
   
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
DELETE  FROM dbo.Tbl_parentesco
Where codigo = @codigo
END
GO
/****** Object:  StoredProcedure [dbo].[sp_elimina_pep_rel]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_elimina_pep_rel]
	-- Add the parameters for the stored procedure here
	 @ID nvarchar(50)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE dbo.Tbl_PEP_Rel_consa
    SET estado_registro = 'N'
    WHERE id =rtrim(ltrim(@ID))

END
GO
/****** Object:  StoredProcedure [dbo].[SP_ELIMINA_PER_INVER]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ELIMINA_PER_INVER]
	-- Add the parameters for the stored procedure here
   
   @codigo nchar(10)
   
   
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
DELETE  FROM dbo.Tbl_perfil_inver
Where codigo = @codigo
END
GO
/****** Object:  StoredProcedure [dbo].[sp_elimina_refe]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_elimina_refe]
	-- Add the parameters for the stored procedure here
	 @ID_REFE nvarchar(50)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE dbo.Tbl_PN_refe
    SET estado_registro = 'N'
    WHERE id =rtrim(ltrim(@ID_refe))

END
GO
/****** Object:  StoredProcedure [dbo].[SP_ELIMINA_REPRESENTANTE]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ELIMINA_REPRESENTANTE]
	-- Add the parameters for the stored procedure here
   
   @codigo nvarchar(50)
   
   
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
DELETE  FROM dbo.Tbl_tipo_formareprese
Where codigo = @codigo
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ELIMINA_RUBRO]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ELIMINA_RUBRO]
	-- Add the parameters for the stored procedure here
   
   @codigo nchar(10)
   
   
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
DELETE  FROM dbo.Tbl_tipo_rubro
Where codigo = @codigo
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ELIMINA_SOLICITANTE]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ELIMINA_SOLICITANTE]
	-- Add the parameters for the stored procedure here
   
   @codigo nchar(10)
   
   
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
DELETE  FROM dbo.Tbl_tipo_solicitante
Where codigo = @codigo
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ELIMINA_TOLE_RIESGO]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ELIMINA_TOLE_RIESGO]
	-- Add the parameters for the stored procedure here
   
   @codigo nchar(10)
   
   
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
DELETE  FROM dbo.Tbl_Tolerancia_riesgo
Where codigo = @codigo
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ELIMINA_TOPERA]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ELIMINA_TOPERA]
	-- Add the parameters for the stored procedure here
   
   @codigo nchar(10)
   
   
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
DELETE  FROM dbo.Tbl_Tipo_Operacion
Where codigo = @codigo
END
GO
/****** Object:  StoredProcedure [dbo].[SP_estado_civil]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_estado_civil]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(LTRIM(codigo)) as codigo, rtrim(LTRIM(descripcion)) as descripcion
	FROM Tbl_estadocivil
	WHERE estado=1
	ORDER BY codigo ASC
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ESTADO_SOLICITUD]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_ESTADO_SOLICITUD]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(LTRIM(codigo)) as codigo, rtrim(LTRIM(descripcionestado)) as descripcion
	FROM Tbl_estadofinalsolici
	WHERE estado=1
	ORDER BY codigo ASC
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ESTADO_SOLICITUD_Proceso]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_ESTADO_SOLICITUD_Proceso]
	@indicador nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    
    IF @indicador=1 -- INGRESO DE SOLICITUD
		SELECT rtrim(LTRIM(codigo)) as codigo, rtrim(LTRIM(descripcion)) as descripcion
		FROM Tbl_estado_proceso
		WHERE estado=1 and codigo in(1,5)
		ORDER BY codigo ASC
	ELSE
	   IF @indicador=2  -- consulta DE SOLICITUD
	    SELECT rtrim(LTRIM(codigo)) as codigo, rtrim(LTRIM(descripcion)) as descripcion
		FROM Tbl_estado_proceso
		WHERE estado=1 and codigo in(0,2,3)
		ORDER BY codigo ASC
	ELSE
		  SELECT rtrim(LTRIM(codigo)) as codigo, rtrim(LTRIM(descripcion)) as descripcion
		FROM Tbl_estado_proceso
		WHERE estado=1 and codigo in(0,1,2,3,5)
		ORDER BY codigo ASC
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Firma_auto]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Firma_auto] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(LTRIM(codigo)) as codigo, rtrim(LTRIM(descripcion)) as descripcion
	FROM Tbl_fautorizacion
	WHERE estado=1
	ORDER BY codigo ASC
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GRABA_ANO_OPERA]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GRABA_ANO_OPERA]
	-- Add the parameters for the stored procedure here
   
   @codigo nchar(10), 
   @descripcion  nvarchar(150), 
   @estado nchar(10)
   
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO dbo.Tbl_ano_opera(codigo,descripcion, estado)
VALUES (@codigo, @descripcion, @estado)

END
GO
/****** Object:  StoredProcedure [dbo].[SP_GRABA_APORTE]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GRABA_APORTE]
	-- Add the parameters for the stored procedure here
   
   @codigo nchar(10), 
   @descripcion  nvarchar(150), 
   @estado nchar(10)
   
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO dbo.Tbl_Aporte_Capital(codigo,descripcion, estado)
VALUES (@codigo, @descripcion, @estado)

END
GO
/****** Object:  StoredProcedure [dbo].[SP_GRABA_BENEFICIARIOS]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ing. Darío Núñez Fiallos
-- Create date:  31/05/2017
-- Description:	 consulta la tabla de los beneficiarios para llevar la información al grid.
-- =============================================
CREATE PROCEDURE [dbo].[SP_GRABA_BENEFICIARIOS]
	-- Add the parameters for the stored procedure here
   
   @pnfa21_numcontrato nvarchar(50), 
   @pnfa21_codcliente  nvarchar(50), 
   @pnfa21_nombrecompleto nvarchar(150), 
   @pnfa21_codparestes nvarchar(50), 
   @pnfa21_porcentaje nvarchar(50), 
   @usuario_graba     nvarchar(50), 
   @fecha_graba  datetime, 
   @usuario_veri  nvarchar(50), 
   @fecha_verifica datetime, 
   @codigo_pais nvarchar(50), 
   @casa_bolsa  nvarchar(50), 
   @estado_registro nvarchar(50)
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO dbo.Tbl_PN_bene (pnfa21_numcontrato, pnfa21_codcliente, pnfa21_nombrecompleto, pnfa21_codparestes, pnfa21_porcentaje, usuario_graba, fecha_graba, usuario_veri, fecha_verifica, codigo_pais, casa_bolsa, estado_registro)
VALUES (@pnfa21_numcontrato, @pnfa21_codcliente, @pnfa21_nombrecompleto, @pnfa21_codparestes, @pnfa21_porcentaje, @usuario_graba, @fecha_graba, @usuario_veri, @fecha_verifica, @codigo_pais, @casa_bolsa, @estado_registro)

END
GO
/****** Object:  StoredProcedure [dbo].[SP_GRABA_COMPRA]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GRABA_COMPRA]
 -- datos generales titulares
            @tiporden_compra nvarchar(50),
            @fechsoli nvarchar(50),
            @fechliq nvarchar(250),
            @TipOper nvarchar(50),
            @cod_dep_dir   nvarchar(250),
            @cod_dep_ind    nvarchar(250),
            @nom_completo nvarchar(250),
            @ban_comercial  nvarchar(250),
            @num_cuenta  nvarchar(50),
            @nom_comp_razon nvarchar(250),
            @emisor nvarchar(250),
            @codigo_isin nvarchar(50), 
            @codmoneda nvarchar(50),
            @cant_valores nvarchar(50), 
			@vn_valor nvarchar(50),
            @tasa_nominal nvarchar(50),
            @rendimiento nvarchar(50),
            @preciotransado nvarchar(50),
            @mone_liqui    nvarchar(50),
            @Plazo  nvarchar(50),
			@usuario_graba nvarchar (250),
            @fecha_graba  datetime,
            @usuario_veri       nvarchar(50),
            @fecha_verifica      datetime,
            @codigo_pais            nvarchar(50),
            @casa_bolsa        nvarchar(50),
            @ban_come_ven        nvarchar(250),
            @num_cuen_ven        nvarchar(50),
			@valor_tranzado      nvarchar(50),
            @num_boleta      nvarchar(50)

AS
   BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT 
INTO dbo.Tbl_orden_compra ( tiporden_compra
      ,fechsoli
      ,fechliq
      ,TipOper
      ,cod_dep_dir
      ,cod_dep_ind
      ,nom_completo
      ,ban_comercial
      ,num_cuenta
      ,nom_comp_razon
      ,emisor
      ,codigo_isin
      ,codmoneda
      ,cant_valores
      ,vn_valor
      ,tasa_nominal
      ,rendimiento
      ,preciotransado
      ,mone_liqui
      ,Plazo
      ,usuario_graba
      ,fecha_graba
      ,usuario_veri
      ,fecha_verifica
      ,codigo_pais
      ,casa_bolsa
      ,ban_come_ven
      ,num_cuen_ven
	  ,valor_tranzado
	  ,num_boleta)
VALUES (@tiporden_compra,
            @fechsoli, 
            @fechliq ,
            @TipOper ,
            @cod_dep_dir ,
            @cod_dep_ind   ,
            @nom_completo,
            @ban_comercial,
            @num_cuenta ,
            @nom_comp_razon,
            @emisor,
            @codigo_isin, 
            @codmoneda,
            @cant_valores,
			@vn_valor, 
            @tasa_nominal,
            @rendimiento,
            @preciotransado,
            @mone_liqui,
            @Plazo,
			@usuario_graba,
            @fecha_graba,
            @usuario_veri ,
            @fecha_verifica,
            @codigo_pais,
            @casa_bolsa,
            @ban_come_ven,
            @num_cuen_ven,
			@valor_tranzado,
			@num_boleta)
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GRABA_CONO_INVER]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GRABA_CONO_INVER]
	-- Add the parameters for the stored procedure here
   
   @codigo nchar(10), 
   @descripcion  nvarchar(150), 
   @estado nchar(10)
   
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO dbo.Tbl_conocimiento_inver(codigo,descripcion, estado)
VALUES (@codigo, @descripcion, @estado)

END
GO
/****** Object:  StoredProcedure [dbo].[SP_GRABA_CONSE_ADMI]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GRABA_CONSE_ADMI]
	-- Add the parameters for the stored procedure here
   
   @pnfa21_numcontrato nvarchar(50), 
   @pjfa22_nombre  nvarchar(150), 
   @pjfa22_tipoid nvarchar(10), 
   @pjfa22_numeroid nvarchar(50),
   @pjfa22_cargo nvarchar(150),
   @pjfa22_personapep nvarchar(10),
   @usuario_graba     nvarchar(50), 
   @fecha_graba  datetime, 
   @usuario_veri  nvarchar(50), 
   @fecha_verifica datetime, 
   @codigo_pais nvarchar(50), 
   @casa_bolsa  nvarchar(50), 
   @estado_registro nvarchar(50)
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO dbo.Tbl_PJ_consejoadm(numcontrato, pjfa22_nombre, pjfa22_tipoid, pjfa22_numeroid, pjfa22_cargo, pjfa22_personapep, usuario_graba, fecha_graba, usuario_veri, fecha_verifica, codigo_pais, casa_bolsa, estado_registro)
VALUES (@pnfa21_numcontrato, @pjfa22_nombre, @pjfa22_tipoid, @pjfa22_numeroid,@pjfa22_cargo, @pjfa22_personapep, @usuario_graba, @fecha_graba, @usuario_veri, @fecha_verifica, @codigo_pais, @casa_bolsa, @estado_registro)

END
GO
/****** Object:  StoredProcedure [dbo].[SP_GRABA_CPAGO]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GRABA_CPAGO]
	-- Add the parameters for the stored procedure here
   
   @codigo nvarchar(50), 
   @descripcion  nvarchar(250), 
   @estado nvarchar(50)
   
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO dbo.Tbl_tipo_conceptopago(codigo,descripcion, estado)
VALUES (@codigo, @descripcion, @estado)

END
GO
/****** Object:  StoredProcedure [dbo].[SP_GRABA_ESTRUC_PROPIE]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GRABA_ESTRUC_PROPIE]
	-- Add the parameters for the stored procedure here
   
   @pnfa21_numcontrato nvarchar(50), 
   @pjfa22_nombre  nvarchar(150), 
   @pjfa22_nacionalidad nvarchar(10), 
   @pjfa22_numeroacciones nvarchar(10), 
   @pjfa22_tipoid nvarchar(10), 
   @pjfa22_numeroid nvarchar(50),
   @pjfa22_porcentajepartici nvarchar(10),
   @pjfa22_direcciondomi nvarchar(150),
   @pjfa22_personapep nvarchar(10),
   @usuario_graba     nvarchar(50), 
   @fecha_graba  datetime, 
   @usuario_veri  nvarchar(50), 
   @fecha_verifica datetime, 
   @codigo_pais nvarchar(50), 
   @casa_bolsa  nvarchar(50), 
   @estado_registro nvarchar(50)
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO dbo.Tbl_PJ_estrupropie(numcontrato, pjfa22_nombre, pjfa22_nacionalidad, pjfa22_numeroacciones, pjfa22_tipoid, pjfa22_numeroid, pjfa22_porcentajepartici, pjfa22_direcciondomi, pjfa22_personapep, usuario_graba, fecha_graba, usuario_veri, fecha_verifica, codigo_pais, casa_bolsa, estado_registro)
VALUES (@pnfa21_numcontrato, @pjfa22_nombre, @pjfa22_nacionalidad, @pjfa22_numeroacciones, @pjfa22_tipoid, @pjfa22_numeroid, @pjfa22_porcentajepartici, @pjfa22_direcciondomi, @pjfa22_personapep, @usuario_graba, @fecha_graba, @usuario_veri, @fecha_verifica, @codigo_pais, @casa_bolsa, @estado_registro)

END
GO
/****** Object:  StoredProcedure [dbo].[SP_GRABA_FIRMA_AUTO]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GRABA_FIRMA_AUTO]
	-- Add the parameters for the stored procedure here
   
   @codigo nchar(10), 
   @descripcion  nvarchar(150), 
   @estado nchar(10)
   
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO dbo.Tbl_fautorizacion(codigo,descripcion, estado)
VALUES (@codigo, @descripcion, @estado)

END
GO
/****** Object:  StoredProcedure [dbo].[SP_GRABA_Firma_autorizacion]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Lizbeth Osorto
-- Create date:  31/05/2017
-- Description:	 consulta la tabla de los beneficiarios para llevar la información al grid.
-- =============================================
CREATE PROCEDURE [dbo].[SP_GRABA_Firma_autorizacion]
	-- Add the parameters for the stored procedure here
   
   @pnfa21_numcontrato nvarchar(150), 
   @pnfa21_codcliente  nvarchar(150), 
   @pnfa21_nombre nvarchar(150), 
   @pnfa21_tipo_autorizaion nvarchar(2), 
   @pnfa21_fid  nvarchar(50), 
   @pnfa21_fnum_id nvarchar(50),
   @usuario_graba     nvarchar(50), 
   @fecha_graba  datetime, 
   @usuario_veri  nvarchar(50), 
   @fecha_verifica datetime, 
   @codigo_pais nvarchar(50), 
   @casa_bolsa  nvarchar(50), 
   @estado_registro nvarchar(50)
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO dbo.Tbl_Firmas_Autorizadas (pnfa21_numcontrato, pnfa21_codcliente, pnfa21_nombre, pnfa21_tipo_autorizaion,pnfa21_fid, pnfa21_fnum_id, usuario_graba, fecha_graba, usuario_veri, fecha_verifica, codigo_pais, casa_bolsa, estado_registro)
VALUES (@pnfa21_numcontrato, @pnfa21_codcliente, @pnfa21_nombre, @pnfa21_tipo_autorizaion, @pnfa21_fid,@pnfa21_fnum_id, @usuario_graba, @fecha_graba, @usuario_veri, @fecha_verifica, @codigo_pais, @casa_bolsa, @estado_registro)

END
GO
/****** Object:  StoredProcedure [dbo].[SP_GRABA_FORMU_FATCA]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GRABA_FORMU_FATCA]
    @Num_Contrato nvarchar(50),
    @Cod_Cliente nvarchar(50),
    @nombre nvarchar(250),
    @tipo_id nvarchar(50),
    @num_ide nvarchar(50),
    @num_emis nvarchar(50),
    @num_venci nvarchar(50),
    @num_ident_contri nvarchar(50),
    @lugar_naci nvarchar(150),
    @Pais_Ciudadania nvarchar(100),
    @Dire_Perman nvarchar(250),
    @Ciudad_Poblacion nvarchar(250),
    @correo nvarchar(150),
    @ciudad_poblacion1 nvarchar(250),
    @num_ident_extran nvarchar(50),
    @fecha_naci nvarchar(50),
    @texto1 nvarchar(100),
    @texto2 nvarchar(20),
    @texto3 nvarchar(20),
    @texto4 nvarchar(100),
    @texto5 nvarchar(250),
    @usuario_graba nvarchar(50),
    @fecha_graba datetime,
    @usuario_veri nvarchar(50),
    @fecha_verifica datetime,
    @codigo_pais nvarchar(50),
    @casa_bolsa nvarchar(50)

	AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

INSERT INTO [dbo].[Tbl_FATCA]
           ([Num_Contrato]
           ,[Cod_Cliente]
           ,[nombre]
           ,[tipo_id]
           ,[num_ide]
           ,[num_emis]
           ,[num_venci]
           ,[num_ident_contri]
           ,[lugar_naci]
           ,[Pais_Ciudadania]
           ,[Dire_Perman]
           ,[Ciudad_Poblacion]
           ,[correo]
           ,[ciudad_poblacion1]
           ,[num_ident_extran]
           ,[fecha_naci]
           ,[texto1]
           ,[texto2]
           ,[texto3]
           ,[texto4]
           ,[texto5]
           ,[usuario_graba]
           ,[fecha_graba]
           ,[usuario_veri]
           ,[fecha_verifica]
           ,[codigo_pais]
           ,[casa_bolsa])
     VALUES
     (@Num_Contrato ,
    @Cod_Cliente,
    @nombre,
    @tipo_id,
    @num_ide,
    @num_emis,
    @num_venci,
    @num_ident_contri,
    @lugar_naci,
    @Pais_Ciudadania,
    @Dire_Perman,
    @Ciudad_Poblacion,
    @correo,
    @ciudad_poblacion1,
    @num_ident_extran,
    @fecha_naci,
    @texto1,
    @texto2,
    @texto3,
    @texto4,
    @texto5,
    @usuario_graba,
    @fecha_graba,
    @usuario_veri,
    @fecha_verifica,
    @codigo_pais,
    @casa_bolsa)
END


GO
/****** Object:  StoredProcedure [dbo].[SP_GRABA_FORMU_FINAL]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GRABA_FORMU_FINAL]
        @Num_Contrato nvarchar(50),
        @Cod_Cliente nvarchar(50),
		@sexo nvarchar(50),
        @nombre1 nvarchar(150),
        @nombre2 nvarchar(150),
        @apellido1 nvarchar(150),
        @apellido2 nvarchar(150),
        @tipo_inver nvarchar(50),
        @tipo_identif nvarchar(50),
        @num_identif nvarchar(50),
        @fecha_emi nvarchar(50),
        @fecha_venci nvarchar(50),
        @RTN nvarchar(50),
        @nacionalidad nvarchar(50),
        @estado_civil nvarchar(50),
		@fecha_nacimiento nvarchar(50),
		@lugar_nacimiento nvarchar(150),
        @pais_naci nvarchar(50),
        @depto_naci nvarchar(50),
         @muni_naci nvarchar(50),
         @ciudad_naci nvarchar(150),
          @direccion_completa nvarchar(250),
          @telefono nvarchar(50),
           @celular nvarchar(50),
           @pais_residencia nvarchar(50),
           @depto_residencia nvarchar(50),
           @muni_residencia nvarchar(50),
           @ciudad_residencia nvarchar(50),
           @correo_elec nvarchar(100),
           @lugar_trabajo nvarchar(200),
           @correo_trabajo nvarchar(50),
           @profesion nvarchar(250),
           @cargo nvarchar(250),
           @ingreso_mensual nvarchar(50),
           @direccion_trabajo nvarchar(250),
           @pais_trabajo nvarchar(50),
           @depto_trabajo nvarchar(50),
           @muni_trabajo nvarchar(50),
           @ciudad_trabajo nvarchar(150),
           @tele_oficina nvarchar(50),
           @antiguedad_labora nvarchar(50),
           @exon_fiscal nvarchar(50),
           @pers_pep nvarchar(50),
           @cargo_publico nvarchar(200),
           @activi_desig nvarchar(50),
           @num_resgistro nvarchar(50),
           @fecha_inscripcion nvarchar(50),
           @usuario_graba nvarchar(50),
           @fecha_graba datetime,
           @usuario_veri nvarchar(50),
           @fecha_verifica datetime,
           @codigo_pais nvarchar(50),
           @casa_bolsa nvarchar(50)
	AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
INSERT INTO [dbo].[Tbl_Ben_Final]
           ([Num_Contrato]
           ,[Cod_Cliente]
		   ,[sexo]
           ,[nombre1]
           ,[nombre2]
           ,[apellido1]
           ,[apellido2]
           ,[tipo_inver]
           ,[tipo_identif]
           ,[num_identif]
           ,[fecha_emi]
           ,[fecha_venci]
           ,[RTN]
           ,[nacionalidad]
           ,[estado_civil]
		   ,[fecha_nacimiento]
		   ,[lugar_nacimiento]
           ,[pais_naci]
           ,[depto_naci]
           ,[muni_naci]
           ,[ciudad_naci]
           ,[direccion_completa]
           ,[telefono]
           ,[celular]
           ,[pais_residencia]
           ,[depto_residencia]
           ,[muni_residencia]
           ,[ciudad_residencia]
           ,[correo_elec]
           ,[lugar_trabajo]
           ,[correo_trabajo]
           ,[profesion]
           ,[cargo]
           ,[ingreso_mensual]
           ,[direccion_trabajo]
           ,[pais_trabajo]
           ,[depto_trabajo]
           ,[muni_trabajo]
           ,[ciudad_trabajo]
           ,[tele_oficina]
           ,[antiguedad_labora]
           ,[exon_fiscal]
           ,[pers_pep]
           ,[cargo_publico]
           ,[activi_desig]
           ,[num_resgistro]
           ,[fecha_inscripcion]
           ,[usuario_graba]
           ,[fecha_graba]
           ,[usuario_veri]
           ,[fecha_verifica]
           ,[codigo_pais]
           ,[casa_bolsa])
     VALUES
           (@Num_Contrato ,
        @Cod_Cliente ,
		@sexo,
        @nombre1 ,
        @nombre2 ,
        @apellido1 ,
        @apellido2 ,
        @tipo_inver ,
        @tipo_identif,
        @num_identif ,
        @fecha_emi ,
        @fecha_venci,
        @RTN,
        @nacionalidad,
        @estado_civil,
		@fecha_nacimiento,
		 @lugar_nacimiento,
        @pais_naci,
        @depto_naci,
         @muni_naci,
         @ciudad_naci,
          @direccion_completa,
          @telefono,
           @celular,
           @pais_residencia,
           @depto_residencia,
           @muni_residencia,
           @ciudad_residencia,
           @correo_elec,
           @lugar_trabajo,
           @correo_trabajo,
           @profesion,
           @cargo,
           @ingreso_mensual,
           @direccion_trabajo,
           @pais_trabajo,
           @depto_trabajo,
           @muni_trabajo,
           @ciudad_trabajo,
           @tele_oficina,
           @antiguedad_labora,
           @exon_fiscal,
           @pers_pep,
           @cargo_publico,
           @activi_desig,
           @num_resgistro,
           @fecha_inscripcion,
           @usuario_graba,
           @fecha_graba,
           @usuario_veri,
           @fecha_verifica,
           @codigo_pais,
           @casa_bolsa )
end


GO
/****** Object:  StoredProcedure [dbo].[SP_GRABA_FPAGO]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GRABA_FPAGO]
	-- Add the parameters for the stored procedure here
   
   @codigo nvarchar(50), 
   @descripcion  nvarchar(150), 
   @estado nvarchar(50)
   
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO dbo.Tbl_tipo_formapago(codigo,descripcion, estado)
VALUES (@codigo, @descripcion, @estado)

END
GO
/****** Object:  StoredProcedure [dbo].[SP_GRABA_IDENTI]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GRABA_IDENTI]
	-- Add the parameters for the stored procedure here
   
   @codigo nchar(2), 
   @descripcion  nvarchar(150), 
   @estado nchar(1)
   
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO dbo.Tbl_tipo_identificacion(codigo,descripcion, estado)
VALUES (@codigo, @descripcion, @estado)

END
GO
/****** Object:  StoredProcedure [dbo].[SP_GRABA_INGRE_MENS]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GRABA_INGRE_MENS]
	-- Add the parameters for the stored procedure here
   
   @codigo nchar(10), 
   @descripcion  nvarchar(150), 
   @estado nchar(10)
   
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO dbo.Tbl_Ingreso_Mensual(codigo,descripcion, estado)
VALUES (@codigo, @descripcion, @estado)

END
GO
/****** Object:  StoredProcedure [dbo].[SP_GRABA_INSTRUMENTO]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GRABA_INSTRUMENTO]
	-- Add the parameters for the stored procedure here
   
   @codigo nvarchar(50), 
   @descripcion  nvarchar(150), 
   @estado nvarchar(50)
   
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO dbo.Tbl_tipo_instrumento(codigo,descripcion, estado)
VALUES (@codigo, @descripcion, @estado)

END
GO
/****** Object:  StoredProcedure [dbo].[SP_GRABA_INTERES]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GRABA_INTERES]
	-- Add the parameters for the stored procedure here
   
   @codigo nvarchar(50), 
   @descripcion  nvarchar(150), 
   @estado nvarchar(50)
   
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO dbo.Tbl_tipo_interes(codigo,descripcion, estado)
VALUES (@codigo, @descripcion, @estado)

END
GO
/****** Object:  StoredProcedure [dbo].[SP_GRABA_INVER]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GRABA_INVER]
	-- Add the parameters for the stored procedure here
   
   @codigo nchar(10), 
   @descripcion  nvarchar(150), 
   @estado nchar(10)
   
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO dbo.Tbl_tipo_inversionista(codigo,descripcion, estado)
VALUES (@codigo, @descripcion, @estado)

END
GO
/****** Object:  StoredProcedure [dbo].[SP_GRABA_MONEDA]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GRABA_MONEDA]
	-- Add the parameters for the stored procedure here
   
   @codigo nvarchar(10), 
   @descripcion  nvarchar(150), 
   @estado nchar(10)
   
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO dbo.Tbl_monedas(codigo,descripcion, estado)
VALUES (@codigo, @descripcion, @estado)

END
GO
/****** Object:  StoredProcedure [dbo].[SP_GRABA_PARENTESCO]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GRABA_PARENTESCO]
	-- Add the parameters for the stored procedure here
   
   @codigo nchar(10), 
   @descripcion  nvarchar(200), 
   @estado nchar(10)
   
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO dbo.Tbl_parentesco(codigo,descripcion, estado)
VALUES (@codigo, @descripcion, @estado)

END
GO
/****** Object:  StoredProcedure [dbo].[SP_GRABA_PEP]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_GRABA_PEP]
     @numcontrato nvarchar(50),
     @codigocliente nvarchar(50),
     @nombre1 nvarchar(250),
     @nombre2 nvarchar(250),
     @apellido1 nvarchar(250),
     @apellido2 nvarchar(250),
     @posi_cargo nvarchar (250),
     @porc_de_empresa nvarchar(50),
     @nombre_empresa nvarchar(250),
     @nac_pre_3_poderes nvarchar(50),
     @extr_pre_3_poderes nvarchar(50),
     @consa_prim_grado nvarchar(50),
     @consa_seg_grado nvarchar(50),
      @afin_prim_grado nvarchar(50),
      @afin_seg_grado nvarchar(50),
      @usuario_graba nvarchar(50),
      @fecha_graba datetime,
      @usuario_veri nvarchar(50),
      @fecha_verifica datetime,
      @codigo_pais nvarchar(50),
      @casa_bolsa nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO dbo.Tbl_PEP (numcontrato
           ,codigocliente
           ,nombre1
           ,nombre2
           ,apellido1
           ,apellido2
           ,posi_cargo
           ,porc_de_empresa
           ,nombre_empresa
           ,nac_pre_3_poderes
           ,extr_pre_3_poderes
           ,consa_prim_grado
           ,consa_seg_grado
           ,afin_prim_grado
           ,afin_seg_grado
           ,usuario_graba
           ,fecha_graba
           ,usuario_veri
           ,fecha_verifica
           ,codigo_pais
           ,casa_bolsa)
VALUES (@numcontrato
           ,@codigocliente
           ,@nombre1
           ,@nombre2
           ,@apellido1
           ,@apellido2
           ,@posi_cargo
           ,@porc_de_empresa
           ,@nombre_empresa
           ,@nac_pre_3_poderes
           ,@extr_pre_3_poderes
           ,@consa_prim_grado
           ,@consa_seg_grado
           ,@afin_prim_grado
           ,@afin_seg_grado
           ,@usuario_graba
           ,@fecha_graba
           ,@usuario_veri
           ,@fecha_verifica
           ,@codigo_pais
           ,@casa_bolsa)

END
GO
/****** Object:  StoredProcedure [dbo].[SP_GRABA_PEP_Rel]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ing. Darío Núñez Fiallos
-- Create date:  31/05/2017
-- Description:	 consulta la tabla de los beneficiarios para llevar la información al grid.
-- =============================================
CREATE PROCEDURE [dbo].[SP_GRABA_PEP_Rel]
	-- Add the parameters for the stored procedure here
   
   @pnfa21_numcontrato nvarchar(50), 
   @pnfa21_codcliente  nvarchar(50), 
   @pnfa21_nombrecompleto nvarchar(250), 
   @pnfa21_codparestes nvarchar(50), 
   @pnfa21_identidad nvarchar(50), 
   @pnfa21_domicilio nvarchar(250), 
   @usuario_graba     nvarchar(50), 
   @fecha_graba  datetime, 
   @usuario_veri  nvarchar(50), 
   @fecha_verifica datetime, 
   @codigo_pais nvarchar(50), 
   @casa_bolsa  nvarchar(50), 
   @estado_registro nvarchar(50)
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO dbo.Tbl_PEP_Rel_consa (pnfa21_numcontrato, pnfa21_codcliente, pnfa21_nombrecompleto, pnfa21_codparestes, pnfa21_identidad,pnfa21_domicilio, usuario_graba, fecha_graba, usuario_veri, fecha_verifica, codigo_pais, casa_bolsa, estado_registro)
VALUES (@pnfa21_numcontrato, @pnfa21_codcliente, @pnfa21_nombrecompleto, @pnfa21_codparestes, @pnfa21_identidad,@pnfa21_domicilio, @usuario_graba, @fecha_graba, @usuario_veri, @fecha_verifica, @codigo_pais, @casa_bolsa, @estado_registro)

END

GO
/****** Object:  StoredProcedure [dbo].[SP_GRABA_PER_INVER]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GRABA_PER_INVER]
	-- Add the parameters for the stored procedure here
   
   @codigo nchar(10), 
   @descripcion  nvarchar(150), 
   @estado nchar(10)
   
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO dbo.Tbl_perfil_inver(codigo,descripcion, estado)
VALUES (@codigo, @descripcion, @estado)

END
GO
/****** Object:  StoredProcedure [dbo].[SP_GRABA_PRESOLI_VE]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_GRABA_PRESOLI_VE]
 -- datos generales titulares
            @fechaingr nvarchar(50),
            @numcontrato nvarchar(50),
            @primnombre0        nvarchar(150),
            @segunombre0        nvarchar(150),
            @primeapell0        nvarchar(150),
            @seguapelli0        nvarchar(150),
			@objetivosocial     nvarchar (150),
            @tiposoli nvarchar(50),
            @tipoid   nvarchar(50),
            @numid    nvarchar(50),
            @tiposector nchar(10),
            @num_tel  nvarchar(50),
            @num_email  nvarchar(50),
            @direccion nvarchar(250),
            @listpais nvarchar(50),
            @cod_depto nvarchar(50), 
            @cod_muni nvarchar(50),
            @nombre_estado nvarchar(150), 
            @nombre_ciudad nvarchar(150),
            
 -- datos apoderado legal


            @jurinumcontr nvarchar(50),
            @jurifechanac nvarchar(50),
            @juricargo    nvarchar(50),
            @juritipoid   nvarchar(50),
            @le_id        nvarchar(50),

 
            
        -- PERSONA NATURAL

            -- 1. DATOS GENERALES

            @FA21_Text_codcliente       nvarchar(50),
            @FA21_drop_tipo_id5         nvarchar(50),
            @FA21_txt_num_id            nvarchar(50),
            @FA21_txt_primnombre        nvarchar(150),
            @FA21_txt_segunombre        nvarchar(150),
            @FA21_txt_primeapell        nvarchar(150),
            @FA21_txt_seguapelli        nvarchar(150),
            @FA21_drop_tipo_sexo        nvarchar(50),
            @FA21_Txt_fecnac            nvarchar(50),
            @FA21_lugarnaci             nvarchar(150),
            @FA21_txt_direccion         nvarchar(250),
            @FA21_txt_numtel            nvarchar(50),   
            @FA21_txt_numcel            nvarchar(50),
            @FA21_txt_email             nvarchar(50),
            @FA21_drop_estadocivil      nvarchar(50),
            @FA21_drop_nacionalidad     nvarchar(50),
            @FA21_txt_cargodesempe      nvarchar(150),
            @FA21_txt_nombrebene        nvarchar(150),
            @FA21_drop_beneisr          nvarchar(50),
            @FA21_drop_inteme           nvarchar(150),
            @FA21_drop_personapep       nvarchar(150),
            @FA21_txt_nombreconyu       nvarchar(150),
            @FA21_txt_conyugueid        nvarchar(50),
            @FA21_Txt_fechaconyugue     nvarchar(50),

            -- 2. DATOS LABORALES

            @FA21_txt_lugartrabajo      nvarchar(150),
            @FA21_txt_email1            nvarchar(50),
            @FA21_txt_oficio            nvarchar(150),
            @FA21_txt_cargo             nvarchar(150),
            @FA21_txt_atiguedad         nvarchar(50),
            @FA21_txt_direccionlaboral  nvarchar(250),
            @FA21_txt_telefono_laboral  nvarchar(50),

            -- 3. DATOS GENERALES CO PROPIETARIO

            @FA21_drop_mancomunada             nvarchar(50),
            @FA21_drop_tipo_sexodatogene       nvarchar(50),
            @FA21_drop_nacionalidaddatosgene   nvarchar(50),
            @FA21_txt_primnombredatosgene      nvarchar(150),
            @FA21_txt_segunombredatosgene      nvarchar(150),
            @FA21_txt_primeapelldatosgene      nvarchar(150),
            @FA21_txt_seguapellidatosgene      nvarchar(150),
            @FA21_drop_tipo_iddatosgene        nvarchar(50),
            @FA21_txt_num_iddatosgener         nvarchar(50),
            @FA21_Txt_fecnacdatosgene         nvarchar(50),
            @FA21_txt_luganacidatosgene        nvarchar(150),
            @FA21_txt_numteldatosgene          nvarchar(50),
            @FA21_txt_numceldatosgene          nvarchar(50),
            @FA21_txt_emaildatosgene           nvarchar(50),
            @FA21_txt_lugartrabajodtosgene     nvarchar(150),
            @FA21_txt_posicioncargodatosgene   nvarchar(150),
            @FA21_txt_direcciondatosgene       nvarchar(250),
            @FA21_txt_cargopublidatosgene      nvarchar(150),
            @FA21_txt_exoisr                   nvarchar(50),
            @FA21_drop_estadopepdatosgene      nvarchar(50),

            -- 4. NATURALEZA DE LA INVERSIÓN

            @FA21_txt_objeinver_natuinver       nvarchar(150),
            @FA21_txt_orirecu_natuinver         nvarchar(150),

            -- 5. INFORMACIÓN FINANCIERA

            @FA21_drop_infofina                  nvarchar(50),
            @FA21_txt_nombrenegocioinfofina      nvarchar(150),
            @FA21_drop_tipo_rubro                nvarchar(50),

            -- 6. RANGOS

            @FA21_drop_activos                   nvarchar(50),
            @FA21_drop_pasivos                   nvarchar(50),
            @FA21_drop_patrimonio                nvarchar(50),
            @FA21_drop_ingresos                  nvarchar(50),
            @FA21_drop_gastos                    nvarchar(50),

            -- 9. DOCUMENTACIÓN ADJUNTA

            @FA21_drop_copiaid                   nvarchar(50),
            @FA21_drop_copiaidcopropie           nvarchar(50),
            @FA21_drop_copiaidapoderado          nvarchar(50),  
            @FA21_drop_copiartntitular           nvarchar(50), 
            @FA21_drop_copiartncoprpie           nvarchar(50),
            @FA21_drop_copiartnapodelegal        nvarchar(50),
            @FA21_drop_refebanc                  nvarchar(50),
            @FA21_drop_copiarecibo               nvarchar(50),
            @FA21_drop_poderlegal                nvarchar(50),

			--Campos nuevos
			@pnfa21_tinversionista               nvarchar(50),
            @pnfa21_emision                      nvarchar(50),
            @pnfa21_vencimiento                  nvarchar(50),
            @pnfa21_RTN nvarchar(50),
            @pnfa21_ingreso_mensual  nvarchar(50),
            @pnfa21_act_desiganda  nvarchar(150),
            @pnfa21_registro  nvarchar(150),
            @pnfa21_fecha_inscrip  nvarchar(50),
            @pnfa21_coinversionista nvarchar(50),
            @pnfa21_coemision  nvarchar(50),
            @pnfa21_covencimiento nvarchar(50),
            @pnfa21_coRTN  nvarchar(50),
            @pnfa21_copais  nvarchar(50),
            @pnfa21_coestado  nvarchar(100),
            @pnfa21_comunicipio nvarchar(100),
            @pnfa21_cociudad  nvarchar(50),
            @pnfa21_coingreso_mensual nvarchar(50),
            @pnfa21_cointermediario  nvarchar(50),
            @pnfa21_act_desig  nvarchar(150),
            @pnfa21_coregistro  nvarchar(150),
            @pnfa21_cofecha_inscripcion  nvarchar(50),
            @pnfa21_conom_conyugue nvarchar(150),
            @pnfa21_connumide  nvarchar(50),
            @pnfa21_perfil_inver  nvarchar(50),
            @pnfa21_mon_prom_inver  nvarchar(50),
            @pnfa21_serv_casa  nvarchar(50),
            @pnfa21_serv_detalle  nvarchar(50),
            @pnfa21_serv_mant  nvarchar(50),
            @pnfa21_prese_mant nvarchar(50),
            @pnfa21_obten_ingreso  nvarchar(50),
            @pnfa21_ganan_tra  nvarchar(50),
			@pnfa21_aume_capi  nvarchar(50),
			@pnfa21_especulacion nvarchar(50),
            @pnfa21_otro  nvarchar(50),
            @pnfa21_hori_1  nvarchar(50),
            @pnfa21_hori_5  nvarchar(50),
            @pnfa21_hori_10  nvarchar(50),
            @pnfa21_hori_20 nvarchar(50),
            @pnfa21_hori_mayor20  nvarchar(50),
            @pnfa21_tole_riesgo nvarchar(50),
            @pnfa21_cono_inversion  nvarchar(50),
            @pnfa21_cert_deposito nvarchar(50),
            @pnfa21_letras nvarchar(50),
            @pnfa21_pagare_papel nvarchar(50),
            @pnfa21_bonos  nvarchar(50),
            @pnfa21_fondos_mutuos  nvarchar(50),
            @pnfa21_fondos_inver  nvarchar(50),
            @pnfa21_reportos  nvarchar(50),
            @pnfa21_acciones  nvarchar(50),
            @pnfa21_futuros  nvarchar(50),
            @pnfa21_opciones nvarchar(50),
            @pnfa21_com_ven_valor nvarchar(50),
            @pnfa21_com_ven_ext nvarchar(50),
            @pnfa21_com_ven_cust  nvarchar(50),
            @pnfa21_adm_cartera nvarchar(50),
            @pnfa21_per_otra  nvarchar(50),
            @pnfa21_otradescrip  nvarchar(150),
			@pnfa21_asesoria_inver nvarchar(50),
			@pnfa21_com_ven_ext_pais nvarchar(50),
			@pnfa21_serv_custodia nvarchar(50),
            @pnfa21_aport_capital  nvarchar(50),
            @pnfa21_num_transaccion nvarchar(100),
            @pnfa21_moneda_inver  nvarchar(50),
            @pnfa21_monto_alta nvarchar(100),
            @pnfa21_monto_bajo  nvarchar(100),
            @pnfa21_recurso_inver  nvarchar(50),
            @pnfa21_recurso_observa  nvarchar(150),
            @pnfa21_origen_recurso  nvarchar(50),
            @pnfa21_origen_detalle  nvarchar(150),
			@pnfa21_paisnaci nvarchar(150),
            @pnfa21_depnaci nvarchar(150),
            @pnfa21_muninaci nvarchar(150),
            @pnfa21_estanaci nvarchar(150),
            @pnfa21_ciudanaci nvarchar(150),
            @pnfa21_paisresi nvarchar(150),
            @pnfa21_depresi nvarchar(150),
            @pnfa21_muniresi nvarchar(150),
            @pnfa21_estaresi nvarchar(150),
			@pnfa21_ciudaresi nvarchar(150),
            @pnfa21_paislabo nvarchar(150),
            @pnfa21_deplabo nvarchar(150),
            @pnfa21_munilabo nvarchar(150),
            @pnfa21_estalabo nvarchar(150),
            @pnfa21_ciudalabo nvarchar(150),
            @pnfa21_paiscop nvarchar(150),
            @pnfa21_depcop nvarchar(150),
            @pnfa21_municop nvarchar(150),
            @pnfa21_estacop nvarchar(150),
            @pnfa21_ciudacop nvarchar(150),
            @pnfa21_pacoresi nvarchar(150),
            @pnfa21_depcores nvarchar(150),
            @pnfa21_municore nvarchar(150),
            @pnfa21_estacores nvarchar(150),
            @pnfa21_ciudacores nvarchar(150),
            @pnfa21_estacivilco nvarchar(50),
            @pnfa21_correlectr nvarchar(150),
            @pnfa21_oficiocop nvarchar(200),
       
                  ---''''''''''''''''''''''''''''''*************  FORMULARIO A2.2  *****************************'''''''''''''''''''''
           --- ''' 1. DATOS GENERALES

            @pjfa22_razonsocial             nvarchar(50),
            @pjfa22_actividadprinci             nvarchar(50),
            @pjfa22_fechaconstitu        nvarchar(50),
            @pjfa22__tomo             nvarchar(50),
            @pjfa22_folio             nvarchar(50),
            @pjfa22_numeroregistro             nvarchar(50),
            @pjfa22_rtn             nvarchar(50),
            @pjfa22_paisconstitucion              nvarchar(50),
            @pjfa22_tipoinversionista             nvarchar(50),
            @pjfa22_permisoperacion             nvarchar(50),
            @pjfa22_direccioncompleta              nvarchar(250),
            @pjfa22_correo                       nvarchar(50),
            @pjfa22_numerocelular               nvarchar(50),
            @pjfa22_domiciliosociedad               nvarchar(150),
            @pjfa22_numerofax                      nvarchar(50),
            @pjfa22_direccionprincipal              nvarchar(150),
            @pjfa22_numeroagencias               nvarchar(50),
            @pjfa22_numerotelefonos               nvarchar(50),
            @pjfa22_antiguedadempresa                nvarchar(50),
            @pjfa22_exoisr                          nvarchar(50),

            ---''' 2. DATOS APODERADO LEGAL
            ---''' 
            @pjfa22_nombreapode                  nvarchar(150),
            @pjfa22_tipoidapode                   nvarchar(150),
            @pjfa22_tipoidnumeroapode                    nvarchar(150),
            @pjfa22_nacionalidadapode                   nvarchar(150),
            @pjfa22_lugarnacimientoapode                  nvarchar(150),
            @pjfa22_fechanacimientoapode                   nvarchar(150),
            @pjfa22_telefonoapode                 nvarchar(50),
            @pjfa22_tiposexo                  nvarchar(50),
            @pjfa22_celularapode                nvarchar(50),
            @pjfa22_direccionresiapode                nvarchar(150),
            @pjfa22_telefonoresiapode                    nvarchar(150),
            @pjfa22_profesionapode                     nvarchar(150),
            @pjfa22_exoisrapode                     nvarchar(50),
            @pjfa22_pepapode                   nvarchar(50),

            ---''' 3. NATURALEZA DE LA INVERSIÓN
            ---''' 
            @pjfa22_objetivoinversion                  nvarchar(150),
            @pjfa22_origenrecurso                   nvarchar(150),

            ---''' 6. INFORMACIÓN FINANCIERA
            ---''' 
            @pjfa22_tiporubro                nvarchar(50),

            ---''' 7. RANGOS

            @pjfa22_rangoactivo                nvarchar(50),
            @pjfa22_rangopasivo             nvarchar(50),
            @pjfa22_patrimonio             nvarchar(50),
            @pjfa22_ingresos             nvarchar(50),
            @pjfa22_gastos             nvarchar(50),

            ---''' 8. REFERENCIAS BANCARIAS Y/O COMERCIALES

            @pjfa22_refenombrecompleto                nvarchar(50),
            @pjfa22_refecontacto             nvarchar(50),
            @pjfa22_refenumerotel             nvarchar(50),

            ----'''' 9. DOCUMENTACIÓN ADJUNTA

            @pjfa22_escrituraconstitu             nvarchar(50),
            @pjfa22_copiartn             nvarchar(50),
            @pjfa22_copiarecibopubli             nvarchar(50),
            @pjfa22_reformaconstitucion             nvarchar(50),
            @pjfa22_identidartnapode             nvarchar(50),
            @pjfa22_constabancarefe             nvarchar(50),
            @pjfa22_poderepre             nvarchar(50),
            @pjfa22_copiaidautori             nvarchar(50),
     
     
     -- exclusivo BCV

            @exclufirma   nvarchar(50),
            @exclusello   nvarchar(50),
            @excluestado  nvarchar(50),

            @exlcuverifi  nvarchar(50),
            @excluobs     nvarchar(150),
            @idreg        nvarchar(50),

            @fechagraba   datetime,
            @fechaveri    datetime,
            @estado       nvarchar(50),
            @usuario      nvarchar(50),
            @codcasa      nvarchar(50),
            @codpais      nvarchar(50),  
       
           @exclu_refebancaria      nvarchar(50),
            @exclu_refepersonal      nvarchar(50), 
            @exclu_documserviciopublico      nvarchar(50),
            @exclu_numerortn      nvarchar(50), 
            @exclu_conocidopor      nvarchar(50), 
            @exclu_oficumpli_listanacional      nvarchar(50),
            @exclu_oficumpli_listainter       nvarchar(50),
            @estaper        nvarchar(50),
            @montoaplicar   nvarchar(150),

			--Campos nuevos juridico
			@pjfa22_copais nvarchar(50),
            @pjfa22_estado nvarchar(100),
			@pjfa22_municipio  nvarchar(100),
			@pjfa22_ciudad  nvarchar(100),
			@pjfa22_gru_finan nvarchar(50),
			@pjfa22_nom_grup nvarchar(150),
			@pjfa22_act_desig nvarchar(150),
			@pjfa22_coregistro nvarchar(150),
			@pjfa22_cofecha_inscripcion nvarchar(50),
			@pjfa22_cargo  nvarchar(150),
			@pjfa22_tiemp_labo nvarchar(50),
			@pjfa22_perfil_inver nvarchar(50),
			@pjfa22_mon_prom_inver nvarchar(50),
			@pjfa22_serv_casa nvarchar(50),
			@pjfa22_serv_detalle nvarchar(150),
			@pjfa22_prese_mant nvarchar(50),
			@pjfa22_obten_ingreso nvarchar(50),
			@pjfa22_ganan_tra nvarchar(50),
			@pjfa22_especulacion nvarchar(50),
			@pjfa22_otro nvarchar(50),
			@pjfa22_hori_1 nvarchar(50),
			@pjfa22_hori_5 nvarchar(50),
			@pjfa22_hori_10 nvarchar(50),
			@pjfa22_hori_20 nvarchar(50),
			@pjfa22_hori_mayor20 nvarchar(50),
			@pjfa22_tole_riesgo nvarchar(50),
			@pjfa22_cono_inversion nvarchar(50),
			@pjfa22_cert_deposito nvarchar(50),
			@pjfa22_letras nvarchar(50),
 			@pjfa22_pagare_papel nvarchar(50),
			@pjfa22_bonos nvarchar(50),
			@pjfa22_fondos_mutuos nvarchar(50),
			@pjfa22_fondos_inver nvarchar(50),
			@pjfa22_reportos nvarchar(50),
			@pjfa22_acciones nvarchar(50),
			@pjfa22_futuros nvarchar(50),
			@pjfa22_opciones nvarchar(50),
			@pjfa22_com_ven_valor nvarchar(50),
			@pjfa22_com_ven_ext nvarchar(50),
			@pjfa22_adm_cartera nvarchar(50),
			@pjfa22_per_otra nvarchar(50),
			@pjfa22_otradescrip nvarchar(150),
			@pjfa22_asesoria_inver nvarchar(50),
			@pjfa22_com_ven_ext_pais nvarchar(50),
			@pjfa22_serv_custodia nvarchar(50),
			@pjfa22_aport_capital nvarchar(50),
			@pjfa22_moneda_inver nvarchar(50),
			@pjfa22_monto_alta nvarchar(100),
			@pjfa22_monto_bajo nvarchar(100),
			@pjfa22_recurso_inver nvarchar(50),
			@pjfa22_recurso_observa nvarchar(150),
			@pjfa22_origen_recurso nvarchar(50),
			@pjfa22_origen_detalle nvarchar(150),
			@pjfa22_apre_capital nvarchar(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO dbo.Tbl_MASOLI (fechasoli, numcontrato, pnombre0,snombre0,papellido0,sapellido0,objetivosocial, tipo_soli, tipo_id, numero_id, tipo_sector, telefono, email, direccion, cod_pais_list, le_nombrecompleto, le_fechanaci, le_cargo, le_tipo_id, le_id, exclu_estado_firma, exclu_estado_sello, exclu_estado_solici, exclu_observaciones, usuario_graba, fecha_graba, usuario_veri, fecha_verifica, codigo_pais, casa_bolsa, estado_registro, cod_depto, cod_muni, nombre_estado, nombre_ciudad, codigocliente, pnfa21_tipoid, pnfa21_numeroid, pnfa21_pnombre, pnfa21_snombre, pnfa21_papellido, pnfa21_sapellido, pnfa21_tiposexo, pnfa21_fechanac, pnfa21_lugarnaci, pnfa21_direccioncomple, pnfa21_numtele, pnfa21_numcelular, pnfa21_correoelect, pnfa21_estadocivil, pnfa21_codnacionalidad, pnfa21_cargodesempe, pnfa21_nombrebenefinal, pnfa21_exoisr, pnfa21_internmediario, pnfa21_personpep, pnfa21_nombreconyugue, pnfa21_idconyugue, pnfa21_fecnacconyugue, pnfa21_lugartrabajo, pnfa21_correotrabrajo, pnfa21_ocupaoficio, pnfa21_posicargo, pnfa21_antiguedad, pnfa21_direcciontrabajo, pnfa21_teletrabajo, pnfa21_formmancomunada, pnfa21_tiposexocopro, pnfa21_nacionalidadcopro, pnfa21_pnombrecopro, pnfa21_snombrecopro, pnfa21_papellidocopro, pnfa21_sapellidocopro, pnfa21_tipodicopro, pnfa21_idcopro, pnfa21_fechanacicopro, pnfa21_lugarnacicopro, pnfa21_telcopro, pnfa21_celcopro, pnfa21_correocopro, pnfa21_lugartrabajocopro, pnfa21_posicargocopro, pnfa21_direccioncopro, pnfa21_cargodesempecopro, pnfa21_exoisrcopro, pnfa21_pepcopro, pnfa21_objetivoinversion, pnfa21_naturalezainversion, pnfa21_aplica, pnfa21_nombrenegocio, pnfa21_tiporubro, pnfa21_rangoactivo, pnfa21_rangopasivo, pnfa21_rangopatrimonio, pnfa21_rangoingresos, pnfa21_rangogastos, pnfa21_copiaidtitular, pnfa21_copiaidcopropie, pnfa21_copiaidapoderado, pnfa21_copiartntitular, pnfa21_copiartncopro, pnfa21_copiartnapodelegal, pnfa21_refebancacomer, pnfa21_copiarecibopubli, pnfa21_poderreprese,
pnfa21_tinversionista ,pnfa21_emision, pnfa21_vencimiento,
            pnfa21_RTN,
            pnfa21_ingreso_mensual,
            pnfa21_act_desiganda,
            pnfa21_registro,
            pnfa21_fecha_inscrip,
            pnfa21_coinversionista,
            pnfa21_coemision,
            pnfa21_covencimiento,
            pnfa21_coRTN ,
            pnfa21_copais,
            pnfa21_coestado,
            pnfa21_comunicipio,
            pnfa21_cociudad,
            pnfa21_coingreso_mensual,
            pnfa21_cointermediario,
            pnfa21_act_desig,
            pnfa21_coregistro,
            pnfa21_cofecha_inscripcion,
            pnfa21_conom_conyugue,
            pnfa21_connumide,
            pnfa21_perfil_inver,
            pnfa21_mon_prom_inver,
            pnfa21_serv_casa,
            pnfa21_serv_detalle ,
            pnfa21_serv_mant,
            pnfa21_prese_mant,
            pnfa21_obten_ingreso  ,
            pnfa21_ganan_tra  ,
			pnfa21_aume_capi,
			pnfa21_especulacion,
            pnfa21_otro ,
            pnfa21_hori_1,
            pnfa21_hori_5,
            pnfa21_hori_10  ,
            pnfa21_hori_20 ,
            pnfa21_hori_mayor20  ,
            pnfa21_tole_riesgo ,
            pnfa21_cono_inversion  ,
            pnfa21_cert_deposito ,
            pnfa21_letras,
            pnfa21_pagare_papel ,
            pnfa21_bonos  ,
            pnfa21_fondos_mutuos ,
            pnfa21_fondos_inver ,
            pnfa21_reportos ,
            pnfa21_acciones ,
            pnfa21_futuros  ,
            pnfa21_opciones ,
            pnfa21_com_ven_valor ,
            pnfa21_com_ven_ext ,
            pnfa21_com_ven_cust,
            pnfa21_adm_cartera ,
            pnfa21_per_otra ,
            pnfa21_otradescrip ,
			pnfa21_asesoria_inver,
			pnfa21_com_ven_ext_pais,
			pnfa21_serv_custodia,
            pnfa21_aport_capital,
            pnfa21_num_transaccion,
            pnfa21_moneda_inver,
            pnfa21_monto_alta,
            pnfa21_monto_bajo ,
            pnfa21_recurso_inver ,
            pnfa21_recurso_observa,
            pnfa21_origen_recurso,
            pnfa21_origen_detalle,
			pnfa21_paisnaci,
            pnfa21_depnaci,
            pnfa21_muninaci,
            pnfa21_estanaci,
            pnfa21_ciudanaci,
            pnfa21_paisresi ,
            pnfa21_depresi ,
            pnfa21_muniresi ,
            pnfa21_estaresi,
			pnfa21_ciudaresi,
            pnfa21_paislabo,
            pnfa21_deplabo,
            pnfa21_munilabo,
            pnfa21_estalabo,
            pnfa21_ciudalabo,
            pnfa21_paiscop ,
            pnfa21_depcop ,
            pnfa21_municop,
            pnfa21_estacop,
            pnfa21_ciudacop,
            pnfa21_pacoresi,
            pnfa21_depcores,
            pnfa21_municore,
            pnfa21_estacores,
            pnfa21_ciudacores,
            pnfa21_estacivilco,
            pnfa21_correlectr,
            pnfa21_oficiocop,
 pjfa22_razonsocial, pjfa22_actividadprinci, pjfa22_fechaconstitu, pjfa22__tomo, pjfa22_folio, pjfa22_numeroregistro, pjfa22_rtn, pjfa22_paisconstitucion, pjfa22_tipoinversionista, pjfa22_permisoperacion, pjfa22_direccioncompleta, pjfa22_correo, pjfa22_numerocelular, pjfa22_domiciliosociedad, pjfa22_numerofax, pjfa22_direccionprincipal, pjfa22_numeroagencias, pjfa22_numerotelefonos, pjfa22_antiguedadempresa, pjfa22_exoisr, pjfa22_nombreapode, pjfa22_tipoidapode, pjfa22_tipoidnumeroapode, pjfa22_nacionalidadapode, pjfa22_lugarnacimientoapode, pjfa22_fechanacimientoapode, pjfa22_telefonoapode, pjfa22_tiposexo, pjfa22_celularapode, pjfa22_direccionresiapode, pjfa22_telefonoresiapode, pjfa22_profesionapode, pjfa22_exoisrapode, pjfa22_pepapode, pjfa22_objetivoinversion, pjfa22_origenrecurso, pjfa22_tiporubro, pjfa22_rangoactivo, pjfa22_rangopasivo, pjfa22_patrimonio, pjfa22_ingresos, pjfa22_gastos, pjfa22_refenombrecompleto, pjfa22_refecontacto, pjfa22_refenumerotel, pjfa22_escrituraconstitu, pjfa22_copiartn, pjfa22_copiarecibopubli, pjfa22_reformaconstitucion, pjfa22_identidartnapode, pjfa22_constabancarefe, pjfa22_poderepre,pjfa22_copiaidautori,exclu_refebancaria, exclu_refepersonal, exclu_documserviciopublico, exclu_numerortn, exclu_conocidopor, exclu_oficumpli_listanacional, exclu_oficumpli_listainter,estaper,montoaplicar,
            pjfa22_copais,
            pjfa22_estado,
			pjfa22_municipio,
			pjfa22_ciudad ,
			pjfa22_gru_finan,
			pjfa22_nom_grup,
			pjfa22_act_desig,
			pjfa22_coregistro,
			pjfa22_cofecha_inscripcion,
			pjfa22_cargo,
			pjfa22_tiemp_labo,
			pjfa22_perfil_inver,
			pjfa22_mon_prom_inver,
			pjfa22_serv_casa,
			pjfa22_serv_detalle,
			pjfa22_prese_mant,
			pjfa22_obten_ingreso,
			pjfa22_ganan_tra,
			pjfa22_especulacion,
			pjfa22_otro,
			pjfa22_hori_1,
			pjfa22_hori_5,
			pjfa22_hori_10,
			pjfa22_hori_20,
			pjfa22_hori_mayor20,
			pjfa22_tole_riesgo,
			pjfa22_cono_inversion,
			pjfa22_cert_deposito,
			pjfa22_letras,
 			pjfa22_pagare_papel,
			pjfa22_bonos,
			pjfa22_fondos_mutuos,
			pjfa22_fondos_inver,
			pjfa22_reportos,
			pjfa22_acciones,
			pjfa22_futuros,
			pjfa22_opciones,
			pjfa22_com_ven_valor,
			pjfa22_com_ven_ext,
			pjfa22_adm_cartera,
			pjfa22_per_otra,
			pjfa22_otradescrip,
			pjfa22_asesoria_inver,
			pjfa22_com_ven_ext_pais,
			pjfa22_serv_custodia,
			pjfa22_aport_capital ,
			pjfa22_moneda_inver ,
			pjfa22_monto_alta ,
			pjfa22_monto_bajo ,
			pjfa22_recurso_inver ,
			pjfa22_recurso_observa ,
			pja22_origen_recurso ,
			pjfa22_origen_detalle,
			pjfa22_apre_capital)
VALUES ( @fechaingr, @numcontrato, @primnombre0,@segunombre0,@primeapell0,@seguapelli0,@objetivosocial, @tiposoli, @tipoid, @numid, @tiposector, @num_tel, @num_email, @direccion, @listpais, @jurinumcontr, @jurifechanac, @juricargo, @juritipoid, @le_id, @exclufirma, @exclusello, @excluestado, @excluobs, @usuario,@fechagraba, @exlcuverifi, @fechaveri, @codpais, @codcasa, @estado, @cod_depto, @cod_muni, @nombre_estado, @nombre_ciudad, @FA21_Text_codcliente, @FA21_drop_tipo_id5, @FA21_txt_num_id, @FA21_txt_primnombre, @FA21_txt_segunombre, @FA21_txt_primeapell, @FA21_txt_seguapelli, @FA21_drop_tipo_sexo, @FA21_Txt_fecnac, @FA21_lugarnaci, @FA21_txt_direccion, @FA21_txt_numtel, @FA21_txt_numcel, @FA21_txt_email, @FA21_drop_estadocivil, @FA21_drop_nacionalidad, @FA21_txt_cargodesempe, @FA21_txt_nombrebene, @FA21_drop_beneisr, @FA21_drop_inteme, @FA21_drop_personapep, @FA21_txt_nombreconyu, @FA21_txt_conyugueid, @FA21_Txt_fechaconyugue, @FA21_txt_lugartrabajo, @FA21_txt_email1, @FA21_txt_oficio, @FA21_txt_cargo, @FA21_txt_atiguedad, @FA21_txt_direccionlaboral, @FA21_txt_telefono_laboral, @FA21_drop_mancomunada, @FA21_drop_tipo_sexodatogene, @FA21_drop_nacionalidaddatosgene, @FA21_txt_primnombredatosgene, @FA21_txt_segunombredatosgene, @FA21_txt_primeapelldatosgene, @FA21_txt_seguapellidatosgene, @FA21_drop_tipo_iddatosgene, @FA21_txt_num_iddatosgener, @FA21_Txt_fecnacdatosgene, @FA21_txt_luganacidatosgene, @FA21_txt_numteldatosgene, @FA21_txt_numceldatosgene, @FA21_txt_emaildatosgene, @FA21_txt_lugartrabajodtosgene, @FA21_txt_posicioncargodatosgene, @FA21_txt_direcciondatosgene, @FA21_txt_cargopublidatosgene, @FA21_txt_exoisr, @FA21_drop_estadopepdatosgene, @FA21_txt_objeinver_natuinver, @FA21_txt_orirecu_natuinver, @FA21_drop_infofina, @FA21_txt_nombrenegocioinfofina, @FA21_drop_tipo_rubro, @FA21_drop_activos, @FA21_drop_pasivos, @FA21_drop_patrimonio, @FA21_drop_ingresos, @FA21_drop_gastos, @FA21_drop_copiaid, @FA21_drop_copiaidcopropie, @FA21_drop_copiaidapoderado, @FA21_drop_copiartntitular, @FA21_drop_copiartncoprpie, @FA21_drop_copiartnapodelegal, @FA21_drop_refebanc, @FA21_drop_copiarecibo, @FA21_drop_poderlegal,
@pnfa21_tinversionista,@pnfa21_emision,@pnfa21_vencimiento,
            @pnfa21_RTN,
            @pnfa21_ingreso_mensual,
            @pnfa21_act_desiganda,
            @pnfa21_registro,
            @pnfa21_fecha_inscrip,
            @pnfa21_coinversionista,
            @pnfa21_coemision,
            @pnfa21_covencimiento,
            @pnfa21_coRTN ,
            @pnfa21_copais,
            @pnfa21_coestado,
            @pnfa21_comunicipio,
            @pnfa21_cociudad,
            @pnfa21_coingreso_mensual,
            @pnfa21_cointermediario,
            @pnfa21_act_desig,
            @pnfa21_coregistro,
            @pnfa21_cofecha_inscripcion,
            @pnfa21_conom_conyugue,
            @pnfa21_connumide,
            @pnfa21_perfil_inver,
            @pnfa21_mon_prom_inver,
            @pnfa21_serv_casa,
            @pnfa21_serv_detalle ,
            @pnfa21_serv_mant,
            @pnfa21_prese_mant,
            @pnfa21_obten_ingreso  ,
            @pnfa21_ganan_tra  ,
			@pnfa21_aume_capi,
			@pnfa21_especulacion,
            @pnfa21_otro ,
            @pnfa21_hori_1  ,
            @pnfa21_hori_5  ,
            @pnfa21_hori_10  ,
            @pnfa21_hori_20 ,
            @pnfa21_hori_mayor20  ,
            @pnfa21_tole_riesgo ,
            @pnfa21_cono_inversion  ,
            @pnfa21_cert_deposito ,
            @pnfa21_letras,
            @pnfa21_pagare_papel ,
            @pnfa21_bonos  ,
            @pnfa21_fondos_mutuos ,
            @pnfa21_fondos_inver ,
            @pnfa21_reportos ,
            @pnfa21_acciones ,
            @pnfa21_futuros  ,
            @pnfa21_opciones ,
            @pnfa21_com_ven_valor ,
            @pnfa21_com_ven_ext ,
            @pnfa21_com_ven_cust,
            @pnfa21_adm_cartera ,
            @pnfa21_per_otra ,
            @pnfa21_otradescrip ,
			@pnfa21_asesoria_inver,
			@pnfa21_com_ven_ext_pais,
			@pnfa21_serv_custodia,
            @pnfa21_aport_capital,
            @pnfa21_num_transaccion,
            @pnfa21_moneda_inver,
            @pnfa21_monto_alta,
            @pnfa21_monto_bajo ,
            @pnfa21_recurso_inver ,
            @pnfa21_recurso_observa,
            @pnfa21_origen_recurso,
            @pnfa21_origen_detalle,
			@pnfa21_paisnaci,
            @pnfa21_depnaci,
            @pnfa21_muninaci,
            @pnfa21_estanaci,
            @pnfa21_ciudanaci,
            @pnfa21_paisresi,
            @pnfa21_depresi,
            @pnfa21_muniresi,
            @pnfa21_estaresi,
			@pnfa21_ciudaresi,
            @pnfa21_paislabo,
            @pnfa21_deplabo,
            @pnfa21_munilabo,
            @pnfa21_estalabo,
            @pnfa21_ciudalabo,
            @pnfa21_paiscop,
            @pnfa21_depcop,
            @pnfa21_municop,
            @pnfa21_estacop,
            @pnfa21_ciudacop,
            @pnfa21_pacoresi,
            @pnfa21_depcores,
            @pnfa21_municore,
            @pnfa21_estacores,
            @pnfa21_ciudacores,
            @pnfa21_estacivilco,
            @pnfa21_correlectr,
            @pnfa21_oficiocop,
 @pjfa22_razonsocial, @pjfa22_actividadprinci, @pjfa22_fechaconstitu, @pjfa22__tomo, @pjfa22_folio, @pjfa22_numeroregistro, @pjfa22_rtn, @pjfa22_paisconstitucion, @pjfa22_tipoinversionista, @pjfa22_permisoperacion, @pjfa22_direccioncompleta, @pjfa22_correo, @pjfa22_numerocelular, @pjfa22_domiciliosociedad, @pjfa22_numerofax, @pjfa22_direccionprincipal, @pjfa22_numeroagencias, @pjfa22_numerotelefonos, @pjfa22_antiguedadempresa, @pjfa22_exoisr, @pjfa22_nombreapode, @pjfa22_tipoidapode, @pjfa22_tipoidnumeroapode, @pjfa22_nacionalidadapode, @pjfa22_lugarnacimientoapode, @pjfa22_fechanacimientoapode, @pjfa22_telefonoapode, @pjfa22_tiposexo, @pjfa22_celularapode, @pjfa22_direccionresiapode, @pjfa22_telefonoresiapode, @pjfa22_profesionapode, @pjfa22_exoisrapode, @pjfa22_pepapode, @pjfa22_objetivoinversion, @pjfa22_origenrecurso, @pjfa22_tiporubro, @pjfa22_rangoactivo, @pjfa22_rangopasivo, @pjfa22_patrimonio, @pjfa22_ingresos, @pjfa22_gastos, @pjfa22_refenombrecompleto, @pjfa22_refecontacto, @pjfa22_refenumerotel, @pjfa22_escrituraconstitu, @pjfa22_copiartn, @pjfa22_copiarecibopubli, @pjfa22_reformaconstitucion, @pjfa22_identidartnapode, @pjfa22_constabancarefe, @pjfa22_poderepre,@pjfa22_copiaidautori,@exclu_refebancaria, @exclu_refepersonal, @exclu_documserviciopublico, @exclu_numerortn, @exclu_conocidopor, @exclu_oficumpli_listanacional, @exclu_oficumpli_listainter,@estaper,@montoaplicar,
            @pjfa22_copais,
            @pjfa22_estado,
			@pjfa22_municipio,
			@pjfa22_ciudad ,
			@pjfa22_gru_finan,
			@pjfa22_nom_grup,
			@pjfa22_act_desig,
			@pjfa22_coregistro,
			@pjfa22_cofecha_inscripcion,
			@pjfa22_cargo,
			@pjfa22_tiemp_labo,
			@pjfa22_perfil_inver,
			@pjfa22_mon_prom_inver,
			@pjfa22_serv_casa,
			@pjfa22_serv_detalle,
			@pjfa22_prese_mant,
			@pjfa22_obten_ingreso,
			@pjfa22_ganan_tra,
			@pjfa22_especulacion,
			@pjfa22_otro,
			@pjfa22_hori_1,
			@pjfa22_hori_5,
			@pjfa22_hori_10,
			@pjfa22_hori_20,
			@pjfa22_hori_mayor20,
			@pjfa22_tole_riesgo,
			@pjfa22_cono_inversion,
			@pjfa22_cert_deposito,
			@pjfa22_letras,
 			@pjfa22_pagare_papel,
			@pjfa22_bonos,
			@pjfa22_fondos_mutuos,
			@pjfa22_fondos_inver,
			@pjfa22_reportos,
			@pjfa22_acciones,
			@pjfa22_futuros,
			@pjfa22_opciones,
			@pjfa22_com_ven_valor,
			@pjfa22_com_ven_ext,
			@pjfa22_adm_cartera,
			@pjfa22_per_otra,
			@pjfa22_otradescrip,
			@pjfa22_asesoria_inver,
			@pjfa22_com_ven_ext_pais,
			@pjfa22_serv_custodia,
			@pjfa22_aport_capital ,
			@pjfa22_moneda_inver ,
			@pjfa22_monto_alta ,
			@pjfa22_monto_bajo ,
			@pjfa22_recurso_inver ,
			@pjfa22_recurso_observa ,
			@pjfa22_origen_recurso ,
			@pjfa22_origen_detalle,
			@pjfa22_apre_capital)
	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GRABA_RANGOS]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GRABA_RANGOS]
	-- Add the parameters for the stored procedure here
   
   @codigo nchar(10), 
   @descripcion  nvarchar(150), 
   @estado nchar(10)
   
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO dbo.Tbl_rangos(codigo,descripcion, estado)
VALUES (@codigo, @descripcion, @estado)

END
GO
/****** Object:  StoredProcedure [dbo].[SP_GRABA_REFE]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GRABA_REFE]
	-- Add the parameters for the stored procedure here
   
   @pnfa21_numcontrato nvarchar(50), 
   @pnfa21_codcliente  nvarchar(50), 
   @pnfa21_nombrecompleto nvarchar(150), 
   @pnfa21_nombrecontacto nvarchar(50), 
   @pnfa21_numerotelefono nvarchar(50), 
   @usuario_graba     nvarchar(50), 
   @fecha_graba  datetime, 
   @usuario_veri  nvarchar(50), 
   @fecha_verifica datetime, 
   @codigo_pais nvarchar(10), 
   @casa_bolsa  nvarchar(10), 
   @estado_registro nvarchar(10)
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO dbo.Tbl_PN_refe(numcontrato,pnfa21_numcontrato, pnfa21_nombrecompleto,pnfa21_nombrecontacto, pnfa21_numerotelefono, usuario_graba, fecha_graba, usuario_veri, fecha_verifica, codigo_pais, casa_bolsa, estado_registro)
VALUES (@pnfa21_numcontrato, @pnfa21_codcliente, @pnfa21_nombrecompleto, @pnfa21_nombrecontacto, @pnfa21_numerotelefono, @usuario_graba, @fecha_graba, @usuario_veri, @fecha_verifica, @codigo_pais, @casa_bolsa, @estado_registro)

END
GO
/****** Object:  StoredProcedure [dbo].[SP_GRABA_REPRESENTANTE]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GRABA_REPRESENTANTE]
	-- Add the parameters for the stored procedure here
   
   @codigo nvarchar(50), 
   @descripcion  nvarchar(150), 
   @estado nvarchar(50)
   
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO dbo.Tbl_tipo_formareprese(codigo,descripcion, estado)
VALUES (@codigo, @descripcion, @estado)

END
GO
/****** Object:  StoredProcedure [dbo].[sp_GRABA_RESOLU]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GRABA_RESOLU]
	-- Add the parameters for the stored procedure here
	      @id_gestion    nvarchar(50),
          @id_casabolsa  nvarchar(50),
          @id_resolu     nvarchar(50), 
		  @numero_resu   nvarchar(50), 
		  @fecha_envio   nvarchar(50), 
		  @resumen_resu  nvarchar(250), 
		  @cod_usu       nvarchar(50),
		  @fecha_grabacion  nvarchar(50),
		  @flag              nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    if @flag =0
		INSERT INTO dbo.Tbl_bcvaut (id_gestion, id_casabolsa, id_resolu, numero_resu, fecha_envio, resumen_resu, cod_usu, fecha_grabacion)
		VALUES (@id_gestion, @id_casabolsa, @id_resolu, @numero_resu, @fecha_envio, @resumen_resu, @cod_usu,CONVERT(VARCHAR,getdate(),109))
    else
	   UPDATE dbo.Tbl_bcvaut
		SET 
			id_resolu = @id_resolu
			, numero_resu = @numero_resu
			, resumen_resu = @resumen_resu
			, cod_usu = @cod_usu
			, fecha_grabacion = CONVERT(VARCHAR,getdate(),109)
		WHERE id = @id_gestion

END
GO
/****** Object:  StoredProcedure [dbo].[SP_GRABA_RUBRO]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GRABA_RUBRO]
	-- Add the parameters for the stored procedure here
   
   @codigo nchar(10), 
   @descripcion  nvarchar(250), 
   @estado nchar(10)
   
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO dbo.Tbl_tipo_rubro(codigo,descripcion, estado)
VALUES (@codigo, @descripcion, @estado)

END
GO
/****** Object:  StoredProcedure [dbo].[SP_GRABA_SECTOR_ECO]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GRABA_SECTOR_ECO]
	-- Add the parameters for the stored procedure here
   
   @codigo nchar(2), 
   @descripcion  nvarchar(150), 
   @estado nchar(1)
   
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO dbo.Tbl_tipo_sectoeco(codigo,descripcion, estado)
VALUES (@codigo, @descripcion, @estado)

END
GO
/****** Object:  StoredProcedure [dbo].[SP_GRABA_SOLICITANTE]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GRABA_SOLICITANTE]
	-- Add the parameters for the stored procedure here
   
   @codigo nchar(10), 
   @descripcion  nvarchar(150), 
   @estado nchar(10)
   
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO dbo.Tbl_tipo_solicitante(codigo,descripcion, estado)
VALUES (@codigo, @descripcion, @estado)

END
GO
/****** Object:  StoredProcedure [dbo].[SP_GRABA_TOLE_RIESGO]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GRABA_TOLE_RIESGO]
	-- Add the parameters for the stored procedure here
   
   @codigo nchar(10), 
   @descripcion  nvarchar(150), 
   @estado nchar(10)
   
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO dbo.Tbl_Tolerancia_riesgo(codigo,descripcion, estado)
VALUES (@codigo, @descripcion, @estado)

END
GO
/****** Object:  StoredProcedure [dbo].[SP_GRABA_TOPERA]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GRABA_TOPERA]
	-- Add the parameters for the stored procedure here
   
   @codigo nchar(10), 
   @descripcion  nvarchar(150), 
   @estado nchar(10)
   
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO dbo.Tbl_Tipo_Operacion(codigo,descripcion, estado)
VALUES (@codigo, @descripcion, @estado)

END
GO
/****** Object:  StoredProcedure [dbo].[sp_grabar_colocacion]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [dbo].[sp_grabar_colocacion]
		   @numeroContrato nchar(50),
           @numeroEmision nchar(50),
           @idTipoPersona numeric(18,0),
           @codigoInversionistaTitular nvarchar(50),
           @identidadInversionestaTitular nchar(25),
           @nombreInversionistaTitular nchar(250),
           @nombreInversionistaCopropietario nchar(250),
           @identidadCopropietario nchar(25),
           @rtn nchar(25),
           @nombreRepresentanteLegal nchar(250),
           @nombreFirmasAutorizadas nchar(250),
           @idTransferenciaValoresExtranjeros numeric(18,0),
           @valorNominal numeric(18,6),
           @fechaColocacion date,
           @fechaVencimiento date,
           @redencionAnticipada nchar(50),
           @idTipotasa nchar(10),
           @idBaseCalculo numeric(18,0),
           @diapagoInteres numeric(18,0),
           @idFrecuenciaPago numeric(18,0),
           @amortiza char(1),
           @idFrecuenciaAmortizacion numeric(18,0),
           @fechaPrimerCupon date,
           @fechaPagoUltimoCupon date,
		   @fechaAgrego datetime,
		   @estadoColocacion numeric(18,0),
		   @fechaModifico datetime,
		   @usuarioAgrego nchar(250),
		   @usuarioModifico nchar(250),	  
		   @nomCompletoComprador nchar(250),
		   @bancoComercialComprador nchar(250),
		   @numCuentaAfectarComprador nchar(250),
		   @nomCompletoVendedor nchar(250),
		   @bancoComercialVendedor nchar(250),
		   @cuentaAfectarVendedor nchar(250),
		   @porcentajeComision numeric(18,4),
		   @numeroBoleta nvarchar(50),
		   @cantidadValores numeric(18,0),
		   @tasa numeric(18,0),
		  @tipoServicioComVenValor bit,
		  @tipoServicioComVenExt bit,
		  @tipoServicioAdmCartera bit,
		  @tipoServicioAsesoriaInver bit,
		  @tipoServicioVenExtPais bit,
		  @tipoServicioCustodia bit,
		  @tipotipoServicioOtra bit,
		  @tipoServicioOtraDescrip nvarchar(50)


		   AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	INSERT INTO [dbo].[Tbl_Colocaciones]
	VALUES(
	      @numeroContrato ,
           @numeroEmision ,
           @idTipoPersona ,
           @codigoInversionistaTitular ,
           @identidadInversionestaTitular ,
           @nombreInversionistaTitular ,
           @nombreInversionistaCopropietario ,
           @identidadCopropietario ,
           @rtn ,
           @nombreRepresentanteLegal ,
           @nombreFirmasAutorizadas ,
           @idTransferenciaValoresExtranjeros ,
           @valorNominal ,
           @fechaColocacion ,
           @fechaVencimiento ,
           @redencionAnticipada ,
           @idTipotasa ,
           @idBaseCalculo ,
           @diapagoInteres ,
           @idFrecuenciaPago ,
           @amortiza ,
           @idFrecuenciaAmortizacion ,
            @fechaPrimerCupon ,
           @fechaPagoUltimoCupon ,
		   @fechaAgrego,
		   @estadoColocacion ,
		    @fechaModifico,
		   @usuarioAgrego ,
		   @usuarioModifico ,
		   @nomCompletoComprador,
		   @bancoComercialComprador ,
		   @numCuentaAfectarComprador ,
		   @nomCompletoVendedor,
		   @bancoComercialVendedor ,
		   @cuentaAfectarVendedor,
		   @porcentajeComision,
		   @numeroBoleta,
		   @cantidadValores,
		   @tasa,
		   @tipoServicioComVenValor,
		  @tipoServicioComVenExt,
		  @tipoServicioAdmCartera ,
		  @tipoServicioAsesoriaInver,
		  @tipoServicioVenExtPais,
		  @tipoServicioCustodia ,
		  @tipotipoServicioOtra ,
		  @tipoServicioOtraDescrip 
		   
		    )

	END
GO
/****** Object:  StoredProcedure [dbo].[sp_grabar_Derechos_Patrimoniales]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [dbo].[sp_grabar_Derechos_Patrimoniales]
    @fechaInicialCalculo nvarchar(50),
	@fechaFinalCalculo nvarchar(50),
	@tipoPago int,
	@contrato nvarchar(50),
	@numeroEmision nvarchar(50),
	@codigoInversionestaTitular nvarchar(50),
	@fechaPrimerCupon date,
	@fechaUltimoCupon date,
	@numeroDiasApagar int,
	@serieTramo  nvarchar(50),
	@monto numeric(18, 4) ,
	@fechaPago  date,
	@montoPagar numeric(18, 4),
	@impuestoRetenido numeric(18, 4),
	@totalPAgar numeric(18, 4) ,
	@usuarioAgrego nvarchar(50),
	
	@montoConfirmacionTotalPagar numeric(18,4)
		AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO [BCVE].[dbo].[Tbl_Derechos_Patrimoniales]
	VALUES(
	@fechaInicialCalculo ,
	@fechaFinalCalculo ,
	@tipoPago ,
	@contrato ,
	@numeroEmision,
	@codigoInversionestaTitular ,
	@fechaPrimerCupon ,
	@fechaUltimoCupon ,
	@numeroDiasApagar ,
	@serieTramo ,
	@monto  ,
	@fechaPago ,
	@montoPagar ,
	@impuestoRetenido ,
	@totalPAgar  ,
	@usuarioAgrego ,
	GETDATE(),	
	@montoConfirmacionTotalPagar 
	       )
		    End
GO
/****** Object:  StoredProcedure [dbo].[sp_grabar_Entrega_Libre_Pago]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_grabar_Entrega_Libre_Pago]
    @fecha  date,
	@codigoIsin nvarchar(50),
	@numeroOperacionBCV nvarchar(50),
	@fechaSecion date,
	@codigoDepositanteSedente nvarchar(50),
	@codigoDepositanteCesionario nvarchar(50),
	@nombreTitular nvarchar(50),
	@nombreNuevoTitular nvarchar(50),
	@numeroCuentaCedente nvarchar(50),
	@CantidadValores numeric(18, 0),
	@valorNominal numeric(18, 2),
	@estado numeric(18,0),
    @numeroEmision nvarchar(50),
	@numeroColocacionAfectar nvarchar(50),
	@usuarioAgrego as nvarchar(50),
	@numeroBoleta as nvarchar(50),
	@ip as nvarchar(50)
	
				   AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO [dbo].[Tbl_Entrega_Libre_Pago]
	(
	fecha ,
	codigoIsin ,
	numeroOperacionBCV ,
	fechaSecion ,
	codigoDepositanteSedente ,
	codigoDepositanteCesionario,
	nombreTitular ,
	nombreNuevoTitular,
	numeroCuentaCedente ,
	CantidadValores ,
	valorNominal,
	estado,
	numeroEmision,
	numeroColocacionAfectar,
	usuarioAgrego,
	fechaAgrego,
	numeroBoleta,
	ip)  
	       
	VALUES(
	@fecha ,
	@codigoIsin ,
	@numeroOperacionBCV ,
	@fechaSecion ,
	@codigoDepositanteSedente ,
	@codigoDepositanteCesionario,
	@nombreTitular ,
	@nombreNuevoTitular,
	@numeroCuentaCedente ,
	@CantidadValores ,
	@valorNominal,
	@estado,
	@numeroEmision,
	@numeroColocacionAfectar,
	@usuarioAgrego,
	GETDATE(),
	@numeroBoleta,
	@ip  
	       )
 End
GO
/****** Object:  StoredProcedure [dbo].[sp_grabar_Mandato_Legal]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_grabar_Mandato_Legal]    
	@nombreTitular nvarchar(100),
	@identidadTitular nvarchar(20),
	@rtnTitular nvarchar(20) ,
	@nombreBeneficiario nvarchar(100) ,
	@identidadBeneficiario nvarchar(20),
	@rtnBeneficiario nvarchar(20),
	@cantidadValores numeric(18, 0) ,
	@valorNominal numeric(18, 2) ,
	@estado numeric(18, 0) ,
	@numeroEmision nvarchar(50),
	@numeroColocacionAfectar nvarchar(50) ,
	@usuarioAgrego nvarchar(50),
	@numeroBoleta nvarchar(50) ,
	@codigoCliente nvarchar(50) ,
	@ip nvarchar(50),
	@numeroOperacionBCV nvarchar(50) 
	 AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO [dbo].[Tbl_Mandato_Legal]
	(nombreTitular,
	identidadTitular,
	rtnTitular  ,
	nombreBeneficiario  ,
	identidadBeneficiario ,
	rtnBeneficiario ,
	cantidadValores  ,
	valorNominal  ,
	estado  ,
	numeroEmision ,
	numeroColocacionAfectar  ,
	usuarioAgrego ,
	fechaAgrego,
	numeroBoleta  ,
	codigoCliente  ,
	ip,
	numeroOperacionBCV  
		)  	       
	VALUES(
	@nombreTitular,
	@identidadTitular ,
	@rtnTitular  ,
	@nombreBeneficiario  ,
	@identidadBeneficiario ,
	@rtnBeneficiario ,
	@cantidadValores  ,
	@valorNominal ,
	@estado ,
	@numeroEmision ,
	@numeroColocacionAfectar  ,
	@usuarioAgrego ,
	getdate(),
	@numeroBoleta  ,
	@codigoCliente  ,
	@ip,
	@numeroOperacionBCV 
	)
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_grabar_Movimiento_Tasa]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_grabar_Movimiento_Tasa]
       @numeroEmision nchar(50),
        @fechaInicialRevision date,
      @fechaFinalRevision date ,
      @tasaNominal numeric (18,4),
      @fechaAgrego date, 
      @tasaReferenciaUtilizada nvarchar(50),
      @tasaAnterior numeric(18,2), 
      @tasaNueva numeric(18,2),
      @fechaCambio date,
	   @usuarioAgrego nchar(50)

				   AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO [dbo].[tbl_MovimientoTasas]
	VALUES(
	@numeroEmision ,
      @fechaInicialRevision ,
      @fechaFinalRevision  ,
      @tasaNominal,
      @fechaAgrego , 
      @tasaReferenciaUtilizada ,
      @tasaAnterior , 
      @tasaNueva ,
      @fechaCambio,
	   @usuarioAgrego  
	       )


 End
GO
/****** Object:  StoredProcedure [dbo].[sp_grabar_observaadiconal]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_grabar_observaadiconal]
	-- Add the parameters for the stored procedure here
	
	@id_gestion   nvarchar(50), 
	@id_sector    nvarchar(50),
	@id_casabolsa nvarchar(50),
	@cod_usur     nvarchar(50),
	@id_tipoinfo  nvarchar(50),
	@descripcion  nvarchar(50),
	@id_estadoactual nvarchar(50),
	@estado_reg   nvarchar(50),
	@flag_reg   nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	
 -- Evalua sector publico
 
 if @id_sector=1 and @flag_reg=0   --  Graba el registro
   
	INSERT INTO Tbl_sector_listadoadicional (id_gestion, id_sector, id_casabolsa, cod_usur, id_tipoinfo, descripcion, id_estadoactual, fecha_grabacion, estado_reg)
    VALUES (@id_gestion, @id_sector, @id_casabolsa, @cod_usur, @id_tipoinfo, @descripcion, @id_estadoactual, CONVERT(VARCHAR,getdate(),109), @estado_reg)
 
 else
    if @id_sector=1 and @flag_reg=1 -- consulta 
		SELECT id,case id_tipoinfo WHEN '1' THEN 'Legal'  WHEN '2' THEN 'Administrativa' WHEN '3' THEN 'Financiera' END as [Tipo de Información], descripcion as [Descripción], case id_estadoactual WHEN '1' THEN 'Pendiente'  WHEN '2' THEN 'Entregado' END as [Estado actual]
		FROM Tbl_sector_listadoadicional
		WHERE id_gestion=@id_gestion AND id_sector=@id_sector AND id_casabolsa=@id_casabolsa AND cod_usur=@cod_usur AND estado_reg IN ('0','1')--=@estado_reg
    else
          if @id_sector=1 and @flag_reg=2 -- eliminar   
			DELETE 
			FROM  Tbl_sector_listadoadicional
			WHERE id_gestion=@id_gestion AND id_sector=@id_sector AND id_casabolsa=@id_casabolsa AND cod_usur=@cod_usur AND estado_reg=@estado_reg
          else
          if @id_sector=1  and @flag_reg=3 -- valida ael registo temporal   

			UPDATE Tbl_sector_listadoadicional
			SET 
				estado_reg = @estado_reg
			WHERE id_gestion=@id_gestion AND id_sector=@id_sector AND id_casabolsa=@id_casabolsa AND cod_usur=@cod_usur 
         else
        if @id_sector=1 and @flag_reg=4 -- actualiza los cambios ingresados   

			UPDATE Tbl_sector_listadoadicional
			SET 
					id_tipoinfo = @id_tipoinfo,
	                descripcion = @descripcion,
	                id_estadoactual = @id_estadoactual                
			WHERE id = @id_gestion
				       
 
  else
   -- Evalua sector privado

  if @id_sector=2 and @flag_reg=0   --  Graba el registro
   
	INSERT INTO Tbl_sector_listadoadicional (id_gestion, id_sector, id_casabolsa, cod_usur, id_tipoinfo, descripcion, id_estadoactual, fecha_grabacion, estado_reg)
  VALUES (@id_gestion, @id_sector, @id_casabolsa, @cod_usur, @id_tipoinfo, @descripcion, @id_estadoactual, CONVERT(VARCHAR,getdate(),109), @estado_reg)
 
 else
    if @id_sector=2 and @flag_reg=1 -- consulta 
		SELECT id,case id_tipoinfo WHEN '1' THEN 'Legal'  WHEN '2' THEN 'Administrativa' WHEN '3' THEN 'Financiera' END as [Tipo de Información], descripcion as [Descripción], case id_estadoactual WHEN '1' THEN 'Pendiente'  WHEN '2' THEN 'Entregado' END as [Estado actual]
		FROM Tbl_sector_listadoadicional
		WHERE id_gestion=@id_gestion AND id_sector=@id_sector AND id_casabolsa=@id_casabolsa AND cod_usur=@cod_usur AND estado_reg=@estado_reg
    else
          if @id_sector=2 and @flag_reg=2 -- eliminar   
			DELETE 
			FROM Tbl_sector_listadoadicional
			WHERE id_gestion=@id_gestion AND id_sector=@id_sector AND id_casabolsa=@id_casabolsa AND cod_usur=@cod_usur AND estado_reg=@estado_reg
          else
          if @id_sector=2  and @flag_reg=3 -- valida ael registo temporal   

			UPDATE Tbl_sector_listadoadicional
			SET 
				estado_reg = @estado_reg
			WHERE id_gestion=@id_gestion AND id_sector=@id_sector AND id_casabolsa=@id_casabolsa AND cod_usur=@cod_usur 
         else
        if @id_sector=2 and @flag_reg=4 -- actualiza los cambios ingresados   

			UPDATE Tbl_sector_listadoadicional
			SET 
					id_tipoinfo = @id_tipoinfo,
	                descripcion = @descripcion,
	                id_estadoactual = @id_estadoactual                
			WHERE id = @id_gestion
  
else

--- fondo de inversiòn

if @id_sector=3 and @flag_reg=0   --  Graba el registro
   
	INSERT INTO Tbl_sector_listadoadicional (id_gestion, id_sector, id_casabolsa, cod_usur, id_tipoinfo, descripcion, id_estadoactual, fecha_grabacion, estado_reg)
  VALUES (@id_gestion, @id_sector, @id_casabolsa, @cod_usur, @id_tipoinfo, @descripcion, @id_estadoactual, CONVERT(VARCHAR,getdate(),109), @estado_reg)
 
 else
    if @id_sector=3 and @flag_reg=1 -- consulta 
		SELECT id,case id_tipoinfo WHEN '1' THEN 'Legal'  WHEN '2' THEN 'Administrativa' WHEN '3' THEN 'Financiera' END as [Tipo de Información], descripcion as [Descripción], case id_estadoactual WHEN '1' THEN 'Pendiente'  WHEN '2' THEN 'Entregado' END as [Estado actual]
		FROM Tbl_sector_listadoadicional
		WHERE id_gestion=@id_gestion AND id_sector=@id_sector AND id_casabolsa=@id_casabolsa AND cod_usur=@cod_usur AND estado_reg=@estado_reg
    else
          if @id_sector=3 and @flag_reg=2 -- eliminar   
			DELETE 
			FROM Tbl_sector_listadoadicional
			WHERE id_gestion=@id_gestion AND id_sector=@id_sector AND id_casabolsa=@id_casabolsa AND cod_usur=@cod_usur AND estado_reg=@estado_reg
          else
          if @id_sector=3  and @flag_reg=3 -- valida ael registo temporal   

			UPDATE Tbl_sector_listadoadicional
			SET 
				estado_reg = @estado_reg
			WHERE id_gestion=@id_gestion AND id_sector=@id_sector AND id_casabolsa=@id_casabolsa AND cod_usur=@cod_usur 
         else
        if @id_sector=3 and @flag_reg=4 -- actualiza los cambios ingresados   

			UPDATE Tbl_sector_listadoadicional
			SET 
					id_tipoinfo = @id_tipoinfo,
	                descripcion = @descripcion,
	                id_estadoactual = @id_estadoactual                
			WHERE id = @id_gestion

END
GO
/****** Object:  StoredProcedure [dbo].[sp_grabar_Orden_Judicial]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_grabar_Orden_Judicial]    
	@nombreTitular nvarchar(100),
	@identidadTitular nvarchar(20),
	@rtnTitular nvarchar(20) ,
	@nombreBeneficiario nvarchar(100) ,
	@identidadBeneficiario nvarchar(20),
	@rtnBeneficiario nvarchar(20),
	@cantidadValores numeric(18, 0) ,
	@valorNominal numeric(18, 2) ,
	@estado numeric(18, 0) ,
	@numeroEmision nvarchar(50),
	@numeroColocacionAfectar nvarchar(50) ,
	@usuarioAgrego nvarchar(50),
	@numeroBoleta nvarchar(50) ,
	@codigoCliente nvarchar(50) ,
	@ip nvarchar(50),
	@numeroOperacionBCV nvarchar(50) 
	 AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO [dbo].[Tbl_Orden_Judicial]
	(nombreTitular,
	identidadTitular,
	rtnTitular  ,
	nombreBeneficiario  ,
	identidadBeneficiario ,
	rtnBeneficiario ,
	cantidadValores  ,
	valorNominal  ,
	estado  ,
	numeroEmision ,
	numeroColocacionAfectar  ,
	usuarioAgrego ,
	fechaAgrego,
	numeroBoleta  ,
	codigoCliente  ,
	ip,
	numeroOperacionBCV  
		)  	       
	VALUES(
	@nombreTitular,
	@identidadTitular ,
	@rtnTitular  ,
	@nombreBeneficiario  ,
	@identidadBeneficiario ,
	@rtnBeneficiario ,
	@cantidadValores  ,
	@valorNominal ,
	@estado ,
	@numeroEmision ,
	@numeroColocacionAfectar  ,
	@usuarioAgrego ,
	getdate(),
	@numeroBoleta  ,
	@codigoCliente  ,
	@ip,
	@numeroOperacionBCV 
	)
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_GRABAR_PAGOEMISION]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GRABAR_PAGOEMISION]
	-- Add the parameters for the stored procedure here
	
@id_gestion       nvarchar(50),
@fechaavisopago   nvarchar(50),
@fechalimitepago  nvarchar(50),
@recibede         nvarchar(50),
@cod_formapago    nvarchar(50),
@numero_refe      nvarchar(50),
@fecha_pago       nvarchar(50),
@cod_tipo_moneda  nvarchar(50),
@tipocambio       nvarchar(50),
@valorrecibo      nvarchar(150),
@cod_nobanco      nvarchar(50), 
@valorletras      nvarchar(500),
@cod_conceptopago nvarchar(500),
@cod_usu          nvarchar(50),
@estadorecibo     nvarchar(50) 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here	
	
INSERT INTO dbo.Tbl_detallepagoreci (id_gestion, fechaavisopago, fechalimitepago, recibede, cod_formapago, numero_refe, fecha_pago, cod_tipo_moneda, tipocambio, valorrecibo, cod_nobanco, valorletras, cod_conceptopago, fecha_grabacion, cod_usu,estadorecibo)
VALUES (@id_gestion, @fechaavisopago, @fechalimitepago, @recibede, @cod_formapago, @numero_refe, @fecha_pago, @cod_tipo_moneda, @tipocambio, @valorrecibo, @cod_nobanco, @valorletras, @cod_conceptopago, CONVERT(VARCHAR,getdate(),109), @cod_usu,@estadorecibo)




END

GO
/****** Object:  StoredProcedure [dbo].[sp_grabar_Partida]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_grabar_Partida]
       @numeroPartida numeric(18,0),
      @Descripcion nvarchar(50),
      @usuarioAgrego nvarchar(50), 
	  @contrato nvarchar(50)
	       	   AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO [dbo].[Tbl_Partida]
	(numeroPartida,Descripcion,fecha,usuarioAgrego,fechaAgrego,contrato)
	VALUES(
	@numeroPartida,
	  @Descripcion ,
     GETDATE(),
      @usuarioAgrego  ,
      GETDATE(),
	   @contrato     
	       );
 End


 
GO
/****** Object:  StoredProcedure [dbo].[sp_grabar_Partida_Detalle]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--exec sp_grabar_Partida_Detalle 555,  'efunez',123,456,80,'ererer'


CREATE PROCEDURE [dbo].[sp_grabar_Partida_Detalle]
       @numeroPartida numeric(18,0),
       @usuarioAgrego nvarchar(50) ,
 	  @cuentaDebe as numeric(18,0),
	  @cuentaHaber as numeric(18,0),
	  @monto as numeric(18,4),
	  @descripcion nvarchar(50),
	  @contrato nvarchar(50)

	       	   AS
BEGIN
	SET NOCOUNT ON;

	   INSERT INTO [dbo].[Tbl_partida_Detalle]
	(numeroPartida,cuenta,montoDebe,montoHaber,usuarioAgrego,fechaAgrego,descripcion,contrato)
	VALUES(
	 @numeroPartida,
	  @cuentaDebe ,
	  0,
      @monto,
      @usuarioAgrego  ,
     GETDATE(),
	  @descripcion,
	  @contrato     
	       );
		    INSERT INTO [dbo].[Tbl_partida_Detalle]
	(numeroPartida,cuenta,montoHaber,montoDebe,usuarioAgrego,fechaAgrego,descripcion,contrato)
	VALUES(
	@numeroPartida,
	  @cuentaHaber ,
	  0,
      @monto,
      @usuarioAgrego  ,
       GETDATE(),
	  @descripcion,
	  @contrato      
	       );


 End
GO
/****** Object:  StoredProcedure [dbo].[sp_GRABAR_SOLIC_VE]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GRABAR_SOLIC_VE]
	-- Add the parameters for the stored procedure here
	
@fechasolicitud  nvarchar(50),
@coddeposidirecto nvarchar(50),
@razonsocial  nvarchar(150),
@domiciliolegal  nvarchar(150),
@fechaconstitu  nvarchar(50),
@paisorigen  nvarchar(50),
@codsectorecono  nvarchar(50),
@codactivecono  nvarchar(50),
@codcentrocustodia  nvarchar(50),
@principalproducto  nvarchar(150),
@capitalsocilasub   numeric(18,6),
@capitalsolpagado   numeric(18,6),
@capitalsolsubs      numeric(18,6),
@capitalsocialpagadola  numeric(18,6),
@sectorindu  nvarchar(50),
@sectorfina  nvarchar(50),
@sectorfonpen nvarchar(50),
@codigoisin  nvarchar(50),
@tipoinstru  nvarchar(50),
@fechaemi  nvarchar(50),
@fechavenci nvarchar(50),
@codformarepre  nvarchar(50),
@codmoneda  nvarchar(50),
@valornominal numeric(18,6),
@montoemi  numeric(18,6),
@montocoloca numeric(18,6),
@interesaplicable nvarchar(50),
@codtipointerest nvarchar(50),
@fechapagointer nvarchar(50),
@mecanismonegocia nvarchar(50),
@tienefrma nvarchar(50),
@tienesellos nvarchar(50),
@datosrecepbcv nvarchar(50),
@inclusello nvarchar(50),
@codinterno nvarchar(50),
@observaciones nvarchar(50),
@estadosolici nvarchar(50),
@estadoproceso nvarchar(50),
@codusuario nvarchar(50),
@equipocliente nvarchar(150),
@codcb nvarchar(50),
@tieneinteres	nvarchar(50),
@periodicidad  nvarchar(50),

@notifecha nvarchar(50),
@fechalimipag	nvarchar(50),
@estadopag  nvarchar(50),
@registrado_bcvn nvarchar(50),
@fecharegbcvsis nvarchar(50),

@tipoarmorti    nvarchar(50),
@amortiperiodi  nvarchar(50),
@fechaamorti    nvarchar(50),
@fechapago1    nvarchar(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	INSERT INTO dbo.Tbl_soliregistro (fechasolicitud, coddeposidirecto, razonsocial, domiciliolegal, fechaconstitu, paisorigen, codsectorecono, codactivecono, codcentrocustodia, principalproducto, capitalsocilasub, capitalsolpagado, capitalsolsubs, capitalsocialpagadola, sectorindu, sectorfina, sectorfonpen, codigoisin, tipoinstru, fechaemi, fechavenci, codformarepre, codmoneda, valornominal, montoemi, montocoloca, interesaplicable, codtipointerest, fechapagointer, mecanismonegocia, tienefrma, tienesellos, datosrecepbcv, inclusello, codinterno, observaciones, estadosolici, estadoproceso, codusuario, fechagrabacion,equipocliente,codcb,valid_interes,tipo_periodi,notifecha,fechalimipag,estadopag,registrado_bcvn,fecharegbcvsis,tipoarmorti,amortiperiodi,fechaamorti,fechapago1)
    VALUES (@fechasolicitud, @coddeposidirecto, @razonsocial, @domiciliolegal, @fechaconstitu, @paisorigen, @codsectorecono, @codactivecono, @codcentrocustodia, @principalproducto, @capitalsocilasub, @capitalsolpagado, @capitalsolsubs, @capitalsocialpagadola, @sectorindu, @sectorfina, @sectorfonpen, @codigoisin, @tipoinstru, @fechaemi, @fechavenci, @codformarepre, @codmoneda, @valornominal, @montoemi, @montocoloca, @interesaplicable, @codtipointerest, @fechapagointer, @mecanismonegocia, @tienefrma, @tienesellos, @datosrecepbcv, @inclusello, @codinterno, @observaciones, @estadosolici, @estadoproceso, @codusuario, CONVERT(VARCHAR,getdate(),109),@equipocliente,@codcb,@tieneinteres,@periodicidad,@notifecha,@fechalimipag,@estadopag,@registrado_bcvn,@fecharegbcvsis,@tipoarmorti,@amortiperiodi,@fechaamorti,@fechapago1)
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GRABAR_SOLIC_WF]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GRABAR_SOLIC_WF] 
	-- Add the parameters for the stored procedure here
@fechaenvio Datetime,
@idsolicitud nvarchar(50),
@codusur nvarchar(50),
@codestado nvarchar(50),
@codestadoreque nvarchar(50),
@emaildesti nvarchar(50),
@codusudestino nvarchar(50),
@observaciones nvarchar(150),
@fecharecepcion Datetime,
@estadoworkflow nvarchar(50),
@nombremaquina  nvarchar(50),
@estadoreg      nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO dbo.Tbl_workflow (fechaenvio, idsolicitud, codusur, codestado, codestadoreque,emaildesti, codusudestino, observaciones, fecharecepcion, estadoworkflow, nombremaquina,estadoreg)
    VALUES (@fechaenvio, @idsolicitud, @codusur, @codestado,@codestadoreque ,@emaildesti, @codusudestino, @observaciones, @fecharecepcion, @estadoworkflow, @nombremaquina,@estadoreg)


IF @estadoworkflow=4 -- AUTORIZADO
	BEGIN
		UPDATE dbo.Tbl_soliregistro
		SET estadoproceso = '2'
		WHERE iD=@idsolicitud
	END

IF @estadoworkflow=3 ---RECHAZADA
	 BEGIN
		UPDATE dbo.Tbl_soliregistro
		SET estadoproceso = '3'          
		WHERE ID=@idsolicitud		
	END 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_grabar_Sucesion_Division]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_grabar_Sucesion_Division]    
	@numeroCuentaTitular nvarchar(50),
	@numeroOperacionBCV nvarchar(50),
	@fechaSucesionDivision date,
	@cantidadValores numeric(18, 0),
	@valorNominal numeric(18, 0),
	@nombreTitilarOriginal nvarchar(100),
	@nombreNuevoTitular nvarchar(100),
	@identidad nvarchar(20),
	@nacionalidad nvarchar(50),
	@telefono nvarchar(20),
	@estado numeric(18, 0),
	@numeroEmision nvarchar(50),
	@numeroColocacion nvarchar(50),
	@numeroBoleta nvarchar(50),
	@usuarioAgrego nvarchar(50),
	@codigoCliente nvarchar(50),
	@ip nvarchar(50)
	 AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO [dbo].[Tbl_Sucesion_Division]
	(numeroCuentaTitular,
	numeroOperacionBCV ,
	fechaSucesionDivision,
	cantidadValores,
	valorNominal ,
	nombreTitilarOriginal ,
	nombreNuevoTitular,
	identidad ,
	nacionalidad ,
	telefono,
	estado ,
	numeroEmision ,
	numeroColocacion ,
	numeroBoleta ,
	usuarioAgrego ,
	codigoCliente,
	fechaAgrego,
	ip
	)  	       
	VALUES(
	@numeroCuentaTitular ,
	@numeroOperacionBCV ,
	GETDATE(),
	@cantidadValores ,
	@valorNominal ,
	@nombreTitilarOriginal ,
	@nombreNuevoTitular,
	@identidad ,
	@nacionalidad ,
	@telefono,
	@estado ,
	@numeroEmision ,
	@numeroColocacion ,
	@numeroBoleta ,
	@usuarioAgrego ,
	@codigoCliente, 
	GETDATE(),
	@ip
	)
	end
GO
/****** Object:  StoredProcedure [dbo].[SP_grafica_pais]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_grafica_pais]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
		SELECT B.pais, COUNT(a.paisorigen)as total
		FROM Tbl_soliregistro a, Tbl_paises b
		WHERE a.paisorigen=b.codigo
		GROUP BY a.paisorigen,B.pais

END
GO
/****** Object:  StoredProcedure [dbo].[SP_grafica_sector]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_grafica_sector]
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

SELECT b.descripcion ,count(a.codactivecono) total
FROM Tbl_soliregistro a, tbl_tipo_act_econo B
WHERE a.codactivecono=1 AND B.codigo=1 AND a.codactivecono=b.codigo
GROUP BY a.codactivecono,b.descripcion

UNION all

SELECT b.descripcion ,count(a.codactivecono) total
FROM Tbl_soliregistro a, tbl_tipo_act_econo B
WHERE a.codactivecono=2 AND B.codigo=2 AND a.codactivecono=b.codigo
GROUP BY a.codactivecono,b.descripcion

UNION all

SELECT b.descripcion ,count(a.codactivecono) total
FROM Tbl_soliregistro a, tbl_tipo_act_econo B
WHERE a.codactivecono=3 AND B.codigo=3 AND a.codactivecono=b.codigo
GROUP BY a.codactivecono,b.descripcion

UNION all

SELECT b.descripcion ,count(a.codactivecono) total
FROM Tbl_soliregistro a, tbl_tipo_act_econo B
WHERE a.codactivecono=4 AND B.codigo=4 AND a.codactivecono=b.codigo
GROUP BY a.codactivecono,b.descripcion

UNION all

SELECT b.descripcion ,count(a.codactivecono) total
FROM Tbl_soliregistro a, tbl_tipo_act_econo B
WHERE a.codactivecono=5 AND B.codigo=5 AND a.codactivecono=b.codigo
GROUP BY a.codactivecono,b.descripcion

UNION all

SELECT b.descripcion ,count(a.codactivecono) total
FROM Tbl_soliregistro a, tbl_tipo_act_econo B
WHERE a.codactivecono=6 AND B.codigo=6 AND a.codactivecono=b.codigo
GROUP BY a.codactivecono,b.descripcion


END
GO
/****** Object:  StoredProcedure [dbo].[SP_INGRESO_COMPRA]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_INGRESO_COMPRA] 
	-- Add the parameters for the stored procedure here
	 @infovalor nvarchar(250),
	 @seleccion   nvarchar(2)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

 
	    IF (@seleccion = 1) -- TIPO DE INSTRUMENTO
        BEGIN 
              SELECT a.id as [Id Gestion], b.descripcion as [Tipo de instrumento],a.razonsocial as [Emisor o Razon Social], rtrim(ltrim(c.descripcion)) AS [Sector Economico] ,rtrim(ltrim(d.descripcion)) as Moneda , rtrim(ltrim(a.codigoisin)) as [Codigo ISIN]
              FROM Tbl_soliregistro a, Tbl_tipo_instrumento b, Tbl_tipo_sectoeco c , Tbl_monedas d
	           WHERE rtrim(ltrim(a.tipoinstru))= @infovalor and a.codmoneda=d.codigo and a.codsectorecono=c.codigo and a.tipoinstru = b.codigo
       END
	
		IF (@seleccion = 2) -- emisor
        BEGIN 
              SELECT a.id as [Id Gestion], b.descripcion as [Tipo de instrumento],a.razonsocial as [Emisor o Razon Social], rtrim(ltrim(c.descripcion)) AS [Sector Economico] ,rtrim(ltrim(d.descripcion)) as Moneda, rtrim(ltrim(a.codigoisin)) as [Codigo ISIN]
              FROM Tbl_soliregistro a, Tbl_tipo_instrumento b, Tbl_tipo_sectoeco c , Tbl_monedas d
	           WHERE rtrim(ltrim(a.razonsocial))= @infovalor and a.codmoneda=d.codigo and a.codsectorecono=c.codigo and a.tipoinstru = b.codigo
       END
	

		IF (@seleccion = 3) -- tipo sector
        BEGIN 
              SELECT a.id as [Id Gestion], b.descripcion as [Tipo de instrumento],a.razonsocial as [Emisor o Razon Social], rtrim(ltrim(c.descripcion)) AS [Sector Economico] ,rtrim(ltrim(d.descripcion)) as Moneda , rtrim(ltrim(a.codigoisin)) as [Codigo ISIN]
              FROM Tbl_soliregistro a, Tbl_tipo_instrumento b, Tbl_tipo_sectoeco c , Tbl_monedas d
	           WHERE rtrim(ltrim(a.codsectorecono))= @infovalor and a.codmoneda=d.codigo and a.codsectorecono=c.codigo and a.tipoinstru = b.codigo
        END	
	
	    IF (@seleccion = 4) -- tipo moneda
        BEGIN 
             SELECT a.id as [Id Gestion], b.descripcion as [Tipo de instrumento],a.razonsocial as [Emisor o Razon Social], rtrim(ltrim(c.descripcion)) AS [Sector Economico] ,rtrim(ltrim(d.descripcion)) as Moneda, rtrim(ltrim(a.codigoisin)) as [Codigo ISIN]
              FROM Tbl_soliregistro a, Tbl_tipo_instrumento b, Tbl_tipo_sectoeco c , Tbl_monedas d
	           WHERE rtrim(ltrim(a.codmoneda))= @infovalor and a.codmoneda=d.codigo and a.codsectorecono=c.codigo and a.tipoinstru = b.codigo
        END	

        IF (@seleccion = 5) -- isin
        BEGIN 
              SELECT a.id as [Id Gestion], b.descripcion as [Tipo de instrumento],a.razonsocial as [Emisor o Razon Social], rtrim(ltrim(c.descripcion)) AS [Sector Economico] ,rtrim(ltrim(d.descripcion)) as Moneda ,
			  rtrim(ltrim(a.codigoisin)) as [Codigo ISIN]
              FROM Tbl_soliregistro a, Tbl_tipo_instrumento b, Tbl_tipo_sectoeco c , Tbl_monedas d
	           WHERE rtrim(ltrim(a.codigoisin))= @infovalor and a.codmoneda=d.codigo and a.codsectorecono=c.codigo and a.tipoinstru = b.codigo
        END	

        
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ingreso_mensual]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ingreso_mensual] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(LTRIM(codigo)) as codigo, rtrim(LTRIM(descripcion)) as descripcion
	FROM Tbl_Ingreso_Mensual
	WHERE estado=1
	ORDER BY codigo ASC
END
GO
/****** Object:  StoredProcedure [dbo].[SP_modi_ano_opera]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_modi_ano_opera]
	-- Add the parameters for the stored procedure here
   @codigo  nchar(10),
   @descripcion nvarchar(150),
   @estado nchar(10)
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
UPDATE dbo.Tbl_ano_opera
SET 
	descripcion = @descripcion
	,estado = @estado
	
WHERE codigo = @codigo

END
GO
/****** Object:  StoredProcedure [dbo].[SP_modi_aporte]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_modi_aporte]
	-- Add the parameters for the stored procedure here
   @codigo  nchar(10),
   @descripcion nvarchar(150),
   @estado nchar(10)
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
UPDATE dbo.Tbl_Aporte_Capital
SET 
	descripcion = @descripcion
	,estado = @estado
	
WHERE codigo = @codigo

END
GO
/****** Object:  StoredProcedure [dbo].[SP_modi_BENEFICIARIOS]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ing. Darío Núñez Fiallos
-- Create date:  31/05/2017
-- Description:	 modifica la tabla de los beneficiarios para llevar la información al grid.
-- =============================================
CREATE PROCEDURE [dbo].[SP_modi_BENEFICIARIOS]
	-- Add the parameters for the stored procedure here
   @ID_BENE  nvarchar(50),
   @pnfa21_numcontrato nvarchar(50), 
   @pnfa21_codcliente  nvarchar(50), 
   @pnfa21_nombrecompleto nvarchar(150), 
   @pnfa21_codparestes nvarchar(50), 
   @pnfa21_porcentaje nvarchar(50), 
   @usuario_veri  nvarchar(50), 
   @fecha_verifica datetime, 
   @codigo_pais nvarchar(50), 
   @casa_bolsa  nvarchar(50), 
   @estado_registro nvarchar(50)
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
UPDATE dbo.Tbl_PN_bene
SET 
	 pnfa21_numcontrato = @pnfa21_numcontrato
	, pnfa21_codcliente = @pnfa21_codcliente 
	, pnfa21_nombrecompleto = @pnfa21_nombrecompleto
	, pnfa21_codparestes = @pnfa21_codparestes
	, pnfa21_porcentaje = @pnfa21_porcentaje
	, usuario_veri = @usuario_veri
  	, fecha_verifica = @fecha_verifica
	, codigo_pais =  @codigo_pais
	, casa_bolsa = @casa_bolsa
	, estado_registro = @estado_registro
WHERE id = @ID_BENE

END

GO
/****** Object:  StoredProcedure [dbo].[SP_MODI_COMPRA]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_MODI_COMPRA]
    @id nvarchar(50),
    @tiporden_compra nvarchar(50),
    @fechsoli nvarchar(50),
            @fechliq nvarchar(250),
            @TipOper nvarchar(50),
            @cod_dep_dir   nvarchar(250),
            @cod_dep_ind    nvarchar(250),
            @nom_completo nvarchar(250),
            @ban_comercial  nvarchar(250),
            @num_cuenta  nvarchar(50),
            @nom_comp_razon nvarchar(250),
            @emisor nvarchar(250),
            @codigo_isin nvarchar(50), 
            @codmoneda nvarchar(50),
            @cant_valores nvarchar(50), 
			@vn_valor nvarchar(50),
            @tasa_nominal nvarchar(50),
            @rendimiento nvarchar(50),
            @preciotransado nvarchar(50),
            @mone_liqui    nvarchar(50),
            @Plazo  nvarchar(50),
			@usuario_graba nvarchar (250),
            @fecha_graba  datetime,
            @usuario_veri       nvarchar(50),
            @fecha_verifica      datetime,
            @codigo_pais            nvarchar(50),
            @casa_bolsa        nvarchar(50),
            @ban_come_ven        nvarchar(250),
            @num_cuen_ven        nvarchar(50),
			@valor_tranzado      nvarchar(50),
			@num_boleta          nvarchar(50)
			
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
UPDATE dbo.Tbl_orden_compra
Set
            tiporden_compra = @tiporden_compra,
            fechsoli = @fechsoli ,
            fechliq = @fechliq,
            TipOper = @TipOper,
            cod_dep_dir = @cod_dep_dir   ,
            cod_dep_ind = @cod_dep_ind ,
            nom_completo =@nom_completo,
            ban_comercial =@ban_comercial,
            num_cuenta = @num_cuenta,
            nom_comp_razon = @nom_comp_razon ,
            emisor = @emisor,
            codigo_isin = @codigo_isin, 
            codmoneda = @codmoneda,
            cant_valores = @cant_valores, 
			vn_valor = @vn_valor,
            tasa_nominal = @tasa_nominal,
            rendimiento = @rendimiento,
            preciotransado= @preciotransado,
            mone_liqui = @mone_liqui,
            Plazo  = @Plazo,
			usuario_graba = @usuario_graba,
            fecha_graba  = @fecha_graba,
            usuario_veri = @usuario_veri,
            fecha_verifica = @fecha_verifica,
            codigo_pais = @codigo_pais,
            casa_bolsa = @casa_bolsa,
            ban_come_ven=@ban_come_ven,
            num_cuen_ven = @num_cuen_ven,
			valor_tranzado = @valor_tranzado,
			num_boleta = @num_boleta
Where id = @Id
	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_modi_cono_inver]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_modi_cono_inver]
	-- Add the parameters for the stored procedure here
   @codigo  nchar(10),
   @descripcion nvarchar(150),
   @estado nchar(10)
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
UPDATE dbo.Tbl_conocimiento_inver
SET 
	descripcion = @descripcion
	,estado = @estado
	
WHERE codigo = @codigo

END
GO
/****** Object:  StoredProcedure [dbo].[SP_modi_conse_adm]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_modi_conse_adm]
	-- Add the parameters for the stored procedure here
   @ID_CONSE  nvarchar(50),
   @pnfa21_numcontrato nvarchar(50), 
   @pjfa22_nombre  nvarchar(150), 
   @pjfa22_tipoid nvarchar(10), 
   @pjfa22_numeroid nvarchar(50),
   @pjfa22_cargo nvarchar(150),
   @pjfa22_personapep nvarchar(10), 
   @usuario_veri  nvarchar(50), 
   @fecha_verifica datetime, 
   @codigo_pais nvarchar(50), 
   @casa_bolsa  nvarchar(50), 
   @estado_registro nvarchar(50)
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
UPDATE dbo.Tbl_PJ_consejoadm
SET 
	  numcontrato = @pnfa21_numcontrato
	, pjfa22_nombre = @pjfa22_nombre 
	, pjfa22_tipoid = @pjfa22_tipoid
	, pjfa22_numeroid = @pjfa22_numeroid
	, pjfa22_cargo = @pjfa22_cargo
	, pjfa22_personapep = @pjfa22_personapep
	, usuario_veri = @usuario_veri
  	, fecha_verifica = @fecha_verifica
	, codigo_pais =  @codigo_pais
	, casa_bolsa = @casa_bolsa
	, estado_registro = @estado_registro
WHERE id = @ID_CONSE

END
GO
/****** Object:  StoredProcedure [dbo].[SP_modi_cpago]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_modi_cpago]
	-- Add the parameters for the stored procedure here
   @codigo  nvarchar(50),
   @descripcion nvarchar(250),
   @estado nvarchar(50)
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
UPDATE dbo.Tbl_tipo_conceptopago
SET 
	descripcion = @descripcion
	,estado = @estado
	
WHERE codigo = @codigo

END
GO
/****** Object:  StoredProcedure [dbo].[SP_modi_estru_propie]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_modi_estru_propie]
	-- Add the parameters for the stored procedure here
   @ID_ESTRU  nvarchar(50),
   @pnfa21_numcontrato nvarchar(50), 
   @pjfa22_nombre  nvarchar(150), 
   @pjfa22_nacionalidad nvarchar(10), 
   @pjfa22_numeroacciones nvarchar(10), 
   @pjfa22_tipoid nvarchar(10), 
   @pjfa22_numeroid nvarchar(50),
   @pjfa22_porcentajepartici nvarchar(10),
   @pjfa22_direcciondomi nvarchar(150),
   @pjfa22_personapep nvarchar(10), 
   @usuario_veri  nvarchar(50), 
   @fecha_verifica datetime, 
   @codigo_pais nvarchar(50), 
   @casa_bolsa  nvarchar(50), 
   @estado_registro nvarchar(50)
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
UPDATE dbo.Tbl_PJ_estrupropie
SET 
	 numcontrato = @pnfa21_numcontrato
	, pjfa22_nombre = @pjfa22_nombre 
	, pjfa22_nacionalidad = @pjfa22_nacionalidad
	, pjfa22_numeroacciones = @pjfa22_numeroacciones
	, pjfa22_tipoid = @pjfa22_tipoid
	, pjfa22_numeroid = @pjfa22_numeroid
	, pjfa22_porcentajepartici = @pjfa22_porcentajepartici
	, pjfa22_direcciondomi = @pjfa22_direcciondomi
	, pjfa22_personapep = @pjfa22_personapep
	, usuario_veri = @usuario_veri
  	, fecha_verifica = @fecha_verifica
	, codigo_pais =  @codigo_pais
	, casa_bolsa = @casa_bolsa
	, estado_registro = @estado_registro
WHERE id = @ID_ESTRU

END
GO
/****** Object:  StoredProcedure [dbo].[SP_MODI_FATCA]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_MODI_FATCA]
@Id int,
 @Num_Contrato nvarchar(50),
    @Cod_Cliente nvarchar(50),
    @nombre nvarchar(250),
    @tipo_id nvarchar(50),
    @num_ide nvarchar(50),
    @num_emis nvarchar(50),
    @num_venci nvarchar(50),
    @num_ident_contri nvarchar(50),
    @lugar_naci nvarchar(150),
    @Pais_Ciudadania nvarchar(100),
    @Dire_Perman nvarchar(250),
    @Ciudad_Poblacion nvarchar(250),
    @correo nvarchar(150),
    @ciudad_poblacion1 nvarchar(250),
    @num_ident_extran nvarchar(50),
    @fecha_naci nvarchar(50),
    @texto1 nvarchar(100),
    @texto2 nvarchar(20),
    @texto3 nvarchar(20),
    @texto4 nvarchar(100),
    @texto5 nvarchar(250),
    @usuario_graba nvarchar(50),
    @fecha_graba datetime,
    @usuario_veri nvarchar(50),
    @fecha_verifica datetime,
    @codigo_pais nvarchar(50),
    @casa_bolsa nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
UPDATE dbo.Tbl_FATCA
SET
Num_Contrato = @Num_Contrato,
Cod_Cliente = @Cod_Cliente,
nombre =@nombre,
tipo_id = @tipo_id,
num_ide = @num_ide,
num_emis = @num_emis,
num_venci= @num_venci,
num_ident_contri = @num_ident_contri,
lugar_naci = @lugar_naci,
Pais_Ciudadania = @lugar_naci,
Dire_Perman =  @Dire_Perman,
Ciudad_Poblacion = @Ciudad_Poblacion,
correo= @correo,
ciudad_poblacion1 = @ciudad_poblacion1,
num_ident_extran = num_ident_extran,
fecha_naci = @fecha_naci,
texto1=  @texto1,
texto2 = @texto2,
texto3=  @texto3,
texto4=  @texto4,
texto5=  @texto5,
usuario_graba =@usuario_graba,
fecha_graba =@fecha_graba,
usuario_veri = @usuario_veri,
fecha_verifica =@fecha_verifica,
codigo_pais=@codigo_pais,
casa_bolsa= @casa_bolsa

Where id =@Id
	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_modi_fauto]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_modi_fauto]
	-- Add the parameters for the stored procedure here
   @codigo  nchar(10),
   @descripcion nvarchar(150),
   @estado nchar(10)
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
UPDATE dbo.Tbl_fautorizacion
SET 
	descripcion = @descripcion
	,estado = @estado
	
WHERE codigo = @codigo

END
GO
/****** Object:  StoredProcedure [dbo].[SP_MODI_FINAL]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_MODI_FINAL]
@Id int,
 @Num_Contrato nvarchar(50),
        @Cod_Cliente nvarchar(50),
		@sexo nvarchar(50),
        @nombre1 nvarchar(150),
        @nombre2 nvarchar(150),
        @apellido1 nvarchar(150),
        @apellido2 nvarchar(150),
        @tipo_inver nvarchar(50),
        @tipo_identif nvarchar(50),
        @num_identif nvarchar(50),
        @fecha_emi nvarchar(50),
        @fecha_venci nvarchar(50),
        @RTN nvarchar(50),
        @nacionalidad nvarchar(50),
        @estado_civil nvarchar(50),
		@fecha_nacimiento nvarchar(50),
		@lugar_nacimiento nvarchar(150),
        @pais_naci nvarchar(50),
        @depto_naci nvarchar(50),
         @muni_naci nvarchar(50),
         @ciudad_naci nvarchar(150),
          @direccion_completa nvarchar(250),
          @telefono nvarchar(50),
           @celular nvarchar(50),
           @pais_residencia nvarchar(50),
           @depto_residencia nvarchar(50),
           @muni_residencia nvarchar(50),
           @ciudad_residencia nvarchar(50),
           @correo_elec nvarchar(100),
           @lugar_trabajo nvarchar(200),
           @correo_trabajo nvarchar(50),
           @profesion nvarchar(250),
           @cargo nvarchar(250),
           @ingreso_mensual nvarchar(50),
           @direccion_trabajo nvarchar(250),
           @pais_trabajo nvarchar(50),
           @depto_trabajo nvarchar(50),
           @muni_trabajo nvarchar(50),
           @ciudad_trabajo nvarchar(150),
           @tele_oficina nvarchar(50),
           @antiguedad_labora nvarchar(50),
           @exon_fiscal nvarchar(50),
           @pers_pep nvarchar(50),
           @cargo_publico nvarchar(200),
           @activi_desig nvarchar(50),
           @num_resgistro nvarchar(50),
           @fecha_inscripcion nvarchar(50),
           @usuario_graba nvarchar(50),
           @fecha_graba datetime,
           @usuario_veri nvarchar(50),
           @fecha_verifica datetime,
           @codigo_pais nvarchar(50),
           @casa_bolsa nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
UPDATE dbo.Tbl_Ben_Final
SET
Num_Contrato = @Num_Contrato,
Cod_Cliente = @Cod_Cliente,
sexo =@sexo,
nombre1 =@nombre1,
nombre2 =@nombre2,
apellido1 =@apellido1,
apellido2 =@apellido2,
tipo_inver =@tipo_inver,
tipo_identif =@tipo_identif,
num_identif = @num_identif,
fecha_emi = @fecha_emi,
fecha_venci =@fecha_venci,
RTN =@RTN,
nacionalidad =@nacionalidad,
estado_civil = @estado_civil,
fecha_nacimiento = @fecha_nacimiento,
lugar_nacimiento =@lugar_nacimiento,
pais_naci =@pais_naci,
depto_naci =@depto_naci,
muni_naci =@muni_naci,
ciudad_naci =@ciudad_naci,
direccion_completa = @direccion_completa,
telefono = @telefono,
celular =@celular,
pais_residencia =@pais_residencia,
depto_residencia =@depto_residencia,
muni_residencia =@muni_residencia,
ciudad_residencia =@ciudad_residencia,
correo_elec =@correo_elec,
lugar_trabajo =@lugar_trabajo,
correo_trabajo =@correo_trabajo,
profesion =@profesion,
cargo =@cargo,
ingreso_mensual =@ingreso_mensual,
direccion_trabajo =@direccion_trabajo,
pais_trabajo =@pais_trabajo,
depto_trabajo =@depto_trabajo,
muni_trabajo =@muni_trabajo,
ciudad_trabajo =@ciudad_trabajo,
tele_oficina =@tele_oficina,
antiguedad_labora =@antiguedad_labora,
exon_fiscal =@exon_fiscal,
pers_pep =@pers_pep,
cargo_publico =@cargo_publico,
activi_desig =@activi_desig,
num_resgistro =@num_resgistro,
fecha_inscripcion =@fecha_inscripcion,
usuario_graba =@usuario_graba,
fecha_graba =@fecha_graba,
usuario_veri =@usuario_veri,
fecha_verifica =@fecha_verifica,
codigo_pais =@codigo_pais,
casa_bolsa =@casa_bolsa

Where id =@Id
	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_modi_firma_autorizacion]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ing. Darío Núñez Fiallos
-- Create date:  31/05/2017
-- Description:	 modifica la tabla de los beneficiarios para llevar la información al grid.
-- =============================================
CREATE PROCEDURE [dbo].[SP_modi_firma_autorizacion]
	-- Add the parameters for the stored procedure here
   @ID  nvarchar(50),
   @pnfa21_numcontrato nvarchar(150), 
   @pnfa21_codcliente  nvarchar(150), 
   @pnfa21_nombre nvarchar(150), 
   @pnfa21_tipo_autorizaion nvarchar(2), 
   @pnfa21_fid  nvarchar(50), 
   @pnfa21_fnum_id nvarchar(50),
   @usuario_veri  nvarchar(50), 
   @fecha_verifica datetime, 
   @codigo_pais nvarchar(50), 
   @casa_bolsa  nvarchar(50), 
   @estado_registro nvarchar(50)
   as 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
UPDATE dbo.Tbl_Firmas_Autorizadas
SET 
	 pnfa21_numcontrato = @pnfa21_numcontrato
	, pnfa21_codcliente = @pnfa21_codcliente 
	, pnfa21_nombre = @pnfa21_nombre
	, pnfa21_tipo_autorizaion = @pnfa21_tipo_autorizaion
	,  pnfa21_fid =  @pnfa21_fid
	, pnfa21_fnum_id = @pnfa21_fnum_id
	, usuario_veri = @usuario_veri
  	, fecha_verifica = @fecha_verifica
	, codigo_pais =  @codigo_pais
	, casa_bolsa = @casa_bolsa
	, estado_registro = @estado_registro
WHERE id = @ID

END
GO
/****** Object:  StoredProcedure [dbo].[SP_modi_fpago]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_modi_fpago]
	-- Add the parameters for the stored procedure here
   @codigo  nvarchar(50),
   @descripcion nvarchar(150),
   @estado nvarchar(50)
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
UPDATE dbo.Tbl_tipo_formapago
SET 
	descripcion = @descripcion
	,estado = @estado
	
WHERE codigo = @codigo

END
GO
/****** Object:  StoredProcedure [dbo].[SP_modi_IDE]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_modi_IDE]
	-- Add the parameters for the stored procedure here
   @codigo  nchar(2),
   @descripcion nvarchar(150),
   @estado nchar(1)
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
UPDATE dbo.Tbl_tipo_identificacion
SET 
	descripcion = @descripcion
	,estado = @estado
	
WHERE codigo = @codigo

END
GO
/****** Object:  StoredProcedure [dbo].[SP_modi_ingre_mens]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_modi_ingre_mens]
	-- Add the parameters for the stored procedure here
   @codigo  nchar(10),
   @descripcion nvarchar(150),
   @estado nchar(10)
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
UPDATE dbo.Tbl_Ingreso_Mensual
SET 
	descripcion = @descripcion
	,estado = @estado
	
WHERE codigo = @codigo

END
GO
/****** Object:  StoredProcedure [dbo].[SP_modi_instrumento]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_modi_instrumento]
	-- Add the parameters for the stored procedure here
   @codigo  nvarchar(50),
   @descripcion nvarchar(150),
   @estado nvarchar(50)
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
UPDATE dbo.Tbl_tipo_instrumento
SET 
	descripcion = @descripcion
	,estado = @estado
	
WHERE codigo = @codigo

END
GO
/****** Object:  StoredProcedure [dbo].[SP_modi_interes]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_modi_interes]
	-- Add the parameters for the stored procedure here
   @codigo  nvarchar(50),
   @descripcion nvarchar(150),
   @estado nvarchar(50)
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
UPDATE dbo.Tbl_tipo_interes
SET 
	descripcion = @descripcion
	,estado = @estado
	
WHERE codigo = @codigo

END
GO
/****** Object:  StoredProcedure [dbo].[SP_modi_inver]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_modi_inver]
	-- Add the parameters for the stored procedure here
   @codigo  nchar(10),
   @descripcion nvarchar(150),
   @estado nchar(10)
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
UPDATE dbo.Tbl_tipo_inversionista
SET 
	descripcion = @descripcion
	,estado = @estado
	
WHERE codigo = @codigo

END
GO
/****** Object:  StoredProcedure [dbo].[SP_modi_moneda]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_modi_moneda]
	-- Add the parameters for the stored procedure here
   @codigo  nvarchar(10),
   @descripcion nvarchar(150),
   @estado nchar(10)
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
UPDATE dbo.Tbl_monedas
SET 
	descripcion = @descripcion
	,estado = @estado
	
WHERE codigo = @codigo

END
GO
/****** Object:  StoredProcedure [dbo].[SP_modi_parentesco]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_modi_parentesco]
	-- Add the parameters for the stored procedure here
   @codigo  nchar(10),
   @descripcion nvarchar(200),
   @estado nchar(10)
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
UPDATE dbo.Tbl_parentesco
SET 
	descripcion = @descripcion
	,estado = @estado
	
WHERE codigo = @codigo

END
GO
/****** Object:  StoredProcedure [dbo].[SP_MODI_PEP]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_MODI_PEP]

 @numcontrato nvarchar(50),
     @codigocliente nvarchar(50),
     @nombre1 nvarchar(250),
     @nombre2 nvarchar(250),
     @apellido1 nvarchar(250),
     @apellido2 nvarchar(250),
     @posi_cargo nvarchar (250),
     @porc_de_empresa nvarchar(50),
     @nombre_empresa nvarchar(250),
     @nac_pre_3_poderes nvarchar(50),
     @extr_pre_3_poderes nvarchar(50),
     @consa_prim_grado nvarchar(50),
     @consa_seg_grado nvarchar(50),
      @afin_prim_grado nvarchar(50),
      @afin_seg_grado nvarchar(50),
      @usuario_graba nvarchar(50),
      @fecha_graba datetime,
      @usuario_veri nvarchar(50),
      @fecha_verifica datetime,
      @codigo_pais nvarchar(50),
      @casa_bolsa nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
UPDATE dbo.Tbl_PEP
SET
numcontrato = @numcontrato,
codigocliente = @codigocliente,
nombre1 = @nombre1,
nombre2 = @nombre2,
apellido1 = @apellido1,
apellido2 = @apellido2,
posi_cargo = @posi_cargo,
porc_de_empresa = @porc_de_empresa,
nombre_empresa = @nombre_empresa,
nac_pre_3_poderes = @nac_pre_3_poderes,
extr_pre_3_poderes = @extr_pre_3_poderes,
consa_prim_grado = @consa_prim_grado,
consa_seg_grado = @consa_seg_grado,
afin_prim_grado = @afin_prim_grado,
afin_seg_grado = @afin_seg_grado,
usuario_graba = @usuario_graba,
fecha_graba = @fecha_graba,
usuario_veri = @usuario_veri,
fecha_verifica = @fecha_verifica,
codigo_pais = @codigo_pais,
casa_bolsa=@casa_bolsa

Where numcontrato =@numcontrato
	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_modi_PEP_Rel]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
--
-- Description:	 modifica la tabla de los beneficiarios para llevar la información al grid.
-- =============================================
CREATE PROCEDURE [dbo].[SP_modi_PEP_Rel]
	-- Add the parameters for the stored procedure here
   @ID  nvarchar(50),
   @pnfa21_numcontrato nvarchar(50), 
   @pnfa21_codcliente  nvarchar(50), 
   @pnfa21_nombrecompleto nvarchar(250), 
   @pnfa21_codparestes nvarchar(50), 
   @pnfa21_identidad nvarchar(50), 
   @pnfa21_domicilio nvarchar(250),
   @usuario_veri  nvarchar(50), 
   @fecha_verifica datetime, 
   @codigo_pais nvarchar(50), 
   @casa_bolsa  nvarchar(50), 
   @estado_registro nvarchar(50)
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
UPDATE dbo.Tbl_PEP_Rel_consa
SET 
	 pnfa21_numcontrato = @pnfa21_numcontrato
	, pnfa21_codcliente = @pnfa21_codcliente 
	, pnfa21_nombrecompleto = @pnfa21_nombrecompleto
	, pnfa21_codparestes = @pnfa21_codparestes
	  ,pnfa21_identidad =@pnfa21_identidad
   ,pnfa21_domicilio = @pnfa21_domicilio
	
	, usuario_veri = @usuario_veri
  	, fecha_verifica = @fecha_verifica
	, codigo_pais =  @codigo_pais
	, casa_bolsa = @casa_bolsa
	, estado_registro = @estado_registro
WHERE id = @ID

END
GO
/****** Object:  StoredProcedure [dbo].[SP_modi_per_inver]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_modi_per_inver]
	-- Add the parameters for the stored procedure here
   @codigo  nchar(10),
   @descripcion nvarchar(150),
   @estado nchar(10)
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
UPDATE dbo.Tbl_perfil_inver
SET 
	descripcion = @descripcion
	,estado = @estado
	
WHERE codigo = @codigo

END
GO
/****** Object:  StoredProcedure [dbo].[SP_MODI_PRESOLI_VE]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_MODI_PRESOLI_VE]
 -- datos generales titulares
			@fechaingr nvarchar(50),
            @numcontrato nvarchar(50),
            @primnombre0        nvarchar(150),
            @segunombre0        nvarchar(150),
            @primeapell0        nvarchar(150),
            @seguapelli0        nvarchar(150),
			@objetivosocial     nvarchar (150),
            @tiposoli nvarchar(50),
            @tipoid   nvarchar(50),
            @numid    nvarchar(50),
            @tiposector nchar(10),
            @num_tel  nvarchar(50),
            @num_email  nvarchar(50),
            @direccion nvarchar(250),
            @listpais nvarchar(50),
            @cod_depto nvarchar(50), 
            @cod_muni nvarchar(50),
            @nombre_estado nvarchar(150), 
            @nombre_ciudad nvarchar(150),
            
 -- datos apoderado legal


            @jurinumcontr nvarchar(50),
            @jurifechanac nvarchar(50),
            @juricargo    nvarchar(50),
            @juritipoid   nvarchar(50),
            @le_id        nvarchar(50),

 
            
        -- PERSONA NATURAL

            -- 1. DATOS GENERALES

            @FA21_Text_codcliente       nvarchar(50),
            @FA21_drop_tipo_id5         nvarchar(50),
            @FA21_txt_num_id            nvarchar(50),
            @FA21_txt_primnombre        nvarchar(150),
            @FA21_txt_segunombre        nvarchar(150),
            @FA21_txt_primeapell        nvarchar(150),
            @FA21_txt_seguapelli        nvarchar(150),
            @FA21_drop_tipo_sexo        nvarchar(50),
            @FA21_Txt_fecnac            nvarchar(50),
            @FA21_lugarnaci             nvarchar(150),
            @FA21_txt_direccion         nvarchar(250),
            @FA21_txt_numtel            nvarchar(50),   
            @FA21_txt_numcel            nvarchar(50),
            @FA21_txt_email             nvarchar(50),
            @FA21_drop_estadocivil      nvarchar(50),
            @FA21_drop_nacionalidad     nvarchar(50),
            @FA21_txt_cargodesempe      nvarchar(150),
            @FA21_txt_nombrebene        nvarchar(150),
            @FA21_drop_beneisr          nvarchar(50),
            @FA21_drop_inteme           nvarchar(150),
            @FA21_drop_personapep       nvarchar(150),
            @FA21_txt_nombreconyu       nvarchar(150),
            @FA21_txt_conyugueid        nvarchar(50),
            @FA21_Txt_fechaconyugue     nvarchar(50),

            -- 2. DATOS LABORALES

            @FA21_txt_lugartrabajo      nvarchar(150),
            @FA21_txt_email1            nvarchar(50),
            @FA21_txt_oficio            nvarchar(150),
            @FA21_txt_cargo             nvarchar(150),
            @FA21_txt_atiguedad         nvarchar(50),
            @FA21_txt_direccionlaboral  nvarchar(250),
            @FA21_txt_telefono_laboral  nvarchar(50),

            -- 3. DATOS GENERALES CO PROPIETARIO

            @FA21_drop_mancomunada             nvarchar(50),
            @FA21_drop_tipo_sexodatogene       nvarchar(50),
            @FA21_drop_nacionalidaddatosgene   nvarchar(50),
            @FA21_txt_primnombredatosgene      nvarchar(150),
            @FA21_txt_segunombredatosgene      nvarchar(150),
            @FA21_txt_primeapelldatosgene      nvarchar(150),
            @FA21_txt_seguapellidatosgene      nvarchar(150),
            @FA21_drop_tipo_iddatosgene        nvarchar(50),
            @FA21_txt_num_iddatosgener         nvarchar(50),
            @FA21_Txt_fecnacdatosgene         nvarchar(50),
            @FA21_txt_luganacidatosgene        nvarchar(150),
            @FA21_txt_numteldatosgene          nvarchar(50),
            @FA21_txt_numceldatosgene          nvarchar(50),
            @FA21_txt_emaildatosgene           nvarchar(50),
            @FA21_txt_lugartrabajodtosgene     nvarchar(150),
            @FA21_txt_posicioncargodatosgene   nvarchar(150),
            @FA21_txt_direcciondatosgene       nvarchar(250),
            @FA21_txt_cargopublidatosgene      nvarchar(150),
            @FA21_txt_exoisr                   nvarchar(50),
            @FA21_drop_estadopepdatosgene      nvarchar(50),

            -- 4. NATURALEZA DE LA INVERSIÓN

            @FA21_txt_objeinver_natuinver       nvarchar(150),
            @FA21_txt_orirecu_natuinver         nvarchar(150),

            -- 5. INFORMACIÓN FINANCIERA

            @FA21_drop_infofina                  nvarchar(50),
            @FA21_txt_nombrenegocioinfofina      nvarchar(150),
            @FA21_drop_tipo_rubro                nvarchar(50),

            -- 6. RANGOS

            @FA21_drop_activos                   nvarchar(50),
            @FA21_drop_pasivos                   nvarchar(50),
            @FA21_drop_patrimonio                nvarchar(50),
            @FA21_drop_ingresos                  nvarchar(50),
            @FA21_drop_gastos                    nvarchar(50),

            -- 9. DOCUMENTACIÓN ADJUNTA

            @FA21_drop_copiaid                   nvarchar(50),
            @FA21_drop_copiaidcopropie           nvarchar(50),
            @FA21_drop_copiaidapoderado          nvarchar(50),  
            @FA21_drop_copiartntitular           nvarchar(50), 
            @FA21_drop_copiartncoprpie           nvarchar(50),
            @FA21_drop_copiartnapodelegal        nvarchar(50),
            @FA21_drop_refebanc                  nvarchar(50),
            @FA21_drop_copiarecibo               nvarchar(50),
            @FA21_drop_poderlegal                nvarchar(50),
			--Campos nuevos
			@pnfa21_tinversionista               nvarchar(50),
            @pnfa21_emision                      nvarchar(50),
            @pnfa21_vencimiento                  nvarchar(50),
            @pnfa21_RTN nvarchar(50),
            @pnfa21_ingreso_mensual  nvarchar(50),
            @pnfa21_act_desiganda  nvarchar(150),
            @pnfa21_registro  nvarchar(150),
            @pnfa21_fecha_inscrip  nvarchar(50),
            @pnfa21_coinversionista nvarchar(50),
            @pnfa21_coemision  nvarchar(50),
            @pnfa21_covencimiento nvarchar(50),
            @pnfa21_coRTN  nvarchar(50),
            @pnfa21_copais  nvarchar(50),
            @pnfa21_coestado  nvarchar(100),
            @pnfa21_comunicipio nvarchar(100),
            @pnfa21_cociudad  nvarchar(50),
            @pnfa21_coingreso_mensual nvarchar(50),
            @pnfa21_cointermediario  nvarchar(50),
            @pnfa21_act_desig  nvarchar(150),
            @pnfa21_coregistro  nvarchar(150),
            @pnfa21_cofecha_inscripcion  nvarchar(50),
            @pnfa21_conom_conyugue nvarchar(150),
            @pnfa21_connumide  nvarchar(50),
            @pnfa21_perfil_inver  nvarchar(50),
            @pnfa21_mon_prom_inver  nvarchar(50),
            @pnfa21_serv_casa  nvarchar(50),
            @pnfa21_serv_detalle  nvarchar(50),
            @pnfa21_serv_mant  nvarchar(50),
            @pnfa21_prese_mant nvarchar(50),
            @pnfa21_obten_ingreso  nvarchar(50),
            @pnfa21_ganan_tra  nvarchar(50),
			@pnfa21_aume_capi  nvarchar(50),
			@pnfa21_especulacion nvarchar(50),
            @pnfa21_otro  nvarchar(50),
            @pnfa21_hori_1  nvarchar(50),
            @pnfa21_hori_5  nvarchar(50),
            @pnfa21_hori_10  nvarchar(50),
            @pnfa21_hori_20 nvarchar(50),
            @pnfa21_hori_mayor20  nvarchar(50),
            @pnfa21_tole_riesgo nvarchar(50),
            @pnfa21_cono_inversion  nvarchar(50),
            @pnfa21_cert_deposito nvarchar(50),
            @pnfa21_letras nvarchar(50),
            @pnfa21_pagare_papel nvarchar(50),
            @pnfa21_bonos  nvarchar(50),
            @pnfa21_fondos_mutuos  nvarchar(50),
            @pnfa21_fondos_inver  nvarchar(50),
            @pnfa21_reportos  nvarchar(50),
            @pnfa21_acciones  nvarchar(50),
            @pnfa21_futuros  nvarchar(50),
            @pnfa21_opciones nvarchar(50),
            @pnfa21_com_ven_valor nvarchar(50),
            @pnfa21_com_ven_ext nvarchar(50),
            @pnfa21_com_ven_cust  nvarchar(50),
            @pnfa21_adm_cartera nvarchar(50),
            @pnfa21_per_otra  nvarchar(50),
            @pnfa21_otradescrip  nvarchar(150),
			@pnfa21_asesoria_inver nvarchar(50),
			@pnfa21_com_ven_ext_pais nvarchar(50),
			@pnfa21_serv_custodia nvarchar(50),
            @pnfa21_aport_capital  nvarchar(50),
            @pnfa21_num_transaccion nvarchar(100),
            @pnfa21_moneda_inver  nvarchar(50),
            @pnfa21_monto_alta nvarchar(100),
            @pnfa21_monto_bajo  nvarchar(100),
            @pnfa21_recurso_inver  nvarchar(50),
            @pnfa21_recurso_observa  nvarchar(150),
            @pnfa21_origen_recurso  nvarchar(50),
            @pnfa21_origen_detalle  nvarchar(150),
			@pnfa21_paisnaci nvarchar(150),
            @pnfa21_depnaci nvarchar(150),
            @pnfa21_muninaci nvarchar(150),
            @pnfa21_estanaci nvarchar(150),
            @pnfa21_ciudanaci nvarchar(150),
            @pnfa21_paisresi nvarchar(150),
            @pnfa21_depresi nvarchar(150),
            @pnfa21_muniresi nvarchar(150),
            @pnfa21_estaresi nvarchar(150),
			@pnfa21_ciudaresi nvarchar(150),
            @pnfa21_paislabo nvarchar(150),
            @pnfa21_deplabo nvarchar(150),
            @pnfa21_munilabo nvarchar(150),
            @pnfa21_estalabo nvarchar(150),
            @pnfa21_ciudalabo nvarchar(150),
            @pnfa21_paiscop nvarchar(150),
            @pnfa21_depcop nvarchar(150),
            @pnfa21_municop nvarchar(150),
            @pnfa21_estacop nvarchar(150),
            @pnfa21_ciudacop nvarchar(150),
            @pnfa21_pacoresi nvarchar(150),
            @pnfa21_depcores nvarchar(150),
            @pnfa21_municore nvarchar(150),
            @pnfa21_estacores nvarchar(150),
            @pnfa21_ciudacores nvarchar(150),
            @pnfa21_estacivilco nvarchar(50),
            @pnfa21_correlectr nvarchar(150),
            @pnfa21_oficiocop nvarchar(200),

       
                  ---''''''''''''''''''''''''''''''*************  FORMULARIO A2.2  *****************************'''''''''''''''''''''
           --- ''' 1. DATOS GENERALES

            @pjfa22_razonsocial             nvarchar(50),
            @pjfa22_actividadprinci             nvarchar(50),
            @pjfa22_fechaconstitu        nvarchar(50),
            @pjfa22__tomo             nvarchar(50),
            @pjfa22_folio             nvarchar(50),
            @pjfa22_numeroregistro             nvarchar(50),
            @pjfa22_rtn             nvarchar(50),
            @pjfa22_paisconstitucion              nvarchar(50),
            @pjfa22_tipoinversionista             nvarchar(50),
            @pjfa22_permisoperacion             nvarchar(50),
            @pjfa22_direccioncompleta              nvarchar(250),
            @pjfa22_correo                       nvarchar(50),
            @pjfa22_numerocelular               nvarchar(50),
            @pjfa22_domiciliosociedad               nvarchar(150),
            @pjfa22_numerofax                      nvarchar(50),
            @pjfa22_direccionprincipal              nvarchar(150),
            @pjfa22_numeroagencias               nvarchar(50),
            @pjfa22_numerotelefonos               nvarchar(50),
            @pjfa22_antiguedadempresa                nvarchar(50),
            @pjfa22_exoisr                          nvarchar(50),

            ---''' 2. DATOS APODERADO LEGAL
            ---''' 
            @pjfa22_nombreapode                  nvarchar(150),
            @pjfa22_tipoidapode                   nvarchar(150),
            @pjfa22_tipoidnumeroapode                    nvarchar(150),
            @pjfa22_nacionalidadapode                   nvarchar(150),
            @pjfa22_lugarnacimientoapode                  nvarchar(150),
            @pjfa22_fechanacimientoapode                   nvarchar(150),
            @pjfa22_telefonoapode                 nvarchar(50),
            @pjfa22_tiposexo                  nvarchar(50),
            @pjfa22_celularapode                nvarchar(50),
            @pjfa22_direccionresiapode                nvarchar(150),
            @pjfa22_telefonoresiapode                    nvarchar(150),
            @pjfa22_profesionapode                     nvarchar(150),
            @pjfa22_exoisrapode                     nvarchar(50),
            @pjfa22_pepapode                   nvarchar(50),

            ---''' 3. NATURALEZA DE LA INVERSIÓN
            ---''' 
            @pjfa22_objetivoinversion                  nvarchar(150),
            @pjfa22_origenrecurso                   nvarchar(150),

            ---''' 6. INFORMACIÓN FINANCIERA
            ---''' 
            @pjfa22_tiporubro                nvarchar(50),

            ---''' 7. RANGOS

            @pjfa22_rangoactivo                nvarchar(50),
            @pjfa22_rangopasivo             nvarchar(50),
            @pjfa22_patrimonio             nvarchar(50),
            @pjfa22_ingresos             nvarchar(50),
            @pjfa22_gastos             nvarchar(50),

            ---''' 8. REFERENCIAS BANCARIAS Y/O COMERCIALES

            @pjfa22_refenombrecompleto                nvarchar(50),
            @pjfa22_refecontacto             nvarchar(50),
            @pjfa22_refenumerotel             nvarchar(50),

            ----'''' 9. DOCUMENTACIÓN ADJUNTA

            @pjfa22_escrituraconstitu             nvarchar(50),
            @pjfa22_copiartn             nvarchar(50),
            @pjfa22_copiarecibopubli             nvarchar(50),
            @pjfa22_reformaconstitucion             nvarchar(50),
            @pjfa22_identidartnapode             nvarchar(50),
            @pjfa22_constabancarefe             nvarchar(50),
            @pjfa22_poderepre             nvarchar(50),
            @pjfa22_copiaidautori             nvarchar(50),
     
     
     -- exclusivo BCV

            @exclufirma   nvarchar(50),
            @exclusello   nvarchar(50),
            @excluestado  nvarchar(50),

            @exlcuverifi  nvarchar(50),
            @excluobs     nvarchar(150),
            @idreg        nvarchar(50),

            @fechagraba   datetime,
            @fechaveri    datetime,
            @estado       nvarchar(50),
            @usuario      nvarchar(50),
            @codcasa      nvarchar(50),
            @codpais      nvarchar(50),  
       
           @exclu_refebancaria      nvarchar(50),
            @exclu_refepersonal      nvarchar(50), 
            @exclu_documserviciopublico      nvarchar(50),
            @exclu_numerortn      nvarchar(50), 
            @exclu_conocidopor      nvarchar(50), 
            @exclu_oficumpli_listanacional      nvarchar(50),
            @exclu_oficumpli_listainter       nvarchar(50),
			@estaper nvarchar(50),
			@montoaplicar nvarchar(150),

			--Campos nuevos juridico
			@pjfa22_copais nvarchar(50),
            @pjfa22_estado nvarchar(100),
			@pjfa22_municipio  nvarchar(100),
			@pjfa22_ciudad  nvarchar(100),
			@pjfa22_gru_finan nvarchar(50),
			@pjfa22_nom_grup nvarchar(150),
			@pjfa22_act_desig nvarchar(150),
			@pjfa22_coregistro nvarchar(150),
			@pjfa22_cofecha_inscripcion nvarchar(50),
			@pjfa22_cargo  nvarchar(150),
			@pjfa22_tiemp_labo nvarchar(50),
			@pjfa22_perfil_inver nvarchar(50),
			@pjfa22_mon_prom_inver nvarchar(50),
			@pjfa22_serv_casa nvarchar(50),
			@pjfa22_serv_detalle nvarchar(150),
			@pjfa22_prese_mant nvarchar(50),
			@pjfa22_obten_ingreso nvarchar(50),
			@pjfa22_ganan_tra nvarchar(50),
			@pjfa22_especulacion nvarchar(50),
			@pjfa22_otro nvarchar(50),
			@pjfa22_hori_1 nvarchar(50),
			@pjfa22_hori_5 nvarchar(50),
			@pjfa22_hori_10 nvarchar(50),
			@pjfa22_hori_20 nvarchar(50),
			@pjfa22_hori_mayor20 nvarchar(50),
			@pjfa22_tole_riesgo nvarchar(50),
			@pjfa22_cono_inversion nvarchar(50),
			@pjfa22_cert_deposito nvarchar(50),
			@pjfa22_letras nvarchar(50),
 			@pjfa22_pagare_papel nvarchar(50),
			@pjfa22_bonos nvarchar(50),
			@pjfa22_fondos_mutuos nvarchar(50),
			@pjfa22_fondos_inver nvarchar(50),
			@pjfa22_reportos nvarchar(50),
			@pjfa22_acciones nvarchar(50),
			@pjfa22_futuros nvarchar(50),
			@pjfa22_opciones nvarchar(50),
			@pjfa22_com_ven_valor nvarchar(50),
			@pjfa22_com_ven_ext nvarchar(50),
			@pjfa22_adm_cartera nvarchar(50),
			@pjfa22_per_otra nvarchar(50),
			@pjfa22_otradescrip nvarchar(150),
			@pjfa22_asesoria_inver nvarchar(50),
			@pjfa22_com_ven_ext_pais nvarchar(50),
			@pjfa22_serv_custodia nvarchar(50),
			@pjfa22_aport_capital nvarchar(50),
			@pjfa22_moneda_inver nvarchar(50),
			@pjfa22_monto_alta nvarchar(100),
			@pjfa22_monto_bajo nvarchar(100),
			@pjfa22_recurso_inver nvarchar(50),
			@pjfa22_recurso_observa nvarchar(150),
			@pja22_origen_recurso nvarchar(50),
			@pjfa22_origen_detalle nvarchar(150),
			@pjfa22_apre_capital nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
UPDATE dbo.Tbl_MASOLI 
Set
fechasoli =@fechaingr, 
pnombre0=@primnombre0,
snombre0=@segunombre0,
papellido0=@primeapell0,
sapellido0=@seguapelli0, 
objetivosocial = @objetivosocial,
tipo_soli=@tiposoli, 
tipo_id = @tipoid,
numero_id= @numid, 
tipo_sector= @tiposector, 
telefono= @num_tel, 
email= @num_email, 
direccion =  @direccion,
cod_pais_list=@listpais, 
le_nombrecompleto = @jurinumcontr,
le_fechanaci=@jurifechanac,
le_cargo = @juricargo,
le_tipo_id = @juritipoid, 
le_id=@le_id,
exclu_estado_firma= @exclufirma, 
exclu_estado_sello = @exclusello, 
exclu_estado_solici= @excluestado,
exclu_observaciones=@excluobs,
usuario_graba= @usuario, 
fecha_graba=@fechagraba, 
usuario_veri=@exlcuverifi,
fecha_verifica=@fechaveri, 
codigo_pais=@codpais, 
casa_bolsa=@codcasa, 
estado_registro=@estado,
cod_depto=@cod_depto,
cod_muni=@cod_muni,
nombre_estado=@nombre_estado, 
nombre_ciudad=@nombre_ciudad, 
codigocliente=@FA21_Text_codcliente, 
pnfa21_tipoid=@FA21_drop_tipo_id5,
pnfa21_numeroid=@FA21_txt_num_id,
pnfa21_pnombre=@FA21_txt_primnombre,
pnfa21_snombre=@FA21_txt_segunombre,
pnfa21_papellido = @FA21_txt_primeapell, 
pnfa21_sapellido= @FA21_txt_seguapelli,
pnfa21_tiposexo=@FA21_drop_tipo_sexo,
pnfa21_fechanac=@FA21_Txt_fecnac,
pnfa21_lugarnaci=@FA21_lugarnaci, 
pnfa21_direccioncomple=@FA21_txt_direccion, 
pnfa21_numtele=@FA21_txt_numtel, 
pnfa21_numcelular=@FA21_txt_numcel, 
pnfa21_correoelect=@FA21_txt_email, 
pnfa21_estadocivil=@FA21_drop_estadocivil, 
pnfa21_codnacionalidad=@FA21_drop_nacionalidad, 
pnfa21_cargodesempe=@FA21_txt_cargodesempe, 
pnfa21_nombrebenefinal=@FA21_txt_nombrebene, 
pnfa21_exoisr=@FA21_drop_beneisr, 
pnfa21_internmediario=@FA21_drop_inteme, 
pnfa21_personpep=@FA21_drop_personapep, 
pnfa21_nombreconyugue=@FA21_txt_nombreconyu, 
pnfa21_idconyugue=@FA21_txt_conyugueid,
pnfa21_fecnacconyugue=@FA21_Txt_fechaconyugue, 
pnfa21_lugartrabajo=@FA21_txt_lugartrabajo, 
pnfa21_correotrabrajo=@FA21_txt_email1, 
pnfa21_ocupaoficio=@FA21_txt_oficio, 
pnfa21_posicargo=@FA21_txt_cargo, 
pnfa21_antiguedad=@FA21_txt_atiguedad, 
pnfa21_direcciontrabajo=@FA21_txt_direccionlaboral, 
pnfa21_teletrabajo=@FA21_txt_telefono_laboral, 
pnfa21_formmancomunada=@FA21_drop_mancomunada, 
pnfa21_tiposexocopro=@FA21_drop_tipo_sexodatogene, 
pnfa21_nacionalidadcopro=@FA21_drop_nacionalidaddatosgene, 
pnfa21_pnombrecopro=@FA21_txt_primnombredatosgene, 
pnfa21_snombrecopro=@FA21_txt_segunombredatosgene, 
pnfa21_papellidocopro=@FA21_txt_primeapelldatosgene, 
pnfa21_sapellidocopro=@FA21_txt_seguapellidatosgene, 
pnfa21_tipodicopro=@FA21_drop_tipo_iddatosgene, 
pnfa21_idcopro=@FA21_txt_num_iddatosgener,
pnfa21_fechanacicopro=@FA21_Txt_fecnacdatosgene, 
pnfa21_lugarnacicopro=@FA21_txt_luganacidatosgene, 
pnfa21_telcopro=@FA21_txt_numteldatosgene, 
pnfa21_celcopro=@FA21_txt_numceldatosgene, 
pnfa21_correocopro=@FA21_txt_emaildatosgene, 
pnfa21_lugartrabajocopro=@FA21_txt_lugartrabajodtosgene, 
pnfa21_posicargocopro=@FA21_txt_posicioncargodatosgene, 
pnfa21_direccioncopro=@FA21_txt_direcciondatosgene, 
pnfa21_cargodesempecopro=@FA21_txt_cargopublidatosgene, 
pnfa21_exoisrcopro=@FA21_txt_exoisr, 
pnfa21_pepcopro=@FA21_drop_estadopepdatosgene, 
pnfa21_objetivoinversion=@FA21_txt_objeinver_natuinver, 
pnfa21_naturalezainversion=@FA21_txt_orirecu_natuinver, 
pnfa21_aplica=@FA21_drop_infofina, 
pnfa21_nombrenegocio=@FA21_txt_nombrenegocioinfofina, 
pnfa21_tiporubro=@FA21_drop_tipo_rubro, 
pnfa21_rangoactivo=@FA21_drop_activos, 
pnfa21_rangopasivo=@FA21_drop_pasivos, 
pnfa21_rangopatrimonio=@FA21_drop_patrimonio, 
pnfa21_rangoingresos=@FA21_drop_ingresos, 
pnfa21_rangogastos=@FA21_drop_gastos, 
pnfa21_copiaidtitular=@FA21_drop_copiaid, 
pnfa21_copiaidcopropie=@FA21_drop_copiaidcopropie, 
pnfa21_copiaidapoderado=@FA21_drop_copiaidapoderado, 
pnfa21_copiartntitular=@FA21_drop_copiartntitular, 
pnfa21_copiartncopro=@FA21_drop_copiartncoprpie, 
pnfa21_copiartnapodelegal=@FA21_drop_copiartnapodelegal,
pnfa21_refebancacomer=@FA21_drop_refebanc, 
pnfa21_copiarecibopubli=@FA21_drop_copiarecibo, 
pnfa21_poderreprese=@FA21_drop_poderlegal, 
pnfa21_tinversionista = @pnfa21_tinversionista,
pnfa21_emision = @pnfa21_emision, 
pnfa21_vencimiento = @pnfa21_vencimiento, 
pnfa21_RTN = @pnfa21_RTN, 
pnfa21_ingreso_mensual = @pnfa21_ingreso_mensual,
pnfa21_act_desiganda = @pnfa21_act_desiganda,
pnfa21_registro= @pnfa21_registro,
pnfa21_fecha_inscrip = @pnfa21_fecha_inscrip, 
pnfa21_coinversionista = @pnfa21_coinversionista,
pnfa21_coemision = @pnfa21_coemision,
pnfa21_covencimiento = @pnfa21_covencimiento,
pnfa21_coRTN = @pnfa21_coRTN,
pnfa21_copais = @pnfa21_copais, 
pnfa21_coestado = @pnfa21_coestado, 
pnfa21_comunicipio = @pnfa21_comunicipio, 
pnfa21_cociudad = @pnfa21_cociudad, 
pnfa21_coingreso_mensual = @pnfa21_coingreso_mensual, 
pnfa21_cointermediario = @pnfa21_cointermediario,
pnfa21_act_desig = @pnfa21_act_desig,
pnfa21_coregistro = @pnfa21_coregistro, 
pnfa21_cofecha_inscripcion = @pnfa21_cofecha_inscripcion,
pnfa21_conom_conyugue = @pnfa21_conom_conyugue, 
pnfa21_connumide = @pnfa21_connumide, 
pnfa21_perfil_inver = @pnfa21_perfil_inver,
pnfa21_mon_prom_inver = @pnfa21_mon_prom_inver, 
pnfa21_serv_casa = @pnfa21_serv_casa,
pnfa21_serv_detalle = @pnfa21_serv_detalle,
pnfa21_serv_mant = @pnfa21_serv_mant,
pnfa21_prese_mant = @pnfa21_prese_mant,
pnfa21_obten_ingreso = @pnfa21_obten_ingreso, 
pnfa21_ganan_tra = @pnfa21_ganan_tra, 
pnfa21_aume_capi=@pnfa21_aume_capi,
pnfa21_especulacion=@pnfa21_especulacion,
pnfa21_otro = @pnfa21_otro, 
pnfa21_hori_1 = @pnfa21_hori_1,
pnfa21_hori_5 = @pnfa21_hori_5, 
pnfa21_hori_10 = @pnfa21_hori_10, 
pnfa21_hori_20 = @pnfa21_hori_20, 
pnfa21_hori_mayor20 = @pnfa21_hori_mayor20, 
pnfa21_tole_riesgo = @pnfa21_tole_riesgo, 
pnfa21_cono_inversion = @pnfa21_cono_inversion, 
pnfa21_cert_deposito = @pnfa21_cert_deposito, 
pnfa21_letras = @pnfa21_letras, 
pnfa21_pagare_papel = @pnfa21_pagare_papel, 
pnfa21_bonos = @pnfa21_bonos, 
pnfa21_fondos_mutuos = @pnfa21_fondos_mutuos,
pnfa21_fondos_inver = @pnfa21_fondos_inver, 
pnfa21_reportos = @pnfa21_reportos,
pnfa21_acciones = @pnfa21_acciones, 
pnfa21_futuros = @pnfa21_futuros, 
pnfa21_opciones = @pnfa21_opciones, 
pnfa21_com_ven_valor = @pnfa21_com_ven_valor, 
pnfa21_com_ven_ext = @pnfa21_com_ven_ext,
pnfa21_com_ven_cust= @pnfa21_com_ven_cust, 
pnfa21_adm_cartera = @pnfa21_adm_cartera,
pnfa21_per_otra= @pnfa21_per_otra,
pnfa21_otradescrip = @pnfa21_otradescrip,
pnfa21_asesoria_inver= @pnfa21_asesoria_inver,
pnfa21_com_ven_ext_pais = @pnfa21_com_ven_ext_pais,
pnfa21_serv_custodia = @pnfa21_serv_custodia,
pnfa21_aport_capital = @pnfa21_aport_capital,
pnfa21_num_transaccion = @pnfa21_num_transaccion,
pnfa21_moneda_inver = @pnfa21_moneda_inver, 
pnfa21_monto_alta = @pnfa21_monto_alta, 
pnfa21_monto_bajo = @pnfa21_monto_bajo, 
pnfa21_recurso_inver = @pnfa21_recurso_inver,
pnfa21_recurso_observa = @pnfa21_recurso_observa, 
pnfa21_origen_recurso = @pnfa21_origen_recurso, 
pnfa21_origen_detalle = @pnfa21_origen_detalle,
pnfa21_paisnaci=@pnfa21_paisnaci,
pnfa21_depnaci=@pnfa21_depnaci,
pnfa21_muninaci=@pnfa21_muninaci,
pnfa21_estanaci=@pnfa21_estanaci,
pnfa21_ciudanaci=@pnfa21_ciudanaci,
pnfa21_paisresi=@pnfa21_paisresi,
pnfa21_depresi=@pnfa21_depresi,
pnfa21_muniresi=@pnfa21_muniresi,
pnfa21_estaresi=@pnfa21_estaresi,
pnfa21_ciudaresi=@pnfa21_ciudaresi,
pnfa21_paislabo=@pnfa21_paislabo,
pnfa21_deplabo=@pnfa21_deplabo,
pnfa21_munilabo=@pnfa21_munilabo,
pnfa21_estalabo=@pnfa21_estalabo,
pnfa21_ciudalabo=@pnfa21_ciudalabo,
pnfa21_paiscop=@pnfa21_paiscop,
pnfa21_depcop=@pnfa21_depcop,
pnfa21_municop=@pnfa21_municop,
pnfa21_estacop=@pnfa21_estacop,
pnfa21_ciudacop=@pnfa21_ciudacop,
pnfa21_pacoresi=@pnfa21_pacoresi,
pnfa21_depcores=@pnfa21_depcores,
pnfa21_municore=@pnfa21_municore,
pnfa21_estacores=@pnfa21_estacores,
pnfa21_ciudacores=@pnfa21_ciudacores,
pnfa21_estacivilco=@pnfa21_estacivilco,
pnfa21_correlectr=@pnfa21_correlectr,
pnfa21_oficiocop=@pnfa21_oficiocop,

pjfa22_razonsocial=@pjfa22_razonsocial, 
pjfa22_actividadprinci=@pjfa22_actividadprinci, 
pjfa22_fechaconstitu=@pjfa22_fechaconstitu, 
pjfa22__tomo=@pjfa22__tomo, 
pjfa22_folio=@pjfa22_folio, 
pjfa22_numeroregistro=@pjfa22_numeroregistro, 
pjfa22_rtn=@pjfa22_rtn, 
pjfa22_paisconstitucion=@pjfa22_paisconstitucion, 
pjfa22_tipoinversionista=@pjfa22_tipoinversionista, 
pjfa22_permisoperacion=@pjfa22_permisoperacion, 
pjfa22_direccioncompleta=@pjfa22_direccioncompleta, 
pjfa22_correo=@pjfa22_correo, 
pjfa22_numerocelular=@pjfa22_numerocelular, 
pjfa22_domiciliosociedad=@pjfa22_domiciliosociedad,
pjfa22_numerofax=@pjfa22_numerofax, 
pjfa22_direccionprincipal=@pjfa22_direccionprincipal, 
pjfa22_numeroagencias=@pjfa22_numeroagencias, 
pjfa22_numerotelefonos=@pjfa22_numerotelefonos, 
pjfa22_antiguedadempresa=@pjfa22_antiguedadempresa, 
pjfa22_exoisr=@pjfa22_exoisr, 
pjfa22_nombreapode=@pjfa22_nombreapode, 
pjfa22_tipoidapode=@pjfa22_tipoidapode, 
pjfa22_tipoidnumeroapode=@pjfa22_tipoidnumeroapode, 
pjfa22_nacionalidadapode=@pjfa22_nacionalidadapode, 
pjfa22_lugarnacimientoapode=@pjfa22_lugarnacimientoapode, 
pjfa22_fechanacimientoapode=@pjfa22_fechanacimientoapode, 
pjfa22_telefonoapode=@pjfa22_telefonoapode, 
pjfa22_tiposexo=@pjfa22_tiposexo, 
pjfa22_celularapode=@pjfa22_celularapode, 
pjfa22_direccionresiapode=@pjfa22_direccionresiapode, 
pjfa22_telefonoresiapode=@pjfa22_telefonoresiapode, 
pjfa22_profesionapode=@pjfa22_profesionapode, 
pjfa22_exoisrapode=@pjfa22_exoisrapode, 
pjfa22_pepapode=@pjfa22_pepapode, 
pjfa22_objetivoinversion=@pjfa22_objetivoinversion, 
pjfa22_origenrecurso=@pjfa22_origenrecurso, 
pjfa22_tiporubro=@pjfa22_tiporubro, 
pjfa22_rangoactivo=@pjfa22_rangoactivo,
pjfa22_rangopasivo=@pjfa22_rangopasivo, 
pjfa22_patrimonio=@pjfa22_patrimonio, 
pjfa22_ingresos=@pjfa22_ingresos, 
pjfa22_gastos=@pjfa22_gastos, 
pjfa22_refenombrecompleto=@pjfa22_refenombrecompleto, 
pjfa22_refecontacto=@pjfa22_refecontacto, 
pjfa22_refenumerotel=@pjfa22_refenumerotel, 
pjfa22_escrituraconstitu=@pjfa22_escrituraconstitu, 
pjfa22_copiartn=@pjfa22_copiartn, 
pjfa22_copiarecibopubli=@pjfa22_copiarecibopubli, 
pjfa22_reformaconstitucion=@pjfa22_reformaconstitucion, 
pjfa22_identidartnapode=@pjfa22_identidartnapode, 
pjfa22_constabancarefe=@pjfa22_constabancarefe, 
pjfa22_poderepre=@pjfa22_poderepre,
pjfa22_copiaidautori=@pjfa22_copiaidautori,
exclu_refebancaria=@exclu_refebancaria, 
exclu_refepersonal=@exclu_refepersonal, 
exclu_documserviciopublico=@exclu_documserviciopublico, 
exclu_numerortn=@exclu_numerortn, 
exclu_conocidopor=@exclu_conocidopor, 
exclu_oficumpli_listanacional= @exclu_oficumpli_listanacional, 
exclu_oficumpli_listainter=@exclu_oficumpli_listainter,
estaper = @estaper,
montoaplicar =@montoaplicar, 

pjfa22_copais= @pjfa22_copais,
pjfa22_estado=@pjfa22_estado ,
pjfa22_municipio = @pjfa22_municipio,
pjfa22_ciudad = @pjfa22_ciudad,
pjfa22_gru_finan= @pjfa22_gru_finan,
pjfa22_nom_grup=@pjfa22_nom_grup,
pjfa22_act_desig=@pjfa22_act_desig,
pjfa22_coregistro=@pjfa22_coregistro,
pjfa22_cofecha_inscripcion=@pjfa22_cofecha_inscripcion,
pjfa22_cargo=@pjfa22_cargo,
pjfa22_tiemp_labo=@pjfa22_tiemp_labo,
pjfa22_perfil_inver=@pjfa22_perfil_inver,
pjfa22_mon_prom_inver=@pjfa22_mon_prom_inver,
pjfa22_serv_casa=@pjfa22_serv_casa,
pjfa22_serv_detalle=@pjfa22_serv_detalle,
pjfa22_prese_mant=@pjfa22_prese_mant,
pjfa22_obten_ingreso=@pjfa22_obten_ingreso,
pjfa22_ganan_tra=@pjfa22_ganan_tra,
pjfa22_especulacion=@pjfa22_especulacion,
pjfa22_otro=@pjfa22_otro,
pjfa22_hori_1=@pjfa22_hori_1,
pjfa22_hori_5=@pjfa22_hori_5,
pjfa22_hori_10=@pjfa22_hori_10,
pjfa22_hori_20=@pjfa22_hori_20,
pjfa22_hori_mayor20=@pjfa22_hori_mayor20,
pjfa22_tole_riesgo=@pjfa22_tole_riesgo,
pjfa22_cono_inversion=@pjfa22_cono_inversion,
pjfa22_cert_deposito=@pjfa22_cert_deposito,
pjfa22_letras=@pjfa22_letras,
pjfa22_pagare_papel=@pjfa22_pagare_papel,
pjfa22_bonos=@pjfa22_bonos,
pjfa22_fondos_mutuos=@pjfa22_fondos_mutuos,
pjfa22_fondos_inver=@pjfa22_fondos_inver,
pjfa22_reportos=@pjfa22_reportos,
pjfa22_acciones=@pjfa22_acciones,
pjfa22_futuros=@pjfa22_futuros,
pjfa22_opciones=@pjfa22_opciones,
pjfa22_com_ven_valor=@pjfa22_com_ven_valor,
pjfa22_com_ven_ext=@pjfa22_com_ven_ext,
pjfa22_adm_cartera=@pjfa22_adm_cartera,
pjfa22_per_otra=@pjfa22_per_otra,
pjfa22_otradescrip=@pjfa22_otradescrip,
pjfa22_asesoria_inver=@pjfa22_asesoria_inver,
pjfa22_com_ven_ext_pais=@pjfa22_com_ven_ext_pais,
pjfa22_serv_custodia=@pjfa22_serv_custodia,
pjfa22_aport_capital=@pjfa22_aport_capital ,
pjfa22_moneda_inver=@pjfa22_moneda_inver ,
pjfa22_monto_alta=@pjfa22_monto_alta ,
pjfa22_monto_bajo=@pjfa22_monto_bajo,
pjfa22_recurso_inver=@pjfa22_recurso_inver,
pjfa22_recurso_observa = @pjfa22_recurso_observa ,
pja22_origen_recurso= @pja22_origen_recurso ,
pjfa22_origen_detalle=@pjfa22_origen_detalle,
pjfa22_apre_capital = @pjfa22_apre_capital
Where numcontrato =@numcontrato
	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_modi_rangos]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_modi_rangos]
	-- Add the parameters for the stored procedure here
   @codigo  nchar(10),
   @descripcion nvarchar(150),
   @estado nchar(10)
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
UPDATE dbo.Tbl_rangos
SET 
	descripcion = @descripcion
	,estado = @estado
	
WHERE codigo = @codigo

END
GO
/****** Object:  StoredProcedure [dbo].[SP_modi_REFE]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_modi_REFE]
	-- Add the parameters for the stored procedure here
   @ID_REFE  nvarchar(50),
   @pnfa21_numcontrato nvarchar(50), 
   @pnfa21_codcliente  nvarchar(50), 
   @pnfa21_nombrecompleto nvarchar(150), 
   @pnfa21_nombrecontacto nvarchar(50), 
   @pnfa21_numerotelefono nvarchar(50), 
   @usuario_veri  nvarchar(50), 
   @fecha_verifica datetime, 
   @codigo_pais nvarchar(50), 
   @casa_bolsa  nvarchar(50), 
   @estado_registro nvarchar(50)
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
UPDATE dbo.Tbl_PN_REFE
SET 
      numcontrato = @pnfa21_numcontrato
	, pnfa21_numcontrato = @pnfa21_codcliente
	, pnfa21_nombrecompleto = @pnfa21_nombrecompleto
	, pnfa21_nombrecontacto = @pnfa21_nombrecontacto
	, pnfa21_numerotelefono = @pnfa21_numerotelefono
	, usuario_veri = @usuario_veri
  	, fecha_verifica = @fecha_verifica
	, codigo_pais =  @codigo_pais
	, casa_bolsa = @casa_bolsa
	, estado_registro = @estado_registro
WHERE id = @ID_REFE

END
GO
/****** Object:  StoredProcedure [dbo].[SP_modi_representante]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_modi_representante]
	-- Add the parameters for the stored procedure here
   @codigo  nvarchar(50),
   @descripcion nvarchar(150),
   @estado nvarchar(50)
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
UPDATE dbo.Tbl_tipo_formareprese
SET 
	descripcion = @descripcion
	,estado = @estado
	
WHERE codigo = @codigo

END
GO
/****** Object:  StoredProcedure [dbo].[SP_modi_rubro]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_modi_rubro]
	-- Add the parameters for the stored procedure here
   @codigo  nchar(10),
   @descripcion nvarchar(250),
   @estado nchar(10)
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
UPDATE dbo.Tbl_tipo_rubro
SET 
	descripcion = @descripcion
	,estado = @estado
	
WHERE codigo = @codigo

END
GO
/****** Object:  StoredProcedure [dbo].[SP_modi_sector]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_modi_sector]
	-- Add the parameters for the stored procedure here
   @codigo  nchar(2),
   @descripcion nvarchar(150),
   @estado nchar(1)
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
UPDATE dbo.Tbl_tipo_sectoeco
SET 
	descripcion = @descripcion
	,estado = @estado
	
WHERE codigo = @codigo

END
GO
/****** Object:  StoredProcedure [dbo].[SP_modi_solicitante]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_modi_solicitante]
	-- Add the parameters for the stored procedure here
   @codigo  nchar(10),
   @descripcion nvarchar(150),
   @estado nchar(10)
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
UPDATE dbo.Tbl_tipo_solicitante
SET 
	descripcion = @descripcion
	,estado = @estado
	
WHERE codigo = @codigo

END
GO
/****** Object:  StoredProcedure [dbo].[SP_modi_tole_riesgo]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_modi_tole_riesgo]
	-- Add the parameters for the stored procedure here
   @codigo  nchar(10),
   @descripcion nvarchar(150),
   @estado nchar(10)
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
UPDATE dbo.Tbl_Tolerancia_riesgo
SET 
	descripcion = @descripcion
	,estado = @estado
	
WHERE codigo = @codigo

END
GO
/****** Object:  StoredProcedure [dbo].[SP_modi_topera]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_modi_topera]
	-- Add the parameters for the stored procedure here
   @codigo  nchar(10),
   @descripcion nvarchar(150),
   @estado nchar(10)
 AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
UPDATE dbo.Tbl_Tipo_Operacion
SET 
	descripcion = @descripcion
	,estado = @estado
	
WHERE codigo = @codigo

END
GO
/****** Object:  StoredProcedure [dbo].[sp_modifica_emision]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_modifica_emision]
	-- Add the parameters for the stored procedure here
	@numeroContrato nvarchar(50) ,
	@nombre nvarchar(150) ,
	@monto numeric(18,4) ,
	@valorporSerie numeric(18,4),
	@codigoIsin nvarchar(50) ,
	@monedaId nvarchar(50) ,
	@fechaEmision nvarchar(50) ,
	@fechaVencimiento nvarchar(50) ,
	@periodicidadCupones nvarchar(50) ,
	@redencionAnticipada nvarchar(50) ,
	@tasa nvarchar(50) ,
	@numeroSerie nvarchar(50) ,
	@numeroTramos nvarchar(50) ,
	@valorNominal numeric(18, 4) ,
	@montoColocado numeric(18, 4) ,
	@disponibleEmision numeric(18, 4) ,
	@idcomisiones numeric(18, 0) ,
	@numeroResolucionCNBS nvarchar(50) ,
	@fechaResolucionCNBS nvarchar(50) ,
	@numeroResolucionBCV nvarchar(50) ,
	@fechaResolucionBCV nvarchar(50) ,
	@codformarepre nvarchar(50) ,
	@tipoinstru nvarchar(50) ,
	@idEstado numeric(18, 0) ,
	@tipoTasa nvarchar(50) ,
	@usuarioAgrego nvarchar(50) ,
	@usuarioModifico nvarchar(50) ,
	@fechaModifico nvarchar(50) ,
	@codigoUsic nvarchar(50),
	@calificacionInicialEmision nvarchar(50),
	@idcalificador nvarchar(50)  

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
UPDATE dbo.Tbl_Emisiones
Set
	nombre = @nombre ,
	monto =@monto ,
	valorporSerie =@valorporSerie,
	codigoIsin =@codigoIsin ,
	monedaId =@monedaId ,
	fechaEmision =@fechaEmision ,
	fechaVencimiento =@fechaVencimiento ,
	periodicidadCupones =@periodicidadCupones ,
	redencionAnticipada =@redencionAnticipada ,
	tasa =@tasa ,
	numeroSerie =@numeroSerie ,
	numeroTramos =@numeroTramos ,
	valorNominal =@valorNominal ,
	montoColocado =@montoColocado ,
	disponibleEmision =@disponibleEmision,
	idcomisiones =@idcomisiones,
	numeroResolucionCNBS =@numeroResolucionCNBS ,
	fechaResolucionCNBS =@fechaResolucionCNBS ,
	numeroResolucionBCV =@numeroResolucionBCV ,
	fechaResolucionBCV =@fechaResolucionBCV ,
	codformarepre =@codformarepre ,
	tipoinstru =@tipoinstru ,
	idEstado =@idEstado ,
	tipoTasa =@tipoTasa ,
	usuarioAgrego =@usuarioAgrego ,
	usuarioModifico =@usuarioModifico ,
	fechaModifico =@fechaModifico ,
	codigoUsic =@codigoUsic,
	calificacionInicialEmision=@calificacionInicialEmision,
	idcalificador=@idcalificador 
	where numeroContrato = @numeroContrato
END
GO
/****** Object:  StoredProcedure [dbo].[SP_monto_promedio]    Script Date: 27/11/2018 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_monto_promedio] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(LTRIM(codigo)) as codigo, rtrim(LTRIM(descripcion)) as descripcion
	FROM Tbl_monto_prom_inver
	WHERE estado=1
	ORDER BY codigo ASC
END
GO
/****** Object:  StoredProcedure [dbo].[SP_nacionalidad]    Script Date: 27/11/2018 17:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_nacionalidad]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(LTRIM(codigo)) as codigo, rtrim(LTRIM(descripcion)) as descripcion
	FROM Tbl_nacionalidad
	WHERE estado=1
	--ORDER BY codigo ASC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_numerocontrato_colocacion]    Script Date: 27/11/2018 17:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[sp_numerocontrato_colocacion]
	-- Add the parameters for the stored procedure here
	
	@nivel_acceso nvarchar(50)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
IF @nivel_acceso =99
	SELECT count(*) as conteo   FROM Tbl_Colocaciones
END
GO
/****** Object:  StoredProcedure [dbo].[SP_origen_recurso]    Script Date: 27/11/2018 17:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_origen_recurso] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(LTRIM(codigo)) as codigo, rtrim(LTRIM(descripcion)) as descripcion
	FROM Tbl_origen_recurso
	WHERE estado=1
	ORDER BY codigo ASC
END
GO
/****** Object:  StoredProcedure [dbo].[SP_PAISES]    Script Date: 27/11/2018 17:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_PAISES]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT LTRIM(RTRIM(CODIGO))AS CODIGO, LTRIM(RTRIM(PAIS)) AS PAIS
	FROM Tbl_paises
	WHERE estado=1
	--order by codigo asc
END
GO
/****** Object:  StoredProcedure [dbo].[sp_parametros]    Script Date: 27/11/2018 17:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_parametros]
	-- Add the parameters for the stored procedure here
@flag nvarchar(50)


AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	if @flag=1   -- obtiene en totales de decimales
	   SELECT valor
       FROM Tbl_parametros 
       WHERE descripcion='decimales' AND estado=1
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Perfil_inver]    Script Date: 27/11/2018 17:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Perfil_inver] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(LTRIM(codigo)) as codigo, rtrim(LTRIM(descripcion)) as descripcion
	FROM Tbl_perfil_inver
	WHERE estado=1
	ORDER BY codigo ASC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_reconstru_solireg_ve]    Script Date: 27/11/2018 17:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_reconstru_solireg_ve]
	-- Add the parameters for the stored procedure here
	@id nvarchar(50),
	@codcb  nvarchar(50),
    @nivel_acceso nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
IF @nivel_acceso =99
	SELECT  
		  [fechasolicitud]
		  ,[coddeposidirecto]
		  ,[razonsocial]
		  ,[domiciliolegal]
		  ,[fechaconstitu]
		  ,[paisorigen]
		  ,[codsectorecono]
		  ,[codactivecono]
		  ,[codcentrocustodia]
		  ,[principalproducto]
		  ,[capitalsocilasub]
		  ,[capitalsolpagado]
		  ,[capitalsolsubs]
		  ,[capitalsocialpagadola]
		  ,[sectorindu]
		  ,[sectorfina]
		  ,[sectorfonpen]
		  ,[codigoisin]
		  ,[tipoinstru]
		  ,[fechaemi]
		  ,[fechavenci]
		  ,[codformarepre]
		  ,[codmoneda]
		  ,[valornominal]
		  ,[montoemi]
		  ,[montocoloca]
		  ,[interesaplicable]
		  ,[codtipointerest]
		  ,[fechapagointer]
		  ,[mecanismonegocia]
		  ,[tienefrma]
		  ,[tienesellos]
		  ,[datosrecepbcv]
		  ,[inclusello]
		  ,[codinterno]
		  ,[observaciones]
		  ,[estadosolici]
		  ,[estadoproceso]
		  ,valid_interes
		  ,tipo_periodi
	      ,tipoarmorti
		  ,amortiperiodi
		  ,fechaamorti
		  ,fechapago1
	     
	  FROM [BCVE].[dbo].[Tbl_soliregistro]
	  where [id]=@id
 ELSE
 	SELECT  
		  [fechasolicitud]
		  ,[coddeposidirecto]
		  ,[razonsocial]
		  ,[domiciliolegal]
		  ,[fechaconstitu]
		  ,[paisorigen]
		  ,[codsectorecono]
		  ,[codactivecono]
		  ,[codcentrocustodia]
		  ,[principalproducto]
		  ,[capitalsocilasub]
		  ,[capitalsolpagado]
		  ,[capitalsolsubs]
		  ,[capitalsocialpagadola]
		  ,[sectorindu]
		  ,[sectorfina]
		  ,[sectorfonpen]
		  ,[codigoisin]
		  ,[tipoinstru]
		  ,[fechaemi]
		  ,[fechavenci]
		  ,[codformarepre]
		  ,[codmoneda]
		  ,[valornominal]
		  ,[montoemi]
		  ,[montocoloca]
		  ,[interesaplicable]
		  ,[codtipointerest]
		  ,[fechapagointer]
		  ,[mecanismonegocia]
		  ,[tienefrma]
		  ,[tienesellos]
		  ,[datosrecepbcv]
		  ,[inclusello]
		  ,[codinterno]
		  ,[observaciones]
		  ,[estadosolici]
		  ,[estadoproceso]
		  ,valid_interes
		  ,tipo_periodi
	      ,tipoarmorti
		  ,amortiperiodi
		  ,fechaamorti
		  ,fechapago1

	  FROM [BCVE].[dbo].[Tbl_soliregistro]
      where [id]=@id and codcb=@codcb
  
END
GO
/****** Object:  StoredProcedure [dbo].[sp_reconstruir_calificacion]    Script Date: 27/11/2018 17:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_reconstruir_calificacion]
	-- Add the parameters for the stored procedure here
	@codigo nvarchar(50)
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	SELECT  
		  *
	  FROM [BCVE].[dbo].[Tbl_tipo_calificador]
	  where [codigo]=@codigo
 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_reconstruir_colocacion]    Script Date: 27/11/2018 17:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_reconstruir_colocacion]
	-- Add the parameters for the stored procedure here
	@numeroContrato nvarchar(50),
	@nivel_acceso nvarchar(50),
    @numeroBoleta nvarchar(50)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

--if	@numeroBoleta ='0' and @nivel_acceso =99
--	select top 1 nom_completo,ban_comercial,num_cuenta,nom_comp_razon,ban_come_ven,num_cuen_ven,cant_valores,num_boleta,fechliq,(select top 1 tipoTasa from tbl_Emisiones as e where e.numeroContrato=@numeroContrato) as tipoTasa,(select top 1 disponibleEmision from tbl_Emisiones as e where e.numeroContrato=@numeroContrato) as disponibleEmision from Tbl_orden_compra  where codigo_isin= (select top 1 codigoIsin from tbl_Emisiones where numeroContrato=@numeroContrato)
--if	@numeroBoleta <>'0' and @nivel_acceso =99
	select top 1 nom_completo,ban_comercial,num_cuenta,nom_comp_razon,ban_come_ven,num_cuen_ven,cant_valores,num_boleta,fechliq,(select top 1 tipoTasa from tbl_Emisiones as e where e.numeroContrato=@numeroContrato) as tipoTasa,(select top 1 disponibleEmision from tbl_Emisiones as e where e.numeroContrato=@numeroContrato) as disponibleEmision from Tbl_orden_compra  where num_boleta = @numeroBoleta

END



GO
/****** Object:  StoredProcedure [dbo].[sp_reconstruir_colocacion_inversionista]    Script Date: 27/11/2018 17:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_reconstruir_colocacion_inversionista]
	-- Add the parameters for the stored procedure here
	@codigocliente nvarchar(50),
	@nivel_acceso nvarchar(50)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	SELECT  
		  *
	  FROM [BCVE].[dbo].[Tbl_masoli]
	  where [codigocliente]=@codigocliente
 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_reconstruir_colocacion_redencion]    Script Date: 27/11/2018 17:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_reconstruir_colocacion_redencion]
	-- Add the parameters for the stored procedure here
	@numeroContrato nvarchar(50),
	@nivel_acceso nvarchar(50)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
IF @nivel_acceso =99
	SELECT 
      [redencionAnticipada],
	  (select Porcentaje from Tbl_Comisiones
where codigo=(select idcomisiones from Tbl_Emisiones
where numeroContrato=@numeroContrato)) as porcentajeComision,
valorNominal,
tasa,
fechaVencimiento,
periodicidadCupones,
tipoarmorti,
amortiperiodi
     
  FROM [BCVE].[dbo].[Tbl_Emisiones]
  where numerocontrato=@numeroContrato
END
GO
/****** Object:  StoredProcedure [dbo].[sp_reconstruir_colocacion_vista]    Script Date: 27/11/2018 17:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[sp_reconstruir_colocacion_vista]
	-- Add the parameters for the stored procedure here
	@numeroContrato nvarchar(50),
	@nivel_acceso nvarchar(50)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
IF @nivel_acceso =99
	SELECT  
		  *
	  FROM [BCVE].[dbo].[tbl_Colocaciones]
	  where [numeroContrato]=@numeroContrato
 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_reconstruir_emision]    Script Date: 27/11/2018 17:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[sp_reconstruir_emision]
	-- Add the parameters for the stored procedure here
	@numeroContrato nvarchar(50),
	@nivel_acceso nvarchar(50)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
IF @nivel_acceso =99
	SELECT  
		  *
	  FROM [BCVE].[dbo].[Tbl_Emisiones]
	  where [numeroContrato]=@numeroContrato
 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_reconstruir_entrega_libre_pago]    Script Date: 27/11/2018 17:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[sp_reconstruir_entrega_libre_pago]
	-- Add the parameters for the stored procedure here
	@idEntregaLibrePago numeric(18,0),
	@nivel_acceso nvarchar(50)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
IF @nivel_acceso =99
select * from Tbl_Entrega_Libre_Pago where idEntregaLibrePago=@idEntregaLibrePago 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_reconstruir_Mandato_Legal]    Script Date: 27/11/2018 17:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[sp_reconstruir_Mandato_Legal]
	-- Add the parameters for the stored procedure here
	@idMandatoLegal numeric(18,0),
	@nivel_acceso nvarchar(50)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
IF @nivel_acceso =99
select * from Tbl_Mandato_Legal  where idMandatoLegal=@idMandatoLegal
END
GO
/****** Object:  StoredProcedure [dbo].[sp_reconstruir_Orden_Judicial]    Script Date: 27/11/2018 17:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[sp_reconstruir_Orden_Judicial]
	-- Add the parameters for the stored procedure here
	@idOrdenJudicial numeric(18,0),
	@nivel_acceso nvarchar(50)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
IF @nivel_acceso =99
select * from Tbl_Orden_Judicial  where idOrdenJudicial=@idOrdenJudicial
END
GO
/****** Object:  StoredProcedure [dbo].[sp_reconstruir_Sucesion_Division]    Script Date: 27/11/2018 17:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[sp_reconstruir_Sucesion_Division]
	-- Add the parameters for the stored procedure here
	@idSucesionDivision numeric(18,0),
	@nivel_acceso nvarchar(50)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
IF @nivel_acceso =99
select * from Tbl_Sucesion_Division  where idSucesionDivision=@idSucesionDivision 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_recontruye_grid_infoadico]    Script Date: 27/11/2018 17:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_recontruye_grid_infoadico]
	-- Add the parameters for the stored procedure here
	
	@id_info   nvarchar(50) 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
		SELECT id_tipoinfo  , descripcion , id_estadoactual 
		FROM dbo.Tbl_sector_listadoadicional
		WHERE id=@id_info 
  
  
END
GO
/****** Object:  StoredProcedure [dbo].[SP_recurso_inver]    Script Date: 27/11/2018 17:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_recurso_inver] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(LTRIM(codigo)) as codigo, rtrim(LTRIM(descripcion)) as descripcion
	FROM Tbl_recurso_inver
	WHERE estado=1
	ORDER BY codigo ASC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_retorna_datoscasas]    Script Date: 27/11/2018 17:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_retorna_datoscasas]
	-- Add the parameters for the stored procedure here
@id      nvarchar(50)


AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	

SELECT  nombrecasa
FROM dbo.Tbl_Puestos_Bolsa
WHERE id=(SELECT codcb 
            FROM dbo.Tbl_soliregistro
             WHERE id=@id)


END
GO
/****** Object:  StoredProcedure [dbo].[sp_segu_manusudef]    Script Date: 27/11/2018 17:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_segu_manusudef]
	-- Add the parameters for the stored procedure here
	@flag             nvarchar(50),
	@usuario          nvarchar(50),
	@nombre_usuario    nvarchar(50),
	@identidad          nvarchar(50),
	@contrasena          nvarchar(250),
	@correo_usu          nvarchar(50),
	@correo_auto         nvarchar(50),
	@cod_perfil           nvarchar(50),
	@codigo_cb            nvarchar(50),
	@conexion              nvarchar(50),
	@intentos               nvarchar(50), 
	@bloqueo                 nvarchar(50), 
	@nivel_acceso          nvarchar(50),
	@estado                 nvarchar(50),
	@fecha_creacion          nvarchar(50), 
	@usuario_creador         nvarchar(50), 
	@fecha_modificacion       nvarchar(50), 
	@usuario_modificador       nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	

	if @flag=0		
	
		INSERT INTO dbo.Tbl_otorum (usuario, nombre_usuario, Identidad, contrasena, correo_usu, correo_auto, cod_perfil, codigo_cb, conexion, intentos, bloqueo, nivel_acceso, estado, fecha_creacion, usuario_creador, fecha_modificacion, usuario_modificador)
		VALUES (@usuario, @nombre_usuario, @identidad, @contrasena, @correo_usu, @correo_auto, @cod_perfil, @codigo_cb, @conexion, @intentos, @bloqueo, @nivel_acceso, @estado, @fecha_creacion, @usuario_creador, @fecha_modificacion, @usuario_modificador)
  
    if @flag=1


			UPDATE dbo.Tbl_otorum
			SET 
				Identidad = @identidad,
				correo_usu = @correo_usu,
				correo_auto = @correo_auto,
				cod_perfil = @cod_perfil,
				codigo_cb = @codigo_cb,
				nivel_acceso = @nivel_acceso,
				estado = @estado,
				fecha_modificacion = @fecha_modificacion,
				usuario_modificador = @usuario_modificador,
			--nombre_usuario = @nombre_usuario,
			    contrasena = @contrasena
			--	conexion = @conexion,
			--	intentos = @intentos,
			--	bloqueo = @bloqueo,
			--fecha_creacion = @fecha_creacion,
			--usuario_creador = @usuario_creador,

			WHERE usuario = @usuario

END
GO
/****** Object:  StoredProcedure [dbo].[sp_segu_moniusu]    Script Date: 27/11/2018 17:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_segu_moniusu]
	-- Add the parameters for the stored procedure here
	 @id           nvarchar(50),
	 @flag         nvarchar(50),
	 @valor1       nvarchar(50),
	 @valor2       nvarchar(50)
AS
BEGIN

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    
	if @flag =0 -- actualiza el registro principal del usuario por intentos fallidos
		
		UPDATE dbo.Tbl_otorum
		SET 
			intentos = @valor1 
			, bloqueo =  @valor2 
		WHERE usuario= @id 

	if @flag =1 -- actualiza el registro principal como usuario activo en el sistema
		
			UPDATE dbo.Tbl_otorum
			SET 
				conexion = @valor1,
				intentos=0,
				bloqueo=0
			WHERE usuario=@id
		
	if @flag =2 -- actualiza el registro principal como usuario fuera del sistema
		
			UPDATE dbo.Tbl_otorum
			SET 
				conexion = @valor1 
			WHERE usuario=@id	

	if @flag =3 -- actualiza el registro principal de contraseña
		
			UPDATE dbo.Tbl_otorum
			SET 
				contrasena = @valor1 
				,fecha_modificacion=CONVERT(VARCHAR,getdate(),109)
				,usuario_modificador=@id
			WHERE usuario=@id	

	if @flag =4 -- listada de usuarios con sessiones bloqueadas
	      
		  SELECT a.id, a.usuario, a.nombre_usuario, b.sigla
          FROM dbo.Tbl_otorum a, Tbl_Puestos_Bolsa b
          WHERE a.codigo_cb=b.id AND a.estado=1 AND a.bloqueo=1

END
GO
/****** Object:  StoredProcedure [dbo].[SP_TIPO_bancos]    Script Date: 27/11/2018 17:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[SP_TIPO_bancos]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(LTRIM(codigo)) as codigo, rtrim(LTRIM(descripcion)) as descripcion
	FROM Tbl_tipo_bancos
	WHERE estado=1
	ORDER BY codigo ASC
END
GO
/****** Object:  StoredProcedure [dbo].[SP_TIPO_conceptopago]    Script Date: 27/11/2018 17:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[SP_TIPO_conceptopago]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(LTRIM(codigo)) as codigo, rtrim(LTRIM(descripcion)) as descripcion
	FROM Tbl_tipo_conceptopago
	WHERE estado=1
	ORDER BY codigo ASC
END
GO
/****** Object:  StoredProcedure [dbo].[SP_TIPO_formapago]    Script Date: 27/11/2018 17:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[SP_TIPO_formapago]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(LTRIM(codigo)) as codigo, rtrim(LTRIM(descripcion)) as descripcion
	FROM Tbl_tipo_formapago
	WHERE estado=1
	ORDER BY codigo ASC
END
GO
/****** Object:  StoredProcedure [dbo].[SP_TIPO_IDENTIFICACION]    Script Date: 27/11/2018 17:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_TIPO_IDENTIFICACION]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(LTRIM(codigo)) as codigo, rtrim(LTRIM(descripcion)) as descripcion
	FROM Tbl_tipo_identificacion 
	WHERE estado=1
	ORDER BY codigo ASC
END
GO
/****** Object:  StoredProcedure [dbo].[SP_TIPO_inversionista]    Script Date: 27/11/2018 17:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[SP_TIPO_inversionista]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(LTRIM(codigo)) as codigo, rtrim(LTRIM(descripcion)) as descripcion
	FROM Tbl_tipo_inversionista
	WHERE estado=1
	ORDER BY codigo ASC
END
GO
/****** Object:  StoredProcedure [dbo].[SP_TIPO_moneda]    Script Date: 27/11/2018 17:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[SP_TIPO_moneda]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(LTRIM(codigo)) as codigo, rtrim(LTRIM(descripcion)) as descripcion
	FROM Tbl_monedas
	WHERE estado=1
	ORDER BY codigo ASC
END
GO
/****** Object:  StoredProcedure [dbo].[SP_TIPO_operacion]    Script Date: 27/11/2018 17:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_TIPO_operacion] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(LTRIM(codigo)) as codigo, rtrim(LTRIM(descripcion)) as descripcion
	FROM Tbl_Tipo_Operacion
	WHERE estado=1
	ORDER BY codigo ASC
END
GO
/****** Object:  StoredProcedure [dbo].[SP_tipo_rubro]    Script Date: 27/11/2018 17:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[SP_tipo_rubro]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(LTRIM(codigo)) as codigo, rtrim(LTRIM(descripcion)) as descripcion
	FROM Tbl_tipo_rubro
	WHERE estado=1
	ORDER BY codigo ASC
END
GO
/****** Object:  StoredProcedure [dbo].[SP_TIPO_SECTOR]    Script Date: 27/11/2018 17:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_TIPO_SECTOR]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(LTRIM(codigo)) as codigo, rtrim(LTRIM(descripcion)) as descripcion
	FROM Tbl_tipo_sectoeco 
	WHERE estado=1
	ORDER BY codigo ASC
END
GO
/****** Object:  StoredProcedure [dbo].[SP_TIPO_SEXO]    Script Date: 27/11/2018 17:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_TIPO_SEXO]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(LTRIM(codigo)) as codigo, rtrim(LTRIM(descripcion)) as descripcion
	FROM Tbl_sexo
	WHERE estado=1
	ORDER BY codigo ASC
END
GO
/****** Object:  StoredProcedure [dbo].[SP_TIPO_SOLICITANTE]    Script Date: 27/11/2018 17:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_TIPO_SOLICITANTE] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT rtrim(LTRIM(codigo)) as codigo, rtrim(LTRIM(descripcion)) as descripcion
	FROM Tbl_tipo_solicitante 
	WHERE estado=1
	ORDER BY codigo ASC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_vali_defdeposi]    Script Date: 27/11/2018 17:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_vali_defdeposi]
	-- Add the parameters for the stored procedure here
	@flag  nvarchar(50),
	@id    nvarchar(50),

	@codigo  nvarchar(50),
	@descripcion  nvarchar(50),
	@email  nvarchar(50),
	@direccion  nvarchar(50),
	@codpais  nvarchar(50),
	@estado  nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	

	if @flag=0		
	
    
		SELECT a.id, a.codigo, a.descripcion, a.detalle, a.email, a.direccion, b.pais AS pais,CASE a.estado WHEN 1 THEN 'ACTIVO' WHEN 2 THEN 'INACTIVO' END as estado
		FROM Tbl_tipo_depositaria a, Tbl_paises b
		WHERE a.codpais=b.codigo 
		ORDER BY id

     if @flag=1	
	       INSERT INTO dbo.Tbl_tipo_depositaria (codigo, descripcion, detalle, email, direccion, codpais, estado)
            VALUES (@codigo, @descripcion, '', @email, @direccion, @codpais, @estado)
    

	if @flag=2
	    UPDATE dbo.Tbl_tipo_depositaria
		SET 
			codigo = @codigo,
			descripcion = @descripcion,
			email = @email,
			direccion = @direccion,
			codpais = @codpais,
			estado = @estado
       where id = @id
	
	
	 if @flag=3
           SELECT * 
	       FROM Tbl_tipo_depositaria
		   where id =@id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_vali_usudef]    Script Date: 27/11/2018 17:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_vali_usudef]
	-- Add the parameters for the stored procedure here
	@flag  nvarchar(50),
	@id_casa    nvarchar(50),
	@id_nivel   nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	

	if @flag=0		
	
      SELECT * FROM Tbl_otorum
      WHERE estado=1 AND nivel_acceso=@id_nivel AND codigo_cb=@id_casa

END
GO
/****** Object:  StoredProcedure [dbo].[sp_valida_contrato]    Script Date: 27/11/2018 17:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_valida_contrato]
	-- Add the parameters for the stored procedure here
	 @numcontrato nvarchar(250)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * 
	from Tbl_masoli 
	where ltrim(rtrim(numcontrato))= ltrim(rtrim(@numcontrato))
END
GO
/****** Object:  StoredProcedure [dbo].[SP_vericodus_01]    Script Date: 27/11/2018 17:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_vericodus_01]
	-- Add the parameters for the stored procedure here
	@usuario nvarchar(50)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
SELECT
      a.usuario
      ,a.nombre_usuario
      ,a.contrasena
      ,a.correo_usu
      ,a.correo_auto
      ,a.cod_perfil
      ,a.codigo_cb
      ,a.conexion
      ,a.intentos
      ,a.bloqueo
      ,a.nivel_acceso
      ,a.estado
      ,upper(b.cod_swift) as cod_swift
  FROM Tbl_otorum a, Tbl_Puestos_Bolsa b
  where rtrim(ltrim(a.usuario))=@usuario and a.codigo_cb=b.id
  
END
GO
/****** Object:  StoredProcedure [dbo].[SP_verifica_notifi]    Script Date: 27/11/2018 17:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_verifica_notifi]
	-- Add the parameters for the stored procedure here

	@id             nvarchar(50),
	@notifecha      nvarchar(50),
	@fechalimipago  nvarchar(50),
	@flag           nvarchar(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	if @flag=1
		SELECT notifecha,fechalimipag,estadopag
		FROM Tbl_soliregistro
		WHERE id=@id

    if @flag=2
		UPDATE dbo.Tbl_soliregistro
		SET notifecha = @notifecha
			, fechalimipag = @fechalimipago
			,estadopag='0'
		WHERE id =@id
END
GO
/****** Object:  Trigger [dbo].[Inactivar_Colocacion]    Script Date: 27/11/2018 17:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[Inactivar_Colocacion]
 ON [dbo].[Tbl_Colocaciones]
 after UPDATE
 AS
 
 IF UPDATE(valorNominal)
   BEGIN 
        
		 Declare @valorNominal numeric(18,6)
		 Declare @numeroContrato nvarchar(50)
         
		 SELECT @valorNominal=valorNominal,@numeroContrato=numeroContrato FROM inserted
        IF @valorNominal <= 0
         BEGIN 
         update  Tbl_Colocaciones set estadoColocacion=2   where numeroContrato=@numeroContrato
        END
		END
GO
ALTER TABLE [dbo].[Tbl_Colocaciones] ENABLE TRIGGER [Inactivar_Colocacion]
GO
/****** Object:  Trigger [dbo].[partidaColocacion]    Script Date: 27/11/2018 17:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[partidaColocacion]
 ON [dbo].[Tbl_Colocaciones]
 after INSERT
 AS
 
 
   BEGIN 
         DECLARE @numeroContrato nvarchar(50)
		 Declare @valorNominal numeric(18,4)
		 Declare @fechaAgrego date
		 Declare @usuarioAgrego nvarchar(50)
		 declare @estadoColocacion numeric(18,0)
		 declare @numeroPartida numeric(18,0)
		 declare @descripcion nvarchar(50)
		 declare @numeroEmision nvarchar(50)
         SELECT @numeroEmision=numeroEmision,@estadoColocacion=estadoColocacion, @numeroContrato= numeroContrato,@valorNominal=valorNominal,@fechaAgrego=fechaAgrego,@usuarioAgrego=usuarioAgrego FROM inserted
    set @numeroPartida = (SELECT COUNT(*)+1 FROM [BCVE].[dbo].[Tbl_Partida])
     IF @estadoColocacion = 1
         BEGIN 
        update Tbl_Emisiones set montoColocado =montoColocado+@valorNominal where numeroContrato=@numeroEmision --
		update Tbl_Emisiones set disponibleEmision =monto- montoColocado where numeroContrato=@numeroEmision --
		

         exec sp_grabar_Partida @numeroPartida,'Colocación', @usuarioAgrego,@numeroContrato
		 exec sp_grabar_Partida_Detalle @numeroPartida, @usuarioAgrego,455,787,@valorNominal,'Colocación',@numeroContrato
        END
		END

GO
ALTER TABLE [dbo].[Tbl_Colocaciones] ENABLE TRIGGER [partidaColocacion]
GO
/****** Object:  Trigger [dbo].[partidaDerechosPatrimoniales]    Script Date: 27/11/2018 17:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[partidaDerechosPatrimoniales]
 ON [dbo].[Tbl_Derechos_Patrimoniales]
 after INSERT
 AS
 
 
   BEGIN 
         DECLARE @contrato nvarchar(50)
		 Declare @monto numeric(18,4)
		 Declare @montoPagar numeric(18,4)
		 Declare @impuestoRetenido numeric(18,4)		
		 Declare @fechaAgrego date
		 Declare @usuarioAgrego nvarchar(50)
		 declare @tipoPago numeric(18,0)
		 Declare @descripcion nvarchar(50)
		 Declare @numeroPartida numeric(18,0)

         SELECT @tipoPago=tipoPago, @contrato= contrato,@monto=monto,@montoPagar=montoPagar,@impuestoRetenido=impuestoRetenido,@fechaAgrego=fechaAgrego,@usuarioAgrego=usuarioAgrego FROM inserted
		set @numeroPartida = (SELECT COUNT(*)+1 FROM [BCVE].[dbo].[Tbl_Partida])



		/*
		Partida
		@numeroPartida numeric(18,0),
      @Descripcion nvarchar(50),
      @fecha date,
      @usuarioAgrego nvarchar(50) ,
      @fechaAgrego date


	  Partida detalle
	  @numeroPartida numeric(18,0),
       @usuarioAgrego nvarchar(50) ,
      @fechaAgrego date,
	  @cuentaDebe as numeric(18,0),
	  @cuentaHaber as numeric(18,0),
	  @monto as numeric(18,4)
		*/
     IF @tipoPago = 1
         BEGIN 
		
         exec sp_grabar_Partida @numeroPartida,'Pago de Interés',  @usuarioAgrego,@contrato
		 exec sp_grabar_Partida_Detalle @numeroPartida, @usuarioAgrego,12,34,@monto,'Interés',@contrato
		 exec sp_grabar_Partida_Detalle @numeroPartida, @usuarioAgrego,56,78,@impuestoRetenido,'Impuesto',@contrato
		 
		
		 
end
	 IF @tipoPago = 2
         BEGIN 
	
         exec sp_grabar_Partida @numeroPartida,'Amortizacion',  @usuarioAgrego,@contrato
		 exec sp_grabar_Partida_Detalle @numeroPartida, @usuarioAgrego,910,111,@montoPagar,'Amortización',@contrato

		
	end
	 IF @tipoPago = 3
         BEGIN 
		
		 exec sp_grabar_Partida @numeroPartida,'Interes-Amortizacion',  @usuarioAgrego,@contrato
		 exec sp_grabar_Partida_Detalle @numeroPartida, @usuarioAgrego,12,34,@monto,'Interes',@contrato
		 exec sp_grabar_Partida_Detalle @numeroPartida, @usuarioAgrego,56,78,@impuestoRetenido,'Impuesto',@contrato
		 exec sp_grabar_Partida_Detalle @numeroPartida, @usuarioAgrego,910,111,@montoPagar,'Amortizacion',@contrato
		 
        END
		END
GO
ALTER TABLE [dbo].[Tbl_Derechos_Patrimoniales] ENABLE TRIGGER [partidaDerechosPatrimoniales]
GO
/****** Object:  Trigger [dbo].[partidaEmision]    Script Date: 27/11/2018 17:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[partidaEmision]
 ON [dbo].[Tbl_Emisiones]
 after UPDATE
 AS
 
 IF UPDATE(idestado)
   BEGIN 
         DECLARE @numeroContrato nvarchar(50)
		 Declare @monto numeric(18,4)
		 Declare @fechaModifico date
		 Declare @usuarioModifico nvarchar(50)
		 declare @idEstado numeric(18,0)
		 declare @numeroPartida numeric(18,0)
		 declare @descripcion nvarchar(50)
		
         SELECT @idEstado=idEstado, @numeroContrato= numeroContrato,@monto=monto,@usuarioModifico=usuarioModifico FROM inserted
   set @numeroPartida = (SELECT COUNT(*)+1 FROM [BCVE].[dbo].[Tbl_Partida])
     IF @idEstado = 1
         BEGIN 
	    exec sp_grabar_Partida @numeroPartida,'Emisión',  @usuarioModifico,@numeroContrato
		 exec sp_grabar_Partida_Detalle @numeroPartida, @usuarioModifico,123,345,@monto,'Emisión',@numeroContrato
        END
		END
GO
ALTER TABLE [dbo].[Tbl_Emisiones] ENABLE TRIGGER [partidaEmision]
GO
/****** Object:  Trigger [dbo].[AgregarEmision]    Script Date: 27/11/2018 17:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE TRIGGER [dbo].[AgregarEmision]
 ON [dbo].[Tbl_soliregistro]
 after UPDATE
 AS
 
 IF UPDATE(estadoproceso)
   BEGIN 
         DECLARE @estadoproceso nvarchar(50)
		 Declare @idsolicitud numeric(18,0)
		  declare @numeroResolucionBCV nvarchar(50)
		 declare @fechaResolucionBCV nvarchar(50)
         SELECT @estadoproceso=estadoproceso,@idsolicitud=id FROM inserted
   
		 SELECT @numeroResolucionBCV= numero_resu,@fechaResolucionBCV= fecha_grabacion FROM Tbl_bcvaut WHERE id_gestion=@idsolicitud
     IF @estadoproceso = '2'
         BEGIN 
          INSERT INTO tbl_Emisiones(
						numeroContrato,
						nombre,
						monto,
						codigoIsin,
						monedaId,
						fechaEmision,
						fechaVencimiento,
						periodicidadCupones,
						tasa,
						valorNominal,
						montoColocado,--
						codformarepre,
						tipoinstru,
						idEstado,
						tipoTasa,
						disponibleEmision,--
				    	valorporSerie,
						redencionAnticipada,						
						numeroSerie,
						numeroTramos,						
						idcomisiones,
						numeroResolucionBCV,
						fechaResolucionBCV,
						numeroResolucionCNBS,
						fechaResolucionCNBS,
						codigoUsic,
						calificacionInicialEmision,
						idcalificador,
						tipoarmorti,
						amortiperiodi
						) 
                        SELECT
                        ID,
						razonsocial,
						montoemi,
						codigoisin,
						codmoneda,
						fechaemi,
						fechavenci,
						tipo_periodi,
				 case interesaplicable when  '' then '0.0000' when  null then '0.0000' else interesaplicable end,
						valornominal,
						0,--montocoloca,
						codformarepre,
						tipoinstru,
						0,
						codtipointerest,
						montoemi,
						0,
						0,
						0,
						0,
						0,
						@numeroResolucionBCV,
						@fechaResolucionBCV,
						0,
						CONVERT(VARCHAR(8), GETDATE(), 3),
						'0',
						'0',
						'0', --idCalificador
						tipoarmorti as t,
						amortiperiodi as k
                        FROM Tbl_soliregistro 
                        WHERE id = @idsolicitud
        print ('registro agregado')
        END
		END


		
GO
ALTER TABLE [dbo].[Tbl_soliregistro] ENABLE TRIGGER [AgregarEmision]
GO
