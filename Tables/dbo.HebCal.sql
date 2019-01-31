CREATE TABLE [dbo].[HebCal]
(
[id] [int] NOT NULL,
[title] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[longitude] [float] NULL,
[latitude] [float] NULL,
[date] [datetime] NULL,
[link] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LocationId] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HebCal] ADD CONSTRAINT [PK__HebCal__3213E83F05851338] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HebCal] ADD CONSTRAINT [UK_cfkg8kssd3wbglyrpybr2dp89] UNIQUE NONCLUSTERED  ([LocationId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HebCal] ADD CONSTRAINT [FK_cfkg8kssd3wbglyrpybr2dp89] FOREIGN KEY ([LocationId]) REFERENCES [dbo].[HebCalLocation] ([id])
GO
