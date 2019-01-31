CREATE TABLE [dbo].[tcontentfeeds]
(
[feedID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[siteID] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[parentID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[name] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[isActive] [tinyint] NULL,
[isPublic] [tinyint] NULL,
[isDefault] [tinyint] NULL,
[isFeaturesOnly] [tinyint] NULL,
[description] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[maxItems] [int] NULL,
[allowHTML] [tinyint] NULL,
[lang] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[lastUpdateBy] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[lastUpdate] [datetime] NULL,
[dateCreated] [datetime] NULL,
[restricted] [tinyint] NULL,
[restrictGroups] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[version] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[channelLink] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Type] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[sortBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[sortDirection] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[nextN] [int] NULL,
[displayName] [tinyint] NULL,
[displayRatings] [tinyint] NULL,
[displayComments] [tinyint] NULL,
[altname] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentf__altna__25518C17] DEFAULT (NULL),
[remoteID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentf__remot__367C1819] DEFAULT (NULL),
[remoteSourceURL] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentf__remot__37703C52] DEFAULT (NULL),
[remotePubDate] [datetime] NULL CONSTRAINT [DF__tcontentf__remot__41EDCAC5] DEFAULT (NULL),
[imageSize] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentf__image__57DD0BE4] DEFAULT (NULL),
[imageHeight] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentf__image__58D1301D] DEFAULT (NULL),
[imageWidth] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentf__image__59C55456] DEFAULT (NULL),
[displayList] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[showNavOnly] [tinyint] NULL CONSTRAINT [DF__tcontentf__showN__5E8A0973] DEFAULT (NULL),
[showExcludeSearch] [tinyint] NULL CONSTRAINT [DF__tcontentf__showE__5F7E2DAC] DEFAULT (NULL),
[viewalllink] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentf__viewa__7FEAFD3E] DEFAULT (NULL),
[viewalllabel] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentf__viewa__00DF2177] DEFAULT (NULL),
[cssclass] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentf__csscl__01D345B0] DEFAULT (NULL),
[autoimport] [tinyint] NULL CONSTRAINT [DF__tcontentf__autoi__02C769E9] DEFAULT ((0)),
[isLocked] [tinyint] NULL CONSTRAINT [DF__tcontentf__isLoc__03BB8E22] DEFAULT ((0)),
[contentpoolid] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentf__conte__14E61A24] DEFAULT (NULL),
[useCategoryIntersect] [int] NULL CONSTRAINT [DF__tcontentf__useCa__1A69E950] DEFAULT (NULL),
[authtype] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentf__autht__2C88998B] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tcontentfeeds] ADD CONSTRAINT [PK_tcontentfeeds] PRIMARY KEY CLUSTERED  ([feedID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_feed_remoteID] ON [dbo].[tcontentfeeds] ([remoteID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentfeeds] ON [dbo].[tcontentfeeds] ([siteID]) ON [PRIMARY]
GO
