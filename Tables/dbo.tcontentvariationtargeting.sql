CREATE TABLE [dbo].[tcontentvariationtargeting]
(
[targetingid] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__tcontentv__targe__38EE7070] DEFAULT (''),
[siteid] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentv__sitei__3AD6B8E2] DEFAULT (''),
[initjs] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentv__initj__3BCADD1B] DEFAULT (NULL),
[targetingjs] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentv__targe__3CBF0154] DEFAULT (NULL),
[contentid] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontentv__conte__3DB3258D] DEFAULT ('')
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tcontentvariationtargeting] ADD CONSTRAINT [pk_tcontentvariationtargeting] PRIMARY KEY CLUSTERED  ([targetingid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentvariationtargeting_contentid] ON [dbo].[tcontentvariationtargeting] ([contentid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentvariationtargeting_siteid] ON [dbo].[tcontentvariationtargeting] ([siteid]) ON [PRIMARY]
GO
