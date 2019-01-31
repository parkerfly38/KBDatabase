CREATE TABLE [dbo].[tclassextend]
(
[subTypeID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[siteID] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[baseTable] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[baseKeyField] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[dataTable] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[type] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[subType] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[isActive] [tinyint] NULL,
[notes] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[lastUpdate] [datetime] NULL,
[dateCreated] [datetime] NULL,
[lastUpdateBy] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[hasSummary] [tinyint] NULL CONSTRAINT [DF__tclassext__hasSu__634EBE90] DEFAULT ((1)),
[hasBody] [tinyint] NULL CONSTRAINT [DF__tclassext__hasBo__6442E2C9] DEFAULT ((1)),
[description] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tclassext__descr__6CD828CA] DEFAULT (NULL),
[availableSubTypes] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tclassext__avail__6DCC4D03] DEFAULT (NULL),
[iconclass] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tclassext__iconc__0B27A5C0] DEFAULT (NULL),
[hasAssocFile] [tinyint] NULL CONSTRAINT [DF__tclassext__hasAs__0C1BC9F9] DEFAULT ((1)),
[hasConfigurator] [int] NULL CONSTRAINT [DF__tclassext__hasCo__0D0FEE32] DEFAULT ((1)),
[adminonly] [int] NULL CONSTRAINT [DF__tclassext__admin__2B947552] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tclassextend] ADD CONSTRAINT [PK_TClassSubTypes] PRIMARY KEY CLUSTERED  ([subTypeID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_extend_siteID] ON [dbo].[tclassextend] ([siteID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_extend_type] ON [dbo].[tclassextend] ([type], [subType]) ON [PRIMARY]
GO
