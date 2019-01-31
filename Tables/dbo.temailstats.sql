CREATE TABLE [dbo].[temailstats]
(
[EmailID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Email] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[emailOpen] [int] NOT NULL CONSTRAINT [DF_temailstats_emailOpen] DEFAULT ((0)),
[returnClick] [int] NOT NULL CONSTRAINT [DF_temailstats_returnClick] DEFAULT ((0)),
[bounce] [int] NOT NULL CONSTRAINT [DF_temailstats_bounce] DEFAULT ((0)),
[sent] [int] NOT NULL CONSTRAINT [DF_temailstats_sent] DEFAULT ((0)),
[Created] [datetime] NULL
) ON [PRIMARY]
GO
