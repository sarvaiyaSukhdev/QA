USE [Sysmex]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 2/23/2017 17:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Customer](
	[entity_name] [char](50) NULL,
	[run_date] [datetime] NULL,
	[recordid] [char](32) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
