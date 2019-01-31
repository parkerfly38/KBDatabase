CREATE TABLE [dbo].[tcontentcomments]
(
[commentid] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[contentid] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[contenthistid] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[url] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[comments] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[entered] [datetime] NULL,
[email] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[siteid] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ip] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[isApproved] [tinyint] NULL CONSTRAINT [DF_tcontentcomments_isApproved] DEFAULT ((0)),
[subscribe] [tinyint] NULL,
[userID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentc__userI__2B0A656D] DEFAULT (NULL),
[parentID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentc__paren__3C34F16F] DEFAULT (NULL),
[path] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentco__path__3D2915A8] DEFAULT (NULL),
[remoteID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentc__remot__6BE40491] DEFAULT (NULL),
[flagCount] [int] NULL CONSTRAINT [DF__tcontentc__flagC__2022C2A6] DEFAULT ((0)),
[isSpam] [int] NULL CONSTRAINT [DF__tcontentc__isSpa__2116E6DF] DEFAULT ((0)),
[isDeleted] [int] NULL CONSTRAINT [DF__tcontentc__isDel__220B0B18] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tcontentcomments] ADD CONSTRAINT [PK_tcontentcomments] PRIMARY KEY CLUSTERED  ([commentid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentcomments] ON [dbo].[tcontentcomments] ([contentid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentcomments_entered] ON [dbo].[tcontentcomments] ([entered]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentcomments_flagCount] ON [dbo].[tcontentcomments] ([flagCount]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentcomments_isDeleted] ON [dbo].[tcontentcomments] ([isDeleted]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentcomments_isSpam] ON [dbo].[tcontentcomments] ([isSpam]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentcomment_parentID] ON [dbo].[tcontentcomments] ([parentID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentcomments_remoteid] ON [dbo].[tcontentcomments] ([remoteID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentcomments_siteid] ON [dbo].[tcontentcomments] ([siteid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentcomments_userid] ON [dbo].[tcontentcomments] ([userID]) ON [PRIMARY]
GO
