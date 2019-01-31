CREATE TABLE [dbo].[tclustercommands]
(
[commandID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__tclusterc__comma__0880433F] DEFAULT (''),
[instanceID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tclusterc__insta__09746778] DEFAULT (NULL),
[command] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tclusterc__comma__0A688BB1] DEFAULT (NULL),
[created] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tclustercommands] ADD CONSTRAINT [pk_tclustercommands] PRIMARY KEY CLUSTERED  ([commandID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tclustercommands_created] ON [dbo].[tclustercommands] ([created]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tclustercommands_instanceID] ON [dbo].[tclustercommands] ([instanceID]) ON [PRIMARY]
GO
