CREATE TABLE [dbo].[tcontent]
(
[tcontent_ID] [int] NOT NULL IDENTITY(1, 1),
[SiteID] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModuleID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ParentID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ContentID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ContentHistID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RemoteID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RemoteURL] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RemotePubDate] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RemoteSourceURL] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RemoteSource] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Credits] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FileID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Template] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Type] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[subType] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Active] [tinyint] NULL CONSTRAINT [DF_tcontent_Active] DEFAULT ((0)),
[OrderNo] [int] NULL,
[Title] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MenuTitle] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Summary] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Filename] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MetaDesc] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MetaKeyWords] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Body] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[lastUpdate] [datetime] NULL,
[lastUpdateBy] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[lastUpdateByID] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DisplayStart] [datetime] NULL,
[DisplayStop] [datetime] NULL,
[Display] [tinyint] NULL,
[Approved] [tinyint] NULL,
[IsNav] [tinyint] NULL,
[Restricted] [tinyint] NULL,
[RestrictGroups] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Target] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TargetParams] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[responseChart] [tinyint] NULL,
[responseMessage] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[responseSendTo] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[responseDisplayFields] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[moduleAssign] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[displayTitle] [tinyint] NULL,
[Notes] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[inheritObjects] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[isFeature] [tinyint] NULL,
[ReleaseDate] [datetime] NULL,
[IsLocked] [tinyint] NULL,
[nextN] [int] NULL,
[sortBy] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[sortDirection] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[featureStart] [datetime] NULL,
[featureStop] [datetime] NULL,
[forceSSL] [tinyint] NOT NULL CONSTRAINT [DF_tcontent_forceSSL] DEFAULT ((0)),
[audience] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[keyPoints] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[searchExclude] [tinyint] NULL,
[path] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[tags] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[doCache] [tinyint] NULL,
[urltitle] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[htmltitle] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[created] [datetime] NULL,
[mobileExclude] [tinyint] NULL,
[changesetID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontent__change__55009F39] DEFAULT (NULL),
[imageSize] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontent__imageS__5AB9788F] DEFAULT (NULL),
[imageHeight] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontent__imageH__5BAD9CC8] DEFAULT (NULL),
[imageWidth] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontent__imageW__5CA1C101] DEFAULT (NULL),
[childTemplate] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontent__childT__5D95E53A] DEFAULT (NULL),
[majorVersion] [int] NULL CONSTRAINT [DF__tcontent__majorV__65370702] DEFAULT (NULL),
[minorVersion] [int] NULL CONSTRAINT [DF__tcontent__minorV__662B2B3B] DEFAULT (NULL),
[expires] [datetime] NULL CONSTRAINT [DF__tcontent__expire__6AEFE058] DEFAULT (NULL),
[displayInterval] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontent__displa__76619304] DEFAULT (NULL),
[objectParams] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontent__object__2D7CBDC4] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tcontent] ADD CONSTRAINT [PK_tcontent_ID] PRIMARY KEY CLUSTERED  ([tcontent_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontent_active] ON [dbo].[tcontent] ([Active]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontent_approved] ON [dbo].[tcontent] ([Approved]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontent_changesetID] ON [dbo].[tcontent] ([changesetID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontent_1] ON [dbo].[tcontent] ([ContentHistID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontent] ON [dbo].[tcontent] ([ContentID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontent_display] ON [dbo].[tcontent] ([Display]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontent_displaystart] ON [dbo].[tcontent] ([DisplayStart]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontent_displaystop] ON [dbo].[tcontent] ([DisplayStop]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontent_filename] ON [dbo].[tcontent] ([Filename]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontent_isfeature] ON [dbo].[tcontent] ([isFeature]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontent_isnav] ON [dbo].[tcontent] ([IsNav]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontent_mobileExclude] ON [dbo].[tcontent] ([mobileExclude]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontent_5] ON [dbo].[tcontent] ([ModuleID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontent_3] ON [dbo].[tcontent] ([ParentID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontent_4] ON [dbo].[tcontent] ([RemoteID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontent_2] ON [dbo].[tcontent] ([SiteID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ontent_SiteID_Active_Approved_IsNav_ModuleID_searchExclude_ContentID_Type_subType_Display_DisplayStart_DisplayStop_mobileExclude] ON [dbo].[tcontent] ([SiteID], [Active], [Approved], [IsNav], [ModuleID], [searchExclude], [ContentID], [Type], [subType], [Display], [DisplayStart], [DisplayStop], [mobileExclude]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontent_subtype] ON [dbo].[tcontent] ([subType]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontent_title] ON [dbo].[tcontent] ([Title]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontent_type] ON [dbo].[tcontent] ([Type]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontent_urltitle] ON [dbo].[tcontent] ([urltitle]) ON [PRIMARY]
GO
