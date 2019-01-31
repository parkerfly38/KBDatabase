CREATE TABLE [dbo].[tpluginscripts]
(
[scriptID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__tpluginsc__scrip__1BC821DD] DEFAULT (''),
[moduleID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tpluginsc__modul__1CBC4616] DEFAULT (NULL),
[runat] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tpluginsc__runat__1DB06A4F] DEFAULT (NULL),
[scriptfile] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tpluginsc__scrip__1EA48E88] DEFAULT (NULL),
[docache] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tpluginsc__docac__2A164134] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tpluginscripts] ADD CONSTRAINT [PK_tpluginscripts_scriptID] PRIMARY KEY CLUSTERED  ([scriptID]) ON [PRIMARY]
GO
