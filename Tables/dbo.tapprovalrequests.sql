CREATE TABLE [dbo].[tapprovalrequests]
(
[siteID] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tapproval__siteI__27F8EE98] DEFAULT (''),
[userID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tapproval__userI__28ED12D1] DEFAULT (''),
[groupID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tapproval__group__29E1370A] DEFAULT (''),
[created] [datetime] NULL CONSTRAINT [DF__tapproval__creat__2AD55B43] DEFAULT (NULL),
[status] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tapproval__statu__2BC97F7C] DEFAULT ('Pending'),
[contentHistID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tapproval__conte__2CBDA3B5] DEFAULT (''),
[requestID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__tapproval__reque__2DB1C7EE] DEFAULT (''),
[chainID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tapproval__chain__2F9A1060] DEFAULT ('')
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tapprovalrequests] ADD CONSTRAINT [pk_tapprovalrequests] PRIMARY KEY CLUSTERED  ([requestID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tapprovalrequests_chainID] ON [dbo].[tapprovalrequests] ([chainID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tapprovalrequests_contentHistID] ON [dbo].[tapprovalrequests] ([contentHistID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tapprovalrequests_groupID] ON [dbo].[tapprovalrequests] ([groupID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tapprovalrequests_siteID] ON [dbo].[tapprovalrequests] ([siteID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tapprovalrequests_userID] ON [dbo].[tapprovalrequests] ([userID]) ON [PRIMARY]
GO
