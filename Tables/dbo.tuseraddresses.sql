CREATE TABLE [dbo].[tuseraddresses]
(
[addressID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[userID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[siteID] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[addressName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[address1] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[address2] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[city] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[state] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[zip] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[country] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[phone] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[fax] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[isPrimary] [tinyint] NULL,
[addressNotes] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[addressURL] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[longitude] [float] NULL,
[latitude] [float] NULL,
[addressEmail] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[hours] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tuseraddresses] ADD CONSTRAINT [PK_tuseraddresses] PRIMARY KEY CLUSTERED  ([addressID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tuseraddresses_2] ON [dbo].[tuseraddresses] ([latitude]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tuseraddresses_1] ON [dbo].[tuseraddresses] ([longitude]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tuseraddresses_3] ON [dbo].[tuseraddresses] ([userID]) ON [PRIMARY]
GO
