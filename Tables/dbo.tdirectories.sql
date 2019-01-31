CREATE TABLE [dbo].[tdirectories]
(
[dirID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__tdirector__dirID__0D44F85C] DEFAULT (''),
[siteID] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tdirector__siteI__0E391C95] DEFAULT (NULL),
[subdir] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tdirector__subdi__0F2D40CE] DEFAULT (NULL),
[editfilename] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tdirector__editf__10216507] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tdirectories] ADD CONSTRAINT [pk_tdirectories] PRIMARY KEY CLUSTERED  ([dirID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tdirectories_siteID] ON [dbo].[tdirectories] ([siteID]) ON [PRIMARY]
GO
