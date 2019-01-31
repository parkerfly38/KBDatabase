CREATE TABLE [dbo].[tcontentfeeditems]
(
[feedID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[itemID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[type] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tcontentfeeditems] ADD CONSTRAINT [PK_tcontentfeeditems] PRIMARY KEY CLUSTERED  ([feedID], [itemID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentfeeditems_feedid] ON [dbo].[tcontentfeeditems] ([feedID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentfeeditems_itemid] ON [dbo].[tcontentfeeditems] ([itemID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentfeeditems_type] ON [dbo].[tcontentfeeditems] ([type]) ON [PRIMARY]
GO
