CREATE TABLE [dbo].[tuserstrikes]
(
[username] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[strikes] [int] NULL CONSTRAINT [DF__tuserstri__strik__30C33EC3] DEFAULT (NULL),
[lastAttempt] [datetime] NULL CONSTRAINT [DF__tuserstri__lastA__31B762FC] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tuserstrikes] ADD CONSTRAINT [PK_tuserstrikes_username] PRIMARY KEY CLUSTERED  ([username]) ON [PRIMARY]
GO
