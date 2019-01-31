CREATE TABLE [dbo].[tcontentratings]
(
[contentID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[userID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[siteID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[rate] [int] NULL,
[entered] [datetime] NULL CONSTRAINT [DF_tcontentratings_entered] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tcontentratings] ADD CONSTRAINT [PK_tcontentratings] PRIMARY KEY CLUSTERED  ([contentID], [userID], [siteID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IDX_ENTERED] ON [dbo].[tcontentratings] ([entered]) ON [PRIMARY]
GO
