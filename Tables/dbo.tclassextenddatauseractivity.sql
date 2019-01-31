CREATE TABLE [dbo].[tclassextenddatauseractivity]
(
[dataID] [int] NOT NULL IDENTITY(1, 1),
[baseID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[attributeID] [int] NOT NULL,
[siteID] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[attributeValue] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[remoteID] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[datetimevalue] [datetime] NULL CONSTRAINT [DF__tclassext__datet__45BE5BA9] DEFAULT (NULL),
[numericvalue] [float] NULL CONSTRAINT [DF__tclassext__numer__46B27FE2] DEFAULT (NULL),
[stringvalue] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tclassextenddatauseractivity] ADD CONSTRAINT [PK_tclassextenddatauseractivity] PRIMARY KEY CLUSTERED  ([dataID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tclassextenddatauseractivity_2] ON [dbo].[tclassextenddatauseractivity] ([attributeID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tclassextenddatauseractivity_1] ON [dbo].[tclassextenddatauseractivity] ([baseID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_extend_date2] ON [dbo].[tclassextenddatauseractivity] ([datetimevalue]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_extend_numeric2] ON [dbo].[tclassextenddatauseractivity] ([numericvalue]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_extend_remotID2] ON [dbo].[tclassextenddatauseractivity] ([remoteID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_extend_string2] ON [dbo].[tclassextenddatauseractivity] ([stringvalue]) ON [PRIMARY]
GO
