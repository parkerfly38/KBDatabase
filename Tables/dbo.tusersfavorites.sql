CREATE TABLE [dbo].[tusersfavorites]
(
[favoriteID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[userID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[favoriteName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[favorite] [varchar] (1000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[type] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[siteID] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[dateCreated] [datetime] NOT NULL CONSTRAINT [DF_tusersfavorites_dateCreated] DEFAULT (getdate()),
[columnNumber] [int] NULL,
[rowNumber] [int] NULL,
[maxRSSItems] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tusersfavorites] ADD CONSTRAINT [PK_tusersfavorites] PRIMARY KEY CLUSTERED  ([favoriteID]) ON [PRIMARY]
GO
