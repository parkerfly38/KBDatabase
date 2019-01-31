CREATE TABLE [dbo].[tapprovalchains]
(
[siteID] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tapproval__siteI__16CE6296] DEFAULT (''),
[chainID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__tapproval__chain__17C286CF] DEFAULT (''),
[name] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tapprovalc__name__19AACF41] DEFAULT (NULL),
[created] [datetime] NULL CONSTRAINT [DF__tapproval__creat__1A9EF37A] DEFAULT (NULL),
[lastupdate] [datetime] NULL CONSTRAINT [DF__tapproval__lastu__1B9317B3] DEFAULT (NULL),
[description] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tapproval__descr__1C873BEC] DEFAULT (NULL),
[lastupdateby] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tapproval__lastu__1D7B6025] DEFAULT (NULL),
[lastupdatebyid] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tapproval__lastu__1E6F845E] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tapprovalchains] ADD CONSTRAINT [pk_tapprovalchains] PRIMARY KEY CLUSTERED  ([chainID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tapprovalchains_siteID] ON [dbo].[tapprovalchains] ([siteID]) ON [PRIMARY]
GO
