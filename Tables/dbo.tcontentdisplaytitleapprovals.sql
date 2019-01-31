CREATE TABLE [dbo].[tcontentdisplaytitleapprovals]
(
[contentid] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[isApproved] [tinyint] NULL,
[email] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[siteid] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
