CREATE TABLE [dbo].[tapprovalactions]
(
[siteID] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tapproval__siteI__318258D2] DEFAULT (''),
[actionType] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tapproval__actio__32767D0B] DEFAULT (''),
[comments] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tapproval__comme__336AA144] DEFAULT (NULL),
[userID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tapproval__userI__345EC57D] DEFAULT (''),
[groupID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tapproval__group__3552E9B6] DEFAULT (''),
[created] [datetime] NULL CONSTRAINT [DF__tapproval__creat__36470DEF] DEFAULT (NULL),
[actiontID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__tapproval__actio__373B3228] DEFAULT (''),
[requestID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tapproval__reque__39237A9A] DEFAULT (''),
[parentID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tapproval__paren__3A179ED3] DEFAULT (''),
[chainID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tapproval__chain__3B0BC30C] DEFAULT ('')
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tapprovalactions] ADD CONSTRAINT [pk_tapprovalactions] PRIMARY KEY CLUSTERED  ([actiontID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tapprovalactions_chainID] ON [dbo].[tapprovalactions] ([chainID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tapprovalactions_groupID] ON [dbo].[tapprovalactions] ([groupID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tapprovalactions_parentID] ON [dbo].[tapprovalactions] ([parentID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tapprovalactions_requestID] ON [dbo].[tapprovalactions] ([requestID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tapprovalactions_siteID] ON [dbo].[tapprovalactions] ([siteID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tapprovalactions_userID] ON [dbo].[tapprovalactions] ([userID]) ON [PRIMARY]
GO
