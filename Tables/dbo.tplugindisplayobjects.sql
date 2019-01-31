CREATE TABLE [dbo].[tplugindisplayobjects]
(
[objectID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__tplugindi__objec__151B244E] DEFAULT (''),
[moduleID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tplugindi__modul__160F4887] DEFAULT (NULL),
[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tplugindis__name__17036CC0] DEFAULT (NULL),
[location] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tplugindi__locat__17F790F9] DEFAULT (NULL),
[displayObjectFile] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tplugindi__displ__18EBB532] DEFAULT (NULL),
[displaymethod] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tplugindi__displ__282DF8C2] DEFAULT (NULL),
[docache] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tplugindi__docac__29221CFB] DEFAULT (NULL),
[configuratorInit] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tplugindi__confi__607251E5] DEFAULT (NULL),
[configuratorJS] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tplugindi__confi__6166761E] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tplugindisplayobjects] ADD CONSTRAINT [PK_tplugindisplayobjects_objectID] PRIMARY KEY CLUSTERED  ([objectID]) ON [PRIMARY]
GO
