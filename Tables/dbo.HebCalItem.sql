CREATE TABLE [dbo].[HebCalItem]
(
[id] [int] NOT NULL,
[link] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[date] [datetime] NULL,
[subcat] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[memo] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[category] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[hebrew] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[title] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LeyningId] [int] NULL,
[ItemId] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HebCalItem] ADD CONSTRAINT [PK__HebCalIt__3213E83FC0325DE9] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HebCalItem] ADD CONSTRAINT [FK_4g841f48i3e1vk5asc5h2nkbb] FOREIGN KEY ([LeyningId]) REFERENCES [dbo].[HebCalLeyning] ([id])
GO
ALTER TABLE [dbo].[HebCalItem] ADD CONSTRAINT [FK_fuwcys77qy2wqawje1c32j5f] FOREIGN KEY ([ItemId]) REFERENCES [dbo].[HebCal] ([id])
GO
