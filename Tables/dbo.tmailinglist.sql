CREATE TABLE [dbo].[tmailinglist]
(
[MLID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SiteID] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Description] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastUpdate] [datetime] NULL,
[isPurge] [int] NULL,
[isPublic] [int] NULL
) ON [PRIMARY]
GO
