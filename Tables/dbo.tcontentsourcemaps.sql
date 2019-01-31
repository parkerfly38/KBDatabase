CREATE TABLE [dbo].[tcontentsourcemaps]
(
[siteid] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontents__sitei__4A4E069C] DEFAULT (''),
[created] [datetime] NULL CONSTRAINT [DF__tcontents__creat__4B422AD5] DEFAULT (NULL),
[sourceid] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontents__sourc__4C364F0E] DEFAULT (''),
[contenthistid] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontents__conte__4D2A7347] DEFAULT (''),
[mapid] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__tcontents__mapid__4E1E9780] DEFAULT (''),
[contentid] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontents__conte__5006DFF2] DEFAULT ('')
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tcontentsourcemaps] ADD CONSTRAINT [pk_tcontentsourcemaps] PRIMARY KEY CLUSTERED  ([mapid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentsourcemaps_contenthistid] ON [dbo].[tcontentsourcemaps] ([contenthistid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentsourcemaps_contentid] ON [dbo].[tcontentsourcemaps] ([contentid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentsourcemaps_siteid] ON [dbo].[tcontentsourcemaps] ([siteid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentsourcemaps_sourceid] ON [dbo].[tcontentsourcemaps] ([sourceid]) ON [PRIMARY]
GO
