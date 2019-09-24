USE [SysmexMigration_QA]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Log].[DF__Success__Created__21B6055D]') AND type = 'D')
BEGIN
ALTER TABLE [Log].[Success] DROP CONSTRAINT [DF__Success__Created__21B6055D]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Log].[DF__Errors__CreatedO__20C1E124]') AND type = 'D')
BEGIN
ALTER TABLE [Log].[Errors] DROP CONSTRAINT [DF__Errors__CreatedO__20C1E124]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Stage_Contact_contactid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Stage_Contact] DROP CONSTRAINT [DF_Stage_Contact_contactid]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Stage_Account_aa_smx_addressid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Stage_Account] DROP CONSTRAINT [DF_Stage_Account_aa_smx_addressid]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Stage_Account_accountid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Stage_Account] DROP CONSTRAINT [DF_Stage_Account_accountid]
END
GO
/****** Object:  Table [Log].[Success]    Script Date: 2/1/2018 7:38:01 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Log].[Success]') AND type in (N'U'))
DROP TABLE [Log].[Success]
GO
/****** Object:  Table [Log].[PackageRuns]    Script Date: 2/1/2018 7:38:01 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Log].[PackageRuns]') AND type in (N'U'))
DROP TABLE [Log].[PackageRuns]
GO
/****** Object:  Table [Log].[Errors]    Script Date: 2/1/2018 7:38:01 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Log].[Errors]') AND type in (N'U'))
DROP TABLE [Log].[Errors]
GO
/****** Object:  Table [dbo].[Stage_Lab]    Script Date: 2/1/2018 7:38:01 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Stage_Lab]') AND type in (N'U'))
DROP TABLE [dbo].[Stage_Lab]
GO
/****** Object:  Table [dbo].[Stage_Instrument]    Script Date: 2/1/2018 7:38:01 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Stage_Instrument]') AND type in (N'U'))
DROP TABLE [dbo].[Stage_Instrument]
GO
/****** Object:  Table [dbo].[Stage_Contact]    Script Date: 2/1/2018 7:38:01 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Stage_Contact]') AND type in (N'U'))
DROP TABLE [dbo].[Stage_Contact]
GO
/****** Object:  Table [dbo].[Stage_AccountAddress]    Script Date: 2/1/2018 7:38:01 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Stage_AccountAddress]') AND type in (N'U'))
DROP TABLE [dbo].[Stage_AccountAddress]
GO
/****** Object:  Table [dbo].[Stage_Account]    Script Date: 2/1/2018 7:38:01 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Stage_Account]') AND type in (N'U'))
DROP TABLE [dbo].[Stage_Account]
GO
/****** Object:  Table [dbo].[crm_transactioncurrency]    Script Date: 2/1/2018 7:38:01 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[crm_transactioncurrency]') AND type in (N'U'))
DROP TABLE [dbo].[crm_transactioncurrency]
GO
/****** Object:  Table [dbo].[crm_systemuser]    Script Date: 2/1/2018 7:38:01 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[crm_systemuser]') AND type in (N'U'))
DROP TABLE [dbo].[crm_systemuser]
GO
/****** Object:  Table [dbo].[crm_stringmap]    Script Date: 2/1/2018 7:38:01 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[crm_stringmap]') AND type in (N'U'))
DROP TABLE [dbo].[crm_stringmap]
GO
/****** Object:  Table [dbo].[crm_statusmap]    Script Date: 2/1/2018 7:38:01 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[crm_statusmap]') AND type in (N'U'))
DROP TABLE [dbo].[crm_statusmap]
GO
/****** Object:  Table [dbo].[crm_smx_zippostalcode]    Script Date: 2/1/2018 7:38:01 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[crm_smx_zippostalcode]') AND type in (N'U'))
DROP TABLE [dbo].[crm_smx_zippostalcode]
GO
/****** Object:  Table [dbo].[crm_smx_state]    Script Date: 2/1/2018 7:38:01 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[crm_smx_state]') AND type in (N'U'))
DROP TABLE [dbo].[crm_smx_state]
GO
/****** Object:  Table [dbo].[crm_smx_productline]    Script Date: 2/1/2018 7:38:01 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[crm_smx_productline]') AND type in (N'U'))
DROP TABLE [dbo].[crm_smx_productline]
GO
/****** Object:  Table [dbo].[crm_smx_model]    Script Date: 2/1/2018 7:38:01 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[crm_smx_model]') AND type in (N'U'))
DROP TABLE [dbo].[crm_smx_model]
GO
/****** Object:  Table [dbo].[crm_smx_manufacturer]    Script Date: 2/1/2018 7:38:01 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[crm_smx_manufacturer]') AND type in (N'U'))
DROP TABLE [dbo].[crm_smx_manufacturer]
GO
/****** Object:  Table [dbo].[crm_smx_IHN]    Script Date: 2/1/2018 7:38:01 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[crm_smx_IHN]') AND type in (N'U'))
DROP TABLE [dbo].[crm_smx_IHN]
GO
/****** Object:  Table [dbo].[crm_smx_gpo]    Script Date: 2/1/2018 7:38:01 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[crm_smx_gpo]') AND type in (N'U'))
DROP TABLE [dbo].[crm_smx_gpo]
GO
/****** Object:  Table [dbo].[crm_smx_country]    Script Date: 2/1/2018 7:38:01 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[crm_smx_country]') AND type in (N'U'))
DROP TABLE [dbo].[crm_smx_country]
GO
/****** Object:  Table [dbo].[crm_smx_address]    Script Date: 2/1/2018 7:38:01 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[crm_smx_address]') AND type in (N'U'))
DROP TABLE [dbo].[crm_smx_address]
GO
/****** Object:  Table [dbo].[crm_contact_cache]    Script Date: 2/1/2018 7:38:01 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[crm_contact_cache]') AND type in (N'U'))
DROP TABLE [dbo].[crm_contact_cache]
GO
/****** Object:  Table [dbo].[crm_account_cache]    Script Date: 2/1/2018 7:38:01 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[crm_account_cache]') AND type in (N'U'))
DROP TABLE [dbo].[crm_account_cache]
GO
/****** Object:  Schema [Log]    Script Date: 2/1/2018 7:38:02 PM ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'Log')
DROP SCHEMA [Log]
GO
/****** Object:  Schema [Log]    Script Date: 2/1/2018 7:38:02 PM ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'Log')
EXEC sys.sp_executesql N'CREATE SCHEMA [Log]'
GO
/****** Object:  Table [dbo].[crm_account_cache]    Script Date: 2/1/2018 7:38:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[crm_account_cache]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[crm_account_cache](
	[accountcategorycode] [int] NULL,
	[accountcategorycodename] [nvarchar](255) NULL,
	[accountclassificationcode] [int] NULL,
	[accountclassificationcodename] [nvarchar](255) NULL,
	[accountid] [uniqueidentifier] NULL,
	[accountnumber] [nvarchar](20) NULL,
	[accountratingcode] [int] NULL,
	[accountratingcodename] [nvarchar](255) NULL,
	[address1_addressid] [uniqueidentifier] NULL,
	[address1_addresstypecode] [int] NULL,
	[address1_addresstypecodename] [nvarchar](255) NULL,
	[address1_city] [nvarchar](80) NULL,
	[address1_composite] [nvarchar](max) NULL,
	[address1_country] [nvarchar](80) NULL,
	[address1_county] [nvarchar](50) NULL,
	[address1_fax] [nvarchar](50) NULL,
	[address1_freighttermscode] [int] NULL,
	[address1_freighttermscodename] [nvarchar](255) NULL,
	[address1_latitude] [float] NULL,
	[address1_line1] [nvarchar](250) NULL,
	[address1_line2] [nvarchar](250) NULL,
	[address1_line3] [nvarchar](250) NULL,
	[address1_longitude] [float] NULL,
	[address1_name] [nvarchar](200) NULL,
	[address1_postalcode] [nvarchar](100) NULL,
	[address1_postofficebox] [nvarchar](20) NULL,
	[address1_primarycontactname] [nvarchar](100) NULL,
	[address1_shippingmethodcode] [int] NULL,
	[address1_shippingmethodcodename] [nvarchar](255) NULL,
	[address1_stateorprovince] [nvarchar](50) NULL,
	[address1_telephone1] [nvarchar](50) NULL,
	[address1_telephone2] [nvarchar](50) NULL,
	[address1_telephone3] [nvarchar](50) NULL,
	[address1_upszone] [nvarchar](4) NULL,
	[address1_utcoffset] [int] NULL,
	[address2_addressid] [uniqueidentifier] NULL,
	[address2_addresstypecode] [int] NULL,
	[address2_addresstypecodename] [nvarchar](255) NULL,
	[address2_city] [nvarchar](80) NULL,
	[address2_composite] [nvarchar](max) NULL,
	[address2_country] [nvarchar](80) NULL,
	[address2_county] [nvarchar](50) NULL,
	[address2_fax] [nvarchar](50) NULL,
	[address2_freighttermscode] [int] NULL,
	[address2_freighttermscodename] [nvarchar](255) NULL,
	[address2_latitude] [float] NULL,
	[address2_line1] [nvarchar](250) NULL,
	[address2_line2] [nvarchar](250) NULL,
	[address2_line3] [nvarchar](250) NULL,
	[address2_longitude] [float] NULL,
	[address2_name] [nvarchar](200) NULL,
	[address2_postalcode] [nvarchar](20) NULL,
	[address2_postofficebox] [nvarchar](20) NULL,
	[address2_primarycontactname] [nvarchar](100) NULL,
	[address2_shippingmethodcode] [int] NULL,
	[address2_shippingmethodcodename] [nvarchar](255) NULL,
	[address2_stateorprovince] [nvarchar](50) NULL,
	[address2_telephone1] [nvarchar](50) NULL,
	[address2_telephone2] [nvarchar](50) NULL,
	[address2_telephone3] [nvarchar](50) NULL,
	[address2_upszone] [nvarchar](4) NULL,
	[address2_utcoffset] [int] NULL,
	[aging30] [money] NULL,
	[aging30_base] [money] NULL,
	[aging60] [money] NULL,
	[aging60_base] [money] NULL,
	[aging90] [money] NULL,
	[aging90_base] [money] NULL,
	[businesstypecode] [int] NULL,
	[businesstypecodename] [nvarchar](255) NULL,
	[createdby] [uniqueidentifier] NULL,
	[createdbyexternalparty] [uniqueidentifier] NULL,
	[createdbyexternalpartyname] [nvarchar](300) NULL,
	[createdbyexternalpartyyominame] [nvarchar](300) NULL,
	[createdbyname] [nvarchar](200) NULL,
	[createdbyyominame] [nvarchar](200) NULL,
	[createdon] [datetime] NULL,
	[createdonbehalfby] [uniqueidentifier] NULL,
	[createdonbehalfbyname] [nvarchar](200) NULL,
	[createdonbehalfbyyominame] [nvarchar](200) NULL,
	[creditlimit] [money] NULL,
	[creditlimit_base] [money] NULL,
	[creditonhold] [bit] NULL,
	[creditonholdname] [nvarchar](255) NULL,
	[customersizecode] [int] NULL,
	[customersizecodename] [nvarchar](255) NULL,
	[customertypecode] [int] NULL,
	[customertypecodename] [nvarchar](255) NULL,
	[defaultpricelevelid] [uniqueidentifier] NULL,
	[defaultpricelevelidname] [nvarchar](100) NULL,
	[description] [nvarchar](max) NULL,
	[donotbulkemail] [bit] NULL,
	[donotbulkemailname] [nvarchar](255) NULL,
	[donotbulkpostalmail] [bit] NULL,
	[donotbulkpostalmailname] [nvarchar](255) NULL,
	[donotemail] [bit] NULL,
	[donotemailname] [nvarchar](255) NULL,
	[donotfax] [bit] NULL,
	[donotfaxname] [nvarchar](255) NULL,
	[donotphone] [bit] NULL,
	[donotphonename] [nvarchar](255) NULL,
	[donotpostalmail] [bit] NULL,
	[donotpostalmailname] [nvarchar](255) NULL,
	[donotsendmarketingmaterialname] [nvarchar](255) NULL,
	[donotsendmm] [bit] NULL,
	[emailaddress1] [nvarchar](100) NULL,
	[emailaddress2] [nvarchar](100) NULL,
	[emailaddress3] [nvarchar](100) NULL,
	[entityimage] [varbinary](max) NULL,
	[entityimage_timestamp] [bigint] NULL,
	[entityimage_url] [nvarchar](200) NULL,
	[entityimageid] [uniqueidentifier] NULL,
	[exchangerate] [decimal](28, 0) NULL,
	[fax] [nvarchar](50) NULL,
	[followemail] [bit] NULL,
	[followemailname] [nvarchar](255) NULL,
	[ftpsiteurl] [nvarchar](200) NULL,
	[importsequencenumber] [int] NULL,
	[industrycode] [int] NULL,
	[industrycodename] [nvarchar](255) NULL,
	[isprivatename] [nvarchar](255) NULL,
	[lastonholdtime] [datetime] NULL,
	[lastusedincampaign] [datetime] NULL,
	[marketcap] [money] NULL,
	[marketcap_base] [money] NULL,
	[marketingonly] [bit] NULL,
	[marketingonlyname] [nvarchar](255) NULL,
	[masteraccountidname] [nvarchar](160) NULL,
	[masteraccountidyominame] [nvarchar](160) NULL,
	[masterid] [uniqueidentifier] NULL,
	[merged] [bit] NULL,
	[mergedname] [nvarchar](255) NULL,
	[modifiedby] [uniqueidentifier] NULL,
	[modifiedbyexternalparty] [uniqueidentifier] NULL,
	[modifiedbyexternalpartyname] [nvarchar](300) NULL,
	[modifiedbyexternalpartyyominame] [nvarchar](300) NULL,
	[modifiedbyname] [nvarchar](200) NULL,
	[modifiedbyyominame] [nvarchar](200) NULL,
	[modifiedon] [datetime] NULL,
	[modifiedonbehalfby] [uniqueidentifier] NULL,
	[modifiedonbehalfbyname] [nvarchar](200) NULL,
	[modifiedonbehalfbyyominame] [nvarchar](200) NULL,
	[name] [nvarchar](160) NULL,
	[new_duns] [nvarchar](100) NULL,
	[numberofemployees] [int] NULL,
	[onholdtime] [int] NULL,
	[opendeals] [int] NULL,
	[opendeals_date] [datetime] NULL,
	[opendeals_state] [int] NULL,
	[openrevenue] [money] NULL,
	[openrevenue_base] [money] NULL,
	[openrevenue_date] [datetime] NULL,
	[openrevenue_state] [int] NULL,
	[originatingleadid] [uniqueidentifier] NULL,
	[originatingleadidname] [nvarchar](160) NULL,
	[originatingleadidyominame] [nvarchar](160) NULL,
	[overriddencreatedon] [datetime] NULL,
	[ownerid] [uniqueidentifier] NULL,
	[owneridname] [nvarchar](200) NULL,
	[owneridtype] [nvarchar](64) NULL,
	[owneridyominame] [nvarchar](200) NULL,
	[ownershipcode] [int] NULL,
	[ownershipcodename] [nvarchar](255) NULL,
	[owningbusinessunit] [uniqueidentifier] NULL,
	[owningteam] [uniqueidentifier] NULL,
	[owninguser] [uniqueidentifier] NULL,
	[parentaccountid] [uniqueidentifier] NULL,
	[parentaccountidname] [nvarchar](160) NULL,
	[parentaccountidyominame] [nvarchar](160) NULL,
	[participatesinworkflow] [bit] NULL,
	[participatesinworkflowname] [nvarchar](255) NULL,
	[paymenttermscode] [int] NULL,
	[paymenttermscodename] [nvarchar](255) NULL,
	[preferredappointmentdaycode] [int] NULL,
	[preferredappointmentdaycodename] [nvarchar](255) NULL,
	[preferredappointmenttimecode] [int] NULL,
	[preferredappointmenttimecodename] [nvarchar](255) NULL,
	[preferredcontactmethodcode] [int] NULL,
	[preferredcontactmethodcodename] [nvarchar](255) NULL,
	[preferredequipmentid] [uniqueidentifier] NULL,
	[preferredequipmentidname] [nvarchar](160) NULL,
	[preferredserviceid] [uniqueidentifier] NULL,
	[preferredserviceidname] [nvarchar](160) NULL,
	[preferredsystemuserid] [uniqueidentifier] NULL,
	[preferredsystemuseridname] [nvarchar](200) NULL,
	[preferredsystemuseridyominame] [nvarchar](200) NULL,
	[primarycontactid] [uniqueidentifier] NULL,
	[primarycontactidname] [nvarchar](160) NULL,
	[primarycontactidyominame] [nvarchar](160) NULL,
	[primarysatoriid] [nvarchar](200) NULL,
	[primarytwitterid] [nvarchar](20) NULL,
	[processid] [uniqueidentifier] NULL,
	[revenue] [money] NULL,
	[revenue_base] [money] NULL,
	[sharesoutstanding] [int] NULL,
	[shippingmethodcode] [int] NULL,
	[shippingmethodcodename] [nvarchar](255) NULL,
	[sic] [nvarchar](20) NULL,
	[slaid] [uniqueidentifier] NULL,
	[slainvokedid] [uniqueidentifier] NULL,
	[slainvokedidname] [nvarchar](100) NULL,
	[slaname] [nvarchar](100) NULL,
	[smx_accounttype] [int] NULL,
	[smx_accounttypename] [nvarchar](255) NULL,
	[smx_address] [uniqueidentifier] NULL,
	[smx_addressname] [nvarchar](2000) NULL,
	[smx_altterritory] [uniqueidentifier] NULL,
	[smx_altterritorymanager] [uniqueidentifier] NULL,
	[smx_altterritorymanagername] [nvarchar](200) NULL,
	[smx_altterritorymanageryominame] [nvarchar](200) NULL,
	[smx_altterritoryname] [nvarchar](200) NULL,
	[smx_bedsize] [int] NULL,
	[smx_chemistryiaflag] [int] NULL,
	[smx_chemistryiainstruments] [int] NULL,
	[smx_chemistryiainstruments_date] [datetime] NULL,
	[smx_chemistryiainstruments_state] [int] NULL,
	[smx_classtype] [int] NULL,
	[smx_classtypename] [nvarchar](255) NULL,
	[smx_coagulationflag] [int] NULL,
	[smx_coagulationinstruments] [int] NULL,
	[smx_coagulationinstruments_date] [datetime] NULL,
	[smx_coagulationinstruments_state] [int] NULL,
	[smx_compass] [bit] NULL,
	[smx_compassname] [nvarchar](255) NULL,
	[smx_countrysap] [uniqueidentifier] NULL,
	[smx_countrysapname] [nvarchar](100) NULL,
	[smx_criticalaccess] [bit] NULL,
	[smx_criticalaccessname] [nvarchar](255) NULL,
	[smx_dayssincelastactivity] [int] NULL,
	[smx_dsm] [uniqueidentifier] NULL,
	[smx_dsmname] [nvarchar](160) NULL,
	[smx_dsmyominame] [nvarchar](160) NULL,
	[smx_dunsfilename] [nvarchar](100) NULL,
	[smx_dunsfilepath] [nvarchar](100) NULL,
	[smx_esrflag] [int] NULL,
	[smx_esrinstruments] [int] NULL,
	[smx_esrinstruments_date] [datetime] NULL,
	[smx_esrinstruments_state] [int] NULL,
	[smx_flowflag] [int] NULL,
	[smx_flowinstruments] [int] NULL,
	[smx_flowinstruments_date] [datetime] NULL,
	[smx_flowinstruments_state] [int] NULL,
	[smx_gpo] [uniqueidentifier] NULL,
	[smx_gpochemistryia] [uniqueidentifier] NULL,
	[smx_gpochemistryianame] [nvarchar](100) NULL,
	[smx_gpocoag] [uniqueidentifier] NULL,
	[smx_gpocoagname] [nvarchar](100) NULL,
	[smx_gpoesr] [uniqueidentifier] NULL,
	[smx_gpoesrname] [nvarchar](100) NULL,
	[smx_gpoflow] [uniqueidentifier] NULL,
	[smx_gpoflowname] [nvarchar](100) NULL,
	[smx_gponame] [nvarchar](100) NULL,
	[smx_gpourinalysis] [uniqueidentifier] NULL,
	[smx_gpourinalysisname] [nvarchar](100) NULL,
	[smx_hemeflag] [int] NULL,
	[smx_hemeinstruments] [int] NULL,
	[smx_hemeinstruments_date] [datetime] NULL,
	[smx_hemeinstruments_state] [int] NULL,
	[smx_ihn] [uniqueidentifier] NULL,
	[smx_ihncae] [uniqueidentifier] NULL,
	[smx_ihncaename] [nvarchar](200) NULL,
	[smx_ihncaeyominame] [nvarchar](200) NULL,
	[smx_ihnname] [nvarchar](100) NULL,
	[smx_ihnsecondary] [uniqueidentifier] NULL,
	[smx_ihnsecondaryname] [nvarchar](100) NULL,
	[smx_language] [int] NULL,
	[smx_languagename] [nvarchar](255) NULL,
	[smx_lastactivitydate] [datetime] NULL,
	[smx_leaddetails] [nvarchar](50) NULL,
	[smx_leadgeneration] [int] NULL,
	[smx_leadgenerationname] [nvarchar](255) NULL,
	[smx_legalname] [nvarchar](128) NULL,
	[smx_lsc] [uniqueidentifier] NULL,
	[smx_lscname] [nvarchar](160) NULL,
	[smx_lscyominame] [nvarchar](160) NULL,
	[smx_migrationsourceid] [nvarchar](100) NULL,
	[smx_noofcbc] [int] NULL,
	[smx_noofcbc_date] [datetime] NULL,
	[smx_noofcbc_state] [int] NULL,
	[smx_partneraccount] [uniqueidentifier] NULL,
	[smx_partneraccountname] [nvarchar](160) NULL,
	[smx_partneraccountyominame] [nvarchar](160) NULL,
	[smx_partnercontact] [uniqueidentifier] NULL,
	[smx_partnercontactname] [nvarchar](160) NULL,
	[smx_partnercontactyominame] [nvarchar](160) NULL,
	[smx_phone] [nvarchar](25) NULL,
	[smx_region] [uniqueidentifier] NULL,
	[smx_regionname] [nvarchar](200) NULL,
	[smx_registrationtaxid] [nvarchar](25) NULL,
	[smx_serviceengineer] [uniqueidentifier] NULL,
	[smx_serviceengineername] [nvarchar](160) NULL,
	[smx_serviceengineeryominame] [nvarchar](160) NULL,
	[smx_stateprovincesap] [uniqueidentifier] NULL,
	[smx_stateprovincesapname] [nvarchar](100) NULL,
	[smx_tis] [uniqueidentifier] NULL,
	[smx_tisname] [nvarchar](160) NULL,
	[smx_tisyominame] [nvarchar](160) NULL,
	[smx_urinalysisflag] [int] NULL,
	[smx_urinalysisinstruments] [int] NULL,
	[smx_urinalysisinstruments_date] [datetime] NULL,
	[smx_urinalysisinstruments_state] [int] NULL,
	[smx_verispannumber] [nvarchar](100) NULL,
	[stageid] [uniqueidentifier] NULL,
	[statecode] [int] NULL,
	[statecodename] [nvarchar](255) NULL,
	[statuscode] [int] NULL,
	[statuscodename] [nvarchar](255) NULL,
	[stockexchange] [nvarchar](20) NULL,
	[telephone1] [nvarchar](50) NULL,
	[telephone2] [nvarchar](50) NULL,
	[telephone3] [nvarchar](50) NULL,
	[territorycode] [int] NULL,
	[territorycodename] [nvarchar](255) NULL,
	[territoryid] [uniqueidentifier] NULL,
	[territoryidname] [nvarchar](200) NULL,
	[tickersymbol] [nvarchar](10) NULL,
	[timespentbymeonemailandmeetings] [nvarchar](1250) NULL,
	[timezoneruleversionnumber] [int] NULL,
	[transactioncurrencyid] [uniqueidentifier] NULL,
	[transactioncurrencyidname] [nvarchar](100) NULL,
	[traversedpath] [nvarchar](1250) NULL,
	[utcconversiontimezonecode] [int] NULL,
	[versionnumber] [bigint] NULL,
	[websiteurl] [nvarchar](200) NULL,
	[yominame] [nvarchar](160) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[crm_contact_cache]    Script Date: 2/1/2018 7:38:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[crm_contact_cache]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[crm_contact_cache](
	[accountid] [uniqueidentifier] NULL,
	[accountidname] [nvarchar](160) NULL,
	[accountidyominame] [nvarchar](160) NULL,
	[accountrolecode] [int] NULL,
	[accountrolecodename] [nvarchar](255) NULL,
	[address1_addressid] [uniqueidentifier] NULL,
	[address1_addresstypecode] [int] NULL,
	[address1_addresstypecodename] [nvarchar](255) NULL,
	[address1_city] [nvarchar](80) NULL,
	[address1_composite] [nvarchar](max) NULL,
	[address1_country] [nvarchar](80) NULL,
	[address1_county] [nvarchar](50) NULL,
	[address1_fax] [nvarchar](50) NULL,
	[address1_freighttermscode] [int] NULL,
	[address1_freighttermscodename] [nvarchar](255) NULL,
	[address1_latitude] [float] NULL,
	[address1_line1] [nvarchar](250) NULL,
	[address1_line2] [nvarchar](250) NULL,
	[address1_line3] [nvarchar](250) NULL,
	[address1_longitude] [float] NULL,
	[address1_name] [nvarchar](200) NULL,
	[address1_postalcode] [nvarchar](100) NULL,
	[address1_postofficebox] [nvarchar](20) NULL,
	[address1_primarycontactname] [nvarchar](100) NULL,
	[address1_shippingmethodcode] [int] NULL,
	[address1_shippingmethodcodename] [nvarchar](255) NULL,
	[address1_stateorprovince] [nvarchar](50) NULL,
	[address1_telephone1] [nvarchar](50) NULL,
	[address1_telephone2] [nvarchar](50) NULL,
	[address1_telephone3] [nvarchar](50) NULL,
	[address1_upszone] [nvarchar](4) NULL,
	[address1_utcoffset] [int] NULL,
	[address2_addressid] [uniqueidentifier] NULL,
	[address2_addresstypecode] [int] NULL,
	[address2_addresstypecodename] [nvarchar](255) NULL,
	[address2_city] [nvarchar](80) NULL,
	[address2_composite] [nvarchar](max) NULL,
	[address2_country] [nvarchar](80) NULL,
	[address2_county] [nvarchar](50) NULL,
	[address2_fax] [nvarchar](50) NULL,
	[address2_freighttermscode] [int] NULL,
	[address2_freighttermscodename] [nvarchar](255) NULL,
	[address2_latitude] [float] NULL,
	[address2_line1] [nvarchar](250) NULL,
	[address2_line2] [nvarchar](250) NULL,
	[address2_line3] [nvarchar](250) NULL,
	[address2_longitude] [float] NULL,
	[address2_name] [nvarchar](100) NULL,
	[address2_postalcode] [nvarchar](20) NULL,
	[address2_postofficebox] [nvarchar](20) NULL,
	[address2_primarycontactname] [nvarchar](100) NULL,
	[address2_shippingmethodcode] [int] NULL,
	[address2_shippingmethodcodename] [nvarchar](255) NULL,
	[address2_stateorprovince] [nvarchar](50) NULL,
	[address2_telephone1] [nvarchar](50) NULL,
	[address2_telephone2] [nvarchar](50) NULL,
	[address2_telephone3] [nvarchar](50) NULL,
	[address2_upszone] [nvarchar](4) NULL,
	[address2_utcoffset] [int] NULL,
	[address3_addressid] [uniqueidentifier] NULL,
	[address3_addresstypecode] [int] NULL,
	[address3_addresstypecodename] [nvarchar](255) NULL,
	[address3_city] [nvarchar](80) NULL,
	[address3_composite] [nvarchar](max) NULL,
	[address3_country] [nvarchar](80) NULL,
	[address3_county] [nvarchar](50) NULL,
	[address3_fax] [nvarchar](50) NULL,
	[address3_freighttermscode] [int] NULL,
	[address3_freighttermscodename] [nvarchar](255) NULL,
	[address3_latitude] [float] NULL,
	[address3_line1] [nvarchar](250) NULL,
	[address3_line2] [nvarchar](250) NULL,
	[address3_line3] [nvarchar](250) NULL,
	[address3_longitude] [float] NULL,
	[address3_name] [nvarchar](200) NULL,
	[address3_postalcode] [nvarchar](20) NULL,
	[address3_postofficebox] [nvarchar](20) NULL,
	[address3_primarycontactname] [nvarchar](100) NULL,
	[address3_shippingmethodcode] [int] NULL,
	[address3_shippingmethodcodename] [nvarchar](255) NULL,
	[address3_stateorprovince] [nvarchar](50) NULL,
	[address3_telephone1] [nvarchar](50) NULL,
	[address3_telephone2] [nvarchar](50) NULL,
	[address3_telephone3] [nvarchar](50) NULL,
	[address3_upszone] [nvarchar](4) NULL,
	[address3_utcoffset] [int] NULL,
	[aging30] [money] NULL,
	[aging30_base] [money] NULL,
	[aging60] [money] NULL,
	[aging60_base] [money] NULL,
	[aging90] [money] NULL,
	[aging90_base] [money] NULL,
	[anniversary] [datetime] NULL,
	[annualincome] [money] NULL,
	[annualincome_base] [money] NULL,
	[assistantname] [nvarchar](100) NULL,
	[assistantphone] [nvarchar](50) NULL,
	[birthdate] [datetime] NULL,
	[business2] [nvarchar](50) NULL,
	[callback] [nvarchar](50) NULL,
	[childrensnames] [nvarchar](255) NULL,
	[company] [nvarchar](50) NULL,
	[contactid] [uniqueidentifier] NULL,
	[createdby] [uniqueidentifier] NULL,
	[createdbyexternalparty] [uniqueidentifier] NULL,
	[createdbyexternalpartyname] [nvarchar](300) NULL,
	[createdbyexternalpartyyominame] [nvarchar](300) NULL,
	[createdbyname] [nvarchar](200) NULL,
	[createdbyyominame] [nvarchar](200) NULL,
	[createdon] [datetime] NULL,
	[createdonbehalfby] [uniqueidentifier] NULL,
	[createdonbehalfbyname] [nvarchar](200) NULL,
	[createdonbehalfbyyominame] [nvarchar](200) NULL,
	[creditlimit] [money] NULL,
	[creditlimit_base] [money] NULL,
	[creditonhold] [bit] NULL,
	[creditonholdname] [nvarchar](255) NULL,
	[customersizecode] [int] NULL,
	[customersizecodename] [nvarchar](255) NULL,
	[customertypecode] [int] NULL,
	[customertypecodename] [nvarchar](255) NULL,
	[defaultpricelevelid] [uniqueidentifier] NULL,
	[defaultpricelevelidname] [nvarchar](100) NULL,
	[department] [nvarchar](100) NULL,
	[description] [nvarchar](max) NULL,
	[donotbulkemail] [bit] NULL,
	[donotbulkemailname] [nvarchar](255) NULL,
	[donotbulkpostalmail] [bit] NULL,
	[donotbulkpostalmailname] [nvarchar](255) NULL,
	[donotemail] [bit] NULL,
	[donotemailname] [nvarchar](255) NULL,
	[donotfax] [bit] NULL,
	[donotfaxname] [nvarchar](255) NULL,
	[donotphone] [bit] NULL,
	[donotphonename] [nvarchar](255) NULL,
	[donotpostalmail] [bit] NULL,
	[donotpostalmailname] [nvarchar](255) NULL,
	[donotsendmarketingmaterialname] [nvarchar](255) NULL,
	[donotsendmm] [bit] NULL,
	[educationcode] [int] NULL,
	[educationcodename] [nvarchar](255) NULL,
	[emailaddress1] [nvarchar](250) NULL,
	[emailaddress2] [nvarchar](100) NULL,
	[emailaddress3] [nvarchar](100) NULL,
	[employeeid] [nvarchar](50) NULL,
	[entityimage] [varbinary](max) NULL,
	[entityimage_timestamp] [bigint] NULL,
	[entityimage_url] [nvarchar](200) NULL,
	[entityimageid] [uniqueidentifier] NULL,
	[exchangerate] [decimal](28, 0) NULL,
	[externaluseridentifier] [nvarchar](50) NULL,
	[familystatuscode] [int] NULL,
	[familystatuscodename] [nvarchar](255) NULL,
	[fax] [nvarchar](50) NULL,
	[firstname] [nvarchar](50) NULL,
	[followemail] [bit] NULL,
	[followemailname] [nvarchar](255) NULL,
	[ftpsiteurl] [nvarchar](200) NULL,
	[fullname] [nvarchar](160) NULL,
	[gendercode] [int] NULL,
	[gendercodename] [nvarchar](255) NULL,
	[governmentid] [nvarchar](50) NULL,
	[haschildrencode] [int] NULL,
	[haschildrencodename] [nvarchar](255) NULL,
	[home2] [nvarchar](50) NULL,
	[importsequencenumber] [int] NULL,
	[isbackofficecustomer] [bit] NULL,
	[isbackofficecustomername] [nvarchar](255) NULL,
	[isprivatename] [nvarchar](255) NULL,
	[jobtitle] [nvarchar](100) NULL,
	[lastname] [nvarchar](50) NULL,
	[lastonholdtime] [datetime] NULL,
	[lastusedincampaign] [datetime] NULL,
	[leadsourcecode] [int] NULL,
	[leadsourcecodename] [nvarchar](255) NULL,
	[managername] [nvarchar](100) NULL,
	[managerphone] [nvarchar](50) NULL,
	[marketingonly] [bit] NULL,
	[marketingonlyname] [nvarchar](255) NULL,
	[mastercontactidname] [nvarchar](160) NULL,
	[mastercontactidyominame] [nvarchar](160) NULL,
	[masterid] [uniqueidentifier] NULL,
	[merged] [bit] NULL,
	[mergedname] [nvarchar](255) NULL,
	[middlename] [nvarchar](50) NULL,
	[mobilephone] [nvarchar](50) NULL,
	[modifiedby] [uniqueidentifier] NULL,
	[modifiedbyexternalparty] [uniqueidentifier] NULL,
	[modifiedbyexternalpartyname] [nvarchar](300) NULL,
	[modifiedbyexternalpartyyominame] [nvarchar](300) NULL,
	[modifiedbyname] [nvarchar](200) NULL,
	[modifiedbyyominame] [nvarchar](200) NULL,
	[modifiedon] [datetime] NULL,
	[modifiedonbehalfby] [uniqueidentifier] NULL,
	[modifiedonbehalfbyname] [nvarchar](200) NULL,
	[modifiedonbehalfbyyominame] [nvarchar](200) NULL,
	[nickname] [nvarchar](50) NULL,
	[numberofchildren] [int] NULL,
	[onholdtime] [int] NULL,
	[originatingleadid] [uniqueidentifier] NULL,
	[originatingleadidname] [nvarchar](160) NULL,
	[originatingleadidyominame] [nvarchar](160) NULL,
	[overriddencreatedon] [datetime] NULL,
	[ownerid] [uniqueidentifier] NULL,
	[owneridname] [nvarchar](200) NULL,
	[owneridtype] [nvarchar](64) NULL,
	[owneridyominame] [nvarchar](200) NULL,
	[owningbusinessunit] [uniqueidentifier] NULL,
	[owningteam] [uniqueidentifier] NULL,
	[owninguser] [uniqueidentifier] NULL,
	[pager] [nvarchar](50) NULL,
	[parentcontactid] [uniqueidentifier] NULL,
	[parentcontactidname] [nvarchar](160) NULL,
	[parentcontactidyominame] [nvarchar](160) NULL,
	[parentcustomerid] [uniqueidentifier] NULL,
	[parentcustomeridname] [nvarchar](160) NULL,
	[parentcustomeridtype] [nvarchar](64) NULL,
	[parentcustomeridyominame] [nvarchar](450) NULL,
	[participatesinworkflow] [bit] NULL,
	[participatesinworkflowname] [nvarchar](255) NULL,
	[paymenttermscode] [int] NULL,
	[paymenttermscodename] [nvarchar](255) NULL,
	[preferredappointmentdaycode] [int] NULL,
	[preferredappointmentdaycodename] [nvarchar](255) NULL,
	[preferredappointmenttimecode] [int] NULL,
	[preferredappointmenttimecodename] [nvarchar](255) NULL,
	[preferredcontactmethodcode] [int] NULL,
	[preferredcontactmethodcodename] [nvarchar](255) NULL,
	[preferredequipmentid] [uniqueidentifier] NULL,
	[preferredequipmentidname] [nvarchar](160) NULL,
	[preferredserviceid] [uniqueidentifier] NULL,
	[preferredserviceidname] [nvarchar](160) NULL,
	[preferredsystemuserid] [uniqueidentifier] NULL,
	[preferredsystemuseridname] [nvarchar](200) NULL,
	[preferredsystemuseridyominame] [nvarchar](200) NULL,
	[processid] [uniqueidentifier] NULL,
	[salutation] [nvarchar](100) NULL,
	[shippingmethodcode] [int] NULL,
	[shippingmethodcodename] [nvarchar](255) NULL,
	[slaid] [uniqueidentifier] NULL,
	[slainvokedid] [uniqueidentifier] NULL,
	[slainvokedidname] [nvarchar](100) NULL,
	[slaname] [nvarchar](100) NULL,
	[smx_accountmanageroverride] [bit] NULL,
	[smx_accountmanageroverridename] [nvarchar](255) NULL,
	[smx_cprcontact] [bit] NULL,
	[smx_cprcontactname] [nvarchar](255) NULL,
	[smx_extension] [ntext] NULL,
	[smx_flowcyfc] [bit] NULL,
	[smx_flowcyfcname] [nvarchar](255) NULL,
	[smx_jobtitle] [int] NULL,
	[smx_jobtitlename] [nvarchar](255) NULL,
	[smx_jobtitleother] [nvarchar](100) NULL,
	[smx_language] [int] NULL,
	[smx_languagename] [nvarchar](255) NULL,
	[smx_liscoordinator] [bit] NULL,
	[smx_liscoordinatorname] [nvarchar](255) NULL,
	[smx_maincontact] [bit] NULL,
	[smx_maincontactname] [nvarchar](255) NULL,
	[smx_migrationsourceid] [nvarchar](100) NULL,
	[smx_prefix] [int] NULL,
	[smx_prefixname] [nvarchar](255) NULL,
	[smx_purchasingcontact] [bit] NULL,
	[smx_purchasingcontactname] [nvarchar](255) NULL,
	[smx_reportsto] [uniqueidentifier] NULL,
	[smx_reportstoname] [nvarchar](160) NULL,
	[smx_reportstoyominame] [nvarchar](160) NULL,
	[smx_salescontact] [bit] NULL,
	[smx_salescontactname] [nvarchar](255) NULL,
	[smx_serviceagreementrecipient] [bit] NULL,
	[smx_serviceagreementrecipientname] [nvarchar](255) NULL,
	[smx_sysmexjournal] [bit] NULL,
	[smx_sysmexjournalname] [nvarchar](255) NULL,
	[smx_sysmexnewsletter] [bit] NULL,
	[smx_sysmexnewslettername] [nvarchar](255) NULL,
	[smx_trainingcontact] [bit] NULL,
	[smx_trainingcontactname] [nvarchar](255) NULL,
	[smx_wsar] [bit] NULL,
	[smx_wsarname] [nvarchar](255) NULL,
	[spousesname] [nvarchar](100) NULL,
	[stageid] [uniqueidentifier] NULL,
	[statecode] [int] NULL,
	[statecodename] [nvarchar](255) NULL,
	[statuscode] [int] NULL,
	[statuscodename] [nvarchar](255) NULL,
	[suffix] [nvarchar](10) NULL,
	[telephone1] [nvarchar](50) NULL,
	[telephone2] [nvarchar](50) NULL,
	[telephone3] [nvarchar](50) NULL,
	[territorycode] [int] NULL,
	[territorycodename] [nvarchar](255) NULL,
	[timespentbymeonemailandmeetings] [nvarchar](1250) NULL,
	[timezoneruleversionnumber] [int] NULL,
	[transactioncurrencyid] [uniqueidentifier] NULL,
	[transactioncurrencyidname] [nvarchar](100) NULL,
	[traversedpath] [nvarchar](1250) NULL,
	[utcconversiontimezonecode] [int] NULL,
	[versionnumber] [bigint] NULL,
	[websiteurl] [nvarchar](200) NULL,
	[yomifirstname] [nvarchar](150) NULL,
	[yomifullname] [nvarchar](450) NULL,
	[yomilastname] [nvarchar](150) NULL,
	[yomimiddlename] [nvarchar](150) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[crm_smx_address]    Script Date: 2/1/2018 7:38:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[crm_smx_address]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[crm_smx_address](
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
	[organizationid] [uniqueidentifier] NULL,
	[organizationidname] [nvarchar](160) NULL,
	[overriddencreatedon] [datetime] NULL,
	[smx_account] [uniqueidentifier] NULL,
	[smx_accountname] [nvarchar](160) NULL,
	[smx_accountyominame] [nvarchar](160) NULL,
	[smx_addresscountry] [nvarchar](50) NULL,
	[smx_addressid] [uniqueidentifier] NULL,
	[smx_addressstreet1] [nvarchar](250) NULL,
	[smx_addressstreet2] [nvarchar](250) NULL,
	[smx_addressstreet3] [nvarchar](250) NULL,
	[smx_city] [nvarchar](80) NULL,
	[smx_country] [int] NULL,
	[smx_countryname] [nvarchar](255) NULL,
	[smx_lab] [uniqueidentifier] NULL,
	[smx_labname] [nvarchar](100) NULL,
	[smx_name] [nvarchar](2000) NULL,
	[smx_sapnumber] [nvarchar](100) NULL,
	[smx_stateprovince] [nvarchar](50) NULL,
	[smx_stateprovinceid] [int] NULL,
	[smx_stateprovinceidname] [nvarchar](255) NULL,
	[smx_type] [int] NULL,
	[smx_typename] [nvarchar](255) NULL,
	[smx_zippostalcode] [nvarchar](100) NULL,
	[statecode] [int] NULL,
	[statecodename] [nvarchar](255) NULL,
	[statuscode] [int] NULL,
	[statuscodename] [nvarchar](255) NULL,
	[timezoneruleversionnumber] [int] NULL,
	[utcconversiontimezonecode] [int] NULL,
	[versionnumber] [bigint] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[crm_smx_country]    Script Date: 2/1/2018 7:38:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[crm_smx_country]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[crm_smx_country](
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
	[organizationid] [uniqueidentifier] NULL,
	[organizationidname] [nvarchar](160) NULL,
	[overriddencreatedon] [datetime] NULL,
	[smx_countrycode] [nvarchar](2) NULL,
	[smx_countryid] [uniqueidentifier] NULL,
	[smx_name] [nvarchar](100) NULL,
	[statecode] [int] NULL,
	[statecodename] [nvarchar](255) NULL,
	[statuscode] [int] NULL,
	[statuscodename] [nvarchar](255) NULL,
	[timezoneruleversionnumber] [int] NULL,
	[utcconversiontimezonecode] [int] NULL,
	[versionnumber] [bigint] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[crm_smx_gpo]    Script Date: 2/1/2018 7:38:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[crm_smx_gpo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[crm_smx_gpo](
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
	[smx_addressstreet1] [nvarchar](250) NULL,
	[smx_addressstreet2] [nvarchar](250) NULL,
	[smx_addressstreet3] [nvarchar](250) NULL,
	[smx_city] [nvarchar](80) NULL,
	[smx_country] [int] NULL,
	[smx_countryname] [nvarchar](255) NULL,
	[smx_gpocode] [nvarchar](10) NULL,
	[smx_gpoid] [uniqueidentifier] NULL,
	[smx_migrationsourceid] [nvarchar](100) NULL,
	[smx_name] [nvarchar](100) NULL,
	[smx_sapnumber] [nvarchar](20) NULL,
	[smx_stateprovince] [nvarchar](2) NULL,
	[smx_stateprovinceid] [int] NULL,
	[smx_stateprovinceidname] [nvarchar](255) NULL,
	[smx_zippostalcode] [nvarchar](20) NULL,
	[statecode] [int] NULL,
	[statecodename] [nvarchar](255) NULL,
	[statuscode] [int] NULL,
	[statuscodename] [nvarchar](255) NULL,
	[timezoneruleversionnumber] [int] NULL,
	[utcconversiontimezonecode] [int] NULL,
	[versionnumber] [bigint] NULL,
	[smx_countrysap] [uniqueidentifier] NULL,
	[smx_countrysapname] [nvarchar](100) NULL,
	[smx_statesap] [uniqueidentifier] NULL,
	[smx_statesapname] [nvarchar](100) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[crm_smx_IHN]    Script Date: 2/1/2018 7:38:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[crm_smx_IHN]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[crm_smx_IHN](
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
	[smx_addressstreet1] [nvarchar](250) NULL,
	[smx_addressstreet2] [nvarchar](250) NULL,
	[smx_addressstreet3] [nvarchar](250) NULL,
	[smx_city] [nvarchar](80) NULL,
	[smx_country] [int] NULL,
	[smx_countryname] [nvarchar](255) NULL,
	[smx_ihncode] [nvarchar](10) NULL,
	[smx_ihnid] [uniqueidentifier] NULL,
	[smx_migrationsourceid] [nvarchar](100) NULL,
	[smx_name] [nvarchar](100) NULL,
	[smx_sapnumber] [nvarchar](20) NULL,
	[smx_stateprovince] [nvarchar](2) NULL,
	[smx_stateprovinceid] [int] NULL,
	[smx_stateprovinceidname] [nvarchar](255) NULL,
	[smx_zippostalcode] [nvarchar](20) NULL,
	[statecode] [int] NULL,
	[statecodename] [nvarchar](255) NULL,
	[statuscode] [int] NULL,
	[statuscodename] [nvarchar](255) NULL,
	[timezoneruleversionnumber] [int] NULL,
	[utcconversiontimezonecode] [int] NULL,
	[versionnumber] [bigint] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[crm_smx_manufacturer]    Script Date: 2/1/2018 7:38:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[crm_smx_manufacturer]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[crm_smx_manufacturer](
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
END
GO
/****** Object:  Table [dbo].[crm_smx_model]    Script Date: 2/1/2018 7:38:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[crm_smx_model]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[crm_smx_model](
	[createdby] [uniqueidentifier] NULL,
	[createdbyname] [nvarchar](200) NULL,
	[createdbyyominame] [nvarchar](200) NULL,
	[createdon] [datetime] NULL,
	[createdonbehalfby] [uniqueidentifier] NULL,
	[createdonbehalfbyname] [nvarchar](200) NULL,
	[createdonbehalfbyyominame] [nvarchar](200) NULL,
	[exchangerate] [decimal](28, 0) NULL,
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
	[smx_availablefordemo] [bit] NULL,
	[smx_availablefordemoname] [nvarchar](255) NULL,
	[smx_manufacturer] [uniqueidentifier] NULL,
	[smx_manufacturername] [nvarchar](100) NULL,
	[smx_modelid] [uniqueidentifier] NULL,
	[smx_modelvalue] [money] NULL,
	[smx_modelvalue_base] [money] NULL,
	[smx_name] [nvarchar](100) NULL,
	[smx_productline] [uniqueidentifier] NULL,
	[smx_productlinename] [nvarchar](100) NULL,
	[smx_relatedsysmexmodel] [uniqueidentifier] NULL,
	[smx_relatedsysmexmodelname] [nvarchar](100) NULL,
	[statecode] [int] NULL,
	[statecodename] [nvarchar](255) NULL,
	[statuscode] [int] NULL,
	[statuscodename] [nvarchar](255) NULL,
	[timezoneruleversionnumber] [int] NULL,
	[transactioncurrencyid] [uniqueidentifier] NULL,
	[transactioncurrencyidname] [nvarchar](100) NULL,
	[utcconversiontimezonecode] [int] NULL,
	[versionnumber] [bigint] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[crm_smx_productline]    Script Date: 2/1/2018 7:38:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[crm_smx_productline]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[crm_smx_productline](
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
END
GO
/****** Object:  Table [dbo].[crm_smx_state]    Script Date: 2/1/2018 7:38:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[crm_smx_state]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[crm_smx_state](
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
	[organizationid] [uniqueidentifier] NULL,
	[organizationidname] [nvarchar](160) NULL,
	[overriddencreatedon] [datetime] NULL,
	[smx_country] [uniqueidentifier] NULL,
	[smx_countryname] [nvarchar](100) NULL,
	[smx_name] [nvarchar](100) NULL,
	[smx_region] [nvarchar](3) NULL,
	[smx_stateid] [uniqueidentifier] NULL,
	[statecode] [int] NULL,
	[statecodename] [nvarchar](255) NULL,
	[statuscode] [int] NULL,
	[statuscodename] [nvarchar](255) NULL,
	[timezoneruleversionnumber] [int] NULL,
	[utcconversiontimezonecode] [int] NULL,
	[versionnumber] [bigint] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[crm_smx_zippostalcode]    Script Date: 2/1/2018 7:38:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[crm_smx_zippostalcode]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[crm_smx_zippostalcode](
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
	[smx_areacode] [nvarchar](4) NULL,
	[smx_city] [nvarchar](100) NULL,
	[smx_country] [nvarchar](100) NULL,
	[smx_countryid] [int] NULL,
	[smx_countryidname] [nvarchar](255) NULL,
	[smx_distributorzone] [uniqueidentifier] NULL,
	[smx_distributorzonename] [nvarchar](200) NULL,
	[smx_dsm] [uniqueidentifier] NULL,
	[smx_dsmname] [nvarchar](160) NULL,
	[smx_dsmyominame] [nvarchar](160) NULL,
	[smx_lsc] [uniqueidentifier] NULL,
	[smx_lscname] [nvarchar](160) NULL,
	[smx_lscyominame] [nvarchar](160) NULL,
	[smx_mds] [uniqueidentifier] NULL,
	[smx_mdsname] [nvarchar](200) NULL,
	[smx_mdsyominame] [nvarchar](200) NULL,
	[smx_name] [nvarchar](100) NULL,
	[smx_salesorg] [nvarchar](20) NULL,
	[smx_state] [nvarchar](4) NULL,
	[smx_stateprovinceid] [int] NULL,
	[smx_stateprovinceidname] [nvarchar](255) NULL,
	[smx_territory] [uniqueidentifier] NULL,
	[smx_territoryname] [nvarchar](200) NULL,
	[smx_tis] [uniqueidentifier] NULL,
	[smx_tisname] [nvarchar](160) NULL,
	[smx_tisyominame] [nvarchar](160) NULL,
	[smx_zippostalcodeid] [uniqueidentifier] NULL,
	[statecode] [int] NULL,
	[statecodename] [nvarchar](255) NULL,
	[statuscode] [int] NULL,
	[statuscodename] [nvarchar](255) NULL,
	[timezoneruleversionnumber] [int] NULL,
	[utcconversiontimezonecode] [int] NULL,
	[versionnumber] [bigint] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[crm_statusmap]    Script Date: 2/1/2018 7:38:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[crm_statusmap]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[crm_statusmap](
	[isdefault] [bit] NULL,
	[isdefaultname] [nvarchar](255) NULL,
	[objecttypecode] [nvarchar](64) NULL,
	[objecttypecodename] [nvarchar](255) NULL,
	[organizationid] [uniqueidentifier] NULL,
	[state] [int] NULL,
	[status] [int] NULL,
	[statusmapid] [uniqueidentifier] NULL,
	[versionnumber] [bigint] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[crm_stringmap]    Script Date: 2/1/2018 7:38:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[crm_stringmap]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[crm_stringmap](
	[attributename] [nvarchar](100) NULL,
	[attributevalue] [int] NULL,
	[displayorder] [int] NULL,
	[langid] [int] NULL,
	[objecttypecode] [nvarchar](64) NULL,
	[objecttypecodename] [nvarchar](255) NULL,
	[organizationid] [uniqueidentifier] NULL,
	[stringmapid] [uniqueidentifier] NULL,
	[value] [nvarchar](4000) NULL,
	[versionnumber] [bigint] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[crm_systemuser]    Script Date: 2/1/2018 7:38:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[crm_systemuser]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[crm_systemuser](
	[accessmode] [int] NULL,
	[accessmodename] [nvarchar](255) NULL,
	[address1_addressid] [uniqueidentifier] NULL,
	[address1_addresstypecode] [int] NULL,
	[address1_addresstypecodename] [nvarchar](255) NULL,
	[address1_city] [nvarchar](128) NULL,
	[address1_composite] [nvarchar](max) NULL,
	[address1_country] [nvarchar](128) NULL,
	[address1_county] [nvarchar](128) NULL,
	[address1_fax] [nvarchar](64) NULL,
	[address1_latitude] [float] NULL,
	[address1_line1] [nvarchar](1024) NULL,
	[address1_line2] [nvarchar](1024) NULL,
	[address1_line3] [nvarchar](1024) NULL,
	[address1_longitude] [float] NULL,
	[address1_name] [nvarchar](100) NULL,
	[address1_postalcode] [nvarchar](40) NULL,
	[address1_postofficebox] [nvarchar](40) NULL,
	[address1_shippingmethodcode] [int] NULL,
	[address1_shippingmethodcodename] [nvarchar](255) NULL,
	[address1_stateorprovince] [nvarchar](128) NULL,
	[address1_telephone1] [nvarchar](64) NULL,
	[address1_telephone2] [nvarchar](50) NULL,
	[address1_telephone3] [nvarchar](50) NULL,
	[address1_upszone] [nvarchar](4) NULL,
	[address1_utcoffset] [int] NULL,
	[address2_addressid] [uniqueidentifier] NULL,
	[address2_addresstypecode] [int] NULL,
	[address2_addresstypecodename] [nvarchar](255) NULL,
	[address2_city] [nvarchar](128) NULL,
	[address2_composite] [nvarchar](max) NULL,
	[address2_country] [nvarchar](128) NULL,
	[address2_county] [nvarchar](128) NULL,
	[address2_fax] [nvarchar](50) NULL,
	[address2_latitude] [float] NULL,
	[address2_line1] [nvarchar](1024) NULL,
	[address2_line2] [nvarchar](1024) NULL,
	[address2_line3] [nvarchar](1024) NULL,
	[address2_longitude] [float] NULL,
	[address2_name] [nvarchar](100) NULL,
	[address2_postalcode] [nvarchar](40) NULL,
	[address2_postofficebox] [nvarchar](40) NULL,
	[address2_shippingmethodcode] [int] NULL,
	[address2_shippingmethodcodename] [nvarchar](255) NULL,
	[address2_stateorprovince] [nvarchar](128) NULL,
	[address2_telephone1] [nvarchar](50) NULL,
	[address2_telephone2] [nvarchar](50) NULL,
	[address2_telephone3] [nvarchar](50) NULL,
	[address2_upszone] [nvarchar](4) NULL,
	[address2_utcoffset] [int] NULL,
	[applicationid] [uniqueidentifier] NULL,
	[applicationiduri] [nvarchar](1024) NULL,
	[azureactivedirectoryobjectid] [uniqueidentifier] NULL,
	[businessunitid] [uniqueidentifier] NULL,
	[businessunitidname] [nvarchar](160) NULL,
	[calendarid] [uniqueidentifier] NULL,
	[caltype] [int] NULL,
	[caltypename] [nvarchar](255) NULL,
	[createdby] [uniqueidentifier] NULL,
	[createdbyname] [nvarchar](200) NULL,
	[createdbyyominame] [nvarchar](200) NULL,
	[createdon] [datetime] NULL,
	[createdonbehalfby] [uniqueidentifier] NULL,
	[createdonbehalfbyname] [nvarchar](200) NULL,
	[createdonbehalfbyyominame] [nvarchar](200) NULL,
	[defaultfilterspopulated] [bit] NULL,
	[defaultmailbox] [uniqueidentifier] NULL,
	[defaultmailboxname] [nvarchar](200) NULL,
	[defaultodbfoldername] [nvarchar](200) NULL,
	[disabledreason] [nvarchar](500) NULL,
	[displayinserviceviews] [bit] NULL,
	[displayinserviceviewsname] [nvarchar](255) NULL,
	[domainname] [nvarchar](1024) NULL,
	[emailrouteraccessapproval] [int] NULL,
	[emailrouteraccessapprovalname] [nvarchar](255) NULL,
	[employeeid] [nvarchar](100) NULL,
	[entityimage] [varbinary](max) NULL,
	[entityimage_timestamp] [bigint] NULL,
	[entityimage_url] [nvarchar](200) NULL,
	[entityimageid] [uniqueidentifier] NULL,
	[exchangerate] [decimal](28, 0) NULL,
	[firstname] [nvarchar](64) NULL,
	[fullname] [nvarchar](200) NULL,
	[governmentid] [nvarchar](100) NULL,
	[homephone] [nvarchar](50) NULL,
	[importsequencenumber] [int] NULL,
	[incomingemaildeliverymethod] [int] NULL,
	[incomingemaildeliverymethodname] [nvarchar](255) NULL,
	[internalemailaddress] [nvarchar](100) NULL,
	[invitestatuscode] [int] NULL,
	[invitestatuscodename] [nvarchar](255) NULL,
	[isdisabled] [bit] NULL,
	[isdisabledname] [nvarchar](255) NULL,
	[isemailaddressapprovedbyo365admin] [bit] NULL,
	[isintegrationuser] [bit] NULL,
	[isintegrationusername] [nvarchar](255) NULL,
	[islicensed] [bit] NULL,
	[issyncwithdirectory] [bit] NULL,
	[jobtitle] [nvarchar](100) NULL,
	[lastname] [nvarchar](64) NULL,
	[middlename] [nvarchar](50) NULL,
	[mobilealertemail] [nvarchar](100) NULL,
	[mobileofflineprofileid] [uniqueidentifier] NULL,
	[mobileofflineprofileidname] [nvarchar](255) NULL,
	[mobilephone] [nvarchar](64) NULL,
	[modifiedby] [uniqueidentifier] NULL,
	[modifiedbyname] [nvarchar](200) NULL,
	[modifiedbyyominame] [nvarchar](200) NULL,
	[modifiedon] [datetime] NULL,
	[modifiedonbehalfby] [uniqueidentifier] NULL,
	[modifiedonbehalfbyname] [nvarchar](200) NULL,
	[modifiedonbehalfbyyominame] [nvarchar](200) NULL,
	[nickname] [nvarchar](50) NULL,
	[organizationid] [uniqueidentifier] NULL,
	[organizationidname] [nvarchar](100) NULL,
	[outgoingemaildeliverymethod] [int] NULL,
	[outgoingemaildeliverymethodname] [nvarchar](255) NULL,
	[overriddencreatedon] [datetime] NULL,
	[parentsystemuserid] [uniqueidentifier] NULL,
	[parentsystemuseridname] [nvarchar](200) NULL,
	[parentsystemuseridyominame] [nvarchar](200) NULL,
	[passporthi] [int] NULL,
	[passportlo] [int] NULL,
	[personalemailaddress] [nvarchar](100) NULL,
	[photourl] [nvarchar](200) NULL,
	[positionid] [uniqueidentifier] NULL,
	[positionidname] [nvarchar](100) NULL,
	[preferredaddresscode] [int] NULL,
	[preferredaddresscodename] [nvarchar](255) NULL,
	[preferredemailcode] [int] NULL,
	[preferredemailcodename] [nvarchar](255) NULL,
	[preferredphonecode] [int] NULL,
	[preferredphonecodename] [nvarchar](255) NULL,
	[processid] [uniqueidentifier] NULL,
	[queueid] [uniqueidentifier] NULL,
	[queueidname] [nvarchar](400) NULL,
	[salutation] [nvarchar](20) NULL,
	[setupuser] [bit] NULL,
	[setupusername] [nvarchar](255) NULL,
	[sharepointemailaddress] [nvarchar](1024) NULL,
	[siteid] [uniqueidentifier] NULL,
	[siteidname] [nvarchar](160) NULL,
	[skills] [nvarchar](100) NULL,
	[stageid] [uniqueidentifier] NULL,
	[systemuserid] [uniqueidentifier] NULL,
	[territoryid] [uniqueidentifier] NULL,
	[territoryidname] [nvarchar](200) NULL,
	[timezoneruleversionnumber] [int] NULL,
	[title] [nvarchar](128) NULL,
	[transactioncurrencyid] [uniqueidentifier] NULL,
	[transactioncurrencyidname] [nvarchar](100) NULL,
	[traversedpath] [nvarchar](1250) NULL,
	[userlicensetype] [int] NULL,
	[utcconversiontimezonecode] [int] NULL,
	[versionnumber] [bigint] NULL,
	[windowsliveid] [nvarchar](1024) NULL,
	[yammeremailaddress] [nvarchar](200) NULL,
	[yammeruserid] [nvarchar](128) NULL,
	[yomifirstname] [nvarchar](64) NULL,
	[yomifullname] [nvarchar](200) NULL,
	[yomilastname] [nvarchar](64) NULL,
	[yomimiddlename] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[crm_transactioncurrency]    Script Date: 2/1/2018 7:38:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[crm_transactioncurrency]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[crm_transactioncurrency](
	[createdby] [uniqueidentifier] NULL,
	[createdbyname] [nvarchar](200) NULL,
	[createdbyyominame] [nvarchar](200) NULL,
	[createdon] [datetime] NULL,
	[createdonbehalfby] [uniqueidentifier] NULL,
	[createdonbehalfbyname] [nvarchar](200) NULL,
	[createdonbehalfbyyominame] [nvarchar](200) NULL,
	[currencyname] [nvarchar](100) NULL,
	[currencyprecision] [int] NULL,
	[currencysymbol] [nvarchar](13) NULL,
	[entityimage] [varbinary](max) NULL,
	[entityimage_timestamp] [bigint] NULL,
	[entityimage_url] [nvarchar](200) NULL,
	[entityimageid] [uniqueidentifier] NULL,
	[exchangerate] [decimal](28, 0) NULL,
	[importsequencenumber] [int] NULL,
	[isocurrencycode] [nvarchar](5) NULL,
	[modifiedby] [uniqueidentifier] NULL,
	[modifiedbyname] [nvarchar](200) NULL,
	[modifiedbyyominame] [nvarchar](200) NULL,
	[modifiedon] [datetime] NULL,
	[modifiedonbehalfby] [uniqueidentifier] NULL,
	[modifiedonbehalfbyname] [nvarchar](200) NULL,
	[modifiedonbehalfbyyominame] [nvarchar](200) NULL,
	[organizationid] [uniqueidentifier] NULL,
	[overriddencreatedon] [datetime] NULL,
	[statecode] [int] NULL,
	[statecodename] [nvarchar](255) NULL,
	[statuscode] [int] NULL,
	[statuscodename] [nvarchar](255) NULL,
	[transactioncurrencyid] [uniqueidentifier] NULL,
	[versionnumber] [bigint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Stage_Account]    Script Date: 2/1/2018 7:38:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Stage_Account]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Stage_Account](
	[accountid] [uniqueidentifier] NULL,
	[name] [varchar](40) NULL,
	[smx_MigrationSourceId] [binary](8) NOT NULL,
	[smx_accounttype] [int] NULL,
	[smx_classtype] [int] NULL,
	[smx_GPO] [uniqueidentifier] NULL,
	[smx_IHN] [uniqueidentifier] NULL,
	[smx_ihncae] [uniqueidentifier] NULL,
	[smx_IHNSecondary] [uniqueidentifier] NULL,
	[smx_bedsize] [int] NULL,
	[smx_Compass] [tinyint] NULL,
	[new_duns] [varchar](25) NULL,
	[smx_DUNSFileName] [varchar](100) NULL,
	[smx_DUNSFilePath] [varchar](250) NULL,
	[smx_language] [varchar](20) NULL,
	[smx_partneraccount] [binary](8) NULL,
	[smx_partnercontact] [binary](8) NULL,
	[WebSiteURL] [varchar](150) NULL,
	[TransactionCurrencyID] [uniqueidentifier] NULL,
	[smx_VerispanNumber] [varchar](10) NULL,
	[smx_tis] [uniqueidentifier] NULL,
	[smx_lsc] [uniqueidentifier] NULL,
	[smx_dsm] [uniqueidentifier] NULL,
	[aa_smx_name] [varchar](100) NULL,
	[aa_smx_type] [varchar](7) NULL,
	[aa_smx_addressstreet1] [varchar](100) NULL,
	[aa_smx_addressstreet2] [varchar](100) NULL,
	[aa_smx_addressstreet3] [varchar](100) NULL,
	[aa_smx_city] [varchar](50) NULL,
	[aa_smx_stateprovinceid] [varchar](10) NULL,
	[aa_smx_zippostalcode] [varchar](12) NULL,
	[aa_smx_country] [varchar](100) NULL,
	[aa_smx_addressid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Stage_Account] PRIMARY KEY CLUSTERED 
(
	[smx_MigrationSourceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Stage_AccountAddress]    Script Date: 2/1/2018 7:38:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Stage_AccountAddress]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Stage_AccountAddress](
	[smx_account] [varchar](100) NULL,
	[aa_smx_name] [varchar](30) NULL,
	[aa_smx_type] [varchar](7) NULL,
	[aa_smx_addressstreet1] [varchar](50) NULL,
	[aa_smx_addressstreet2] [varchar](50) NULL,
	[aa_smx_addressstret3] [varchar](50) NULL,
	[aa_smx_city] [varchar](40) NULL,
	[aa_smx_stateprovinceid] [varchar](10) NULL,
	[aa_smx_zippostalcode] [varchar](12) NULL,
	[aa_smx_country] [varchar](35) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Stage_Contact]    Script Date: 2/1/2018 7:38:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Stage_Contact]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Stage_Contact](
	[contactid] [uniqueidentifier] NULL,
	[smx_MigrationSourceId] [binary](8) NOT NULL,
	[FirstName] [varchar](30) NULL,
	[LastName] [varchar](30) NULL,
	[smx_prefix] [int] NULL,
	[smx_jobtitle] [int] NULL,
	[smx_jobtitleother] [varchar](80) NULL,
	[EmailAddress1] [varchar](250) NULL,
	[MobilePhone] [varchar](25) NULL,
	[Telephone1] [varchar](25) NULL,
	[smx_extension] [varchar](10) NULL,
	[Address1_Line1] [varchar](50) NULL,
	[Address1_Line2] [varchar](50) NULL,
	[Address1_Line3] [varchar](50) NULL,
	[Address1_City] [varchar](40) NULL,
	[Address1_StateOrProvince] [varchar](10) NULL,
	[Address1_PostalCode] [varchar](12) NULL,
	[Address1_Country] [varchar](35) NULL,
	[smx_CPRContact] [tinyint] NULL,
	[smx_FlowCyCF] [tinyint] NULL,
	[smx_Language] [int] NULL,
	[smx_LISCoordinator] [tinyint] NULL,
	[cfODIS_pcn] [tinyint] NULL,
	[smx_ServiceAgreementRecipient] [tinyint] NULL,
	[smx_sysmexjournal] [tinyint] NULL,
	[smx_sysmexnewsletter] [tinyint] NULL,
	[smx_TrainingContact] [tinyint] NULL,
	[smx_wsar] [tinyint] NULL,
	[ownerid] [uniqueidentifier] NULL,
	[owneridtype] [int] NULL,
 CONSTRAINT [PK_Stage_Contact] PRIMARY KEY CLUSTERED 
(
	[smx_MigrationSourceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Stage_Instrument]    Script Date: 2/1/2018 7:38:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Stage_Instrument]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Stage_Instrument](
	[smx_instrumentid] [uniqueidentifier] NULL,
	[smx_name] [varchar](80) NULL,
	[smx_account] [uniqueidentifier] NULL,
	[smx_lab] [uniqueidentifier] NULL,
	[OwnerId] [uniqueidentifier] NULL,
	[owneridtype] [nvarchar](64) NULL,
	[smx_metrixinstrument] [int] NULL,
	[smx_productline] [uniqueidentifier] NULL,
	[smx_manufacturer] [uniqueidentifier] NULL,
	[smx_model] [uniqueidentifier] NULL,
	[smx_frequencyofuse] [int] NULL,
	[smx_modeofacquisition] [int] NULL,
	[smx_yearofacquisition] [varchar](15) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Stage_Lab]    Script Date: 2/1/2018 7:38:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Stage_Lab]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Stage_Lab](
	[la_smx_addressid] [uniqueidentifier] NULL,
	[la_smx_type] [int] NULL,
	[la_smx_addressstreet1] [varchar](50) NULL,
	[la_smx_addressstreet2] [varchar](50) NULL,
	[la_smx_city] [varchar](20) NULL,
	[la_smx_stateprovinceid] [varchar](10) NULL,
	[la_smx_zippostalcode] [varchar](12) NULL,
	[la_smx_name] [varchar](80) NULL,
	[smx_labid] [uniqueidentifier] NULL,
	[smx_migrationsourceid] [binary](8) NULL,
	[smx_account] [binary](8) NULL,
	[smx_accountID] [uniqueidentifier] NULL,
	[statecode] [int] NULL,
	[overriddencreatedon] [datetime] NULL,
	[smx_daysofoperation] [varchar](10) NULL,
	[smx_noofcbc] [int] NULL,
	[OwnerId] [uniqueidentifier] NULL,
	[owneridtype] [nvarchar](64) NULL,
	[statuscode] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [Log].[Errors]    Script Date: 2/1/2018 7:38:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Log].[Errors]') AND type in (N'U'))
BEGIN
CREATE TABLE [Log].[Errors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[PackageRunId] [int] NOT NULL,
	[PackageName] [nvarchar](100) NOT NULL,
	[PackageStep] [nvarchar](100) NOT NULL,
	[RecordSourceId] [nvarchar](100) NOT NULL,
	[ErrorCode] [int] NULL,
	[ErrorDescription] [nvarchar](max) NULL,
	[ErrorColumn] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [Log].[PackageRuns]    Script Date: 2/1/2018 7:38:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Log].[PackageRuns]') AND type in (N'U'))
BEGIN
CREATE TABLE [Log].[PackageRuns](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PackageName] [nvarchar](100) NOT NULL,
	[Step] [nvarchar](255) NULL,
	[Status] [nvarchar](100) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[SourceCount] [int] NULL,
	[InsertCount] [int] NULL,
	[UpdateCount] [int] NULL,
	[DeleteCount] [int] NULL,
	[ErrorCount] [int] NULL,
	[RunningUser] [nvarchar](255) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [Log].[Success]    Script Date: 2/1/2018 7:38:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Log].[Success]') AND type in (N'U'))
BEGIN
CREATE TABLE [Log].[Success](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[RecordSourceId] [nvarchar](100) NOT NULL,
	[CRM_GUID] [uniqueidentifier] NOT NULL,
	[PackageRunId] [int] NOT NULL,
	[PackageStep] [nvarchar](100) NULL
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Stage_Account_accountid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Stage_Account] ADD  CONSTRAINT [DF_Stage_Account_accountid]  DEFAULT (newid()) FOR [accountid]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Stage_Account_aa_smx_addressid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Stage_Account] ADD  CONSTRAINT [DF_Stage_Account_aa_smx_addressid]  DEFAULT (newid()) FOR [aa_smx_addressid]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Stage_Contact_contactid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Stage_Contact] ADD  CONSTRAINT [DF_Stage_Contact_contactid]  DEFAULT (newid()) FOR [contactid]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Log].[DF__Errors__CreatedO__20C1E124]') AND type = 'D')
BEGIN
ALTER TABLE [Log].[Errors] ADD  DEFAULT (getdate()) FOR [CreatedOn]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Log].[DF__Success__Created__21B6055D]') AND type = 'D')
BEGIN
ALTER TABLE [Log].[Success] ADD  DEFAULT (getdate()) FOR [CreatedOn]
END
GO
