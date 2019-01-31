CREATE TABLE [dbo].[tcontentrelated]
(
[contentHistID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[relatedID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[contentID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[siteID] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[relatedContentSetID] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentr__relat__12C8C788] DEFAULT (NULL),
[orderNo] [int] NULL CONSTRAINT [DF__tcontentr__order__13BCEBC1] DEFAULT (NULL),
[relatedContentID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tcontentrelated] ADD CONSTRAINT [PK__tcontent__20D28C025EEE51AD] PRIMARY KEY CLUSTERED  ([relatedContentID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentrelated_contentHistID] ON [dbo].[tcontentrelated] ([contentHistID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentrelated_relatedID] ON [dbo].[tcontentrelated] ([relatedID]) ON [PRIMARY]
GO
