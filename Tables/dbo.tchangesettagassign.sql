CREATE TABLE [dbo].[tchangesettagassign]
(
[siteid] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tchangese__sitei__7EC1CEDB] DEFAULT (''),
[changesetid] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tchangese__chang__7FB5F314] DEFAULT (''),
[assignmentid] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__tchangese__assig__00AA174D] DEFAULT (''),
[tag] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tchangesett__tag__02925FBF] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tchangesettagassign] ADD CONSTRAINT [pk_tchangesettagassign] PRIMARY KEY CLUSTERED  ([assignmentid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tchangesettagassign_changesetid] ON [dbo].[tchangesettagassign] ([changesetid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tchangesettagassign_siteid] ON [dbo].[tchangesettagassign] ([siteid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tchangesettagassign_tag] ON [dbo].[tchangesettagassign] ([tag]) ON [PRIMARY]
GO
