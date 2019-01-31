CREATE TABLE [dbo].[tcontentfeedadvancedparams]
(
[paramID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[feedID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[param] [numeric] (18, 0) NULL,
[relationship] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[field] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[condition] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[criteria] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[dataType] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tcontentfeedadvancedparams] ADD CONSTRAINT [PK_tcontentFeedAdvanceParams] PRIMARY KEY CLUSTERED  ([paramID]) ON [PRIMARY]
GO
