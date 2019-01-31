CREATE TABLE [dbo].[tcontenttags]
(
[tagID] [int] NOT NULL IDENTITY(1, 1),
[contentHistID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[contentID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[siteID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[tag] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[taggroup] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentt__taggr__1975C517] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tcontenttags] ADD CONSTRAINT [PK_tcontenttags] PRIMARY KEY CLUSTERED  ([tagID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontenttags_1] ON [dbo].[tcontenttags] ([contentHistID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontenttags_2] ON [dbo].[tcontenttags] ([contentID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontenttags_3] ON [dbo].[tcontenttags] ([siteID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontenttags] ON [dbo].[tcontenttags] ([tag]) ON [PRIMARY]
GO
