CREATE TABLE [dbo].[tredirects]
(
[redirectID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[URL] [nvarchar] (2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[created] [datetime] NULL,
[userid] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tredirect__useri__5F141958] DEFAULT (NULL),
[siteid] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tredirect__sitei__60083D91] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tredirects] ADD CONSTRAINT [PK_tredirects] PRIMARY KEY CLUSTERED  ([redirectID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tredirects_siteid] ON [dbo].[tredirects] ([siteid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tredirects_userid] ON [dbo].[tredirects] ([userid]) ON [PRIMARY]
GO
