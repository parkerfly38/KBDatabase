CREATE TABLE [dbo].[tsessiontracking]
(
[trackingID] [int] NOT NULL IDENTITY(1, 1),
[contentID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[siteID] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[userid] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[remote_addr] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[server_name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[query_string] [nvarchar] (300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[referer] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[user_agent] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[script_name] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[urlToken] [nvarchar] (130) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[entered] [datetime] NOT NULL,
[country] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[lang] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[locale] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[keywords] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[originalUrlToken] [nvarchar] (130) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[fname] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tsessiont__fname__1209AD79] DEFAULT (NULL),
[lname] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tsessiont__lname__12FDD1B2] DEFAULT (NULL),
[company] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tsessiont__compa__13F1F5EB] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tsessiontracking] ADD CONSTRAINT [PK_tsessiontracking] PRIMARY KEY CLUSTERED  ([trackingID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tsessiontracking_1] ON [dbo].[tsessiontracking] ([contentID]) WITH (FILLFACTOR=90) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IDX_ENTERED] ON [dbo].[tsessiontracking] ([entered]) WITH (FILLFACTOR=90) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tsessiontracking] ON [dbo].[tsessiontracking] ([siteID]) WITH (FILLFACTOR=90) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tsessiontracking_2] ON [dbo].[tsessiontracking] ([urlToken]) WITH (FILLFACTOR=90) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tsessiontracking_3] ON [dbo].[tsessiontracking] ([userid]) WITH (FILLFACTOR=90) ON [PRIMARY]
GO
