CREATE TABLE [dbo].[tclassextendattributes]
(
[attributeID] [int] NOT NULL IDENTITY(1, 1),
[extendSetID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[siteID] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[name] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[label] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[hint] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[type] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[orderno] [int] NULL,
[isActive] [tinyint] NULL,
[required] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[validation] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[regex] [nvarchar] (300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[message] [nvarchar] (300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[defaultValue] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[optionList] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[optionLabelList] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[adminonly] [int] NULL CONSTRAINT [DF__tclassext__admin__2AA05119] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tclassextendattributes] ADD CONSTRAINT [PK_tclassextendattributes] PRIMARY KEY CLUSTERED  ([attributeID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tclassextendattributes_1] ON [dbo].[tclassextendattributes] ([extendSetID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_extend_attr_name] ON [dbo].[tclassextendattributes] ([name]) ON [PRIMARY]
GO
