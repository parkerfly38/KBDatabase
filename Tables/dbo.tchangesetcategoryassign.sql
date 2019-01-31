CREATE TABLE [dbo].[tchangesetcategoryassign]
(
[siteid] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tchangese__sitei__7908F585] DEFAULT (''),
[categoryid] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tchangese__categ__79FD19BE] DEFAULT (''),
[changesetid] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tchangese__chang__7AF13DF7] DEFAULT (''),
[assignmentid] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__tchangese__assig__7BE56230] DEFAULT ('')
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tchangesetcategoryassign] ADD CONSTRAINT [pk_tchangesetcategoryassign] PRIMARY KEY CLUSTERED  ([assignmentid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tchangesetcategoryassign_categoryid] ON [dbo].[tchangesetcategoryassign] ([categoryid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tchangesetcategoryassign_changesetid] ON [dbo].[tchangesetcategoryassign] ([changesetid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tchangesetcategoryassign_siteid] ON [dbo].[tchangesetcategoryassign] ([siteid]) ON [PRIMARY]
GO
