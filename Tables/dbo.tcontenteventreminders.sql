CREATE TABLE [dbo].[tcontenteventreminders]
(
[contentId] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[siteId] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[email] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RemindDate] [datetime] NULL,
[RemindHour] [int] NULL,
[RemindMinute] [int] NULL,
[RemindInterval] [int] NULL,
[isSent] [int] NULL
) ON [PRIMARY]
GO
