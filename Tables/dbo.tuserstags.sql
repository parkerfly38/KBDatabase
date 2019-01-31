CREATE TABLE [dbo].[tuserstags]
(
[tagID] [int] NOT NULL IDENTITY(1, 1),
[userID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[siteid] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[tag] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tuserstags] ADD CONSTRAINT [PK_tuserstags] PRIMARY KEY CLUSTERED  ([tagID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tuserstags_1] ON [dbo].[tuserstags] ([siteid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tuserstags_2] ON [dbo].[tuserstags] ([tag]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tuserstags] ON [dbo].[tuserstags] ([userID]) ON [PRIMARY]
GO
