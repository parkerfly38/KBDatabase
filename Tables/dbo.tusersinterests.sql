CREATE TABLE [dbo].[tusersinterests]
(
[userID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[categoryID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tusersinterests] ADD CONSTRAINT [PK_tusersinterests] PRIMARY KEY CLUSTERED  ([userID], [categoryID]) ON [PRIMARY]
GO
