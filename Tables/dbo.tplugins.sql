CREATE TABLE [dbo].[tplugins]
(
[pluginID] [int] NOT NULL IDENTITY(1, 1),
[moduleID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tplugins__module__0C85DE4D] DEFAULT (NULL),
[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tplugins__name__0D7A0286] DEFAULT (NULL),
[created] [datetime] NOT NULL,
[provider] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tplugins__provid__0E6E26BF] DEFAULT (NULL),
[providerURL] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tplugins__provid__0F624AF8] DEFAULT (NULL),
[category] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tplugins__catego__10566F31] DEFAULT (NULL),
[version] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tplugins__versio__114A936A] DEFAULT (NULL),
[deployed] [tinyint] NULL CONSTRAINT [DF__tplugins__deploy__123EB7A3] DEFAULT (NULL),
[package] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tplugins__packag__2645B050] DEFAULT (NULL),
[directory] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tplugins__direct__2739D489] DEFAULT (NULL),
[loadPriority] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tplugins] ADD CONSTRAINT [PK_tplugins_pluginID] PRIMARY KEY CLUSTERED  ([pluginID]) ON [PRIMARY]
GO
