CREATE TABLE [dbo].[tformresponsepackets]
(
[ResponseID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FormID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SiteID] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FieldList] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Data] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Entered] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tformresponsepackets] ADD CONSTRAINT [PK_tformresponsepackets] PRIMARY KEY CLUSTERED  ([ResponseID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tformresponsepackets] ON [dbo].[tformresponsepackets] ([FormID], [SiteID]) ON [PRIMARY]
GO
