CREATE TABLE [dbo].[tmailinglistmembers]
(
[MLID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Email] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SiteID] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[fname] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[lname] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[company] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[isVerified] [bit] NOT NULL,
[created] [datetime] NULL
) ON [PRIMARY]
GO
