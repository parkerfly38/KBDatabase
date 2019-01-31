CREATE TABLE [dbo].[tpermissions]
(
[ContentID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GroupID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SiteID] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Type] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tpermissions] ADD CONSTRAINT [PK_tpermissions] PRIMARY KEY CLUSTERED  ([ContentID], [GroupID], [SiteID], [Type]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tpermissions_contentid] ON [dbo].[tpermissions] ([ContentID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tpermissions_groupid] ON [dbo].[tpermissions] ([GroupID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tpermissions_siteid] ON [dbo].[tpermissions] ([SiteID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tpermissions_type] ON [dbo].[tpermissions] ([Type]) ON [PRIMARY]
GO
