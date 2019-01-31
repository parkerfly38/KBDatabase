CREATE TABLE [dbo].[tcontentcategories]
(
[categoryID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[siteID] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[parentID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[dateCreated] [datetime] NULL,
[lastUpdate] [datetime] NULL,
[lastUpdateBy] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[notes] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[isInterestGroup] [int] NULL,
[isActive] [int] NULL,
[isOpen] [int] NULL,
[sortBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[sortDirection] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[restrictGroups] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[path] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[remoteID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentc__remot__3864608B] DEFAULT (NULL),
[remoteSourceURL] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentc__remot__395884C4] DEFAULT (NULL),
[remotePubDate] [datetime] NULL CONSTRAINT [DF__tcontentc__remot__40F9A68C] DEFAULT (NULL),
[urltitle] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentc__urlti__55F4C372] DEFAULT (NULL),
[filename] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentc__filen__56E8E7AB] DEFAULT (NULL),
[isfeatureable] [int] NULL CONSTRAINT [DF__tcontentc__isfea__15A53433] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tcontentcategories] ADD CONSTRAINT [PK_tcontentcategories] PRIMARY KEY CLUSTERED  ([categoryID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentcategories_filename] ON [dbo].[tcontentcategories] ([filename]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentcategories_name] ON [dbo].[tcontentcategories] ([name]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentcategories_parentid] ON [dbo].[tcontentcategories] ([parentID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_category_remoteID] ON [dbo].[tcontentcategories] ([remoteID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentcategories] ON [dbo].[tcontentcategories] ([siteID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentcategories_urltitle] ON [dbo].[tcontentcategories] ([urltitle]) ON [PRIMARY]
GO
