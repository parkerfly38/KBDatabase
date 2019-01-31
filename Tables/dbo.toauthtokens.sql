CREATE TABLE [dbo].[toauthtokens]
(
[data] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__toauthtoke__data__53A266AC] DEFAULT (NULL),
[expires] [datetime] NOT NULL,
[granttype] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__toauthtok__grant__54968AE5] DEFAULT ('client_credentials'),
[userid] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__toauthtok__useri__558AAF1E] DEFAULT (''),
[token] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__toauthtok__token__567ED357] DEFAULT (''),
[clientid] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__toauthtok__clien__58671BC9] DEFAULT (''),
[accessCode] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__toauthtok__acces__595B4002] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[toauthtokens] ADD CONSTRAINT [pk_toauthtokens] PRIMARY KEY CLUSTERED  ([token]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_toauthtokens_accessCode] ON [dbo].[toauthtokens] ([accessCode]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_toauthtokens_clientid] ON [dbo].[toauthtokens] ([clientid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_toauthtokens_userid] ON [dbo].[toauthtokens] ([userid]) ON [PRIMARY]
GO
