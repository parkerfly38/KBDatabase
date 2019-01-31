CREATE TABLE [dbo].[tcontentcommentcommenters]
(
[remoteID] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentc__remot__73501C2F] DEFAULT (NULL),
[commenterID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__tcontentc__comme__74444068] DEFAULT (''),
[email] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentc__email__762C88DA] DEFAULT (NULL),
[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentco__name__7720AD13] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tcontentcommentcommenters] ADD CONSTRAINT [pk_tcontentcommentcommenters] PRIMARY KEY CLUSTERED  ([commenterID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentcommentcommenters_remoteID] ON [dbo].[tcontentcommentcommenters] ([remoteID]) ON [PRIMARY]
GO
