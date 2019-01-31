CREATE TABLE [dbo].[tcontentfilenamearchive]
(
[siteID] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentf__siteI__6D9742D9] DEFAULT (''),
[archiveid] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__tcontentf__archi__6E8B6712] DEFAULT (''),
[contentID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentf__conte__7073AF84] DEFAULT (''),
[filename] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentf__filen__7167D3BD] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tcontentfilenamearchive] ADD CONSTRAINT [pk_tcontentfilenamearchive] PRIMARY KEY CLUSTERED  ([archiveid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentfilenamearchive_contentID] ON [dbo].[tcontentfilenamearchive] ([contentID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentfilenamearchive_siteID] ON [dbo].[tcontentfilenamearchive] ([siteID]) ON [PRIMARY]
GO
