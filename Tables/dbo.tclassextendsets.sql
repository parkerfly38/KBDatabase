CREATE TABLE [dbo].[tclassextendsets]
(
[extendSetID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[subTypeID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[categoryID] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[siteID] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[orderno] [int] NULL,
[isActive] [tinyint] NULL,
[container] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tclassext__conta__3A4CA8FD] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tclassextendsets] ADD CONSTRAINT [PK_tclassextendsets] PRIMARY KEY CLUSTERED  ([extendSetID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tclassextendsets_1] ON [dbo].[tclassextendsets] ([subTypeID]) ON [PRIMARY]
GO
