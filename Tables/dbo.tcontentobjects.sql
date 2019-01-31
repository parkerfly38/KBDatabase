CREATE TABLE [dbo].[tcontentobjects]
(
[ContentHistID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ObjectID] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Object] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ContentID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OrderNo] [int] NOT NULL,
[SiteID] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ColumnID] [int] NOT NULL,
[Params] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontento__Param__3F115E1A] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tcontentobjects] ADD CONSTRAINT [PK_tcontentobjects] PRIMARY KEY CLUSTERED  ([ContentHistID], [ObjectID], [Object], [ColumnID], [OrderNo]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentobjects] ON [dbo].[tcontentobjects] ([SiteID]) ON [PRIMARY]
GO
