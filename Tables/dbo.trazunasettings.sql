CREATE TABLE [dbo].[trazunasettings]
(
[settingsID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__trazunase__setti__67DE6983] DEFAULT (''),
[damPath] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__trazunase__damPa__69C6B1F5] DEFAULT (NULL),
[siteID] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__trazunase__siteI__6ABAD62E] DEFAULT (''),
[apiKey] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[hostName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[hostID] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[servertype] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__trazunase__serve__6BAEFA67] DEFAULT ('local')
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[trazunasettings] ADD CONSTRAINT [pk_trazunasettings] PRIMARY KEY CLUSTERED  ([settingsID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_trazunasettings_siteID] ON [dbo].[trazunasettings] ([siteID]) ON [PRIMARY]
GO
