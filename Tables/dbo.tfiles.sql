CREATE TABLE [dbo].[tfiles]
(
[fileID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[contentID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[siteID] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[moduleID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[filename] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[image] [varbinary] (max) NULL,
[imageSmall] [varbinary] (max) NULL,
[imageMedium] [varbinary] (max) NULL,
[fileSize] [int] NULL,
[contentType] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[contentSubType] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[fileExt] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[created] [datetime] NULL,
[deleted] [tinyint] NULL,
[caption] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tfiles__caption__038683F8] DEFAULT (NULL),
[credits] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tfiles__credits__047AA831] DEFAULT (NULL),
[alttext] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tfiles__alttext__056ECC6A] DEFAULT (NULL),
[remoteID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tfiles__remoteID__0662F0A3] DEFAULT (NULL),
[remoteURL] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tfiles__remoteUR__075714DC] DEFAULT (NULL),
[remotePubDate] [datetime] NULL,
[remoteSource] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tfiles__remoteSo__084B3915] DEFAULT (NULL),
[remoteSourceURL] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tfiles__remoteSo__093F5D4E] DEFAULT (NULL),
[exif] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tfiles__exif__0A338187] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tfiles] ADD CONSTRAINT [PK_tfiles] PRIMARY KEY CLUSTERED  ([fileID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tfiles_contentid] ON [dbo].[tfiles] ([contentID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tfiles_moduleID] ON [dbo].[tfiles] ([moduleID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tfiles_remoteid] ON [dbo].[tfiles] ([remoteID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tfiles_siteid] ON [dbo].[tfiles] ([siteID]) ON [PRIMARY]
GO
