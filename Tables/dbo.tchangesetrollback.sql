CREATE TABLE [dbo].[tchangesetrollback]
(
[siteID] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tchangese__siteI__43A1090D] DEFAULT (''),
[rollbackID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__tchangese__rollb__44952D46] DEFAULT (''),
[changesetID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tchangese__chang__467D75B8] DEFAULT (''),
[previousHistID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tchangese__previ__477199F1] DEFAULT (''),
[changesetHistID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tchangese__chang__4865BE2A] DEFAULT ('')
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tchangesetrollback] ADD CONSTRAINT [pk_tchangesetrollback] PRIMARY KEY CLUSTERED  ([rollbackID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tchangesetrollback_changesetHistID] ON [dbo].[tchangesetrollback] ([changesetHistID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tchangesetrollback_changesetID] ON [dbo].[tchangesetrollback] ([changesetID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tchangesetrollback_previousHistID] ON [dbo].[tchangesetrollback] ([previousHistID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tchangesetrollback_siteID] ON [dbo].[tchangesetrollback] ([siteID]) ON [PRIMARY]
GO
