CREATE TABLE [dbo].[temails]
(
[EmailID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[siteid] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Subject] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BodyText] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BodyHtml] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NULL,
[DeliveryDate] [datetime] NULL,
[status] [tinyint] NULL,
[GroupList] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastUpdateBy] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastUpdateByID] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NumberSent] [int] NOT NULL CONSTRAINT [DF_temails_NumberSent] DEFAULT ((0)),
[ReplyTo] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[format] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[fromLabel] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[isDeleted] [bit] NOT NULL CONSTRAINT [DF_temails_isDeleted] DEFAULT ((0)),
[template] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__temails__templat__11D4A34F] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[temails] ADD CONSTRAINT [PK_temails] PRIMARY KEY CLUSTERED  ([EmailID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_temails] ON [dbo].[temails] ([siteid]) ON [PRIMARY]
GO
