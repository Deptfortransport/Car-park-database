USE [master]
GO
/****** Object:  Database [Carparks_Export]    Script Date: 12/30/2014 11:56:00 ******/
CREATE DATABASE [Carparks_Export] ON  PRIMARY 
( NAME = N'Carparks_Export_Data', FILENAME = N'B:\SQLSERVER\DATA\Carparks_Export.MDF' , SIZE = 51776KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'Carparks_Export_Log', FILENAME = N'B:\SQLSERVER\DATA\Carparks_Export_1.LDF' , SIZE = 102144KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
GO
ALTER DATABASE [Carparks_Export] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Carparks_Export].[dbo].[sp_fulltext_database] @action = 'disable'
end
GO
ALTER DATABASE [Carparks_Export] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Carparks_Export] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Carparks_Export] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Carparks_Export] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Carparks_Export] SET ARITHABORT OFF
GO
ALTER DATABASE [Carparks_Export] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Carparks_Export] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Carparks_Export] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Carparks_Export] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Carparks_Export] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Carparks_Export] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Carparks_Export] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Carparks_Export] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Carparks_Export] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Carparks_Export] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Carparks_Export] SET  DISABLE_BROKER
GO
ALTER DATABASE [Carparks_Export] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Carparks_Export] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Carparks_Export] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Carparks_Export] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Carparks_Export] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Carparks_Export] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Carparks_Export] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Carparks_Export] SET  READ_WRITE
GO
ALTER DATABASE [Carparks_Export] SET RECOVERY SIMPLE
GO
ALTER DATABASE [Carparks_Export] SET  MULTI_USER
GO
ALTER DATABASE [Carparks_Export] SET PAGE_VERIFY TORN_PAGE_DETECTION
GO
ALTER DATABASE [Carparks_Export] SET DB_CHAINING OFF
GO
USE [Carparks_Export]
GO
/****** Object:  Table [dbo].[CarParkSpaceType]    Script Date: 12/30/2014 11:56:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CarParkSpaceType](
	[SpaceTypeCode] [varchar](50) NOT NULL,
	[SpaceTypeDescription] [varchar](100) NULL,
 CONSTRAINT [PK_CarParkSpaceType] PRIMARY KEY CLUSTERED 
(
	[SpaceTypeCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CarParkFacilityTypes]    Script Date: 12/30/2014 11:56:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CarParkFacilityTypes](
	[FacilityTypeCode] [varchar](100) NOT NULL,
	[FacilityTypeDescription] [varchar](100) NOT NULL,
 CONSTRAINT [PK_CarParkFacilityTypes] PRIMARY KEY CLUSTERED 
(
	[FacilityTypeCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CarParkOperator]    Script Date: 12/30/2014 11:56:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CarParkOperator](
	[CPOperatorCode] [int] NOT NULL,
	[CPOperatorName] [varchar](100) NOT NULL,
	[CPOperatorURL] [varchar](2048) NULL,
	[CPTsandCs] [varchar](2048) NULL,
	[CPOperatorEmailAddress] [varchar](100) NULL,
 CONSTRAINT [PK_CarParkOperator] PRIMARY KEY CLUSTERED 
(
	[CPOperatorCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CarParkPaymentMethods]    Script Date: 12/30/2014 11:56:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CarParkPaymentMethods](
	[PaymentMethodCode] [varchar](50) NOT NULL,
	[PaymentMethodDescription] [varchar](100) NOT NULL,
 CONSTRAINT [PK_CarParkPaymentMethods] PRIMARY KEY CLUSTERED 
(
	[PaymentMethodCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CarParkPaymentTypes]    Script Date: 12/30/2014 11:56:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CarParkPaymentTypes](
	[PaymentTypeCode] [varchar](50) NOT NULL,
	[PaymentTypeDescription] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CarParkPaymentTypes] PRIMARY KEY CLUSTERED 
(
	[PaymentTypeCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CarParkTypes]    Script Date: 12/30/2014 11:56:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CarParkTypes](
	[CarParkTypeCode] [varchar](50) NOT NULL,
	[CarParkTypeDescription] [varchar](100) NULL,
 CONSTRAINT [PK_CarParkTypes] PRIMARY KEY CLUSTERED 
(
	[CarParkTypeCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CarParkChargeTypes]    Script Date: 12/30/2014 11:56:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CarParkChargeTypes](
	[ChargeTypeCode] [varchar](50) NOT NULL,
	[ChargeTypeDescription] [varchar](100) NOT NULL,
 CONSTRAINT [PK_CarParkChargeTypes] PRIMARY KEY CLUSTERED 
(
	[ChargeTypeCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CarParkConcessions]    Script Date: 12/30/2014 11:56:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CarParkConcessions](
	[ConcessionCode] [varchar](50) NOT NULL,
	[ConcessionDescription] [varchar](200) NOT NULL,
 CONSTRAINT [PK_CarParkConcessions] PRIMARY KEY CLUSTERED 
(
	[ConcessionCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CarParkCalendar]    Script Date: 12/30/2014 11:56:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CarParkCalendar](
	[CalendarReference] [int] NOT NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Days] [varchar](7) NULL,
	[PublicHolidays] [varchar](10) NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_CarParkCalendar] PRIMARY KEY CLUSTERED 
(
	[CalendarReference] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CarParkAttractionTypes]    Script Date: 12/30/2014 11:56:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CarParkAttractionTypes](
	[AttractionTypeCode] [int] NOT NULL,
	[AttractionTypeDescription] [varchar](50) NULL,
 CONSTRAINT [PK_CarParkAttractionTypes] PRIMARY KEY CLUSTERED 
(
	[AttractionTypeCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CarPark]    Script Date: 12/30/2014 11:56:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CarPark](
	[CPReference] [int] NOT NULL,
	[CPName] [varchar](50) NULL,
	[CPLocation] [varchar](50) NULL,
	[CPAddress] [varchar](100) NULL,
	[CPPostcode] [varchar](8) NULL,
	[CPNotes] [varchar](250) NULL,
	[CPTelephoneNumber] [varchar](11) NULL,
	[CPUrl] [varchar](2048) NULL,
	[CPMinCostPence] [smallmoney] NULL,
	[CPParkandRide] [bit] NULL,
	[CPStayType] [varchar](50) NULL,
	[CPPlanningPoint] [bit] NULL,
	[CPDateRecordLastUpdated] [datetime] NULL,
	[CPWEUDate] [datetime] NULL,
	[CPWEFDate] [datetime] NULL,
	[CPOperatorCode] [int] NULL,
	[ExportToXML] [bit] NULL,
 CONSTRAINT [PK_CarPark] PRIMARY KEY CLUSTERED 
(
	[CPReference] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_CarPark] ON [dbo].[CarPark] 
(
	[CPReference] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_checkascii_operator]    Script Date: 12/30/2014 11:56:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_checkascii_operator]
@tblname varchar(100),
@colname varchar(100)
as
DECLARE cpreference2 cursor
FOR select cpoperatorcode from carparkoperator
OPEN cpreference2
DECLARE @position int, @string nchar(255), @string2 nchar(255), @cpref int, @tabname varchar(255), @cname varchar(255), @stringdata nvarchar(255), @c nvarchar(255)
-- Initialize the current position and the string variables.
SET @tabname = @tblname
SET @cname = @colname
SET @position = 1
PRINT @tabname + ' - ' + @colname
FETCH NEXT FROM cpreference2 INTO @cpref
WHILE (@@FETCH_STATUS <> -1)
BEGIN
	SET @string = 'select @c = RTRIM(' + @cname + ') from '+ @tabname + '  where cpoperatorcode = ' + CAST( @cpref as varchar(255))
	SET @string2 = @string
	EXEC sp_executesql @string2, N'@c as nvarchar(255) OUTPUT',  @c OUTPUT
	SET @position = 1
	WHILE @position <= LEN(@c)
   	BEGIN
		IF
   		(SELECT CHAR(ASCII(SUBSTRING(@c, @position, 1))) where  ASCII(SUBSTRING(@c, @position, 1)) > 127 and SUBSTRING(@c, @position, 1) <> '£') <> ''
		PRINT CAST(@cpref as varchar(10)) + ' - ' + CAST( @position as varchar(10)) + ' - ' + (SUBSTRING(@c, @position, 1))
   	SET @position = @position + 1
   	END
FETCH NEXT FROM cpreference2 INTO @cpref
END
CLOSE cpreference2
DEALLOCATE cpreference2
GO
/****** Object:  Table [dbo].[CarParkSpaceTypeAvailability]    Script Date: 12/30/2014 11:56:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarParkSpaceTypeAvailability](
	[SpaceReference] [int] NOT NULL,
	[AvailabilityDayType] [int] NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[PercentageAvailability] [int] NULL,
	[CalendarReference] [int] NULL,
 CONSTRAINT [PK_CarParkSpaceTypeAvailability] PRIMARY KEY CLUSTERED 
(
	[SpaceReference] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarParkSpace]    Script Date: 12/30/2014 11:56:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CarParkSpace](
	[CPReference] [int] NOT NULL,
	[SpaceTypeCode] [varchar](50) NULL,
	[SpaceReference] [int] NOT NULL,
	[NumberOfSpaces] [int] NOT NULL,
 CONSTRAINT [PK_CarParkSpace] PRIMARY KEY CLUSTERED 
(
	[SpaceReference] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_CarParkSpace] ON [dbo].[CarParkSpace] 
(
	[SpaceReference] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CPRef] ON [dbo].[CarParkSpace] 
(
	[CPReference] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_checkascii]    Script Date: 12/30/2014 11:56:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_checkascii]
@tblname varchar(100),
@colname varchar(100)
as
DECLARE cpreference2 cursor
FOR select cpreference from carpark
OPEN cpreference2
DECLARE @position int, @string nchar(255), @string2 nchar(255), @cpref int, @tabname varchar(255), @cname varchar(255), @stringdata nvarchar(255), @c nvarchar(255)
-- Initialize the current position and the string variables.
SET @tabname = @tblname
SET @cname = @colname
SET @position = 1
PRINT @tabname + ' - ' + @colname
FETCH NEXT FROM cpreference2 INTO @cpref
WHILE (@@FETCH_STATUS <> -1)
BEGIN
	SET @string = 'select @c = RTRIM(' + @cname + ') from '+ @tabname + '  where cpreference = ' + CAST( @cpref as varchar(255))
	SET @string2 = @string
	EXEC sp_executesql @string2, N'@c as nvarchar(255) OUTPUT',  @c OUTPUT
	SET @position = 1
	WHILE @position <= LEN(@c)
   	BEGIN
		IF
   		(SELECT CHAR(ASCII(SUBSTRING(@c, @position, 1))) where  ASCII(SUBSTRING(@c, @position, 1)) > 127 and SUBSTRING(@c, @position, 1) <> '£') <> ''
		PRINT CAST(@cpref as varchar(10)) + ' - ' + CAST( @position as varchar(10)) + ' - ' + (SUBSTRING(@c, @position, 1))
   	SET @position = @position + 1
   	END
FETCH NEXT FROM cpreference2 INTO @cpref
END
CLOSE cpreference2
DEALLOCATE cpreference2
GO
/****** Object:  Table [dbo].[ParkandRideScheme]    Script Date: 12/30/2014 11:56:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ParkandRideScheme](
	[CPReference] [int] NOT NULL,
	[PRLocation] [varchar](100) NULL,
	[PRSchemeName] [varchar](100) NULL,
	[PRURL] [varchar](2048) NULL,
	[PRComments] [varchar](200) NULL,
	[PRLocationEasting] [decimal](18, 2) NOT NULL,
	[PRLocationNorthing] [decimal](18, 2) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NPTGLocality]    Script Date: 12/30/2014 11:56:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NPTGLocality](
	[CPReference] [int] NOT NULL,
	[NationalGazeteerID] [varchar](100) NULL,
	[Easting] [decimal](18, 2) NULL,
	[Northing] [decimal](18, 2) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NPTGAdminDistrict]    Script Date: 12/30/2014 11:56:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NPTGAdminDistrict](
	[CPReference] [int] NULL,
	[NPTGAdministrativeAreaCode] [varchar](50) NULL,
	[NPTGDistrictCode] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE CLUSTERED INDEX [_dta_index_NPTGAdminDistrict_c_7_2046630334__K1] ON [dbo].[NPTGAdminDistrict] 
(
	[CPReference] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LinkedNaPTANS]    Script Date: 12/30/2014 11:56:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LinkedNaPTANS](
	[CPReference] [int] NOT NULL,
	[StopPointType] [varchar](50) NULL,
	[StopCode] [varchar](20) NULL,
	[InterchangeTime] [int] NULL,
	[InterchangeMode] [varchar](18) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CarParkType]    Script Date: 12/30/2014 11:56:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CarParkType](
	[CPReference] [int] NULL,
	[CarParkTypeCode] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE CLUSTERED INDEX [_dta_index_CarParkType_c_7_1902629821__K1] ON [dbo].[CarParkType] 
(
	[CPReference] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarParkTrafficNewsRegion]    Script Date: 12/30/2014 11:56:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CarParkTrafficNewsRegion](
	[CPReference] [int] NOT NULL,
	[TravelNewsRegionName] [varchar](100) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE CLUSTERED INDEX [_dta_index_CarParkTrafficNewsRegion_c_7_1838629593__K1] ON [dbo].[CarParkTrafficNewsRegion] 
(
	[CPReference] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarParkToLocationTransfer]    Script Date: 12/30/2014 11:56:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CarParkToLocationTransfer](
	[CPReference] [int] NOT NULL,
	[PRTransferFrequency] [varchar](100) NULL,
	[PRTransferToText] [varchar](250) NULL,
	[PRTransferFromText] [varchar](250) NULL,
	[PRTransferJourneyTime] [int] NULL,
	[PRTransferToNaptan] [varchar](10) NULL,
	[PRTransferFromNaptan] [varchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CarParkPaymentType]    Script Date: 12/30/2014 11:56:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CarParkPaymentType](
	[CPReference] [int] NOT NULL,
	[PaymentTypeCode] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE CLUSTERED INDEX [_dta_index_CarParkPaymentType_c_7_1534628510__K1] ON [dbo].[CarParkPaymentType] 
(
	[CPReference] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarParkPaymentMethod]    Script Date: 12/30/2014 11:56:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CarParkPaymentMethod](
	[CPReference] [int] NOT NULL,
	[PaymentMethodCode] [varchar](50) NOT NULL,
	[ChangeAvailable] [varchar](3) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE CLUSTERED INDEX [_dta_index_CarParkPaymentMethod_c_7_1406628054__K1] ON [dbo].[CarParkPaymentMethod] 
(
	[CPReference] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarParkOpeningTimes]    Script Date: 12/30/2014 11:56:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarParkOpeningTimes](
	[CPReference] [int] NULL,
	[CalendarReference] [int] NULL,
	[OpensAt] [datetime] NULL,
	[LastEntranceAt] [datetime] NULL,
	[ClosesAt] [datetime] NULL,
	[MaxStayDays] [int] NULL,
	[MaxStayMinutes] [int] NULL
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [_dta_index_CarParkOpeningTimes_c_7_2085582468__K1] ON [dbo].[CarParkOpeningTimes] 
(
	[CPReference] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarParkFacilities]    Script Date: 12/30/2014 11:56:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CarParkFacilities](
	[CPReference] [int] NULL,
	[FacilityName] [varchar](100) NULL,
	[FacilityLocation] [varchar](100) NULL,
	[FacilityTypeCode] [varchar](100) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE CLUSTERED INDEX [_dta_index_CarParkFacilities_c_7_1230627427__K1] ON [dbo].[CarParkFacilities] 
(
	[CPReference] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarParkAttractions]    Script Date: 12/30/2014 11:56:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CarParkAttractions](
	[CPReference] [int] NULL,
	[AttractionTypeCode] [int] NULL,
	[AttractionName] [varchar](100) NULL,
	[WalkingDistance] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CarParkAdditionalData]    Script Date: 12/30/2014 11:56:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CarParkAdditionalData](
	[CPReference] [int] NOT NULL,
	[CPClosingDate] [datetime] NULL,
	[CPReopeningDate] [datetime] NULL,
	[CPMaximumHeight] [decimal](18, 2) NULL,
	[CPMaximumWidth] [decimal](18, 2) NULL,
	[PMSPA] [bit] NULL,
	[CPEmergenctNumber] [varchar](13) NULL,
	[CPEmailAddressOfCarPark] [varchar](100) NULL,
	[CPCCTVAvailable] [varchar](3) NULL,
	[CPStaffed] [varchar](3) NULL,
	[CPPatrolled] [varchar](3) NULL,
	[CPVehicleRestrictions] [varchar](150) NULL,
	[CPLiftsAvailable] [varchar](3) NULL,
	[CPAdvancedReservationsAvailable] [varchar](3) NULL,
	[CPSeasonTicketsAvailable] [varchar](3) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE CLUSTERED INDEX [_dta_index_CarParkAdditionalData_c_7_1303675692__K1] ON [dbo].[CarParkAdditionalData] 
(
	[CPReference] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarParkAccessPoints]    Script Date: 12/30/2014 11:56:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CarParkAccessPoints](
	[AccessPointID] [int] NOT NULL,
	[CPReference] [int] NOT NULL,
	[CPAccessPointtype] [int] NOT NULL,
	[CPAccessPointEasting] [decimal](18, 2) NOT NULL,
	[CPAccessPointNorthing] [decimal](18, 2) NOT NULL,
	[CPAccessPointRoadName] [varchar](100) NULL,
	[CPAccessPointName] [varchar](100) NULL,
	[CPAccesPointBarrier] [varchar](3) NOT NULL,
 CONSTRAINT [PK_CarParkAccessPoints] PRIMARY KEY CLUSTERED 
(
	[AccessPointID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [_dta_index_CarParkAccessPoints_7_558625033__K2_1_3_4_5_6_7_8] ON [dbo].[CarParkAccessPoints] 
(
	[CPReference] ASC
)
INCLUDE ( [AccessPointID],
[CPAccessPointtype],
[CPAccessPointEasting],
[CPAccessPointNorthing],
[CPAccessPointRoadName],
[CPAccessPointName],
[CPAccesPointBarrier]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarParkConcession]    Script Date: 12/30/2014 11:56:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CarParkConcession](
	[CPReference] [int] NOT NULL,
	[ConcessionCode] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CarParkCharges]    Script Date: 12/30/2014 11:56:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CarParkCharges](
	[ChargeReference] [int] NOT NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[TimeRangeDays] [int] NULL,
	[TimeRangeMinutes] [int] NULL,
	[Comments] [varchar](200) NULL,
	[ChargeAmount] [int] NULL,
	[ChargeDayEndTime] [varchar](20) NULL,
	[ChargeTypeCode] [varchar](50) NULL,
	[CalendarReference] [int] NULL,
	[SpaceReference] [int] NULL,
 CONSTRAINT [PK_CarParkCharges] PRIMARY KEY CLUSTERED 
(
	[ChargeReference] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY],
 CONSTRAINT [IX_CarParkCharges] UNIQUE NONCLUSTERED 
(
	[ChargeReference] ASC,
	[SpaceReference] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_CPSpacereference] ON [dbo].[CarParkCharges] 
(
	[SpaceReference] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  View [dbo].[v_allData]    Script Date: 12/30/2014 11:56:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_allData]
AS
SELECT     TOP 100 PERCENT dbo.CarPark.*, dbo.CarParkAccessPoints.CPAccessPointtype, dbo.CarParkAccessPoints.CPAccessPointEasting, 
                      dbo.CarParkAccessPoints.CPAccessPointNorthing, dbo.CarParkAccessPoints.CPAccessPointRoadName, 
                      dbo.CarParkAccessPoints.CPAccesPointBarrier, dbo.CarParkAdditionalData.CPClosingDate, dbo.CarParkAdditionalData.CPReopeningDate, 
                      dbo.CarParkAdditionalData.CPMaximumHeight, dbo.CarParkAdditionalData.CPMaximumWidth, dbo.CarParkAdditionalData.PMSPA, 
                      dbo.CarParkAdditionalData.CPEmergenctNumber, dbo.CarParkAdditionalData.CPEmailAddressOfCarPark, dbo.CarParkAdditionalData.CPCCTVAvailable, 
                      dbo.CarParkAdditionalData.CPStaffed, dbo.CarParkAdditionalData.CPPatrolled, dbo.CarParkAdditionalData.CPVehicleRestrictions, 
                      dbo.CarParkAdditionalData.CPLiftsAvailable, dbo.CarParkAdditionalData.CPAdvancedReservationsAvailable, 
                      dbo.CarParkAdditionalData.CPSeasonTicketsAvailable, dbo.CarParkAttractions.AttractionName, dbo.CarParkAttractions.WalkingDistance, 
                      dbo.CarParkAttractionTypes.AttractionTypeDescription, dbo.CarParkSpace.NumberOfSpaces, dbo.CarParkSpaceType.SpaceTypeDescription, 
                      dbo.CarParkCharges.ChargeAmount, dbo.CarParkCharges.Comments, dbo.CarParkCharges.TimeRangeMinutes, dbo.CarParkCharges.EndTime, 
                      dbo.CarParkCharges.StartTime, dbo.CarParkCharges.ChargeDayEndTime, dbo.CarParkCalendar.Description, dbo.CarParkCalendar.PublicHolidays, 
                      dbo.CarParkCalendar.Days, dbo.CarParkCalendar.StartDate, dbo.CarParkCalendar.EndDate, dbo.CarParkChargeTypes.ChargeTypeDescription, 
                      dbo.CarParkCharges.TimeRangeDays, dbo.CarParkConcessions.ConcessionDescription, dbo.CarParkFacilities.FacilityName, 
                      dbo.CarParkFacilities.FacilityLocation, dbo.CarParkFacilityTypes.FacilityTypeDescription, dbo.CarParkOperator.CPOperatorName, 
                      dbo.CarParkOperator.CPOperatorURL, dbo.CarParkOperator.CPTsandCs, dbo.CarParkOperator.CPOperatorEmailAddress, 
                      dbo.CarParkPaymentMethod.ChangeAvailable, dbo.CarParkPaymentMethods.PaymentMethodDescription, 
                      dbo.CarParkPaymentTypes.PaymentTypeDescription, dbo.CarParkToLocationTransfer.PRTransferFrequency, 
                      dbo.CarParkToLocationTransfer.PRTransferToText, dbo.CarParkToLocationTransfer.PRTransferFromText, 
                      dbo.CarParkToLocationTransfer.PRTransferJourneyTime, dbo.CarParkToLocationTransfer.PRTransferToNaptan, 
                      dbo.CarParkToLocationTransfer.PRTransferFromNaptan, dbo.CarParkTrafficNewsRegion.TravelNewsRegionName, 
                      dbo.CarParkTypes.CarParkTypeDescription, dbo.ParkandRideScheme.PRLocation, dbo.ParkandRideScheme.PRSchemeName, 
                      dbo.ParkandRideScheme.PRURL, dbo.ParkandRideScheme.PRComments, dbo.ParkandRideScheme.PRLocationEasting, 
                      dbo.ParkandRideScheme.PRLocationNorthing, dbo.LinkedNaPTANS.StopPointType, dbo.LinkedNaPTANS.StopCode, 
                      dbo.LinkedNaPTANS.InterchangeTime, dbo.LinkedNaPTANS.InterchangeMode, dbo.NPTGAdminDistrict.NPTGAdministrativeAreaCode, 
                      dbo.NPTGAdminDistrict.NPTGDistrictCode, dbo.NPTGLocality.NationalGazeteerID, dbo.NPTGLocality.Easting, dbo.NPTGLocality.Northing
FROM         dbo.CarParkSpaceType INNER JOIN
                      dbo.CarParkSpace ON dbo.CarParkSpaceType.SpaceTypeCode = dbo.CarParkSpace.SpaceTypeCode RIGHT OUTER JOIN
                      dbo.CarParkCalendar INNER JOIN
                      dbo.CarParkCharges ON dbo.CarParkCalendar.CalendarReference = dbo.CarParkCharges.CalendarReference INNER JOIN
                      dbo.CarParkChargeTypes ON dbo.CarParkCharges.ChargeTypeCode = dbo.CarParkChargeTypes.ChargeTypeCode INNER JOIN
                      dbo.CarParkOpeningTimes ON dbo.CarParkCalendar.CalendarReference = dbo.CarParkOpeningTimes.CalendarReference RIGHT OUTER JOIN
                      dbo.CarParkOperator LEFT OUTER JOIN
                      dbo.CarParkFacilities INNER JOIN
                      dbo.CarParkFacilityTypes ON dbo.CarParkFacilities.FacilityTypeCode = dbo.CarParkFacilityTypes.FacilityTypeCode RIGHT OUTER JOIN
                      dbo.CarParkPaymentTypes INNER JOIN
                      dbo.CarParkPaymentType ON dbo.CarParkPaymentTypes.PaymentTypeCode = dbo.CarParkPaymentType.PaymentTypeCode RIGHT OUTER JOIN
                      dbo.CarPark LEFT OUTER JOIN
                      dbo.CarParkToLocationTransfer ON dbo.CarPark.CPReference = dbo.CarParkToLocationTransfer.CPReference LEFT OUTER JOIN
                      dbo.CarParkAccessPoints ON dbo.CarPark.CPReference = dbo.CarParkAccessPoints.CPReference ON 
                      dbo.CarParkPaymentType.CPReference = dbo.CarPark.CPReference LEFT OUTER JOIN
                      dbo.CarParkPaymentMethod INNER JOIN
                      dbo.CarParkPaymentMethods ON dbo.CarParkPaymentMethod.PaymentMethodCode = dbo.CarParkPaymentMethods.PaymentMethodCode ON 
                      dbo.CarPark.CPReference = dbo.CarParkPaymentMethod.CPReference LEFT OUTER JOIN
                      dbo.CarParkTrafficNewsRegion ON dbo.CarPark.CPReference = dbo.CarParkTrafficNewsRegion.CPReference ON 
                      dbo.CarParkFacilities.CPReference = dbo.CarPark.CPReference LEFT OUTER JOIN
                      dbo.ParkandRideScheme ON dbo.CarPark.CPReference = dbo.ParkandRideScheme.CPReference ON 
                      dbo.CarParkOperator.CPOperatorCode = dbo.CarPark.CPOperatorCode LEFT OUTER JOIN
                      dbo.CarParkTypes INNER JOIN
                      dbo.CarParkType ON dbo.CarParkTypes.CarParkTypeCode = dbo.CarParkType.CarParkTypeCode ON 
                      dbo.CarPark.CPReference = dbo.CarParkType.CPReference LEFT OUTER JOIN
                      dbo.LinkedNaPTANS ON dbo.CarPark.CPReference = dbo.LinkedNaPTANS.CPReference LEFT OUTER JOIN
                      dbo.NPTGAdminDistrict ON dbo.CarPark.CPReference = dbo.NPTGAdminDistrict.CPReference LEFT OUTER JOIN
                      dbo.NPTGLocality ON dbo.CarPark.CPReference = dbo.NPTGLocality.CPReference LEFT OUTER JOIN
                      dbo.CarParkConcession INNER JOIN
                      dbo.CarParkConcessions ON dbo.CarParkConcession.ConcessionCode = dbo.CarParkConcessions.ConcessionCode ON 
                      dbo.CarPark.CPReference = dbo.CarParkConcession.CPReference LEFT OUTER JOIN
                      dbo.CarParkAdditionalData ON dbo.CarPark.CPReference = dbo.CarParkAdditionalData.CPReference LEFT OUTER JOIN
                      dbo.CarParkAttractions ON dbo.CarPark.CPReference = dbo.CarParkAttractions.CPReference LEFT OUTER JOIN
                      dbo.CarParkAttractionTypes ON dbo.CarParkAttractions.AttractionTypeCode = dbo.CarParkAttractionTypes.AttractionTypeCode ON 
                      dbo.CarParkOpeningTimes.CPReference = dbo.CarPark.CPReference ON dbo.CarParkSpace.CPReference = dbo.CarPark.CPReference AND 
                      dbo.CarParkSpace.SpaceReference = dbo.CarParkCharges.SpaceReference
ORDER BY dbo.CarPark.CPReference
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[12] 2[21] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1[50] 4[25] 3) )"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1[50] 2[25] 3) )"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1[73] 3) )"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1 [56] 4 [18] 2))"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 2
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "CarPark"
            Begin Extent = 
               Top = 286
               Left = 667
               Bottom = 394
               Right = 878
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarParkAccessPoints"
            Begin Extent = 
               Top = 29
               Left = 53
               Bottom = 228
               Right = 475
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarParkAdditionalData"
            Begin Extent = 
               Top = 1
               Left = 523
               Bottom = 109
               Right = 770
            End
            DisplayFlags = 280
            TopColumn = 11
         End
         Begin Table = "CarParkAttractions"
            Begin Extent = 
               Top = 6
               Left = 808
               Bottom = 125
               Right = 985
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarParkAttractionTypes"
            Begin Extent = 
               Top = 6
               Left = 1023
               Bottom = 84
               Right = 1228
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarParkCharges"
            Begin Extent = 
               Top = 100
               Left = 1266
               Bottom = 326
               Right = 1440
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarParkSpace"
            Begin Extent = 
               Top = 6
               Left = 1478
               Bottom = 114
           ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_allData'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'    Right = 1641
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarParkSpaceType"
            Begin Extent = 
               Top = 212
               Left = 1483
               Bottom = 290
               Right = 1669
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarParkCalendar"
            Begin Extent = 
               Top = 326
               Left = 971
               Bottom = 434
               Right = 1144
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarParkChargeTypes"
            Begin Extent = 
               Top = 84
               Left = 1023
               Bottom = 162
               Right = 1215
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarParkConcession"
            Begin Extent = 
               Top = 255
               Left = 61
               Bottom = 356
               Right = 220
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarParkConcessions"
            Begin Extent = 
               Top = 388
               Left = 55
               Bottom = 466
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarParkFacilities"
            Begin Extent = 
               Top = 425
               Left = 389
               Bottom = 533
               Right = 551
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarParkFacilityTypes"
            Begin Extent = 
               Top = 483
               Left = 161
               Bottom = 561
               Right = 351
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarParkOpeningTimes"
            Begin Extent = 
               Top = 165
               Left = 1020
               Bottom = 273
               Right = 1193
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarParkOperator"
            Begin Extent = 
               Top = 455
               Left = 578
               Bottom = 563
               Right = 778
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarParkPaymentMethod"
            Begin Extent = 
               Top = 345
               Left = 1236
               Bottom = 438
               Right = 1419
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarParkPaymentMethods"
            Begin Extent = 
               Top = 332
               Left = 1494
               Bottom = 410
               Right = 1705
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarParkPaymentType"
            Begin Extent = 
               Top = 451
               Left = 1053
               Bottom = 529
               Right = 1224
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarParkPaymentTypes"
            Begin Extent = 
               Top = 452
               Left = 1274
               Bottom = 530
               Right = 1473
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarParkToLocationTransfer"
            Begi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_allData'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane3', @value=N'n Extent = 
               Top = 141
               Left = 610
               Bottom = 249
               Right = 805
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarParkTrafficNewsRegion"
            Begin Extent = 
               Top = 6
               Left = 1266
               Bottom = 84
               Right = 1462
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarParkType"
            Begin Extent = 
               Top = 453
               Left = 821
               Bottom = 531
               Right = 988
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarParkTypes"
            Begin Extent = 
               Top = 555
               Left = 915
               Bottom = 633
               Right = 1110
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LinkedNaPTANS"
            Begin Extent = 
               Top = 544
               Left = 1163
               Bottom = 652
               Right = 1328
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "NPTGAdminDistrict"
            Begin Extent = 
               Top = 552
               Left = 1381
               Bottom = 645
               Right = 1603
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "NPTGLocality"
            Begin Extent = 
               Top = 243
               Left = 386
               Bottom = 351
               Right = 560
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ParkandRideScheme"
            Begin Extent = 
               Top = 544
               Left = 351
               Bottom = 652
               Right = 525
            End
            DisplayFlags = 280
            TopColumn = 3
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      RowHeights = 220
      Begin ColumnWidths = 89
         Width = 284
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_allData'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane4', @value=N' = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
         Width = 1440
      End
   End
   Begin CriteriaPane = 
      PaneHidden = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_allData'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=4 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_allData'
GO
/****** Object:  StoredProcedure [dbo].[sp_checkascii_charges]    Script Date: 12/30/2014 11:56:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_checkascii_charges]
@tblname varchar(100),
@colname varchar(100)
as
DECLARE cpreference2 cursor
FOR select chargereference from carparkcharges
OPEN cpreference2
DECLARE @position int, @string nchar(255), @string2 nchar(255), @cpref int, @tabname varchar(255), @cname varchar(255), @stringdata nvarchar(255), @c nvarchar(255)
-- Initialize the current position and the string variables.
SET @tabname = @tblname
SET @cname = @colname
SET @position = 1
PRINT @tabname + ' - ' + @colname
FETCH NEXT FROM cpreference2 INTO @cpref
WHILE (@@FETCH_STATUS <> -1)
BEGIN
	SET @string = 'select @c = RTRIM(' + @cname + ') from '+ @tabname + '  where chargereference = ' + CAST( @cpref as varchar(255))
	SET @string2 = @string
	EXEC sp_executesql @string2, N'@c as nvarchar(255) OUTPUT',  @c OUTPUT
	SET @position = 1
	WHILE @position <= LEN(@c)
   	BEGIN
		IF
   		(SELECT CHAR(ASCII(SUBSTRING(@c, @position, 1))) where  ASCII(SUBSTRING(@c, @position, 1)) > 127 and SUBSTRING(@c, @position, 1) <> '£') <> ''
		PRINT CAST(@cpref as varchar(10)) + ' - ' + CAST( @position as varchar(10)) + ' - ' + (SUBSTRING(@c, @position, 1))
   	SET @position = @position + 1
   	END
FETCH NEXT FROM cpreference2 INTO @cpref
END
CLOSE cpreference2
DEALLOCATE cpreference2
GO
/****** Object:  Default [DF_CarPark_CPUrl]    Script Date: 12/30/2014 11:56:02 ******/
ALTER TABLE [dbo].[CarPark] ADD  CONSTRAINT [DF_CarPark_CPUrl]  DEFAULT ('') FOR [CPUrl]
GO
/****** Object:  Default [DF_CarPark_CPStayType]    Script Date: 12/30/2014 11:56:02 ******/
ALTER TABLE [dbo].[CarPark] ADD  CONSTRAINT [DF_CarPark_CPStayType]  DEFAULT ('Unknown') FOR [CPStayType]
GO
/****** Object:  Default [DF_CarPark_CPWEUDate]    Script Date: 12/30/2014 11:56:02 ******/
ALTER TABLE [dbo].[CarPark] ADD  CONSTRAINT [DF_CarPark_CPWEUDate]  DEFAULT (2011 - 12 - 31) FOR [CPWEUDate]
GO
/****** Object:  Default [DF_CarPark_CPWEFDate]    Script Date: 12/30/2014 11:56:02 ******/
ALTER TABLE [dbo].[CarPark] ADD  CONSTRAINT [DF_CarPark_CPWEFDate]  DEFAULT (1900 - 1 - 1) FOR [CPWEFDate]
GO
/****** Object:  Default [DF_CarPark_ExportToXML]    Script Date: 12/30/2014 11:56:02 ******/
ALTER TABLE [dbo].[CarPark] ADD  CONSTRAINT [DF_CarPark_ExportToXML]  DEFAULT (0) FOR [ExportToXML]
GO
/****** Object:  Default [DF_LinkedNaPTANS_InterchangeMode]    Script Date: 12/30/2014 11:56:03 ******/
ALTER TABLE [dbo].[LinkedNaPTANS] ADD  CONSTRAINT [DF_LinkedNaPTANS_InterchangeMode]  DEFAULT ('Walk') FOR [InterchangeMode]
GO
/****** Object:  Default [DF_CarParkPaymentMethod_ChangeAvailable]    Script Date: 12/30/2014 11:56:04 ******/
ALTER TABLE [dbo].[CarParkPaymentMethod] ADD  CONSTRAINT [DF_CarParkPaymentMethod_ChangeAvailable]  DEFAULT ('Unk') FOR [ChangeAvailable]
GO
/****** Object:  Default [DF_CarParkOpeningTimes_OpensAt]    Script Date: 12/30/2014 11:56:04 ******/
ALTER TABLE [dbo].[CarParkOpeningTimes] ADD  CONSTRAINT [DF_CarParkOpeningTimes_OpensAt]  DEFAULT ('00:00') FOR [OpensAt]
GO
/****** Object:  Default [DF_CarParkOpeningTimes_ClosesAt]    Script Date: 12/30/2014 11:56:04 ******/
ALTER TABLE [dbo].[CarParkOpeningTimes] ADD  CONSTRAINT [DF_CarParkOpeningTimes_ClosesAt]  DEFAULT ('00:00') FOR [ClosesAt]
GO
/****** Object:  Default [DF_CarParkAdditionalData_CPCCTVAvailable]    Script Date: 12/30/2014 11:56:04 ******/
ALTER TABLE [dbo].[CarParkAdditionalData] ADD  CONSTRAINT [DF_CarParkAdditionalData_CPCCTVAvailable]  DEFAULT ('Unk') FOR [CPCCTVAvailable]
GO
/****** Object:  Default [DF_CarParkAdditionalData_CPStaffed]    Script Date: 12/30/2014 11:56:04 ******/
ALTER TABLE [dbo].[CarParkAdditionalData] ADD  CONSTRAINT [DF_CarParkAdditionalData_CPStaffed]  DEFAULT ('Unk') FOR [CPStaffed]
GO
/****** Object:  Default [DF_CarParkAdditionalData_CPPatrolled]    Script Date: 12/30/2014 11:56:04 ******/
ALTER TABLE [dbo].[CarParkAdditionalData] ADD  CONSTRAINT [DF_CarParkAdditionalData_CPPatrolled]  DEFAULT ('Unk') FOR [CPPatrolled]
GO
/****** Object:  Default [DF_CarParkAdditionalData_CPLiftsAvailable]    Script Date: 12/30/2014 11:56:04 ******/
ALTER TABLE [dbo].[CarParkAdditionalData] ADD  CONSTRAINT [DF_CarParkAdditionalData_CPLiftsAvailable]  DEFAULT ('Unk') FOR [CPLiftsAvailable]
GO
/****** Object:  Default [DF_CarParkAdditionalData_CPAdvancedReservationsAvailable]    Script Date: 12/30/2014 11:56:04 ******/
ALTER TABLE [dbo].[CarParkAdditionalData] ADD  CONSTRAINT [DF_CarParkAdditionalData_CPAdvancedReservationsAvailable]  DEFAULT ('Unk') FOR [CPAdvancedReservationsAvailable]
GO
/****** Object:  Default [DF_CarParkAdditionalData_CPSeasonTicketsAvailable]    Script Date: 12/30/2014 11:56:04 ******/
ALTER TABLE [dbo].[CarParkAdditionalData] ADD  CONSTRAINT [DF_CarParkAdditionalData_CPSeasonTicketsAvailable]  DEFAULT ('Unk') FOR [CPSeasonTicketsAvailable]
GO
/****** Object:  Default [DF_CarParkAccessPoints_CPAccesPointBarrier]    Script Date: 12/30/2014 11:56:04 ******/
ALTER TABLE [dbo].[CarParkAccessPoints] ADD  CONSTRAINT [DF_CarParkAccessPoints_CPAccesPointBarrier]  DEFAULT ('Unk') FOR [CPAccesPointBarrier]
GO
/****** Object:  ForeignKey [FK_CarPark_CarParkOperator]    Script Date: 12/30/2014 11:56:02 ******/
ALTER TABLE [dbo].[CarPark]  WITH NOCHECK ADD  CONSTRAINT [FK_CarPark_CarParkOperator] FOREIGN KEY([CPOperatorCode])
REFERENCES [dbo].[CarParkOperator] ([CPOperatorCode])
GO
ALTER TABLE [dbo].[CarPark] CHECK CONSTRAINT [FK_CarPark_CarParkOperator]
GO
/****** Object:  ForeignKey [FK_CarParkSpaceTypeAvailability_CarParkCalendar]    Script Date: 12/30/2014 11:56:03 ******/
ALTER TABLE [dbo].[CarParkSpaceTypeAvailability]  WITH CHECK ADD  CONSTRAINT [FK_CarParkSpaceTypeAvailability_CarParkCalendar] FOREIGN KEY([CalendarReference])
REFERENCES [dbo].[CarParkCalendar] ([CalendarReference])
GO
ALTER TABLE [dbo].[CarParkSpaceTypeAvailability] CHECK CONSTRAINT [FK_CarParkSpaceTypeAvailability_CarParkCalendar]
GO
/****** Object:  ForeignKey [FK_CarParkSpace_CarPark]    Script Date: 12/30/2014 11:56:03 ******/
ALTER TABLE [dbo].[CarParkSpace]  WITH NOCHECK ADD  CONSTRAINT [FK_CarParkSpace_CarPark] FOREIGN KEY([CPReference])
REFERENCES [dbo].[CarPark] ([CPReference])
GO
ALTER TABLE [dbo].[CarParkSpace] CHECK CONSTRAINT [FK_CarParkSpace_CarPark]
GO
/****** Object:  ForeignKey [FK_CarParkSpace_CarParkSpaceType]    Script Date: 12/30/2014 11:56:03 ******/
ALTER TABLE [dbo].[CarParkSpace]  WITH NOCHECK ADD  CONSTRAINT [FK_CarParkSpace_CarParkSpaceType] FOREIGN KEY([SpaceTypeCode])
REFERENCES [dbo].[CarParkSpaceType] ([SpaceTypeCode])
GO
ALTER TABLE [dbo].[CarParkSpace] CHECK CONSTRAINT [FK_CarParkSpace_CarParkSpaceType]
GO
/****** Object:  ForeignKey [FK_ParkandRideScheme_CarPark]    Script Date: 12/30/2014 11:56:03 ******/
ALTER TABLE [dbo].[ParkandRideScheme]  WITH NOCHECK ADD  CONSTRAINT [FK_ParkandRideScheme_CarPark] FOREIGN KEY([CPReference])
REFERENCES [dbo].[CarPark] ([CPReference])
GO
ALTER TABLE [dbo].[ParkandRideScheme] CHECK CONSTRAINT [FK_ParkandRideScheme_CarPark]
GO
/****** Object:  ForeignKey [FK_NPTGLocality_CarPark]    Script Date: 12/30/2014 11:56:03 ******/
ALTER TABLE [dbo].[NPTGLocality]  WITH NOCHECK ADD  CONSTRAINT [FK_NPTGLocality_CarPark] FOREIGN KEY([CPReference])
REFERENCES [dbo].[CarPark] ([CPReference])
GO
ALTER TABLE [dbo].[NPTGLocality] CHECK CONSTRAINT [FK_NPTGLocality_CarPark]
GO
/****** Object:  ForeignKey [FK_NPTGAdminDistrict_CarPark]    Script Date: 12/30/2014 11:56:03 ******/
ALTER TABLE [dbo].[NPTGAdminDistrict]  WITH NOCHECK ADD  CONSTRAINT [FK_NPTGAdminDistrict_CarPark] FOREIGN KEY([CPReference])
REFERENCES [dbo].[CarPark] ([CPReference])
GO
ALTER TABLE [dbo].[NPTGAdminDistrict] CHECK CONSTRAINT [FK_NPTGAdminDistrict_CarPark]
GO
/****** Object:  ForeignKey [FK_LinkedNaPTANS_CarPark]    Script Date: 12/30/2014 11:56:03 ******/
ALTER TABLE [dbo].[LinkedNaPTANS]  WITH NOCHECK ADD  CONSTRAINT [FK_LinkedNaPTANS_CarPark] FOREIGN KEY([CPReference])
REFERENCES [dbo].[CarPark] ([CPReference])
GO
ALTER TABLE [dbo].[LinkedNaPTANS] CHECK CONSTRAINT [FK_LinkedNaPTANS_CarPark]
GO
/****** Object:  ForeignKey [FK_CarParkType_CarPark]    Script Date: 12/30/2014 11:56:03 ******/
ALTER TABLE [dbo].[CarParkType]  WITH NOCHECK ADD  CONSTRAINT [FK_CarParkType_CarPark] FOREIGN KEY([CPReference])
REFERENCES [dbo].[CarPark] ([CPReference])
GO
ALTER TABLE [dbo].[CarParkType] CHECK CONSTRAINT [FK_CarParkType_CarPark]
GO
/****** Object:  ForeignKey [FK_CarParkType_CarParkTypes]    Script Date: 12/30/2014 11:56:03 ******/
ALTER TABLE [dbo].[CarParkType]  WITH NOCHECK ADD  CONSTRAINT [FK_CarParkType_CarParkTypes] FOREIGN KEY([CarParkTypeCode])
REFERENCES [dbo].[CarParkTypes] ([CarParkTypeCode])
GO
ALTER TABLE [dbo].[CarParkType] CHECK CONSTRAINT [FK_CarParkType_CarParkTypes]
GO
/****** Object:  ForeignKey [FK_CarParkTrafficNewsRegion_CarPark]    Script Date: 12/30/2014 11:56:03 ******/
ALTER TABLE [dbo].[CarParkTrafficNewsRegion]  WITH NOCHECK ADD  CONSTRAINT [FK_CarParkTrafficNewsRegion_CarPark] FOREIGN KEY([CPReference])
REFERENCES [dbo].[CarPark] ([CPReference])
GO
ALTER TABLE [dbo].[CarParkTrafficNewsRegion] CHECK CONSTRAINT [FK_CarParkTrafficNewsRegion_CarPark]
GO
/****** Object:  ForeignKey [FK_CarParkToLocationTransfer_CarPark]    Script Date: 12/30/2014 11:56:03 ******/
ALTER TABLE [dbo].[CarParkToLocationTransfer]  WITH NOCHECK ADD  CONSTRAINT [FK_CarParkToLocationTransfer_CarPark] FOREIGN KEY([CPReference])
REFERENCES [dbo].[CarPark] ([CPReference])
GO
ALTER TABLE [dbo].[CarParkToLocationTransfer] CHECK CONSTRAINT [FK_CarParkToLocationTransfer_CarPark]
GO
/****** Object:  ForeignKey [FK_CarParkPaymentType_CarPark]    Script Date: 12/30/2014 11:56:03 ******/
ALTER TABLE [dbo].[CarParkPaymentType]  WITH NOCHECK ADD  CONSTRAINT [FK_CarParkPaymentType_CarPark] FOREIGN KEY([CPReference])
REFERENCES [dbo].[CarPark] ([CPReference])
GO
ALTER TABLE [dbo].[CarParkPaymentType] CHECK CONSTRAINT [FK_CarParkPaymentType_CarPark]
GO
/****** Object:  ForeignKey [FK_CarParkPaymentType_CarParkPaymentTypes]    Script Date: 12/30/2014 11:56:03 ******/
ALTER TABLE [dbo].[CarParkPaymentType]  WITH NOCHECK ADD  CONSTRAINT [FK_CarParkPaymentType_CarParkPaymentTypes] FOREIGN KEY([PaymentTypeCode])
REFERENCES [dbo].[CarParkPaymentTypes] ([PaymentTypeCode])
GO
ALTER TABLE [dbo].[CarParkPaymentType] CHECK CONSTRAINT [FK_CarParkPaymentType_CarParkPaymentTypes]
GO
/****** Object:  ForeignKey [FK_CarParkPaymentMethod_CarPark]    Script Date: 12/30/2014 11:56:04 ******/
ALTER TABLE [dbo].[CarParkPaymentMethod]  WITH NOCHECK ADD  CONSTRAINT [FK_CarParkPaymentMethod_CarPark] FOREIGN KEY([CPReference])
REFERENCES [dbo].[CarPark] ([CPReference])
GO
ALTER TABLE [dbo].[CarParkPaymentMethod] CHECK CONSTRAINT [FK_CarParkPaymentMethod_CarPark]
GO
/****** Object:  ForeignKey [FK_CarParkPaymentMethod_CarParkPaymentMethods]    Script Date: 12/30/2014 11:56:04 ******/
ALTER TABLE [dbo].[CarParkPaymentMethod]  WITH NOCHECK ADD  CONSTRAINT [FK_CarParkPaymentMethod_CarParkPaymentMethods] FOREIGN KEY([PaymentMethodCode])
REFERENCES [dbo].[CarParkPaymentMethods] ([PaymentMethodCode])
GO
ALTER TABLE [dbo].[CarParkPaymentMethod] CHECK CONSTRAINT [FK_CarParkPaymentMethod_CarParkPaymentMethods]
GO
/****** Object:  ForeignKey [FK_CarParkOpeningTimes_CarPark]    Script Date: 12/30/2014 11:56:04 ******/
ALTER TABLE [dbo].[CarParkOpeningTimes]  WITH NOCHECK ADD  CONSTRAINT [FK_CarParkOpeningTimes_CarPark] FOREIGN KEY([CPReference])
REFERENCES [dbo].[CarPark] ([CPReference])
GO
ALTER TABLE [dbo].[CarParkOpeningTimes] CHECK CONSTRAINT [FK_CarParkOpeningTimes_CarPark]
GO
/****** Object:  ForeignKey [FK_CarParkOpeningTimes_CarParkCalendar]    Script Date: 12/30/2014 11:56:04 ******/
ALTER TABLE [dbo].[CarParkOpeningTimes]  WITH CHECK ADD  CONSTRAINT [FK_CarParkOpeningTimes_CarParkCalendar] FOREIGN KEY([CalendarReference])
REFERENCES [dbo].[CarParkCalendar] ([CalendarReference])
GO
ALTER TABLE [dbo].[CarParkOpeningTimes] CHECK CONSTRAINT [FK_CarParkOpeningTimes_CarParkCalendar]
GO
/****** Object:  ForeignKey [FK_CarParkFacilities_CarPark]    Script Date: 12/30/2014 11:56:04 ******/
ALTER TABLE [dbo].[CarParkFacilities]  WITH NOCHECK ADD  CONSTRAINT [FK_CarParkFacilities_CarPark] FOREIGN KEY([CPReference])
REFERENCES [dbo].[CarPark] ([CPReference])
GO
ALTER TABLE [dbo].[CarParkFacilities] CHECK CONSTRAINT [FK_CarParkFacilities_CarPark]
GO
/****** Object:  ForeignKey [FK_CarParkFacilities_CarParkFacilityTypes]    Script Date: 12/30/2014 11:56:04 ******/
ALTER TABLE [dbo].[CarParkFacilities]  WITH NOCHECK ADD  CONSTRAINT [FK_CarParkFacilities_CarParkFacilityTypes] FOREIGN KEY([FacilityTypeCode])
REFERENCES [dbo].[CarParkFacilityTypes] ([FacilityTypeCode])
GO
ALTER TABLE [dbo].[CarParkFacilities] CHECK CONSTRAINT [FK_CarParkFacilities_CarParkFacilityTypes]
GO
/****** Object:  ForeignKey [FK_CarParkAttractions_CarPark]    Script Date: 12/30/2014 11:56:04 ******/
ALTER TABLE [dbo].[CarParkAttractions]  WITH NOCHECK ADD  CONSTRAINT [FK_CarParkAttractions_CarPark] FOREIGN KEY([CPReference])
REFERENCES [dbo].[CarPark] ([CPReference])
GO
ALTER TABLE [dbo].[CarParkAttractions] CHECK CONSTRAINT [FK_CarParkAttractions_CarPark]
GO
/****** Object:  ForeignKey [FK_CarParkAttractions_CarParkAttractionTypes]    Script Date: 12/30/2014 11:56:04 ******/
ALTER TABLE [dbo].[CarParkAttractions]  WITH NOCHECK ADD  CONSTRAINT [FK_CarParkAttractions_CarParkAttractionTypes] FOREIGN KEY([AttractionTypeCode])
REFERENCES [dbo].[CarParkAttractionTypes] ([AttractionTypeCode])
GO
ALTER TABLE [dbo].[CarParkAttractions] CHECK CONSTRAINT [FK_CarParkAttractions_CarParkAttractionTypes]
GO
/****** Object:  ForeignKey [FK_CarParkAdditionalData_CarPark]    Script Date: 12/30/2014 11:56:04 ******/
ALTER TABLE [dbo].[CarParkAdditionalData]  WITH NOCHECK ADD  CONSTRAINT [FK_CarParkAdditionalData_CarPark] FOREIGN KEY([CPReference])
REFERENCES [dbo].[CarPark] ([CPReference])
GO
ALTER TABLE [dbo].[CarParkAdditionalData] CHECK CONSTRAINT [FK_CarParkAdditionalData_CarPark]
GO
/****** Object:  ForeignKey [FK_CarParkAccessPoints_CarPark]    Script Date: 12/30/2014 11:56:04 ******/
ALTER TABLE [dbo].[CarParkAccessPoints]  WITH NOCHECK ADD  CONSTRAINT [FK_CarParkAccessPoints_CarPark] FOREIGN KEY([CPReference])
REFERENCES [dbo].[CarPark] ([CPReference])
GO
ALTER TABLE [dbo].[CarParkAccessPoints] CHECK CONSTRAINT [FK_CarParkAccessPoints_CarPark]
GO
/****** Object:  ForeignKey [FK_CarParkConcession_CarPark]    Script Date: 12/30/2014 11:56:04 ******/
ALTER TABLE [dbo].[CarParkConcession]  WITH NOCHECK ADD  CONSTRAINT [FK_CarParkConcession_CarPark] FOREIGN KEY([CPReference])
REFERENCES [dbo].[CarPark] ([CPReference])
GO
ALTER TABLE [dbo].[CarParkConcession] CHECK CONSTRAINT [FK_CarParkConcession_CarPark]
GO
/****** Object:  ForeignKey [FK_CarParkConcession_CarParkConcessions]    Script Date: 12/30/2014 11:56:04 ******/
ALTER TABLE [dbo].[CarParkConcession]  WITH NOCHECK ADD  CONSTRAINT [FK_CarParkConcession_CarParkConcessions] FOREIGN KEY([ConcessionCode])
REFERENCES [dbo].[CarParkConcessions] ([ConcessionCode])
GO
ALTER TABLE [dbo].[CarParkConcession] CHECK CONSTRAINT [FK_CarParkConcession_CarParkConcessions]
GO
/****** Object:  ForeignKey [FK_CarParkCharges_CarParkCalendar]    Script Date: 12/30/2014 11:56:04 ******/
ALTER TABLE [dbo].[CarParkCharges]  WITH NOCHECK ADD  CONSTRAINT [FK_CarParkCharges_CarParkCalendar] FOREIGN KEY([CalendarReference])
REFERENCES [dbo].[CarParkCalendar] ([CalendarReference])
GO
ALTER TABLE [dbo].[CarParkCharges] CHECK CONSTRAINT [FK_CarParkCharges_CarParkCalendar]
GO
/****** Object:  ForeignKey [FK_CarParkCharges_CarParkChargeTypes]    Script Date: 12/30/2014 11:56:04 ******/
ALTER TABLE [dbo].[CarParkCharges]  WITH NOCHECK ADD  CONSTRAINT [FK_CarParkCharges_CarParkChargeTypes] FOREIGN KEY([ChargeTypeCode])
REFERENCES [dbo].[CarParkChargeTypes] ([ChargeTypeCode])
GO
ALTER TABLE [dbo].[CarParkCharges] CHECK CONSTRAINT [FK_CarParkCharges_CarParkChargeTypes]
GO
/****** Object:  ForeignKey [FK_CarParkCharges_CarParkSpace]    Script Date: 12/30/2014 11:56:04 ******/
ALTER TABLE [dbo].[CarParkCharges]  WITH NOCHECK ADD  CONSTRAINT [FK_CarParkCharges_CarParkSpace] FOREIGN KEY([SpaceReference])
REFERENCES [dbo].[CarParkSpace] ([SpaceReference])
GO
ALTER TABLE [dbo].[CarParkCharges] CHECK CONSTRAINT [FK_CarParkCharges_CarParkSpace]
GO
