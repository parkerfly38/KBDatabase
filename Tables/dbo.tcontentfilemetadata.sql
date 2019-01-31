CREATE TABLE [dbo].[tcontentfilemetadata]
(
[altText] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentf__altTe__59904A2C] DEFAULT (NULL),
[contenthistid] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentf__conte__5A846E65] DEFAULT (''),
[fileid] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentf__filei__5B78929E] DEFAULT (''),
[credits] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentf__credi__5C6CB6D7] DEFAULT (NULL),
[siteID] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentf__siteI__5D60DB10] DEFAULT (''),
[remoteURL] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentf__remot__5E54FF49] DEFAULT (NULL),
[exif] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentfi__exif__5F492382] DEFAULT (NULL),
[remoteID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentf__remot__603D47BB] DEFAULT (NULL),
[remoteSourceURL] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentf__remot__61316BF4] DEFAULT (NULL),
[remoteSource] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentf__remot__6225902D] DEFAULT (NULL),
[remotePubDate] [datetime] NULL,
[metaID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__tcontentf__metaI__6319B466] DEFAULT (''),
[contentid] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentf__conte__6501FCD8] DEFAULT (''),
[caption] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentf__capti__65F62111] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tcontentfilemetadata] ADD CONSTRAINT [pk_tcontentfilemetadata] PRIMARY KEY CLUSTERED  ([metaID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentfilemetadata_contenthistid] ON [dbo].[tcontentfilemetadata] ([contenthistid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentfilemetadata_contentid] ON [dbo].[tcontentfilemetadata] ([contentid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentfilemetadata_fileid] ON [dbo].[tcontentfilemetadata] ([fileid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentfilemetadata_remoteID] ON [dbo].[tcontentfilemetadata] ([remoteID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentfilemetadata_siteID] ON [dbo].[tcontentfilemetadata] ([siteID]) ON [PRIMARY]
GO
