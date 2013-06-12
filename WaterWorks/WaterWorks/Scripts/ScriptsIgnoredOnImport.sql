
/****** Object:  ForeignKey [FK__APPOINTME__Clien__023D5A04]    Script Date: 06/06/2013 12:22:55 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__APPOINTME__Clien__023D5A04]') AND parent_object_id = OBJECT_ID(N'[dbo].[APPOINTMENT]'))
ALTER TABLE [dbo].[APPOINTMENT] DROP CONSTRAINT [FK__APPOINTME__Clien__023D5A04]
GO

/****** Object:  ForeignKey [FK__HOT_TUB__QuoteID__0BC6C43E]    Script Date: 06/06/2013 12:22:55 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__HOT_TUB__QuoteID__0BC6C43E]') AND parent_object_id = OBJECT_ID(N'[dbo].[HOT_TUB]'))
ALTER TABLE [dbo].[HOT_TUB] DROP CONSTRAINT [FK__HOT_TUB__QuoteID__0BC6C43E]
GO

/****** Object:  ForeignKey [FK__LOGIN_CLI__Clien__7F60ED59]    Script Date: 06/06/2013 12:22:55 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__LOGIN_CLI__Clien__7F60ED59]') AND parent_object_id = OBJECT_ID(N'[dbo].[LOGIN_CLIENT]'))
ALTER TABLE [dbo].[LOGIN_CLIENT] DROP CONSTRAINT [FK__LOGIN_CLI__Clien__7F60ED59]
GO

/****** Object:  ForeignKey [FK__POOL__QuoteID__08EA5793]    Script Date: 06/06/2013 12:22:55 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__POOL__QuoteID__08EA5793]') AND parent_object_id = OBJECT_ID(N'[dbo].[POOL]'))
ALTER TABLE [dbo].[POOL] DROP CONSTRAINT [FK__POOL__QuoteID__08EA5793]
GO

/****** Object:  ForeignKey [FK__QUOTE__ApptID__060DEAE8]    Script Date: 06/06/2013 12:22:55 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__QUOTE__ApptID__060DEAE8]') AND parent_object_id = OBJECT_ID(N'[dbo].[QUOTE]'))
ALTER TABLE [dbo].[QUOTE] DROP CONSTRAINT [FK__QUOTE__ApptID__060DEAE8]
GO

/****** Object:  ForeignKey [FK__QUOTE__ClientID__0519C6AF]    Script Date: 06/06/2013 12:22:55 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__QUOTE__ClientID__0519C6AF]') AND parent_object_id = OBJECT_ID(N'[dbo].[QUOTE]'))
ALTER TABLE [dbo].[QUOTE] DROP CONSTRAINT [FK__QUOTE__ClientID__0519C6AF]
GO

/****** Object:  Table [dbo].[LOGIN_CLIENT]    Script Date: 06/06/2013 12:22:55 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LOGIN_CLIENT]') AND type in (N'U'))
DROP TABLE [dbo].[LOGIN_CLIENT]
GO

/****** Object:  Table [dbo].[HOT_TUB]    Script Date: 06/06/2013 12:22:55 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HOT_TUB]') AND type in (N'U'))
DROP TABLE [dbo].[HOT_TUB]
GO

/****** Object:  Table [dbo].[POOL]    Script Date: 06/06/2013 12:22:55 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[POOL]') AND type in (N'U'))
DROP TABLE [dbo].[POOL]
GO

/****** Object:  Table [dbo].[QUOTE]    Script Date: 06/06/2013 12:22:55 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QUOTE]') AND type in (N'U'))
DROP TABLE [dbo].[QUOTE]
GO

/****** Object:  Table [dbo].[APPOINTMENT]    Script Date: 06/06/2013 12:22:55 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[APPOINTMENT]') AND type in (N'U'))
DROP TABLE [dbo].[APPOINTMENT]
GO

/****** Object:  Table [dbo].[CLIENT]    Script Date: 06/06/2013 12:22:55 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLIENT]') AND type in (N'U'))
DROP TABLE [dbo].[CLIENT]
GO

/****** Object:  Table [dbo].[CLIENT]    Script Date: 06/06/2013 12:22:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLIENT]') AND type in (N'U'))
BEGIN
--The following statement was imported into the database project as a schema object and named dbo.CLIENT.
--CREATE TABLE [dbo].[CLIENT](
--	[ClientID] [int] IDENTITY(1,1) NOT NULL,
--	[FirstName] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
--	[LastName] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
--	[Street] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
--	[Apt/Suite] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
--	[City] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
--	[State] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
--	[Zip] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
--	[Phone] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
--	[Email] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
-- CONSTRAINT [PK__CLIENT__7C8480AE] PRIMARY KEY CLUSTERED 
--(
--	[ClientID] ASC
--)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
--)

END
GO

/****** Object:  Table [dbo].[APPOINTMENT]    Script Date: 06/06/2013 12:22:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[APPOINTMENT]') AND type in (N'U'))
BEGIN
--The following statement was imported into the database project as a schema object and named dbo.APPOINTMENT.
--CREATE TABLE [dbo].[APPOINTMENT](
--	[ApptID] [int] IDENTITY(1,1) NOT NULL,
--	[ClientID] [int] NULL,
--	[ApptDate] [datetime] NOT NULL,
-- CONSTRAINT [PK__APPOINTMENT__014935CB] PRIMARY KEY CLUSTERED 
--(
--	[ApptID] ASC
--)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
--)

END
GO

/****** Object:  Table [dbo].[QUOTE]    Script Date: 06/06/2013 12:22:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QUOTE]') AND type in (N'U'))
BEGIN
--The following statement was imported into the database project as a schema object and named dbo.QUOTE.
--CREATE TABLE [dbo].[QUOTE](
--	[QuoteID] [int] IDENTITY(1,1) NOT NULL,
--	[ClientID] [int] NULL,
--	[TubCost] [money] NULL,
--	[PoolCost] [money] NULL,
--	[ApptID] [int] NULL,
-- CONSTRAINT [PK__QUOTE__0425A276] PRIMARY KEY CLUSTERED 
--(
--	[QuoteID] ASC
--)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
--)

END
GO

/****** Object:  Table [dbo].[POOL]    Script Date: 06/06/2013 12:22:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[POOL]') AND type in (N'U'))
BEGIN
--The following statement was imported into the database project as a schema object and named dbo.POOL.
--CREATE TABLE [dbo].[POOL](
--	[PoolID] [int] IDENTITY(1,1) NOT NULL,
--	[PoolL] [decimal](10, 2) NULL,
--	[PoolW] [decimal](10, 2) NULL,
--	[PoolD] [decimal](10, 2) NULL,
--	[PoolV] [decimal](10, 2) NULL,
--	[QuoteID] [int] NULL,
-- CONSTRAINT [PK__POOL__07F6335A] PRIMARY KEY CLUSTERED 
--(
--	[PoolID] ASC
--)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
--)

END
GO

/****** Object:  Table [dbo].[HOT_TUB]    Script Date: 06/06/2013 12:22:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HOT_TUB]') AND type in (N'U'))
BEGIN
--The following statement was imported into the database project as a schema object and named dbo.HOT_TUB.
--CREATE TABLE [dbo].[HOT_TUB](
--	[TubID] [int] IDENTITY(1,1) NOT NULL,
--	[TubType] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
--	[TubL] [decimal](10, 2) NULL,
--	[TubW] [decimal](10, 2) NULL,
--	[TubD] [decimal](10, 2) NULL,
--	[TubV] [decimal](10, 2) NULL,
--	[QuoteID] [int] NULL,
-- CONSTRAINT [PK__HOT_TUB__0AD2A005] PRIMARY KEY CLUSTERED 
--(
--	[TubID] ASC
--)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
--)

END
GO

/****** Object:  Table [dbo].[LOGIN_CLIENT]    Script Date: 06/06/2013 12:22:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LOGIN_CLIENT]') AND type in (N'U'))
BEGIN
--The following statement was imported into the database project as a schema object and named dbo.LOGIN_CLIENT.
--CREATE TABLE [dbo].[LOGIN_CLIENT](
--	[LoginID] [int] IDENTITY(1,1) NOT NULL,
--	[ClientID] [int] NULL,
--	[Password] [varchar](16) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
-- CONSTRAINT [PK__LOGIN_CLIENT__7E6CC920] PRIMARY KEY CLUSTERED 
--(
--	[LoginID] ASC
--)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
--)

END
GO

/****** Object:  ForeignKey [FK__APPOINTME__Clien__023D5A04]    Script Date: 06/06/2013 12:22:55 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__APPOINTME__Clien__023D5A04]') AND parent_object_id = OBJECT_ID(N'[dbo].[APPOINTMENT]'))
--The following statement was imported into the database project as a schema object and named dbo.FK__APPOINTME__Clien__023D5A04.
--ALTER TABLE [dbo].[APPOINTMENT]  WITH CHECK ADD  CONSTRAINT [FK__APPOINTME__Clien__023D5A04] FOREIGN KEY([ClientID])
--REFERENCES [dbo].[CLIENT] ([ClientID])

GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__APPOINTME__Clien__023D5A04]') AND parent_object_id = OBJECT_ID(N'[dbo].[APPOINTMENT]'))
ALTER TABLE [dbo].[APPOINTMENT] CHECK CONSTRAINT [FK__APPOINTME__Clien__023D5A04]
GO

/****** Object:  ForeignKey [FK__HOT_TUB__QuoteID__0BC6C43E]    Script Date: 06/06/2013 12:22:55 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__HOT_TUB__QuoteID__0BC6C43E]') AND parent_object_id = OBJECT_ID(N'[dbo].[HOT_TUB]'))
--The following statement was imported into the database project as a schema object and named dbo.FK__HOT_TUB__QuoteID__0BC6C43E.
--ALTER TABLE [dbo].[HOT_TUB]  WITH CHECK ADD  CONSTRAINT [FK__HOT_TUB__QuoteID__0BC6C43E] FOREIGN KEY([QuoteID])
--REFERENCES [dbo].[QUOTE] ([QuoteID])

GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__HOT_TUB__QuoteID__0BC6C43E]') AND parent_object_id = OBJECT_ID(N'[dbo].[HOT_TUB]'))
ALTER TABLE [dbo].[HOT_TUB] CHECK CONSTRAINT [FK__HOT_TUB__QuoteID__0BC6C43E]
GO

/****** Object:  ForeignKey [FK__LOGIN_CLI__Clien__7F60ED59]    Script Date: 06/06/2013 12:22:55 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__LOGIN_CLI__Clien__7F60ED59]') AND parent_object_id = OBJECT_ID(N'[dbo].[LOGIN_CLIENT]'))
--The following statement was imported into the database project as a schema object and named dbo.FK__LOGIN_CLI__Clien__7F60ED59.
--ALTER TABLE [dbo].[LOGIN_CLIENT]  WITH CHECK ADD  CONSTRAINT [FK__LOGIN_CLI__Clien__7F60ED59] FOREIGN KEY([ClientID])
--REFERENCES [dbo].[CLIENT] ([ClientID])

GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__LOGIN_CLI__Clien__7F60ED59]') AND parent_object_id = OBJECT_ID(N'[dbo].[LOGIN_CLIENT]'))
ALTER TABLE [dbo].[LOGIN_CLIENT] CHECK CONSTRAINT [FK__LOGIN_CLI__Clien__7F60ED59]
GO

/****** Object:  ForeignKey [FK__POOL__QuoteID__08EA5793]    Script Date: 06/06/2013 12:22:55 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__POOL__QuoteID__08EA5793]') AND parent_object_id = OBJECT_ID(N'[dbo].[POOL]'))
--The following statement was imported into the database project as a schema object and named dbo.FK__POOL__QuoteID__08EA5793.
--ALTER TABLE [dbo].[POOL]  WITH CHECK ADD  CONSTRAINT [FK__POOL__QuoteID__08EA5793] FOREIGN KEY([QuoteID])
--REFERENCES [dbo].[QUOTE] ([QuoteID])

GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__POOL__QuoteID__08EA5793]') AND parent_object_id = OBJECT_ID(N'[dbo].[POOL]'))
ALTER TABLE [dbo].[POOL] CHECK CONSTRAINT [FK__POOL__QuoteID__08EA5793]
GO

/****** Object:  ForeignKey [FK__QUOTE__ApptID__060DEAE8]    Script Date: 06/06/2013 12:22:55 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__QUOTE__ApptID__060DEAE8]') AND parent_object_id = OBJECT_ID(N'[dbo].[QUOTE]'))
--The following statement was imported into the database project as a schema object and named dbo.FK__QUOTE__ApptID__060DEAE8.
--ALTER TABLE [dbo].[QUOTE]  WITH CHECK ADD  CONSTRAINT [FK__QUOTE__ApptID__060DEAE8] FOREIGN KEY([ApptID])
--REFERENCES [dbo].[APPOINTMENT] ([ApptID])

GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__QUOTE__ApptID__060DEAE8]') AND parent_object_id = OBJECT_ID(N'[dbo].[QUOTE]'))
ALTER TABLE [dbo].[QUOTE] CHECK CONSTRAINT [FK__QUOTE__ApptID__060DEAE8]
GO

/****** Object:  ForeignKey [FK__QUOTE__ClientID__0519C6AF]    Script Date: 06/06/2013 12:22:55 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__QUOTE__ClientID__0519C6AF]') AND parent_object_id = OBJECT_ID(N'[dbo].[QUOTE]'))
--The following statement was imported into the database project as a schema object and named dbo.FK__QUOTE__ClientID__0519C6AF.
--ALTER TABLE [dbo].[QUOTE]  WITH CHECK ADD  CONSTRAINT [FK__QUOTE__ClientID__0519C6AF] FOREIGN KEY([ClientID])
--REFERENCES [dbo].[CLIENT] ([ClientID])

GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__QUOTE__ClientID__0519C6AF]') AND parent_object_id = OBJECT_ID(N'[dbo].[QUOTE]'))
ALTER TABLE [dbo].[QUOTE] CHECK CONSTRAINT [FK__QUOTE__ClientID__0519C6AF]
GO
