CREATE TABLE [dbo].[tclusterpeers]
(
[instanceID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__tclusterp__insta__05A3D694] DEFAULT ('')
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tclusterpeers] ADD CONSTRAINT [pk_tclusterpeers] PRIMARY KEY CLUSTERED  ([instanceID]) ON [PRIMARY]
GO
