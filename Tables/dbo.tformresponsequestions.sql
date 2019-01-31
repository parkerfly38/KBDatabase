CREATE TABLE [dbo].[tformresponsequestions]
(
[responseID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[formID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[formField] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[formValue] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[pollValue] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tformresponsequestions] ADD CONSTRAINT [PK_tformresponsequestions] PRIMARY KEY CLUSTERED  ([responseID], [formID], [formField]) ON [PRIMARY]
GO
