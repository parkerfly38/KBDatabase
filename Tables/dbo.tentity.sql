CREATE TABLE [dbo].[tentity]
(
[displayName] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tentity__display__61F08603] DEFAULT (NULL),
[path] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tentity__path__62E4AA3C] DEFAULT (NULL),
[entityid] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__tentity__entityi__63D8CE75] DEFAULT (''),
[name] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tentity__name__65C116E7] DEFAULT (NULL),
[dynamic] [int] NULL CONSTRAINT [DF__tentity__dynamic__66B53B20] DEFAULT ((0)),
[code] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tentity__code__67A95F59] DEFAULT (NULL),
[created] [datetime] NULL,
[lastupdate] [datetime] NULL,
[bundleable] [int] NULL CONSTRAINT [DF__tentity__bundlea__689D8392] DEFAULT ((0)),
[scaffold] [int] NULL CONSTRAINT [DF__tentity__scaffol__6991A7CB] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tentity] ADD CONSTRAINT [pk_tentity] PRIMARY KEY CLUSTERED  ([entityid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tentity_created] ON [dbo].[tentity] ([created]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tentity_lastupdate] ON [dbo].[tentity] ([lastupdate]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tentity_name] ON [dbo].[tentity] ([name]) ON [PRIMARY]
GO
