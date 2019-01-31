CREATE TABLE [dbo].[tusersmemb]
(
[UserID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GroupID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tusersmemb] ADD CONSTRAINT [PK_tusersmemb] PRIMARY KEY CLUSTERED  ([UserID], [GroupID]) ON [PRIMARY]
GO
