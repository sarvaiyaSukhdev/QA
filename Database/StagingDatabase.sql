/****** Object:  Table [dbo].[ContactData]    Script Date: 6/23/2017 1:56:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactData](
	[ContactID] [nvarchar](255) NULL,
	[BusinessPhone] [nvarchar](255) NULL,
	[JobTitle] [nvarchar](255) NULL,
	[JobTitleOther] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CRMIntegrationErrorLog]    Script Date: 6/23/2017 1:56:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CRMIntegrationErrorLog](
	[IntegrationName] [nvarchar](100) NULL,
	[CRMIntegrationExecutionLogID] [int] NULL,
	[ObjectID] [nvarchar](100) NULL,
	[ErrorMessage] [nvarchar](2048) NULL,
	[ErrorDate] [datetime] NOT NULL CONSTRAINT [DF_ErrorDate]  DEFAULT (getdate())
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CRMIntegrationExecutionLog]    Script Date: 6/23/2017 1:56:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CRMIntegrationExecutionLog](
	[CRMIntegrationExecutionLogID] [int] IDENTITY(1,1) NOT NULL,
	[IntegrationName] [nvarchar](100) NOT NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[StatusCode] [nvarchar](20) NULL,
	[StatusMessage] [nvarchar](2000) NULL,
	[FileNameProcessed] [nvarchar](100) NULL,
 CONSTRAINT [PK_CRMIntegrationExecutionLog] PRIMARY KEY CLUSTERED 
(
	[CRMIntegrationExecutionLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CRMIntegrationSuccessLog]    Script Date: 6/23/2017 1:56:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CRMIntegrationSuccessLog](
	[IntegrationName] [nvarchar](100) NULL,
	[CRMIntegrationExecutionLogID] [int] NULL,
	[ObjectID] [nvarchar](100) NULL,
	[CRMID] [uniqueidentifier] NULL,
	[RecordAction] [nchar](1) NULL,
	[ProcessDate] [datetime] NOT NULL CONSTRAINT [DF_Success_ErrorDate]  DEFAULT (getdate())
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CRMLabInfo]    Script Date: 6/23/2017 1:56:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CRMLabInfo](
	[smx_labid] [uniqueidentifier] NOT NULL,
	[smx_name] [nvarchar](100) NULL,
	[smx_account] [uniqueidentifier] NULL,
	[smx_sapid] [nvarchar](100) NULL,
	[ownerid] [uniqueidentifier] NOT NULL,
	[statecode] [int] NOT NULL,
	[statuscode] [int] NOT NULL,
 CONSTRAINT [PK_CRMLabInfo] PRIMARY KEY CLUSTERED 
(
	[smx_labid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SAPLabID]    Script Date: 6/23/2017 1:56:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAPLabID](
	[ctlab_id] [varchar](50) NULL,
	[sap_number] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[smx_lab]    Script Date: 6/23/2017 1:56:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[smx_lab](
	[createdby] [uniqueidentifier] NULL,
	[createdbyname] [nvarchar](200) NULL,
	[createdbyyominame] [nvarchar](200) NULL,
	[createdon] [datetime] NULL,
	[createdonbehalfby] [uniqueidentifier] NULL,
	[createdonbehalfbyname] [nvarchar](200) NULL,
	[createdonbehalfbyyominame] [nvarchar](200) NULL,
	[importsequencenumber] [int] NULL,
	[modifiedby] [uniqueidentifier] NULL,
	[modifiedbyname] [nvarchar](200) NULL,
	[modifiedbyyominame] [nvarchar](200) NULL,
	[modifiedon] [datetime] NULL,
	[modifiedonbehalfby] [uniqueidentifier] NULL,
	[modifiedonbehalfbyname] [nvarchar](200) NULL,
	[modifiedonbehalfbyyominame] [nvarchar](200) NULL,
	[overriddencreatedon] [datetime] NULL,
	[ownerid] [uniqueidentifier] NULL,
	[owneridname] [nvarchar](200) NULL,
	[owneridtype] [nvarchar](64) NULL,
	[owneridyominame] [nvarchar](200) NULL,
	[owningbusinessunit] [uniqueidentifier] NULL,
	[owningteam] [uniqueidentifier] NULL,
	[owninguser] [uniqueidentifier] NULL,
	[smx_account] [uniqueidentifier] NULL,
	[smx_accountname] [nvarchar](160) NULL,
	[smx_accountyominame] [nvarchar](160) NULL,
	[smx_annualmicrovolume] [int] NULL,
	[smx_annualstripvolume] [int] NULL,
	[smx_chemistryiainstruments] [int] NULL,
	[smx_city] [nvarchar](80) NULL,
	[smx_coagulationinstruments] [int] NULL,
	[smx_daysofoperation] [int] NULL,
	[smx_daysofoperationname] [nvarchar](255) NULL,
	[smx_esrinstruments] [int] NULL,
	[smx_flowinstruments] [int] NULL,
	[smx_hemeinstruments] [int] NULL,
	[smx_labaddress] [uniqueidentifier] NULL,
	[smx_labaddressname] [nvarchar](100) NULL,
	[smx_labid] [uniqueidentifier] NULL,
	[smx_migrationsourceid] [nvarchar](100) NULL,
	[smx_name] [nvarchar](100) NULL,
	[smx_noofcbc] [int] NULL,
	[smx_numberofinstruments] [int] NULL,
	[smx_numberofinstruments_date] [datetime] NULL,
	[smx_numberofinstruments_state] [int] NULL,
	[smx_respondent] [uniqueidentifier] NULL,
	[smx_respondentname] [nvarchar](160) NULL,
	[smx_respondentyominame] [nvarchar](160) NULL,
	[smx_sapid] [int] NULL,
	[smx_stateprovince] [nvarchar](2) NULL,
	[smx_street1] [nvarchar](250) NULL,
	[smx_street2] [nvarchar](250) NULL,
	[smx_street3] [nvarchar](250) NULL,
	[smx_tla] [int] NULL,
	[smx_tlaname] [nvarchar](255) NULL,
	[smx_urinalysisinstruments] [int] NULL,
	[smx_zippostalcode] [nvarchar](20) NULL,
	[statecode] [int] NULL,
	[statecodename] [nvarchar](255) NULL,
	[statuscode] [int] NULL,
	[statuscodename] [nvarchar](255) NULL,
	[timezoneruleversionnumber] [int] NULL,
	[utcconversiontimezonecode] [int] NULL,
	[versionnumber] [bigint] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[smx_manufacurer]    Script Date: 6/23/2017 1:56:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[smx_manufacurer](
	[createdby] [uniqueidentifier] NULL,
	[createdbyname] [nvarchar](200) NULL,
	[createdbyyominame] [nvarchar](200) NULL,
	[createdon] [datetime] NULL,
	[createdonbehalfby] [uniqueidentifier] NULL,
	[createdonbehalfbyname] [nvarchar](200) NULL,
	[createdonbehalfbyyominame] [nvarchar](200) NULL,
	[importsequencenumber] [int] NULL,
	[modifiedby] [uniqueidentifier] NULL,
	[modifiedbyname] [nvarchar](200) NULL,
	[modifiedbyyominame] [nvarchar](200) NULL,
	[modifiedon] [datetime] NULL,
	[modifiedonbehalfby] [uniqueidentifier] NULL,
	[modifiedonbehalfbyname] [nvarchar](200) NULL,
	[modifiedonbehalfbyyominame] [nvarchar](200) NULL,
	[overriddencreatedon] [datetime] NULL,
	[ownerid] [uniqueidentifier] NULL,
	[owneridname] [nvarchar](200) NULL,
	[owneridtype] [nvarchar](64) NULL,
	[owneridyominame] [nvarchar](200) NULL,
	[owningbusinessunit] [uniqueidentifier] NULL,
	[owningteam] [uniqueidentifier] NULL,
	[owninguser] [uniqueidentifier] NULL,
	[smx_manufacturerid] [uniqueidentifier] NULL,
	[smx_name] [nvarchar](100) NULL,
	[statecode] [int] NULL,
	[statecodename] [nvarchar](255) NULL,
	[statuscode] [int] NULL,
	[statuscodename] [nvarchar](255) NULL,
	[timezoneruleversionnumber] [int] NULL,
	[utcconversiontimezonecode] [int] NULL,
	[versionnumber] [bigint] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[smx_productline]    Script Date: 6/23/2017 1:56:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[smx_productline](
	[createdby] [uniqueidentifier] NULL,
	[createdbyname] [nvarchar](200) NULL,
	[createdbyyominame] [nvarchar](200) NULL,
	[createdon] [datetime] NULL,
	[createdonbehalfby] [uniqueidentifier] NULL,
	[createdonbehalfbyname] [nvarchar](200) NULL,
	[createdonbehalfbyyominame] [nvarchar](200) NULL,
	[importsequencenumber] [int] NULL,
	[modifiedby] [uniqueidentifier] NULL,
	[modifiedbyname] [nvarchar](200) NULL,
	[modifiedbyyominame] [nvarchar](200) NULL,
	[modifiedon] [datetime] NULL,
	[modifiedonbehalfby] [uniqueidentifier] NULL,
	[modifiedonbehalfbyname] [nvarchar](200) NULL,
	[modifiedonbehalfbyyominame] [nvarchar](200) NULL,
	[overriddencreatedon] [datetime] NULL,
	[ownerid] [uniqueidentifier] NULL,
	[owneridname] [nvarchar](200) NULL,
	[owneridtype] [nvarchar](64) NULL,
	[owneridyominame] [nvarchar](200) NULL,
	[owningbusinessunit] [uniqueidentifier] NULL,
	[owningteam] [uniqueidentifier] NULL,
	[owninguser] [uniqueidentifier] NULL,
	[smx_name] [nvarchar](100) NULL,
	[smx_productlineid] [uniqueidentifier] NULL,
	[statecode] [int] NULL,
	[statecodename] [nvarchar](255) NULL,
	[statuscode] [int] NULL,
	[statuscodename] [nvarchar](255) NULL,
	[timezoneruleversionnumber] [int] NULL,
	[utcconversiontimezonecode] [int] NULL,
	[versionnumber] [bigint] NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[CRMIntegrationErrorLog]  WITH NOCHECK ADD  CONSTRAINT [FK_CRMIntegrationExecutionLog] FOREIGN KEY([CRMIntegrationExecutionLogID])
REFERENCES [dbo].[CRMIntegrationExecutionLog] ([CRMIntegrationExecutionLogID])
GO
ALTER TABLE [dbo].[CRMIntegrationErrorLog] CHECK CONSTRAINT [FK_CRMIntegrationExecutionLog]
GO
ALTER TABLE [dbo].[CRMIntegrationSuccessLog]  WITH NOCHECK ADD  CONSTRAINT [FK_Success_CRMIntegrationExecutionLog] FOREIGN KEY([CRMIntegrationExecutionLogID])
REFERENCES [dbo].[CRMIntegrationExecutionLog] ([CRMIntegrationExecutionLogID])
GO
ALTER TABLE [dbo].[CRMIntegrationSuccessLog] CHECK CONSTRAINT [FK_Success_CRMIntegrationExecutionLog]
GO
