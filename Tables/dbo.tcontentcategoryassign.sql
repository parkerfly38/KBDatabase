CREATE TABLE [dbo].[tcontentcategoryassign]
(
[contentHistID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[categoryID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[contentID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[isFeature] [int] NULL,
[orderno] [int] NULL,
[siteID] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[featureStart] [datetime] NULL,
[featureStop] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tcontentcategoryassign] ADD CONSTRAINT [PK_tcontentcategoryassign] PRIMARY KEY CLUSTERED  ([contentHistID], [categoryID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentcategoryassign_categoryID] ON [dbo].[tcontentcategoryassign] ([categoryID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentcategoryassign_contentID] ON [dbo].[tcontentcategoryassign] ([contentID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentcategoryassign_featurestart] ON [dbo].[tcontentcategoryassign] ([featureStart]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentcategoryassign_featurestop] ON [dbo].[tcontentcategoryassign] ([featureStop]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentcategoryassign_isfeature] ON [dbo].[tcontentcategoryassign] ([isFeature]) ON [PRIMARY]
GO
