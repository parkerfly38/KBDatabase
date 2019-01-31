CREATE TABLE [dbo].[tapprovalmemberships]
(
[groupID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tapproval__group__2057CCD0] DEFAULT (''),
[siteID] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tapproval__siteI__214BF109] DEFAULT (''),
[created] [datetime] NULL CONSTRAINT [DF__tapproval__creat__22401542] DEFAULT (NULL),
[orderno] [int] NULL CONSTRAINT [DF__tapproval__order__2334397B] DEFAULT ((1)),
[membershipID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__tapproval__membe__24285DB4] DEFAULT (''),
[chainID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tapproval__chain__2610A626] DEFAULT ('')
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tapprovalmemberships] ADD CONSTRAINT [pk_tapprovalmemberships] PRIMARY KEY CLUSTERED  ([membershipID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tapprovalmemberships_chainID] ON [dbo].[tapprovalmemberships] ([chainID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tapprovalmemberships_groupID] ON [dbo].[tapprovalmemberships] ([groupID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tapprovalmemberships_siteID] ON [dbo].[tapprovalmemberships] ([siteID]) ON [PRIMARY]
GO
