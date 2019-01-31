CREATE TABLE [dbo].[toauthclients]
(
[clientsecret] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__toauthcli__clien__473C8FC7] DEFAULT (NULL),
[siteid] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__toauthcli__sitei__4830B400] DEFAULT (''),
[granttype] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__toauthcli__grant__4924D839] DEFAULT ('basic'),
[userid] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__toauthcli__useri__4A18FC72] DEFAULT (''),
[clientid] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__toauthcli__clien__4B0D20AB] DEFAULT (''),
[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[created] [datetime] NULL CONSTRAINT [DF__toauthcli__creat__4CF5691D] DEFAULT (NULL),
[lastupdate] [datetime] NULL CONSTRAINT [DF__toauthcli__lastu__4DE98D56] DEFAULT (NULL),
[description] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__toauthcli__descr__4EDDB18F] DEFAULT (NULL),
[redirecturl] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__toauthcli__redir__4FD1D5C8] DEFAULT (NULL),
[lastupdatebidy] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__toauthcli__lastu__50C5FA01] DEFAULT (NULL),
[lastupdateby] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__toauthcli__lastu__51BA1E3A] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[toauthclients] ADD CONSTRAINT [pk_toauthclients] PRIMARY KEY CLUSTERED  ([clientid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_toauthclients_siteid] ON [dbo].[toauthclients] ([siteid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_toauthclients_userid] ON [dbo].[toauthclients] ([userid]) ON [PRIMARY]
GO
