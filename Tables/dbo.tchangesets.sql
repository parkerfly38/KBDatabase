CREATE TABLE [dbo].[tchangesets]
(
[changesetID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__tchangese__chang__489AC854] DEFAULT (left(newid(),(23))+right(newid(),(12))),
[siteID] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tchangese__siteI__498EEC8D] DEFAULT (NULL),
[name] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tchangeset__name__4A8310C6] DEFAULT (NULL),
[description] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[created] [datetime] NULL CONSTRAINT [DF__tchangese__creat__4B7734FF] DEFAULT (NULL),
[publishDate] [datetime] NULL CONSTRAINT [DF__tchangese__publi__4C6B5938] DEFAULT (NULL),
[published] [tinyint] NULL CONSTRAINT [DF__tchangese__publi__4D5F7D71] DEFAULT (NULL),
[lastUpdate] [datetime] NULL CONSTRAINT [DF__tchangese__lastU__4E53A1AA] DEFAULT (NULL),
[lastUpdateBy] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tchangese__lastU__4F47C5E3] DEFAULT (NULL),
[lastUpdateByID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tchangese__lastU__503BEA1C] DEFAULT (NULL),
[remoteID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tchangese__remot__51300E55] DEFAULT (NULL),
[remotePubDate] [datetime] NULL CONSTRAINT [DF__tchangese__remot__5224328E] DEFAULT (NULL),
[remoteSourceURL] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tchangese__remot__531856C7] DEFAULT (NULL),
[closeDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tchangesets] ADD CONSTRAINT [PK_tchangesets_changesetID] PRIMARY KEY CLUSTERED  ([changesetID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tchangesets_publishDate] ON [dbo].[tchangesets] ([publishDate]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tchangesets_remoteid] ON [dbo].[tchangesets] ([remoteID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tchangesets_siteid] ON [dbo].[tchangesets] ([siteID]) ON [PRIMARY]
GO
