CREATE TABLE [dbo].[HebCalLocation]
(
[id] [int] NOT NULL,
[geo] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[latitude] [float] NULL,
[longitude] [float] NULL,
[tzid] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[title] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HebCalLocation] ADD CONSTRAINT [PK__HebCalLo__3213E83F968A173C] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
