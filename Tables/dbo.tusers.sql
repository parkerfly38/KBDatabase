CREATE TABLE [dbo].[tusers]
(
[UserID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GroupName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Fname] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Lname] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UserName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Password] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PasswordCreated] [datetime] NULL,
[Email] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Company] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[JobTitle] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[mobilePhone] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Website] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Type] [int] NULL,
[subType] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Ext] [int] NULL,
[ContactForm] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Admin] [int] NULL,
[S2] [int] NULL,
[LastLogin] [datetime] NULL,
[LastUpdate] [datetime] NULL,
[LastUpdateBy] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastUpdateByID] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Perm] [tinyint] NULL,
[InActive] [tinyint] NULL,
[isPublic] [int] NULL,
[SiteID] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Subscribe] [int] NULL,
[notes] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[description] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[interests] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[keepPrivate] [tinyint] NULL,
[photoFileID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IMName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IMService] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[created] [datetime] NULL CONSTRAINT [DF_tusers_created] DEFAULT (getdate()),
[remoteID] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[tags] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[tablist] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tusers__tablist__3B40CD36] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tusers] ADD CONSTRAINT [PK_tusers] PRIMARY KEY CLUSTERED  ([UserID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tusers_groupname] ON [dbo].[tusers] ([GroupName]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tusers_remoteid] ON [dbo].[tusers] ([remoteID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tusers_siteid] ON [dbo].[tusers] ([SiteID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tusers_subtype] ON [dbo].[tusers] ([subType]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tusers_type] ON [dbo].[tusers] ([Type]) ON [PRIMARY]
GO
