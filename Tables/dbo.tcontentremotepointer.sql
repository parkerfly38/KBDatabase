CREATE TABLE [dbo].[tcontentremotepointer]
(
[siteID] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentr__siteI__3F9B6DFF] DEFAULT (''),
[remoteid] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentr__remot__408F9238] DEFAULT (NULL),
[remoteurl] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentr__remot__4183B671] DEFAULT (NULL),
[created] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentr__creat__4277DAAA] DEFAULT (NULL),
[pointerid] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__tcontentr__point__436BFEE3] DEFAULT (''),
[contentid] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentr__conte__45544755] DEFAULT ('')
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tcontentremotepointer] ADD CONSTRAINT [pk_tcontentremotepointer] PRIMARY KEY CLUSTERED  ([pointerid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentremotepointer_contentid] ON [dbo].[tcontentremotepointer] ([contentid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentremotepointer_remoteid] ON [dbo].[tcontentremotepointer] ([remoteid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentremotepointer_siteID] ON [dbo].[tcontentremotepointer] ([siteID]) ON [PRIMARY]
GO
