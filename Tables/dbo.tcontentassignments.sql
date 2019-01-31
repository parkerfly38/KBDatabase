CREATE TABLE [dbo].[tcontentassignments]
(
[contentID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[contentHistID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[siteID] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[userID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[type] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentas__type__69FBBC1F] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tcontentassignments] ADD CONSTRAINT [PK_tcontentassignments] PRIMARY KEY CLUSTERED  ([contentID], [contentHistID], [siteID], [userID]) ON [PRIMARY]
GO
