CREATE TABLE [dbo].[tapprovalassignments]
(
[siteID] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tapproval__siteI__3CF40B7E] DEFAULT (''),
[assignmentID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__tapproval__assig__3DE82FB7] DEFAULT (''),
[contentID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tapproval__conte__3FD07829] DEFAULT (''),
[exemptID] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tapproval__exemp__40C49C62] DEFAULT (NULL),
[chainID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tapproval__chain__41B8C09B] DEFAULT ('')
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tapprovalassignments] ADD CONSTRAINT [pk_tapprovalassignments] PRIMARY KEY CLUSTERED  ([assignmentID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tapprovalassignments_chainID] ON [dbo].[tapprovalassignments] ([chainID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tapprovalassignments_contentID] ON [dbo].[tapprovalassignments] ([contentID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tapprovalassignments_siteID] ON [dbo].[tapprovalassignments] ([siteID]) ON [PRIMARY]
GO
