CREATE TABLE [dbo].[tuserdevice]
(
[siteID] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tuserdevi__siteI__23F3538A] DEFAULT (''),
[created] [datetime] NULL CONSTRAINT [DF__tuserdevi__creat__24E777C3] DEFAULT (NULL),
[deviceid] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__tuserdevi__devic__25DB9BFC] DEFAULT (''),
[userID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tuserdevi__userI__27C3E46E] DEFAULT (''),
[lastLogin] [datetime] NULL CONSTRAINT [DF__tuserdevi__lastL__28B808A7] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tuserdevice] ADD CONSTRAINT [pk_tuserdevice] PRIMARY KEY CLUSTERED  ([deviceid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tuserdevice_siteID] ON [dbo].[tuserdevice] ([siteID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tuserdevice_userID] ON [dbo].[tuserdevice] ([userID]) ON [PRIMARY]
GO
