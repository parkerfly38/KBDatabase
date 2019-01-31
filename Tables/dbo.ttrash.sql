CREATE TABLE [dbo].[ttrash]
(
[objectID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[parentID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[siteID] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[objectLabel] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[objectClass] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[objectType] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[objectSubType] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[objectstring] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[deletedDate] [datetime] NULL CONSTRAINT [DF__ttrash__deletedD__3493CFA7] DEFAULT (NULL),
[deletedBy] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[deleteid] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__ttrash__deleteid__7E02B4CC] DEFAULT (NULL),
[orderno] [int] NULL CONSTRAINT [DF__ttrash__orderno__7EF6D905] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ttrash] ADD CONSTRAINT [PK_ttrash] PRIMARY KEY CLUSTERED  ([objectID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ttrash_deleteddate] ON [dbo].[ttrash] ([deletedDate]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ttrash_deleteid] ON [dbo].[ttrash] ([deleteid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ttrash_objectclass] ON [dbo].[ttrash] ([objectClass]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ttrash_parentid] ON [dbo].[ttrash] ([parentID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ttrash_siteid] ON [dbo].[ttrash] ([siteID]) ON [PRIMARY]
GO
