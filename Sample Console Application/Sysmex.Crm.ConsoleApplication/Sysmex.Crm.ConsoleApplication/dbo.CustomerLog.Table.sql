USE [Sysmex]
GO
/****** Object:  Table [dbo].[CustomerLog]    Script Date: 2/23/2017 17:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CustomerLog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CustomerLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Thread] [varchar](255) NOT NULL,
	[Level] [varchar](255) NOT NULL,
	[Logger] [varchar](255) NOT NULL,
	[Message] [varchar](max) NOT NULL,
	[Exception] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
