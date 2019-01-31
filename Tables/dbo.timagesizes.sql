CREATE TABLE [dbo].[timagesizes]
(
[sizeID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__timagesiz__sizeI__7849DB76] DEFAULT (''),
[siteID] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__timagesiz__siteI__793DFFAF] DEFAULT (NULL),
[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__timagesize__name__7A3223E8] DEFAULT (NULL),
[height] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__timagesiz__heigh__7B264821] DEFAULT (NULL),
[width] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__timagesiz__width__7C1A6C5A] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[timagesizes] ADD CONSTRAINT [pk_timagesizes] PRIMARY KEY CLUSTERED  ([sizeID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_timagesizes_siteID] ON [dbo].[timagesizes] ([siteID]) ON [PRIMARY]
GO
