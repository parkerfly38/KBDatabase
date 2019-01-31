CREATE TABLE [dbo].[tclassextendrcsets]
(
[subTypeID] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tclassext__subTy__51EF2864] DEFAULT (''),
[orderNo] [int] NULL CONSTRAINT [DF__tclassext__order__52E34C9D] DEFAULT (NULL),
[relatedContentSetID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__tclassext__relat__53D770D6] DEFAULT (''),
[availableSubTypes] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tclassext__avail__55BFB948] DEFAULT (NULL),
[siteID] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tclassext__siteI__56B3DD81] DEFAULT (''),
[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__tclassexte__name__57A801BA] DEFAULT ('')
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tclassextendrcsets] ADD CONSTRAINT [pk_tclassextendrcsets] PRIMARY KEY CLUSTERED  ([relatedContentSetID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tclassextendrcsets_name] ON [dbo].[tclassextendrcsets] ([name]) ON [PRIMARY]
GO
