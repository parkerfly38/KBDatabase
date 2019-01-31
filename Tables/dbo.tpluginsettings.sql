CREATE TABLE [dbo].[tpluginsettings]
(
[moduleID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__tpluginse__modul__2180FB33] DEFAULT (''),
[name] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__tpluginset__name__22751F6C] DEFAULT (''),
[settingValue] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tpluginsettings] ADD CONSTRAINT [PK_tpluginsettings_ID] PRIMARY KEY CLUSTERED  ([moduleID], [name]) ON [PRIMARY]
GO
