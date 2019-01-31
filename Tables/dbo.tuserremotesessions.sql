CREATE TABLE [dbo].[tuserremotesessions]
(
[userID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[authToken] [char] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tuserremo__authT__2CF2ADDF] DEFAULT (NULL),
[data] [nvarchar] (4000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tuserremot__data__2DE6D218] DEFAULT (NULL),
[created] [datetime] NOT NULL,
[lastAccessed] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tuserremotesessions] ADD CONSTRAINT [PK_tuserremotesessions_userID] PRIMARY KEY CLUSTERED  ([userID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [tuserremotesessions_authToken] ON [dbo].[tuserremotesessions] ([authToken]) ON [PRIMARY]
GO
