CREATE TABLE [dbo].[tclassextenddata]
(
[dataID] [int] NOT NULL IDENTITY(1, 1),
[baseID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[attributeID] [int] NOT NULL,
[siteID] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[attributeValue] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[remoteID] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[datetimevalue] [datetime] NULL CONSTRAINT [DF__tclassext__datet__42E1EEFE] DEFAULT (NULL),
[numericvalue] [float] NULL CONSTRAINT [DF__tclassext__numer__43D61337] DEFAULT (NULL),
[stringvalue] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tclassext__strin__44CA3770] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tclassextenddata] ADD CONSTRAINT [PK_tclassextenddata] PRIMARY KEY CLUSTERED  ([dataID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tclassextenddata_2] ON [dbo].[tclassextenddata] ([attributeID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tclassextenddata_1] ON [dbo].[tclassextenddata] ([baseID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tclassextenddata_baseID_attributeID] ON [dbo].[tclassextenddata] ([baseID], [attributeID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_extend_date1] ON [dbo].[tclassextenddata] ([datetimevalue]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_extend_numeric1] ON [dbo].[tclassextenddata] ([numericvalue]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_extend_remotID1] ON [dbo].[tclassextenddata] ([remoteID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_extend_string1] ON [dbo].[tclassextenddata] ([stringvalue]) ON [PRIMARY]
GO
